--------------------------------------------------------
--  DDL for Trigger TRG_LIQUIDAREAXL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_LIQUIDAREAXL" 
   AFTER UPDATE ON liquidareaxl
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'NSINIES = ' || :old.nsinies || ' ,FSINIES = ' ||
                            :old.fsinies || ' ,FCIERRE = ' || :old.fcierre ||
                            ' ,SPROCES = ' || :old.sproces ||
                            ' ,SCONTRA = ' || :old.scontra ||
                            ' ,NVERSIO = ' || :old.nversio || ' ,CTRAMO = ' ||
                            :old.ctramo || ' ,CCOMPANI = ' || :old.ccompani;
BEGIN
   --
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'ITOTEXP', :old.itotexp, :new.itotexp);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'ITOTIND', :old.itotind, :new.itotind);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'ICUOREA', :old.icuorea, :new.icuorea);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'IPAGREA', :old.ipagrea, :new.ipagrea);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'ILIQREA', :old.iliqrea, :new.iliqrea);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'IRESERV', :old.ireserv, :new.ireserv);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'IRESIND', :old.iresind, :new.iresind);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'ITOTREA', :old.itotrea, :new.itotrea);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'IRESREA', :old.iresrea, :new.iresrea);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'ILIMIND', :old.ilimind, :new.ilimind);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'PCUOREA', :old.pcuorea, :new.pcuorea);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'PCUOTOT', :old.pcuotot, :new.pcuotot);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'ILIQNET', :old.iliqnet, :new.iliqnet);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'IRESNET', :old.iresnet, :new.iresnet);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'IRESGAS', :old.iresgas, :new.iresgas);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'ICUOREA_MONCON', :old.icuorea_moncon, :new.icuorea_moncon);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'ILIMIND_MONCON', :old.ilimind_moncon, :new.ilimind_moncon);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'ILIQNET_MONCON', :old.iliqnet_moncon, :new.iliqnet_moncon);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'ILIQREA_MONCON', :old.iliqrea_moncon, :new.iliqrea_moncon);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'IPAGREA_MONCON', :old.ipagrea_moncon, :new.ipagrea_moncon);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'IRESERV_MONCON', :old.ireserv_moncon, :new.ireserv_moncon);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'IRESGAS_MONCON', :old.iresgas_moncon, :new.iresgas_moncon);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'IRESIND_MONCON', :old.iresind_moncon, :new.iresind_moncon);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'IRESNET_MONCON', :old.iresnet_moncon, :new.iresnet_moncon);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'IRESREA_MONCON', :old.iresrea_moncon, :new.iresrea_moncon);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'ITOTEXP_MONCON', :old.itotexp_moncon, :new.itotexp_moncon);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'ITOTIND_MONCON', :old.itotind_moncon, :new.itotind_moncon);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'ITOTREA_MONCON', :old.itotrea_moncon, :new.itotrea_moncon);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'IRESINDEM', :old.iresindem, :new.iresindem);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'IRESINTER', :old.iresinter, :new.iresinter);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'IRESADMIN', :old.iresadmin, :new.iresadmin);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'IRESINDEM_MONCON', :old.iresindem_moncon, :new.iresindem_moncon);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'IRESINTER_MONCON', :old.iresinter_moncon, :new.iresinter_moncon);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'IRESADMIN_MONCON', :old.iresadmin_moncon, :new.iresadmin_moncon);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'CEVENTO', :old.cevento, :new.cevento);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'NID', :old.nid, :new.nid);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'NSINIES', :old.nsinies, :new.nsinies);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'FSINIES', :old.fsinies, :new.fsinies);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'FCIERRE', :old.fcierre, :new.fcierre);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'SPROCES', :old.sproces, :new.sproces);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'SCONTRA', :old.scontra, :new.scontra);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'NVERSIO', :old.nversio, :new.nversio);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'CTRAMO', :old.ctramo, :new.ctramo);
   p_his_procesosrea('LIQUIDAREAXL', vindica, 'CCOMPANI', :old.ccompani, :new.ccompani);
   --
END trg_liquidareaxl;


/
ALTER TRIGGER "AXIS"."TRG_LIQUIDAREAXL" ENABLE;
