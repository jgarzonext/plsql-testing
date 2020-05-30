--------------------------------------------------------
--  DDL for Trigger VALIDACIONES_CONVENIOS_VALIDA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."VALIDACIONES_CONVENIOS_VALIDA" 
   AFTER INSERT OR UPDATE
   ON cnv_conv_emp_vers
DECLARE
   inserta        NUMBER := 0;
BEGIN
   IF INSERTING THEN   -- (Es insert)
      inserta := 1;
   END IF;

   pac_convenios_emp.p_valida_trigger(inserta);
END;




/
ALTER TRIGGER "AXIS"."VALIDACIONES_CONVENIOS_VALIDA" ENABLE;
