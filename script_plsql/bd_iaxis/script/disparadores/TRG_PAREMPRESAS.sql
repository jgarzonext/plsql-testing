--------------------------------------------------------
--  DDL for Trigger TRG_PAREMPRESAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PAREMPRESAS" 
   AFTER UPDATE ON parempresas
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'CEMPRES = ' || :old.cempres || ', CPARAM = ' ||
                            :old.cparam;
BEGIN
   --
   p_his_procesosrea('PAREMPRESAS', vindica, 'NVALPAR', :old.nvalpar, :new.nvalpar);
   p_his_procesosrea('PAREMPRESAS', vindica, 'TVALPAR', :old.tvalpar, :new.tvalpar);
   p_his_procesosrea('PAREMPRESAS', vindica, 'FVALPAR', :old.fvalpar, :new.fvalpar);
   --
END trg_parempresas;


/
ALTER TRIGGER "AXIS"."TRG_PAREMPRESAS" ENABLE;
