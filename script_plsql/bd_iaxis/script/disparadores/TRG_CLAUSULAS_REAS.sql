--------------------------------------------------------
--  DDL for Trigger TRG_CLAUSULAS_REAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_CLAUSULAS_REAS" 
   AFTER UPDATE ON clausulas_reas
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'CCODIGO = ' || :old.ccodigo || ', CIDIOMA = ' ||
                            :old.cidioma;
BEGIN
   --
   p_his_procesosrea('CLAUSULAS_REAS', vindica, 'CCODIGO', :old.ccodigo, :new.ccodigo);
   p_his_procesosrea('CLAUSULAS_REAS', vindica, 'CIDIOMA', :old.cidioma, :new.cidioma);
   p_his_procesosrea('CLAUSULAS_REAS', vindica, 'TDESCRIPCION', :old.tdescripcion, :new.tdescripcion);
   --
END trg_clausulas_reas;


/
ALTER TRIGGER "AXIS"."TRG_CLAUSULAS_REAS" ENABLE;
