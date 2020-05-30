--------------------------------------------------------
--  DDL for Trigger TRG_COMISREAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_COMISREAS" 
   AFTER UPDATE ON comisreas
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'CCOMREA = ' || :old.ccomrea || ', SCOMREA = ' ||
                            :old.scomrea;
BEGIN
   --
   p_his_procesosrea('COMISREAS', vindica, 'FCOMINI', :old.fcomini, :new.fcomini);
   p_his_procesosrea('COMISREAS', vindica, 'PCOMIA1', :old.pcomia1, :new.pcomia1);
   p_his_procesosrea('COMISREAS', vindica, 'PCOMIAS', :old.pcomias, :new.pcomias);
   p_his_procesosrea('COMISREAS', vindica, 'FCOMFIN', :old.fcomfin, :new.fcomfin);
   --
END trg_comisreas;


/
ALTER TRIGGER "AXIS"."TRG_COMISREAS" ENABLE;
