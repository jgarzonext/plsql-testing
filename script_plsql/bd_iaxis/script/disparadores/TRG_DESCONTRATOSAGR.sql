--------------------------------------------------------
--  DDL for Trigger TRG_DESCONTRATOSAGR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_DESCONTRATOSAGR" 
   AFTER UPDATE ON descontratosagr
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'SCONAGR = ' || :old.sconagr || ', CIDIOMA = ' ||
                            :old.cidioma;
BEGIN
   --
   p_his_procesosrea('DESCONTRATOSAGR', vindica, 'TCONAGR', :old.tconagr, :new.tconagr);
   --
END trg_descontratosagr;


/
ALTER TRIGGER "AXIS"."TRG_DESCONTRATOSAGR" ENABLE;
