--------------------------------------------------------
--  DDL for Trigger TRG_REAFORMULA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_REAFORMULA" 
   AFTER UPDATE ON reaformula
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'SCONTRA = ' || :old.scontra || ', NVERSIO = ' ||
                            :old.nversio;
BEGIN
   --
   p_his_procesosrea('REAFORMULA', vindica, 'SCONTRA', :old.scontra, :new.scontra);
   p_his_procesosrea('REAFORMULA', vindica, 'NVERSIO', :old.nversio, :new.nversio);
   p_his_procesosrea('REAFORMULA', vindica, 'CGARANT', :old.cgarant, :new.cgarant);
   p_his_procesosrea('REAFORMULA', vindica, 'CCAMPO', :old.ccampo, :new.ccampo);
   p_his_procesosrea('REAFORMULA', vindica, 'CLAVE', :old.clave, :new.clave);
   p_his_procesosrea('REAFORMULA', vindica, 'SPRODUC', :old.sproduc, :new.sproduc);
   --
END trg_reaformula;


/
ALTER TRIGGER "AXIS"."TRG_REAFORMULA" ENABLE;
