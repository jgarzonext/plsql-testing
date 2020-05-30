--------------------------------------------------------
--  DDL for Trigger TRG_PAGOSREAXL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_PAGOSREAXL" 
   AFTER UPDATE ON pagosreaxl
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'NSINIES = ' || :old.nsinies || ' ,SCONTRA = ' ||
                            :old.scontra || ' ,NVERSIO = ' || :old.nversio ||
                            ' ,CTRAMO = ' || :old.ctramo || ' ,CCOMPANI = ' ||
                            :old.ccompani || ' ,FCIERRE = ' || :old.fcierre ||
                            ' ,SPROCES = ' || :old.sproces;
BEGIN
   --
   p_his_procesosrea('PAGOSREAXL', vindica, 'NSINIES', :old.nsinies, :new.nsinies);
   p_his_procesosrea('PAGOSREAXL', vindica, 'SCONTRA', :old.scontra, :new.scontra);
   p_his_procesosrea('PAGOSREAXL', vindica, 'NVERSIO', :old.nversio, :new.nversio);
   p_his_procesosrea('PAGOSREAXL', vindica, 'CTRAMO', :old.ctramo, :new.ctramo);
   p_his_procesosrea('PAGOSREAXL', vindica, 'CCOMPANI', :old.ccompani, :new.ccompani);
   p_his_procesosrea('PAGOSREAXL', vindica, 'FCIERRE', :old.fcierre, :new.fcierre);
   p_his_procesosrea('PAGOSREAXL', vindica, 'FEFECTO', :old.fefecto, :new.fefecto);
   p_his_procesosrea('PAGOSREAXL', vindica, 'CESTLIQ', :old.cestliq, :new.cestliq);
   p_his_procesosrea('PAGOSREAXL', vindica, 'ILIQREA', :old.iliqrea, :new.iliqrea);
   p_his_procesosrea('PAGOSREAXL', vindica, 'ILIQREA_MONCON', :old.iliqrea_moncon, :new.iliqrea_moncon);
   p_his_procesosrea('PAGOSREAXL', vindica, 'FCAMBIO', :old.fcambio, :new.fcambio);
   p_his_procesosrea('PAGOSREAXL', vindica, 'CEVENTO', :old.cevento, :new.cevento);
   p_his_procesosrea('PAGOSREAXL', vindica, 'NID', :old.nid, :new.nid);
   p_his_procesosrea('PAGOSREAXL', vindica, 'SPROCES', :old.sproces, :new.sproces);
   --
END trg_pagosreaxl;


/
ALTER TRIGGER "AXIS"."TRG_PAGOSREAXL" ENABLE;
