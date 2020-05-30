--------------------------------------------------------
--  DDL for Trigger TRG_COMGARANT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_COMGARANT" 
   AFTER UPDATE ON comgarant
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'SCOMREA = ' || :old.SCOMREA;
BEGIN
   --
   p_his_procesosrea('COMGARANT', vindica, 'CCOMREA', :old.ccomrea, :new.ccomrea);
   p_his_procesosrea('COMGARANT', vindica, 'CGARAUX', :old.cgaraux, :new.cgaraux);
   p_his_procesosrea('COMGARANT', vindica, 'NORDGAR', :old.nordgar, :new.nordgar);
   p_his_procesosrea('COMGARANT', vindica, 'CANYDES', :old.canydes, :new.canydes);
   p_his_procesosrea('COMGARANT', vindica, 'CANYHAS', :old.canyhas, :new.canyhas);
   p_his_procesosrea('COMGARANT', vindica, 'CDURDES', :old.cdurdes, :new.cdurdes);
   p_his_procesosrea('COMGARANT', vindica, 'CDURHAS', :old.cdurhas, :new.cdurhas);
   p_his_procesosrea('COMGARANT', vindica, 'PCOMIAS', :old.pcomias, :new.pcomias);
   --
END trg_comgarant;


/
ALTER TRIGGER "AXIS"."TRG_COMGARANT" ENABLE;
