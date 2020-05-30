CREATE OR REPLACE PROCEDURE p_reversa_recibo(p_nrecibo IN VARCHAR2, -- IAXIS-7640 04/12/2019
                                             p_nreccaj IN VARCHAR2,
                                             p_nerror  OUT NUMBER) AS
  -- 
  /******************************************************************************
  NOMBRE  :    p_reversa_recibo
  PROPSITO:    Procedimiento que realiza la reversión de un recaudo dado un recibo de caja.
  
  REVISIONES:
  Ver        Fecha     Autor     Descripcin
  ------- ----------  -------   ------------------------------------
  1.0     23/10/2019  DFR        1. Creación del package para tarea IAXIS-4926 
  2.0     29/10/2019  DFR        2. IAXIS-6219: Error en paquete 3 de reversiones
  3.0     04/12/2019  DFR        3. IAXIS-7640: Ajuste paquete listener para Recaudos SAP
  ******************************************************************************/
  --
  e_object_error EXCEPTION;
  e_param_error  EXCEPTION;
  --
  vpasexec      NUMBER := 0;
  vparam        VARCHAR2(200) := 'parametros - p_nrecibo: ' || p_nrecibo ||
                                 ' - p_nreccaj: ' || p_nreccaj;
  vobject       VARCHAR2(200) := 'p_reversa_recibo';
  vcidioma      NUMBER := pac_md_common.f_get_cxtidioma;
  vnerror       NUMBER := 0; -- IAXIS-6219 29/10/2019
  vnorden       NUMBER;
  vsmovrec      NUMBER;
  vsmovrecant   NUMBER;
  vsmovagr      NUMBER := 0;
  vnliqmen      NUMBER;
  vnliqlin      NUMBER;
  vsumreccaj    NUMBER;
  vexistereccaj VARCHAR2(20);
  v_nrecibo     NUMBER; --IAXIS-7640 04/12/2019
  --    
  CURSOR c_detmovrecibo(pcsmovrec IN NUMBER) IS
    SELECT d.smovrec,
           d.norden,
           d.iimporte,
           d.fmovimi,
           d.fefeadm,
           d.cusuari,
           d.sdevolu,
           d.nnumnlin,
           d.cbancar1,
           d.nnumord,
           d.fcontab,
           d.iimporte_moncon,
           d.fcambio,
           d.cmreca,
           d.nreccaj
      FROM detmovrecibo d
     WHERE d.nrecibo = v_nrecibo -- IAXIS-7640 04/12/2019
       AND d.nreccaj = p_nreccaj
       AND d.smovrec = pcsmovrec
     ORDER BY d.norden; -- El orden es muy importante para la reversión.
  --
  CURSOR c_detmov_parc(pcsmovrec IN NUMBER, pcnorden IN NUMBER) IS
    SELECT d.smovrec,
           d.norden,
           d.nrecibo,
           d.cconcep,
           d.cgarant,
           d.nriesgo,
           d.iconcep,
           d.iconcep_monpol,
           d.fcambio,
           d.nreccaj,
           d.cmreca
      FROM detmovrecibo_parcial d
     WHERE d.nrecibo = v_nrecibo -- IAXIS-7640 04/12/2019
       AND d.nreccaj = p_nreccaj
       AND d.smovrec = pcsmovrec
       AND d.norden = pcnorden
     ORDER BY d.norden, d.cgarant, d.cconcep; -- El orden es muy importante para la reversión.
  --
BEGIN
  --
  -- Los dos parámetros de entrada son obligatorios.
  --
  IF p_nrecibo IS NULL OR p_nreccaj IS NULL THEN
    RAISE e_param_error;
  END IF;
  --
  -- Inicio IAXIS-7640 04/12/2019
  --
  -- Para eventos en los que la póliza sea migrada, SAP enviará el número de documento de Osiris en lugar de un número de recibo de iAxis.
  -- Dado lo anterior, se buscará primero la correspondencia en iAxis entre el número de documento de Osiris y el número de recibo de iAxis 
  -- en la tabla de recibos. 
  BEGIN
    --
    SELECT r.nrecibo 
      INTO v_nrecibo 
      FROM recibos r 
     WHERE r.creccia = p_nrecibo;
    --
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      -- Si no se encuentra correspondencia, se entenderá que se envía un directamente un número de recibo de iAxis. 
      v_nrecibo := p_nrecibo;   
      --
  END;     
  --
  -- Fin IAXIS-7640 04/12/2019
  --
  -- 
  -- Existe el recibo de caja?
  --
  BEGIN
    SELECT d.nreccaj
      INTO vexistereccaj
      FROM detmovrecibo d
     WHERE d.nrecibo = v_nrecibo -- IAXIS-7640 04/12/2019
       AND d.nreccaj = p_nreccaj
       AND d.iimporte_moncon > 0
       AND d.smovrec = (SELECT MAX(d1.smovrec)
                          FROM detmovrecibo d1
                         WHERE d1.nrecibo = d.nrecibo)
       GROUP BY d.nreccaj;
  EXCEPTION 
    WHEN NO_DATA_FOUND THEN
      -- Recibo de caja no existe.
      vnerror := 89907065;
      RAISE e_object_error;
  END;                       
  --
  -- Validamos, antes que nada, si existen valores a reversar para el recibo.
  --
  SELECT NVL(SUM(d.iimporte_moncon), 0)
      INTO vsumreccaj
      FROM detmovrecibo d
     WHERE d.nrecibo = v_nrecibo -- IAXIS-7640 04/12/2019
       AND d.nreccaj = p_nreccaj
       AND d.smovrec = (SELECT MAX(d1.smovrec)
                          FROM detmovrecibo d1
                         WHERE d1.nrecibo = d.nrecibo);
  --
  --
  IF (pac_adm_cobparcial.f_get_importe_cobro_parcial(v_nrecibo) > 0) AND vsumreccaj > 0 THEN -- IAXIS-7640 04/12/2019
      --
      -- Si el recibo está pendiente, procedemos únicamente a reversar todos los valores de dicho recibo de caja sin alterar los movimientos del recibo.
      --
      vpasexec := 1;
      --
      IF f_estrec(v_nrecibo) = 0 THEN -- IAXIS-7640 04/12/2019
        --
        SELECT m.smovrec
          INTO vsmovrec
          FROM movrecibo m
         WHERE m.nrecibo = v_nrecibo -- IAXIS-7640 04/12/2019
           AND m.cestrec = f_estrec(m.nrecibo)
           AND m.smovrec = (SELECT MAX(m1.smovrec)
                              FROM movrecibo m1
                             WHERE m1.nrecibo = m.nrecibo
                               AND m1.cestrec = m.cestrec);
        -- 
        vpasexec := 2;
        --
        FOR i IN c_detmovrecibo(vsmovrec) LOOP
          --
          SELECT MAX(d.norden) + 1
            INTO vnorden
            FROM detmovrecibo d
           WHERE d.nrecibo = v_nrecibo; -- IAXIS-7640 04/12/2019
          --
          INSERT INTO detmovrecibo
            (smovrec,
             norden,
             iimporte,
             fmovimi,
             fefeadm,
             nrecibo,
             cusuari,
             sdevolu,
             nnumnlin,
             cbancar1,
             nnumord,
             fcontab,
             iimporte_moncon,
             fcambio,
             cmreca,
             nreccaj)
          VALUES
            (vsmovrec,
             vnorden,
             i.iimporte * (-1),
             f_sysdate,
             i.fefeadm,
             v_nrecibo, -- IAXIS-7640 04/12/2019
             f_user,
             i.sdevolu,
             i.nnumnlin,
             i.cbancar1,
             i.nnumord,
             trunc(f_sysdate),
             i.iimporte_moncon * (-1),
             i.fcambio,
             i.cmreca,
             i.nreccaj);
          --
          FOR j IN c_detmov_parc(i.smovrec, i.norden) LOOP
            --
            vpasexec := 3;
            --
            INSERT INTO detmovrecibo_parcial
              (smovrec,
               norden,
               nrecibo,
               cconcep,
               cgarant,
               nriesgo,
               iconcep,
               iconcep_monpol,
               fcambio,
               nreccaj,
               cmreca)
            VALUES
              (vsmovrec,
               vnorden,
               v_nrecibo, -- IAXIS-7640 04/12/2019
               j.cconcep,
               j.cgarant,
               j.nriesgo,
               j.iconcep * (-1),
               j.iconcep_monpol * (-1),
               j.fcambio,
               j.nreccaj,
               j.cmreca);
            --
          END LOOP;
        
        END LOOP;
      
        vpasexec := 4;
      
      ELSIF f_estrec(v_nrecibo) = 1 THEN -- IAXIS-7640 04/12/2019
        --
        -- Si el recibo está cobrado, primero que nada, generamos un nuevo movimiento para que quede pendiente. 
        --
        vpasexec := 5;
        --
        vnerror := f_movrecibo(v_nrecibo, -- IAXIS-7640 04/12/2019
                               0,
                               NULL,
                               NULL,
                               vsmovagr,
                               vnliqmen,
                               vnliqlin,
                               f_sysdate,
                               NULL,
                               NULL,
                               NULL,
                               NULL);
        --
        vpasexec := 6;
        --
        -- Continuamos si no hay errores. Si los hay, el proceso se detiene, se registra un error y se hace ROLLBACK.
        --
        IF vnerror = 0 THEN
          --
          -- Obtenemos el nuevo secuencial de movimiento de recibo generado a partir de la ejecución de la función f_movrecibo. Éste lo usaremos para 
          -- insertar los nuevos abonos y reversiones de ahora en adelante, incluyendo, ésta reversión que está siendo procesada.
          --
          SELECT m.smovrec
            INTO vsmovrec
            FROM movrecibo m
           WHERE m.nrecibo = v_nrecibo -- IAXIS-7640 04/12/2019
             AND m.cestrec = f_estrec(m.nrecibo)
             AND m.smovrec = (SELECT MAX(m1.smovrec)
                                FROM movrecibo m1
                               WHERE m1.nrecibo = m.nrecibo
                                 AND m1.cestrec = m.cestrec);
          --
          vpasexec := 7;
          --
          -- El anterior secuencial de movimiento de recibo en estado pendiente contiene toda la información de todos los abonos y reversiones que 
          -- se hicieron hasta el momento, incluyendo el abono con el que el recibo pasó de estado "Pendiente" a "Cobrado".
          --
          SELECT MAX(d.smovrec)
            INTO vsmovrecant
            FROM detmovrecibo d
           WHERE d.nrecibo = v_nrecibo -- IAXIS-7640 04/12/2019
             AND d.smovrec = (SELECT MAX(m.smovrec)
                                FROM movrecibo m
                               WHERE m.nrecibo = d.nrecibo
                                 AND m.cestrec = 0
                                 AND m.fmovfin IS NOT NULL);
          --
          vpasexec := 8;
          --
          -- Pasamos todos los abonos y reversiones que se hubieran hecho hasta el momento en el anterior secuencial de movimiento de recibo 
          -- al nuevo secuencial de movimiento de recibo. La idea es mantener una trazabilidad consistente en pantalla y base de datos e 
          -- incluir la nueva reversión en el nuevo secuencial de movimiento de recibo.
          --
          INSERT INTO detmovrecibo
            SELECT vsmovrec,
                   d.norden,
                   d.nrecibo,
                   d.iimporte,
                   d.fmovimi,
                   d.fefeadm,
                   d.cusuari,
                   d.sdevolu,
                   d.nnumnlin,
                   d.cbancar1,
                   d.nnumord,
                   d.smovrecr,
                   d.nordenr,
                   d.tdescrip,
                   d.fcontab,
                   d.iimporte_moncon,
                   d.sproces,
                   d.fcambio,
                   d.cmreca,
                   d.nreccaj
              FROM detmovrecibo d
             WHERE d.nrecibo = v_nrecibo -- IAXIS-7640 04/12/2019
               AND d.smovrec = vsmovrecant;
          --
          vpasexec := 9;
          --
          INSERT INTO detmovrecibo_parcial
            SELECT vsmovrec,
                   d.norden,
                   d.nrecibo,
                   d.cconcep,
                   d.cgarant,
                   d.nriesgo,
                   d.iconcep,
                   d.iconcep_monpol,
                   d.fcambio,
                   d.cmreca,
                   d.nreccaj
              FROM detmovrecibo_parcial d
             WHERE d.nrecibo = v_nrecibo -- IAXIS-7640 04/12/2019
               AND d.smovrec = vsmovrecant;
          --
          vpasexec := 10;
          --  
          -- Pasamos la reversión con el nuevo secuencial de movimiento de recibo.  
          --
          FOR i IN c_detmovrecibo(vsmovrec) LOOP
            --
            SELECT MAX(d.norden) + 1
              INTO vnorden
              FROM detmovrecibo d
             WHERE d.nrecibo = v_nrecibo; -- IAXIS-7640 04/12/2019
            --
            INSERT INTO detmovrecibo
              (smovrec,
               norden,
               iimporte,
               fmovimi,
               fefeadm,
               nrecibo,
               cusuari,
               sdevolu,
               nnumnlin,
               cbancar1,
               nnumord,
               fcontab,
               iimporte_moncon,
               fcambio,
               cmreca,
               nreccaj)
            VALUES
              (vsmovrec,
               vnorden,
               i.iimporte * (-1),
               f_sysdate,
               i.fefeadm,
               v_nrecibo, -- IAXIS-7640 04/12/2019
               f_user,
               i.sdevolu,
               i.nnumnlin,
               i.cbancar1,
               i.nnumord,
               trunc(f_sysdate),
               i.iimporte_moncon * (-1),
               i.fcambio,
               i.cmreca,
               i.nreccaj);
            --
            FOR j IN c_detmov_parc(i.smovrec, i.norden) LOOP
              --
              vpasexec := 11;
              --
              INSERT INTO detmovrecibo_parcial
                (smovrec,
                 norden,
                 nrecibo,
                 cconcep,
                 cgarant,
                 nriesgo,
                 iconcep,
                 iconcep_monpol,
                 fcambio,
                 nreccaj,
                 cmreca)
              VALUES
                (vsmovrec,
                 vnorden,
                 v_nrecibo, -- IAXIS-7640 04/12/2019
                 j.cconcep,
                 j.cgarant,
                 j.nriesgo,
                 j.iconcep * (-1),
                 j.iconcep_monpol * (-1),
                 j.fcambio,
                 j.nreccaj,
                 j.cmreca);
              --
            END LOOP;
            --
          END LOOP;
          --
        ELSE
          --
          -- Error en la ejecución de f_movrecibo
          --
          vpasexec := 12;
          --
          RAISE e_object_error;
          --
        END IF;
      ELSIF (f_estrec(v_nrecibo) = 2) THEN -- IAXIS-7640 04/12/2019
        --
        -- Error, el recibo está anulado.
        --
        vpasexec := 13;
        vnerror  := 101910;
        RAISE e_object_error;
        --
      END IF;
      --
  ELSE
    --
    -- Error, no existen valores a reversar  
    --
    vpasexec := 14;
    --
    vnerror := 89907066;
    RAISE e_object_error;
    --
  END IF;
  --
  p_nerror := vnerror; -- No hay errores. Se va con "0". IAXIS-6219 29/10/2019
  --
EXCEPTION
  WHEN e_param_error THEN
    p_tab_error(f_sysdate,
                f_user,
                vobject,
                vpasexec,
                vparam,
                f_axis_literales(1000005, vcidioma));            
   p_nerror := 1000005;  -- IAXIS-6219 29/10/2019
  WHEN e_object_error THEN
    p_tab_error(f_sysdate,
                f_user,
                vobject,
                vpasexec,
                vparam,
                f_axis_literales(vnerror, vcidioma));
    p_nerror := vnerror; -- IAXIS-6219 29/10/2019          
  WHEN OTHERS THEN
    p_tab_error(f_sysdate, f_user, vobject, vpasexec, vparam, SQLERRM);
    p_nerror := 1000001; -- IAXIS-6219 29/10/2019
END p_reversa_recibo;
/

CREATE or REPLACE SYNONYM AXIS00.P_REVERSA_RECIBO FOR AXIS.P_REVERSA_RECIBO;
GRANT EXECUTE ON AXIS.P_REVERSA_RECIBO TO R_AXIS;
