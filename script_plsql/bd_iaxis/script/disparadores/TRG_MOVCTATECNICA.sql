--------------------------------------------------------
--  DDL for Trigger TRG_MOVCTATECNICA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_MOVCTATECNICA" 
   AFTER UPDATE ON movctatecnica
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'CCOMPANI = ' || :old.ccompani ||
                            ' ,NVERSIO = ' || :old.nversio ||
                            ' ,SCONTRA = ' || :old.scontra || ' ,CTRAMO = ' ||
                            :old.ctramo || ' ,NNUMLIN = ' || :old.nnumlin;
BEGIN
   --
   p_his_procesosrea('MOVCTATECNICA', vindica, 'CCOMPANI', :old.ccompani, :new.ccompani);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'NVERSIO', :old.nversio, :new.nversio);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'SCONTRA', :old.scontra, :new.scontra);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'CTRAMO', :old.ctramo, :new.ctramo);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'NNUMLIN', :old.nnumlin, :new.nnumlin);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'FMOVIMI', :old.fmovimi, :new.fmovimi);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'FEFECTO', :old.fefecto, :new.fefecto);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'CCONCEP', :old.cconcep, :new.cconcep);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'CDEBHAB', :old.cdebhab, :new.cdebhab);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'IIMPORT', :old.iimport, :new.iimport);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'CESTADO', :old.cestado, :new.cestado);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'SPROCES', :old.sproces, :new.sproces);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'SCESREA', :old.scesrea, :new.scesrea);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'IIMPORT_MONCON', :old.iimport_moncon, :new.iimport_moncon);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'FCAMBIO', :old.fcambio, :new.fcambio);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'CEMPRES', :old.cempres, :new.cempres);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'CTIPMOV', :old.ctipmov, :new.ctipmov);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'SPRODUC', :old.sproduc, :new.sproduc);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'NPOLIZA', :old.npoliza, :new.npoliza);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'NCERTIF', :old.ncertif, :new.ncertif);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'NSINIES', :old.nsinies, :new.nsinies);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'TDESCRI', :old.tdescri, :new.tdescri);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'TDOCUME', :old.tdocume, :new.tdocume);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'FLIQUID', :old.fliquid, :new.fliquid);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'CCOMPAPR', :old.ccompapr, :new.ccompapr);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'SPAGREA', :old.spagrea, :new.spagrea);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'CEVENTO', :old.cevento, :new.cevento);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'NID', :old.nid, :new.nid);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'FCONTAB', :old.fcontab, :new.fcontab);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'SIDEPAG', :old.sidepag, :new.sidepag);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'CUSUCRE', :old.cusucre, :new.cusucre);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'FCREAC', :old.fcreac, :new.fcreac);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'CUSUMOD', :old.cusumod, :new.cusumod);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'FMODIF', :old.fmodif, :new.fmodif);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'CRAMO', :old.cramo, :new.cramo);
   p_his_procesosrea('MOVCTATECNICA', vindica, 'CCORRED', :old.ccorred, :new.ccorred);

   --
END trg_movctatecnica;


/
ALTER TRIGGER "AXIS"."TRG_MOVCTATECNICA" ENABLE;
