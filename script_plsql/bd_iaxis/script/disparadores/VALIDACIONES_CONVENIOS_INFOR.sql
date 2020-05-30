--------------------------------------------------------
--  DDL for Trigger VALIDACIONES_CONVENIOS_INFOR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."VALIDACIONES_CONVENIOS_INFOR" 
   AFTER INSERT OR UPDATE
   ON cnv_conv_emp_vers
   FOR EACH ROW
BEGIN
   pac_convenios_emp.p_inserta_version(:NEW.idconv, :NEW.idversion);
END;




/
ALTER TRIGGER "AXIS"."VALIDACIONES_CONVENIOS_INFOR" ENABLE;
