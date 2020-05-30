--------------------------------------------------------
--  DDL for Trigger TRG_CUMULOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_CUMULOS" 
   AFTER UPDATE ON cumulos
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'SCUMULO = ' || :old.scumulo;
BEGIN
   --
   p_his_procesosrea('CUMULOS', vindica, 'SCUMULO', :old.scumulo, :new.scumulo);
   p_his_procesosrea('CUMULOS', vindica, 'FCUMINI', :old.fcumini, :new.fcumini);
   p_his_procesosrea('CUMULOS', vindica, 'FCUMFIN', :old.fcumfin, :new.fcumfin);
   p_his_procesosrea('CUMULOS', vindica, 'CCUMPROD', :old.ccumprod, :new.ccumprod);
   p_his_procesosrea('CUMULOS', vindica, 'SPERSON', :old.sperson, :new.sperson);
   p_his_procesosrea('CUMULOS', vindica, 'CTIPCUM', :old.ctipcum, :new.ctipcum);
   p_his_procesosrea('CUMULOS', vindica, 'CRAMO', :old.cramo, :new.cramo);
   p_his_procesosrea('CUMULOS', vindica, 'SPRODUC', :old.sproduc, :new.sproduc);
   --
END trg_cumulos;


/
ALTER TRIGGER "AXIS"."TRG_CUMULOS" ENABLE;
