--------------------------------------------------------
--  DDL for Trigger VALIDACIONES_CONVENIOS_INI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."VALIDACIONES_CONVENIOS_INI" 
   BEFORE INSERT OR UPDATE
   ON cnv_conv_emp_vers
BEGIN
   pac_convenios_emp.p_inicia;
END;




/
ALTER TRIGGER "AXIS"."VALIDACIONES_CONVENIOS_INI" ENABLE;
