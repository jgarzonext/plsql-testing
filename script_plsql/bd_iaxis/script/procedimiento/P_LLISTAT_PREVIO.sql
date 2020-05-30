--------------------------------------------------------
--  DDL for Procedure P_LLISTAT_PREVIO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_LLISTAT_PREVIO" (
   c_fitxer IN VARCHAR2,
   p_cidioma NUMBER,   -- parametros
   p_cagente NUMBER,
   p_sproliq NUMBER)
AUTHID CURRENT_USER IS
   fitx           UTL_FILE.file_type;
   v_error        NUMBER;
   v_tempres      VARCHAR2(100);

   CURSOR c_agentes IS
      SELECT   cempres, cagente, pac_redcomercial.ff_desagente(cagente, p_cidioma) tnombre,
               SUM(icomisi) comi, SUM(iprinet) liq, SUM(itotalr) liqm
          FROM liqmovrec_previo
         WHERE sproliq = p_sproliq
           AND cagente = NVL(p_cagente, cagente)
      GROUP BY cempres, cagente
      ORDER BY cempres, cagente;

   CURSOR c_recibos(vagente IN NUMBER) IS
      SELECT   nrecibo, iprinet, SUM(icomisi) icomliq, itotalr,
               (SUM(icomisi) * 0.018) iretencion
          FROM liqmovrec_previo
         WHERE sproliq = p_sproliq
           AND cagente = NVL(vagente, cagente)
      GROUP BY nrecibo, iprinet, itotalr
      ORDER BY nrecibo;

   CURSOR c_liquid(vagente IN NUMBER) IS
      SELECT   DECODE(cdebhab, 1, 'Debe', 2, 'Haber') cdebhab, d.cconcta, d.tcconcta, iimport,
               tdescrip, ff_desvalorfijo(693, p_cidioma, cmanual) tipolin,
               ff_desvalorfijo(18, p_cidioma, cestado) estado
          FROM ctactes_previo, desctactes d
         WHERE sproces = p_sproliq
           AND cagente = vagente
           AND d.cconcta = ctactes_previo.cconcta
           AND d.cidioma = p_cidioma
      ORDER BY nnumlin ASC;

   TYPE t_lits IS TABLE OF VARCHAR2(50);

   ttexto         VARCHAR2(100);
   v_ruta         VARCHAR2(100);
   v_cad          VARCHAR2(600) := NULL;
   v_lits         t_lits
      := t_lits('Empresa', 'Cod. Agente', 'Des. Agente', 'Importe Comisión',
                'Importe prima liquida', 'Prima liquida mostrada');
BEGIN
   v_ruta := f_parinstalacion_t('INFORMES');
   fitx := UTL_FILE.fopen(v_ruta, c_fitxer || USER || '.csv', 'w');

   FOR i IN 1 .. 6 LOOP   --cabeceras
      ttexto := v_lits(i);

      IF v_cad IS NULL THEN
         v_cad := ttexto;
      ELSE
         v_cad := v_cad || ';' || ttexto;
      END IF;
   END LOOP;

   UTL_FILE.put_line(fitx, v_cad);

   -- cursores
   FOR reg IN c_agentes LOOP
      v_error := f_desempresa(reg.cempres, NULL, v_tempres);
      UTL_FILE.put_line(fitx,
                        v_tempres || ';' || reg.cagente || ';' || reg.tnombre || ';'
                        || reg.comi || ';' || reg.liq || ';' || reg.liqm);
      UTL_FILE.put_line(fitx, '');
      UTL_FILE.put_line(fitx, UPPER(';NRECIBO;Prima Neta;Comisión;Retención'));

      FOR reg2 IN c_recibos(reg.cagente) LOOP
         UTL_FILE.put_line(fitx,
                           ';' || reg2.nrecibo || ';' || reg2.itotalr || ';' || reg2.icomliq
                           || ';' || reg2.iretencion);
      END LOOP;

      UTL_FILE.put_line(fitx, '');
      UTL_FILE.put_line
                       (fitx,
                        UPPER(';Descripción Concepto;Importe;Concepto Liquidación;Tipo Apunte'));

      FOR reg3 IN c_liquid(reg.cagente) LOOP
         UTL_FILE.put_line(fitx,
                           ';' || reg3.tcconcta || ';' || reg3.iimport || ';' || reg3.tdescrip
                           || ';' || reg3.tipolin);
      END LOOP;
   END LOOP;

   UTL_FILE.fclose(fitx);
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."P_LLISTAT_PREVIO" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."P_LLISTAT_PREVIO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_LLISTAT_PREVIO" TO "CONF_DWH";
