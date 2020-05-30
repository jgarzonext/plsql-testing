--------------------------------------------------------
--  DDL for Trigger TRG_DETREASEGEMI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_DETREASEGEMI" 
   AFTER UPDATE ON detreasegemi
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'SREAEMI = ' || :old.sreaemi;
BEGIN
   --
   p_his_procesosrea('DETREASEGEMI', vindica, 'SREAEMI', :old.sreaemi, :new.sreaemi);
   p_his_procesosrea('DETREASEGEMI', vindica, 'CGARANT', :old.cgarant, :new.cgarant);
   p_his_procesosrea('DETREASEGEMI', vindica, 'ICESION', :old.icesion, :new.icesion);
   p_his_procesosrea('DETREASEGEMI', vindica, 'SCONTRA', :old.scontra, :new.scontra);
   p_his_procesosrea('DETREASEGEMI', vindica, 'NVERSIO', :old.nversio, :new.nversio);
   p_his_procesosrea('DETREASEGEMI', vindica, 'CTRAMO', :old.ctramo, :new.ctramo);
   p_his_procesosrea('DETREASEGEMI', vindica, 'IPRITARREA', :old.ipritarrea, :new.ipritarrea);
   p_his_procesosrea('DETREASEGEMI', vindica, 'IDTOSEL', :old.idtosel, :new.idtosel);
   p_his_procesosrea('DETREASEGEMI', vindica, 'PSOBREPRIMA', :old.psobreprima, :new.psobreprima);
   p_his_procesosrea('DETREASEGEMI', vindica, 'SCESREA', :old.scesrea, :new.scesrea);
   p_his_procesosrea('DETREASEGEMI', vindica, 'NRIESGO', :old.nriesgo, :new.nriesgo);
   p_his_procesosrea('DETREASEGEMI', vindica, 'PCESION', :old.pcesion, :new.pcesion);
   p_his_procesosrea('DETREASEGEMI', vindica, 'SFACULT', :old.sfacult, :new.sfacult);
   p_his_procesosrea('DETREASEGEMI', vindica, 'ICAPCES', :old.icapces, :new.icapces);
   p_his_procesosrea('DETREASEGEMI', vindica, 'IEXTRAP', :old.iextrap, :new.iextrap);
   p_his_procesosrea('DETREASEGEMI', vindica, 'IEXTREA', :old.iextrea, :new.iextrea);
   p_his_procesosrea('DETREASEGEMI', vindica, 'ITARIFREA', :old.itarifrea, :new.itarifrea);
   --
END trg_detreasegemi;


/
ALTER TRIGGER "AXIS"."TRG_DETREASEGEMI" ENABLE;
