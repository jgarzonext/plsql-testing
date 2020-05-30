--------------------------------------------------------
--  DDL for Trigger REEMBOLSOS_HIS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."REEMBOLSOS_HIS" 
AFTER UPDATE ON Reembolsos
FOR EACH ROW
BEGIN
    INSERT INTO HisReembolsos (NREEMB,SSEGURO,NRIESGO,CGARANT,AGR_SALUD,SPERSON,CESTADO,FESTADO,TOBSERV,CBANCAR
                                  ,CTIPBAN,FALTA,CUSUALTA,CORIGEN,usuario,fecha)
     VALUES(:OLD.NREEMB,:OLD.SSEGURO,:OLD.NRIESGO,:OLD.CGARANT,:OLD.AGR_SALUD,:OLD.SPERSON,:OLD.CESTADO,:OLD.FESTADO,
                  :OLD.TOBSERV,:OLD.CBANCAR,:OLD.CTIPBAN,:OLD.FALTA,:OLD.CUSUALTA,:OLD.CORIGEN,F_USER,F_SYSDATE);

END;









/
ALTER TRIGGER "AXIS"."REEMBOLSOS_HIS" ENABLE;
