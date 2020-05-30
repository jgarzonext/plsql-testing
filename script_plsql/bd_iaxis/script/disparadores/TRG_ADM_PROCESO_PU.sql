--------------------------------------------------------
--  DDL for Trigger TRG_ADM_PROCESO_PU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_ADM_PROCESO_PU" 
   AFTER UPDATE
   ON adm_proceso_pu
   FOR EACH ROW
         WHEN ((NEW.importe <> OLD.importe)
        OR(NEW.freproc <> OLD.freproc)
        OR(NEW.freproc IS NOT NULL
           AND OLD.freproc IS NULL)) DECLARE
   v_nmovhis      NUMBER;
BEGIN
   SELECT NVL(MAX(nmovhis) + 1, 1)
     INTO v_nmovhis
     FROM his_adm_proceso_pu
    WHERE sproces = :OLD.sproces
      AND sseguro = :OLD.sseguro
      AND nriesgo = :OLD.nriesgo
      AND fefecto = :OLD.fefecto;

   INSERT INTO his_adm_proceso_pu
               (sproces, sseguro, nriesgo, nmovimi, fefecto,
                nmovhis, fcalcul, ctipopu, cestado, importe,
                cerror, terror, freproc)
        VALUES (:OLD.sproces, :OLD.sseguro, :OLD.nriesgo, :OLD.nmovimi, :OLD.fefecto,
                v_nmovhis, :OLD.fcalcul, :OLD.ctipopu, :OLD.cestado, :OLD.importe,
                :OLD.cerror, :OLD.terror, :OLD.freproc);
END;





/
ALTER TRIGGER "AXIS"."TRG_ADM_PROCESO_PU" ENABLE;
