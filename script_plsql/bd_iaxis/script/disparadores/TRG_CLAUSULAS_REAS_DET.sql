--------------------------------------------------------
--  DDL for Trigger TRG_CLAUSULAS_REAS_DET
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_CLAUSULAS_REAS_DET" 
   AFTER UPDATE ON clausulas_reas_det
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'CCODIGO = ' || :old.ccodigo || ', CTRAMO = ' ||
                            :old.ctramo || ', ILIM_INF = ' || :old.ilim_inf;
BEGIN
   --
   p_his_procesosrea('CLAUSULAS_REAS_DET', vindica, 'ILIM_SUP', :old.ilim_sup, :new.ilim_sup);
   p_his_procesosrea('CLAUSULAS_REAS_DET', vindica, 'PCTPART', :old.pctpart, :new.pctpart);
   p_his_procesosrea('CLAUSULAS_REAS_DET', vindica, 'PCTMIN', :old.pctmin, :new.pctmin);
   p_his_procesosrea('CLAUSULAS_REAS_DET', vindica, 'PCTMAX', :old.pctmax, :new.pctmax);
   --
END trg_clausulas_reas_det;


/
ALTER TRIGGER "AXIS"."TRG_CLAUSULAS_REAS_DET" ENABLE;
