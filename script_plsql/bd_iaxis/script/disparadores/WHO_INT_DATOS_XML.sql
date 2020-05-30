--------------------------------------------------------
--  DDL for Trigger WHO_INT_DATOS_XML
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_INT_DATOS_XML" 
   BEFORE INSERT OR UPDATE
   ON int_datos_xml
   FOR EACH ROW
BEGIN
   IF :OLD.sxml IS NULL THEN   -- (Es insert)
      :NEW.cusuario := f_user;
      :NEW.fecha := f_sysdate;
   END IF;
END who_int_datos_xml;




/
ALTER TRIGGER "AXIS"."WHO_INT_DATOS_XML" ENABLE;
