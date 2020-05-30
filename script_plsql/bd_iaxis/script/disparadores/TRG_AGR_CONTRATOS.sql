--------------------------------------------------------
--  DDL for Trigger TRG_AGR_CONTRATOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_AGR_CONTRATOS" 
   AFTER UPDATE ON agr_contratos
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'SCONTRA = ' || :old.scontra;
BEGIN
   --
   p_his_procesosrea('AGR_CONTRATOS', vindica, 'CRAMO', :old.cramo, :new.cramo);
   p_his_procesosrea('AGR_CONTRATOS', vindica, 'CMODALI', :old.cmodali, :new.cmodali);
   p_his_procesosrea('AGR_CONTRATOS', vindica, 'CCOLECT', :old.ccolect, :new.ccolect);
   p_his_procesosrea('AGR_CONTRATOS', vindica, 'CTIPSEG', :old.ctipseg, :new.ctipseg);
   p_his_procesosrea('AGR_CONTRATOS', vindica, 'CACTIVI', :old.cactivi, :new.cactivi);
   p_his_procesosrea('AGR_CONTRATOS', vindica, 'CGARANT', :old.cgarant, :new.cgarant);
   p_his_procesosrea('AGR_CONTRATOS', vindica, 'NVERSIO', :old.nversio, :new.nversio);
   p_his_procesosrea('AGR_CONTRATOS', vindica, 'ILIMSUB', :old.ilimsub, :new.ilimsub);
   --
END trg_agr_contratos;


/
ALTER TRIGGER "AXIS"."TRG_AGR_CONTRATOS" ENABLE;
