--------------------------------------------------------
--  DDL for Trigger TRG_COD_CLAUSULAS_REAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_COD_CLAUSULAS_REAS" 
   AFTER UPDATE ON cod_clausulas_reas
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'CCODIGO = ' || :old.ccodigo;
BEGIN
   --
   p_his_procesosrea('COD_CLAUSULAS_REAS', vindica, 'CCODIGO', :old.ccodigo, :new.ccodigo);
   p_his_procesosrea('COD_CLAUSULAS_REAS', vindica, 'CTIPO', :old.ctipo, :new.ctipo);
   p_his_procesosrea('COD_CLAUSULAS_REAS', vindica, 'FEFECTO', :old.fefecto, :new.fefecto);
   p_his_procesosrea('COD_CLAUSULAS_REAS', vindica, 'FVENCIM', :old.fvencim, :new.fvencim);
   --
END trg_cod_clausulas_reas;


/
ALTER TRIGGER "AXIS"."TRG_COD_CLAUSULAS_REAS" ENABLE;
