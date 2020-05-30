--------------------------------------------------------
--  DDL for Trigger TRG_DESCOMISIONCONTRA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_DESCOMISIONCONTRA" 
   AFTER UPDATE ON descomisioncontra
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'CCOMREA = ' || :old.ccomrea || ', CIDIOMA = ' ||
                            :old.cidioma;
BEGIN
   --
   p_his_procesosrea('DESCOMISIONCONTRA', vindica, 'TDESCRI', :old.tdescri, :new.tdescri);
   --
END trg_descomisioncontra;


/
ALTER TRIGGER "AXIS"."TRG_DESCOMISIONCONTRA" ENABLE;
