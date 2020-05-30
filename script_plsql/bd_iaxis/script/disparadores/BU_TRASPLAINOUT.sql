--------------------------------------------------------
--  DDL for Trigger BU_TRASPLAINOUT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BU_TRASPLAINOUT" 
   BEFORE UPDATE
   ON trasplainout
   FOR EACH ROW
DECLARE
   vsubtip        NUMBER(2) := NULL;
   secuencia      NUMBER;
BEGIN
   IF :NEW.cestado = 2
      AND :OLD.cestado <> 2 THEN
      :NEW.fvalor := NVL(:OLD.fvalor, f_sysdate);
   END IF;
END bu_trasplainout;









/
ALTER TRIGGER "AXIS"."BU_TRASPLAINOUT" ENABLE;
