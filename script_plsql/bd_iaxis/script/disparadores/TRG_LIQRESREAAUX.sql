--------------------------------------------------------
--  DDL for Trigger TRG_LIQRESREAAUX
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_LIQRESREAAUX" 
   AFTER UPDATE ON liqresreaaux
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'NSINIES = ' || :old.nsinies || ' ,SSEGURO = ' ||
                            :old.sseguro || ' ,SCONTRA = ' || :old.scontra;
BEGIN
   --
   p_his_procesosrea('LIQRESREAAUX', vindica, 'NVERSIO', :old.nversio, :new.nversio);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'CTRAMO', :old.ctramo, :new.ctramo);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'CCOMPANI', :old.ccompani, :new.ccompani);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'CRAMO', :old.cramo, :new.cramo);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'CTIPRAM', :old.ctipram, :new.ctipram);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'NPOLIZA', :old.npoliza, :new.npoliza);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'FVENCIM', :old.fvencim, :new.fvencim);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'NANYO', :old.nanyo, :new.nanyo);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'TSITRIE', :old.tsitrie, :new.tsitrie);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'FSIN', :old.fsin, :new.fsin);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'TNOMBRE', :old.tnombre, :new.tnombre);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'ITOTAL', :old.itotal, :new.itotal);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'PPROPIO', :old.ppropio, :new.ppropio);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'IPROPIO', :old.ipropio, :new.ipropio);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'PTRAMO', :old.ptramo, :new.ptramo);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'ITRAMO', :old.itramo, :new.itramo);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'PCOMPAN', :old.pcompan, :new.pcompan);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'ICOMPAN', :old.icompan, :new.icompan);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'SPROCES', :old.sproces, :new.sproces);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'CGARANT', :old.cgarant, :new.cgarant);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'FEFECTO', :old.fefecto, :new.fefecto);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'FNOTIFI', :old.fnotifi, :new.fnotifi);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'CEMPRES', :old.cempres, :new.cempres);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'FCIERRE', :old.fcierre, :new.fcierre);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'ICOMPAN_MONCON', :old.icompan_moncon, :new.icompan_moncon);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'IPROPIO_MONCON', :old.ipropio_moncon, :new.ipropio_moncon);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'ITOTAL_MONCON', :old.itotal_moncon, :new.itotal_moncon);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'ITRAMO_MONCON', :old.itramo_moncon, :new.itramo_moncon);
   p_his_procesosrea('LIQRESREAAUX', vindica, 'FCAMBIO', :old.fcambio, :new.fcambio);
   --
END trg_liqresreaaux;


/
ALTER TRIGGER "AXIS"."TRG_LIQRESREAAUX" ENABLE;
