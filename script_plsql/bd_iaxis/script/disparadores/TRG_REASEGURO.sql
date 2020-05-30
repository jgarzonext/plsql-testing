--------------------------------------------------------
--  DDL for Trigger TRG_REASEGURO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_REASEGURO" 
   AFTER UPDATE ON reaseguro
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'SPROCES = ' || :old.sproces || ' ,SCESREA = ' ||
                            :old.scesrea;
BEGIN
   --
   p_his_procesosrea('REASEGURO', vindica, 'CODTIPO', :old.codtipo, :new.codtipo);
   p_his_procesosrea('REASEGURO', vindica, 'CEMPRES', :old.cempres, :new.cempres);
   p_his_procesosrea('REASEGURO', vindica, 'SPROCES', :old.sproces, :new.sproces);
   p_his_procesosrea('REASEGURO', vindica, 'SCESREA', :old.scesrea, :new.scesrea);
   p_his_procesosrea('REASEGURO', vindica, 'FEFECTO', :old.fefecto, :new.fefecto);
   p_his_procesosrea('REASEGURO', vindica, 'FVENCIM', :old.fvencim, :new.fvencim);
   p_his_procesosrea('REASEGURO', vindica, 'SSEGURO', :old.sseguro, :new.sseguro);
   p_his_procesosrea('REASEGURO', vindica, 'NRIESGO', :old.nriesgo, :new.nriesgo);
   p_his_procesosrea('REASEGURO', vindica, 'CGARANT', :old.cgarant, :new.cgarant);
   p_his_procesosrea('REASEGURO', vindica, 'NMOVIMI', :old.nmovimi, :new.nmovimi);
   p_his_procesosrea('REASEGURO', vindica, 'CGENERA', :old.cgenera, :new.cgenera);
   p_his_procesosrea('REASEGURO', vindica, 'NSINIES', :old.nsinies, :new.nsinies);
   p_his_procesosrea('REASEGURO', vindica, 'SIDEPAG', :old.sidepag, :new.sidepag);
   p_his_procesosrea('REASEGURO', vindica, 'SCONTRA', :old.scontra, :new.scontra);
   p_his_procesosrea('REASEGURO', vindica, 'NVERSIO', :old.nversio, :new.nversio);
   p_his_procesosrea('REASEGURO', vindica, 'CTRAMO', :old.ctramo, :new.ctramo);
   p_his_procesosrea('REASEGURO', vindica, 'PPORCEN', :old.pporcen, :new.pporcen);
   p_his_procesosrea('REASEGURO', vindica, 'SFACULT', :old.sfacult, :new.sfacult);
   p_his_procesosrea('REASEGURO', vindica, 'ICESIOT', :old.icesiot, :new.icesiot);
   p_his_procesosrea('REASEGURO', vindica, 'ICAPCET', :old.icapcet, :new.icapcet);
   p_his_procesosrea('REASEGURO', vindica, 'FCIERRE', :old.fcierre, :new.fcierre);
   p_his_procesosrea('REASEGURO', vindica, 'CCOMPANI', :old.ccompani, :new.ccompani);
   p_his_procesosrea('REASEGURO', vindica, 'PCESION', :old.pcesion, :new.pcesion);
   p_his_procesosrea('REASEGURO', vindica, 'PCOMISI', :old.pcomisi, :new.pcomisi);
   p_his_procesosrea('REASEGURO', vindica, 'ICESION', :old.icesion, :new.icesion);
   p_his_procesosrea('REASEGURO', vindica, 'ICAPCES', :old.icapces, :new.icapces);
   p_his_procesosrea('REASEGURO', vindica, 'ICOMISI', :old.icomisi, :new.icomisi);
   p_his_procesosrea('REASEGURO', vindica, 'FCALCUL', :old.fcalcul, :new.fcalcul);
   p_his_procesosrea('REASEGURO', vindica, 'CRAMO', :old.cramo, :new.cramo);
   p_his_procesosrea('REASEGURO', vindica, 'CMODALI', :old.cmodali, :new.cmodali);
   p_his_procesosrea('REASEGURO', vindica, 'CTIPSEG', :old.ctipseg, :new.ctipseg);
   p_his_procesosrea('REASEGURO', vindica, 'CCOLECT', :old.ccolect, :new.ccolect);
   p_his_procesosrea('REASEGURO', vindica, 'CACTIVI', :old.cactivi, :new.cactivi);
   p_his_procesosrea('REASEGURO', vindica, 'CAGENTE', :old.cagente, :new.cagente);
   p_his_procesosrea('REASEGURO', vindica, 'CAGRPRO', :old.cagrpro, :new.cagrpro);
   p_his_procesosrea('REASEGURO', vindica, 'NPOLIZA', :old.npoliza, :new.npoliza);
   p_his_procesosrea('REASEGURO', vindica, 'NCERTIF', :old.ncertif, :new.ncertif);
   p_his_procesosrea('REASEGURO', vindica, 'IDTOSEL', :old.idtosel, :new.idtosel);
   p_his_procesosrea('REASEGURO', vindica, 'IPRITARREA', :old.ipritarrea, :new.ipritarrea);
   p_his_procesosrea('REASEGURO', vindica, 'PSOBREPRIMA', :old.psobreprima, :new.psobreprima);
   p_his_procesosrea('REASEGURO', vindica, 'NRECIBO', :old.nrecibo, :new.nrecibo);
   p_his_procesosrea('REASEGURO', vindica, 'IDTOSELTOT', :old.idtoseltot, :new.idtoseltot);
   p_his_procesosrea('REASEGURO', vindica, 'IPRITARREATOT', :old.ipritarreatot, :new.ipritarreatot);
   p_his_procesosrea('REASEGURO', vindica, 'IPRITARGAR', :old.ipritargar, :new.ipritargar);
   p_his_procesosrea('REASEGURO', vindica, 'IPRITARREAGAR', :old.ipritarreagar, :new.ipritarreagar);
   p_his_procesosrea('REASEGURO', vindica, 'NREEMB', :old.nreemb, :new.nreemb);
   p_his_procesosrea('REASEGURO', vindica, 'NFACT', :old.nfact, :new.nfact);
   p_his_procesosrea('REASEGURO', vindica, 'NLINEA', :old.nlinea, :new.nlinea);
   p_his_procesosrea('REASEGURO', vindica, 'SREAEMI', :old.sreaemi, :new.sreaemi);
   p_his_procesosrea('REASEGURO', vindica, 'ICESION_MONCON', :old.icesion_moncon, :new.icesion_moncon);
   p_his_procesosrea('REASEGURO', vindica, 'ICAPCES_MONCON', :old.icapces_moncon, :new.icapces_moncon);
   p_his_procesosrea('REASEGURO', vindica, 'ICOMISI_MONCON', :old.icomisi_moncon, :new.icomisi_moncon);
   p_his_procesosrea('REASEGURO', vindica, 'FCAMBIO', :old.fcambio, :new.fcambio);
   p_his_procesosrea('REASEGURO', vindica, 'ICOMEXT', :old.icomext, :new.icomext);
   p_his_procesosrea('REASEGURO', vindica, 'IEXTREA', :old.iextrea, :new.iextrea);
   --
END trg_reaseguro;


/
ALTER TRIGGER "AXIS"."TRG_REASEGURO" ENABLE;
