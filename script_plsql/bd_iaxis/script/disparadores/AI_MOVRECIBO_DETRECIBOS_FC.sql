--------------------------------------------------------
--  DDL for Trigger AI_MOVRECIBO_DETRECIBOS_FC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."AI_MOVRECIBO_DETRECIBOS_FC" 
   AFTER INSERT
   ON movrecibo
   FOR EACH ROW
      WHEN (NEW.cestrec = 1) DECLARE
   wmoneinst      productos.cdivisa%TYPE;
   vmoneprod      productos.cdivisa%TYPE;
   viconcep_monpol detrecibos.iconcep_monpol%TYPE;
   vfcambio       movrecibo.fmovini%TYPE;
   vitasa         NUMBER;
   pasexec        NUMBER;
   v_irecibo      NUMBER;
BEGIN
   pasexec := 10;

   SELECT NVL(SUM(NVL(iimporte, iimporte_moncon)), 0)
     INTO v_irecibo
     FROM detmovrecibo
    WHERE nrecibo = :NEW.nrecibo
      AND FCAMBIO = null;

   -- El par¿metro ha de estar activado y no ha de tener cobros parciales
   IF NVL(pac_parametros.f_parempresa_n(pac_md_common.f_get_cxtempresa, 'DETRECIBOS_FCAMBIO'),
          0) = 1
      --AND pac_adm_cobparcial.f_get_importe_cobro_parcial(:NEW.nrecibo) = 0 THEN-- cambiamos esto para arreglar el error de Mutating table
      AND v_irecibo = 0 THEN
      pasexec := 20;

      SELECT p.cdivisa
        INTO vmoneprod
        FROM productos p, seguros s, recibos r
       WHERE p.sproduc = s.sproduc
         AND s.sseguro = r.sseguro
         AND r.nrecibo = :NEW.nrecibo;

      pasexec := 30;

      SELECT f_parinstalacion_n('MONEDAINST')
        INTO wmoneinst
        FROM DUAL;

      pasexec := 40;

      IF wmoneinst <> vmoneprod THEN
         pasexec := 50;
         vfcambio :=
            pac_eco_tipocambio.f_fecha_max_cambio(pac_monedas.f_cmoneda_t(vmoneprod),
                                                  pac_monedas.f_cmoneda_t(wmoneinst),
                                                  :NEW.fmovini);
         vitasa := pac_eco_tipocambio.f_cambio(pac_monedas.f_cmoneda_t(vmoneprod),
                                               pac_monedas.f_cmoneda_t(wmoneinst), vfcambio);
      END IF;

      pasexec := 60;

      FOR i IN (SELECT   *
                    FROM detrecibos
                   WHERE nrecibo = :NEW.nrecibo
                     AND fcambio <= vfcambio
                ORDER BY cconcep) LOOP
         BEGIN
            pasexec := 80;

            --contravalor viconcep pra infor el viconcep_monpol
            IF vitasa IS NULL THEN
               pasexec := 100;
               viconcep_monpol := i.iconcep;
            ELSE
               pasexec := 110;
               viconcep_monpol := pac_monedas.f_round(i.iconcep * vitasa, wmoneinst);
            END IF;

            --
            BEGIN
               pasexec := 120;

               UPDATE detrecibos_fcambio
                  SET smovrec = :NEW.smovrec,
                      iconcep_monpol = viconcep_monpol,
                      fcambio = vfcambio
                WHERE nrecibo = i.nrecibo
                  AND cconcep = i.cconcep
                  AND cgarant = i.cgarant
                  AND nriesgo = i.nriesgo;

               IF SQL%NOTFOUND THEN
                  pasexec := 130;

                  INSERT INTO detrecibos_fcambio
                              (nrecibo, cconcep, cgarant, nriesgo, iconcep,
                               cageven, nmovima, smovrec, iconcep_monpol, fcambio)
                       VALUES (i.nrecibo, i.cconcep, i.cgarant, i.nriesgo, i.iconcep,
                               i.cageven, i.nmovima, :NEW.smovrec, viconcep_monpol, vfcambio);
               END IF;
            END;
         --
         END;

         pasexec := 140;
      END LOOP;

      pasexec := 150;
   END IF;

   pasexec := 160;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'AI_MOVRECIBO_DETRECIBOS_FC', 1,
                  'Error en el trigger - traza(' || pasexec || ')', SQLERRM);
      RAISE;
END;


/
ALTER TRIGGER "AXIS"."AI_MOVRECIBO_DETRECIBOS_FC" ENABLE;
