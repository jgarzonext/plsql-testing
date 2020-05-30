--------------------------------------------------------
--  DDL for Trigger TRG_CUADROCES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_CUADROCES" 
   AFTER UPDATE ON cuadroces
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'CCOMPANI = ' || :old.ccompani ||
                            ', NVERSIO = ' || :old.nversio ||
                            ', SCONTRA = ' || :old.scontra ||
                            ' , CTRAMO = ' || :old.ctramo;
BEGIN
   --
   p_his_procesosrea('CUADROCES', vindica, 'CCOMREA', :old.ccomrea, :new.ccomrea);
   p_his_procesosrea('CUADROCES', vindica, 'PCESION', :old.pcesion, :new.pcesion);
   p_his_procesosrea('CUADROCES', vindica, 'NPLENOS', :old.nplenos, :new.nplenos);
   p_his_procesosrea('CUADROCES', vindica, 'ICESFIJ', :old.icesfij, :new.icesfij);
   p_his_procesosrea('CUADROCES', vindica, 'ICOMFIJ', :old.icomfij, :new.icomfij);
   p_his_procesosrea('CUADROCES', vindica, 'ISCONTA', :old.isconta, :new.isconta);
   p_his_procesosrea('CUADROCES', vindica, 'PRESERV', :old.preserv, :new.preserv);
   p_his_procesosrea('CUADROCES', vindica, 'PINTRES', :old.pintres, :new.pintres);
   p_his_procesosrea('CUADROCES', vindica, 'ILIACDE', :old.iliacde, :new.iliacde);
   p_his_procesosrea('CUADROCES', vindica, 'PPAGOSL', :old.ppagosl, :new.ppagosl);
   p_his_procesosrea('CUADROCES', vindica, 'CCORRED', :old.ccorred, :new.ccorred);
   p_his_procesosrea('CUADROCES', vindica, 'CINTRES', :old.cintres, :new.cintres);
   p_his_procesosrea('CUADROCES', vindica, 'CINTREF', :old.cintref, :new.cintref);
   p_his_procesosrea('CUADROCES', vindica, 'CRESREF', :old.cresref, :new.cresref);
   p_his_procesosrea('CUADROCES', vindica, 'IRESERV', :old.ireserv, :new.ireserv);
   p_his_procesosrea('CUADROCES', vindica, 'PTASAJ', :old.ptasaj, :new.ptasaj);
   p_his_procesosrea('CUADROCES', vindica, 'FULTLIQ', :old.fultliq, :new.fultliq);
   p_his_procesosrea('CUADROCES', vindica, 'IAGREGA', :old.iagrega, :new.iagrega);
   p_his_procesosrea('CUADROCES', vindica, 'IMAXAGR', :old.imaxagr, :new.imaxagr);
   p_his_procesosrea('CUADROCES', vindica, 'CTIPCOMIS', :old.ctipcomis, :new.ctipcomis);
   p_his_procesosrea('CUADROCES', vindica, 'PCTCOMIS', :old.pctcomis, :new.pctcomis);
   p_his_procesosrea('CUADROCES', vindica, 'CTRAMOCOMISION', :old.ctramocomision, :new.ctramocomision);
   p_his_procesosrea('CUADROCES', vindica, 'CFRERES', :old.cfreres, :new.cfreres);
   --
END trg_cuadroces;


/
ALTER TRIGGER "AXIS"."TRG_CUADROCES" ENABLE;
