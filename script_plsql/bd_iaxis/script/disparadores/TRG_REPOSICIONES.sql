--------------------------------------------------------
--  DDL for Trigger TRG_REPOSICIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_REPOSICIONES" 
   AFTER UPDATE ON reposiciones
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'CCODIGO = ' || :old.ccodigo || ', CIDIOMA = ' ||
                            :old.cidioma;
BEGIN
   --
   p_his_procesosrea('REPOSICIONES', vindica, 'CCODIGO', :old.ccodigo, :new.ccodigo);
   p_his_procesosrea('REPOSICIONES', vindica, 'CIDIOMA', :old.cidioma, :new.cidioma);
   p_his_procesosrea('REPOSICIONES', vindica, 'TDESCRIPCION', :old.tdescripcion, :new.tdescripcion);
   --
END trg_reposiciones;


/
ALTER TRIGGER "AXIS"."TRG_REPOSICIONES" ENABLE;
