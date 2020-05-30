--------------------------------------------------------
--  DDL for Trigger AGENSEGU_HIS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."AGENSEGU_HIS" 
   AFTER UPDATE
   ON agensegu
   FOR EACH ROW
BEGIN
   INSERT INTO hisagensegu
               (sseguro, nlinea, ctipreg, cestado, ttitulo,
                ffinali, ttextos, cusumod, fmodifi)
        VALUES (:OLD.sseguro, :OLD.nlinea, :OLD.ctipreg, :OLD.cestado, :OLD.ttitulo,
                :OLD.ffinali, :OLD.ttextos, f_user, f_sysdate);
END;









/
ALTER TRIGGER "AXIS"."AGENSEGU_HIS" ENABLE;
