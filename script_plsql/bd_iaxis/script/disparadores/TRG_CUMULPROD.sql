--------------------------------------------------------
--  DDL for Trigger TRG_CUMULPROD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_CUMULPROD" 
   AFTER UPDATE ON cumulprod
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'CCUMPROD = ' || :old.ccumprod ||
                            ', FINIEFE = ' || :old.finiefe ||
                            ', SPRODUC = ' || :old.sproduc;
BEGIN
   --
   p_his_procesosrea('CUMULPROD', vindica, 'FFINEFE', :old.ffinefe, :new.ffinefe);
   p_his_procesosrea('CUMULPROD', vindica, 'CUSUALT', :old.cusualt, :new.cusualt);
   p_his_procesosrea('CUMULPROD', vindica, 'FALTA', :old.falta, :new.falta);
   p_his_procesosrea('CUMULPROD', vindica, 'CUSUMOD', :old.cusumod, :new.cusumod);
   p_his_procesosrea('CUMULPROD', vindica, 'FMODIFI', :old.fmodifi, :new.fmodifi);
   --
END trg_cumulprod;


/
ALTER TRIGGER "AXIS"."TRG_CUMULPROD" ENABLE;
