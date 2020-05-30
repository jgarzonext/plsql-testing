--------------------------------------------------------
--  DDL for Trigger WHO_DEVBANREC_CODA_DETALLE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_DEVBANREC_CODA_DETALLE" 
   BEFORE INSERT OR UPDATE
   ON devbanrec_coda_detalle
   FOR EACH ROW
BEGIN
   :NEW.cusuario := f_user;
END who_devbanrec_coda_detalle;









/
ALTER TRIGGER "AXIS"."WHO_DEVBANREC_CODA_DETALLE" ENABLE;
