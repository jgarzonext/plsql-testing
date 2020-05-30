--------------------------------------------------------
--  DDL for Trigger TRG_TRAMOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_TRAMOS" 
   AFTER UPDATE ON tramos
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'SCONTRA = ' || :new.scontra || ', NVERSIO = ' ||
                            :new.nversio || ', CTRAMO = ' || :new.ctramo;
BEGIN
   --
   p_his_procesosrea('TRAMOS', vindica, 'NVERSIO', :old.nversio, :new.nversio);
   p_his_procesosrea('TRAMOS', vindica, 'SCONTRA', :old.scontra, :new.scontra);
   p_his_procesosrea('TRAMOS', vindica, 'CTRAMO', :old.ctramo, :new.ctramo);
   p_his_procesosrea('TRAMOS', vindica, 'ITOTTRA', :old.itottra, :new.itottra);
   p_his_procesosrea('TRAMOS', vindica, 'NPLENOS', :old.nplenos, :new.nplenos);
   p_his_procesosrea('TRAMOS', vindica, 'CFREBOR', :old.cfrebor, :new.cfrebor);
   p_his_procesosrea('TRAMOS', vindica, 'PLOCAL', :old.plocal, :new.plocal);
   p_his_procesosrea('TRAMOS', vindica, 'IXLPRIO', :old.ixlprio, :new.ixlprio);
   p_his_procesosrea('TRAMOS', vindica, 'IXLEXCE', :old.ixlexce, :new.ixlexce);
   p_his_procesosrea('TRAMOS', vindica, 'PSLPRIO', :old.pslprio, :new.pslprio);
   p_his_procesosrea('TRAMOS', vindica, 'PSLEXCE', :old.pslexce, :new.pslexce);
   p_his_procesosrea('TRAMOS', vindica, 'NCESION', :old.ncesion, :new.ncesion);
   p_his_procesosrea('TRAMOS', vindica, 'FULTBOR', :old.fultbor, :new.fultbor);
   p_his_procesosrea('TRAMOS', vindica, 'IMAXPLO', :old.imaxplo, :new.imaxplo);
   p_his_procesosrea('TRAMOS', vindica, 'NORDEN', :old.norden, :new.norden);
   p_his_procesosrea('TRAMOS', vindica, 'NSEGCON', :old.nsegcon, :new.nsegcon);
   p_his_procesosrea('TRAMOS', vindica, 'NSEGVER', :old.nsegver, :new.nsegver);
   p_his_procesosrea('TRAMOS', vindica, 'IMINXL', :old.iminxl, :new.iminxl);
   p_his_procesosrea('TRAMOS', vindica, 'IDEPXL', :old.idepxl, :new.idepxl);
   p_his_procesosrea('TRAMOS', vindica, 'NCTRXL', :old.nctrxl, :new.nctrxl);
   p_his_procesosrea('TRAMOS', vindica, 'NVERXL', :old.nverxl, :new.nverxl);
   p_his_procesosrea('TRAMOS', vindica, 'PTASAXL', :old.ptasaxl, :new.ptasaxl);
   p_his_procesosrea('TRAMOS', vindica, 'IPMD', :old.ipmd, :new.ipmd);
   p_his_procesosrea('TRAMOS', vindica, 'CFREPMD', :old.cfrepmd, :new.cfrepmd);
   p_his_procesosrea('TRAMOS', vindica, 'CAPLIXL', :old.caplixl, :new.caplixl);
   p_his_procesosrea('TRAMOS', vindica, 'PLIMGAS', :old.plimgas, :new.plimgas);
   p_his_procesosrea('TRAMOS', vindica, 'PLIMINX', :old.pliminx, :new.pliminx);
   p_his_procesosrea('TRAMOS', vindica, 'IDAA', :old.idaa, :new.idaa);
   p_his_procesosrea('TRAMOS', vindica, 'ILAA', :old.ilaa, :new.ilaa);
   p_his_procesosrea('TRAMOS', vindica, 'CTPRIMAXL', :old.ctprimaxl, :new.ctprimaxl);
   p_his_procesosrea('TRAMOS', vindica, 'IPRIMAFIJAXL', :old.iprimafijaxl, :new.iprimafijaxl);
   p_his_procesosrea('TRAMOS', vindica, 'IPRIMAESTIMADA', :old.iprimaestimada, :new.iprimaestimada);
   p_his_procesosrea('TRAMOS', vindica, 'CAPLICTASAXL', :old.caplictasaxl, :new.caplictasaxl);
   p_his_procesosrea('TRAMOS', vindica, 'CTIPTASAXL', :old.ctiptasaxl, :new.ctiptasaxl);
   p_his_procesosrea('TRAMOS', vindica, 'CTRAMOTASAXL', :old.ctramotasaxl, :new.ctramotasaxl);
   p_his_procesosrea('TRAMOS', vindica, 'PCTPDXL', :old.pctpdxl, :new.pctpdxl);
   p_his_procesosrea('TRAMOS', vindica, 'CFORPAGPDXL', :old.cforpagpdxl, :new.cforpagpdxl);
   p_his_procesosrea('TRAMOS', vindica, 'PCTMINXL', :old.pctminxl, :new.pctminxl);
   p_his_procesosrea('TRAMOS', vindica, 'PCTPB', :old.pctpb, :new.pctpb);
   p_his_procesosrea('TRAMOS', vindica, 'NANYOSLOSS', :old.nanyosloss, :new.nanyosloss);
   p_his_procesosrea('TRAMOS', vindica, 'CLOSSCORRIDOR', :old.closscorridor, :new.closscorridor);
   p_his_procesosrea('TRAMOS', vindica, 'CCAPPEDRATIO', :old.ccappedratio, :new.ccappedratio);
   p_his_procesosrea('TRAMOS', vindica, 'CREPOS', :old.crepos, :new.crepos);
   p_his_procesosrea('TRAMOS', vindica, 'IBONOREC', :old.ibonorec, :new.ibonorec);
   p_his_procesosrea('TRAMOS', vindica, 'IMPAVISO', :old.impaviso, :new.impaviso);
   p_his_procesosrea('TRAMOS', vindica, 'IMPCONTADO', :old.impcontado, :new.impcontado);
   p_his_procesosrea('TRAMOS', vindica, 'PCTCONTADO', :old.pctcontado, :new.pctcontado);
   p_his_procesosrea('TRAMOS', vindica, 'PCTGASTOS', :old.pctgastos, :new.pctgastos);
   p_his_procesosrea('TRAMOS', vindica, 'PTASAAJUSTE', :old.ptasaajuste, :new.ptasaajuste);
   p_his_procesosrea('TRAMOS', vindica, 'ICAPCOASEG', :old.icapcoaseg, :new.icapcoaseg);
   p_his_procesosrea('TRAMOS', vindica, 'PREEST', :old.preest, :new.preest);
   p_his_procesosrea('TRAMOS', vindica, 'ICOSTOFIJO', :old.icostofijo, :new.icostofijo);
   p_his_procesosrea('TRAMOS', vindica, 'PCOMISINTERM', :old.pcomisinterm, :new.pcomisinterm);
   --
END trg_tramos;


/
ALTER TRIGGER "AXIS"."TRG_TRAMOS" ENABLE;
