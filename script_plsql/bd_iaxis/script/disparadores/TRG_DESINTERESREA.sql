--------------------------------------------------------
--  DDL for Trigger TRG_DESINTERESREA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_DESINTERESREA" 
   AFTER UPDATE ON desinteresrea
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'CINTRES = ' || :old.cintres;
BEGIN
   --
   p_his_procesosrea('DESINTERESREA', vindica, 'CINTRES', :old.cintres, :new.cintres);
   p_his_procesosrea('DESINTERESREA', vindica, 'TINTRES', :old.tintres, :new.tintres);

   --
END trg_desinteresrea;


/
ALTER TRIGGER "AXIS"."TRG_DESINTERESREA" ENABLE;
