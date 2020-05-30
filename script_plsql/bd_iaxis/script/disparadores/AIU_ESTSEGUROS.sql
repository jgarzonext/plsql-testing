--------------------------------------------------------
--  DDL for Trigger AIU_ESTSEGUROS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."AIU_ESTSEGUROS" 
   AFTER INSERT OR UPDATE OF cbancar
   ON estseguros
   FOR EACH ROW
DECLARE
   v_nmovimi      NUMBER;
   v_cbancob      NUMBER;
   v_cont         NUMBER;
BEGIN
   BEGIN
      SELECT nvalpar
        INTO v_cbancob
        FROM parempresas
       WHERE cparam = 'CBANCOB'
         AND cempres = :NEW.cempres;
   EXCEPTION
      WHEN NO_DATA_FOUND THEN
         v_cbancob := NULL;
   END;

   IF v_cbancob IS NOT NULL THEN
      BEGIN
         SELECT MAX(nmovimi)
           INTO v_nmovimi
           FROM garanseg
          WHERE sseguro = :NEW.ssegpol;
      EXCEPTION
         WHEN OTHERS THEN
            v_nmovimi := 1;
      END;

      IF :NEW.cbancar IS NOT NULL THEN
         BEGIN
            SELECT COUNT(*)
              INTO v_cont
              FROM movseguro
             WHERE sseguro = :NEW.ssegpol;
         EXCEPTION
            WHEN OTHERS THEN
               v_cont := 0;
         END;

         IF v_cont = 0 THEN   --Sólo si es Nueva Producción. Si no ya se realiza en el pac_alctr126.traspaso_tablas_seguros
            BEGIN
               INSERT INTO estseg_cbancar
                           (sseguro, nmovimi, finiefe, ffinefe,
                            cbancar, cbancob)
                    VALUES (:NEW.sseguro, NVL(v_nmovimi, 1), :NEW.fefecto, NULL,
                            :NEW.cbancar, NULL);
            EXCEPTION
               WHEN DUP_VAL_ON_INDEX THEN
                  UPDATE estseg_cbancar
                     SET finiefe = :NEW.fefecto,
                         ffinefe = NULL,
                         cbancar = :NEW.cbancar,
                         cbancob = NULL
                   WHERE sseguro = :NEW.sseguro
                     AND nmovimi = NVL(v_nmovimi, 1);
            END;
         END IF;
      ELSE
         DELETE FROM estseg_cbancar
               WHERE sseguro = :NEW.sseguro
                 AND nmovimi = NVL(v_nmovimi, 1);
      END IF;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'aiu_estseguros(others)', 1, SQLERRM, SQLERRM);
      raise_application_error
                          (-20001,
                           'Error no controlado : Ha fallado el trigger aiu_estseguros :  '
                           || SQLERRM);
END aiu_estseguros;









/
ALTER TRIGGER "AXIS"."AIU_ESTSEGUROS" ENABLE;
