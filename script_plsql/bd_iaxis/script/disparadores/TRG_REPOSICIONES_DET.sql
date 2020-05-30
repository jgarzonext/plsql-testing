--------------------------------------------------------
--  DDL for Trigger TRG_REPOSICIONES_DET
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_REPOSICIONES_DET" 
   AFTER UPDATE ON reposiciones_det
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'CCODIGO = ' || :old.CCODIGO || ', NORDEN = ' ||
                            :old.NORDEN;
BEGIN
   --
   p_his_procesosrea('REPOSICIONES_DET', vindica, 'CCODIGO', :old.ccodigo, :new.ccodigo);
   p_his_procesosrea('REPOSICIONES_DET', vindica, 'NORDEN', :old.norden, :new.norden);
   p_his_procesosrea('REPOSICIONES_DET', vindica, 'ICAPACIDAD', :old.icapacidad, :new.icapacidad);
   p_his_procesosrea('REPOSICIONES_DET', vindica, 'PTASA', :old.ptasa, :new.ptasa);
   --
END trg_reposiciones_det;


/
ALTER TRIGGER "AXIS"."TRG_REPOSICIONES_DET" ENABLE;
