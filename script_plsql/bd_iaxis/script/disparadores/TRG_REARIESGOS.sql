--------------------------------------------------------
--  DDL for Trigger TRG_REARIESGOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_REARIESGOS" 
   AFTER UPDATE ON reariesgos
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'SSEGURO = ' || :old.SSEGURO;
BEGIN
   --
   p_his_procesosrea('REARIESGOS', vindica, 'SSEGURO', :old.sseguro, :new.sseguro);
   p_his_procesosrea('REARIESGOS', vindica, 'NRIESGO', :old.nriesgo, :new.nriesgo);
   p_his_procesosrea('REARIESGOS', vindica, 'FREAINI', :old.freaini, :new.freaini);
   p_his_procesosrea('REARIESGOS', vindica, 'CGARANT', :old.cgarant, :new.cgarant);
   p_his_procesosrea('REARIESGOS', vindica, 'SCUMULO', :old.scumulo, :new.scumulo);
   p_his_procesosrea('REARIESGOS', vindica, 'SCONTRA', :old.scontra, :new.scontra);
   p_his_procesosrea('REARIESGOS', vindica, 'FREAFIN', :old.freafin, :new.freafin);
   p_his_procesosrea('REARIESGOS', vindica, 'NVERSIO', :old.nversio, :new.nversio);
   --
END trg_reariesgos;


/
ALTER TRIGGER "AXIS"."TRG_REARIESGOS" ENABLE;
