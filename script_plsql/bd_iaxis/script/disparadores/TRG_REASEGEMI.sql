--------------------------------------------------------
--  DDL for Trigger TRG_REASEGEMI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_REASEGEMI" 
   AFTER UPDATE ON reasegemi
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'SREAEMI = ' || :old.sreaemi;
BEGIN
   --
   p_his_procesosrea('REASEGEMI', vindica, 'SREAEMI', :old.sreaemi, :new.sreaemi);
   p_his_procesosrea('REASEGEMI', vindica, 'SSEGURO', :old.sseguro, :new.sseguro);
   p_his_procesosrea('REASEGEMI', vindica, 'NRECIBO', :old.nrecibo, :new.nrecibo);
   p_his_procesosrea('REASEGEMI', vindica, 'NFACTOR', :old.nfactor, :new.nfactor);
   p_his_procesosrea('REASEGEMI', vindica, 'FEFECTE', :old.fefecte, :new.fefecte);
   p_his_procesosrea('REASEGEMI', vindica, 'FVENCIM', :old.fvencim, :new.fvencim);
   p_his_procesosrea('REASEGEMI', vindica, 'FCIERRE', :old.fcierre, :new.fcierre);
   p_his_procesosrea('REASEGEMI', vindica, 'FGENERA', :old.fgenera, :new.fgenera);
   p_his_procesosrea('REASEGEMI', vindica, 'CMOTCES', :old.cmotces, :new.cmotces);
   p_his_procesosrea('REASEGEMI', vindica, 'SPROCES', :old.sproces, :new.sproces);
   --
END trg_reasegemi;


/
ALTER TRIGGER "AXIS"."TRG_REASEGEMI" ENABLE;
