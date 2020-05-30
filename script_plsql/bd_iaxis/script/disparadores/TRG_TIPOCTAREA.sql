--------------------------------------------------------
--  DDL for Trigger TRG_TIPOCTAREA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_TIPOCTAREA" 
   AFTER UPDATE ON tipoctarea
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'CEMPRES = ' || :old.cempres || ' ,v = ' ||
                            :old.cconcep;
BEGIN
   --
   p_his_procesosrea('TIPOCTAREA', vindica, 'CTIPCTA', :old.ctipcta, :new.ctipcta);
   p_his_procesosrea('TIPOCTAREA', vindica, 'CDEBHAB', :old.cdebhab, :new.cdebhab);
   --
END trg_tipoctarea;


/
ALTER TRIGGER "AXIS"."TRG_TIPOCTAREA" ENABLE;
