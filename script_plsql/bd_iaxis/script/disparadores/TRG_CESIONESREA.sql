--------------------------------------------------------
--  DDL for Trigger TRG_CESIONESREA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_CESIONESREA" 
   AFTER UPDATE ON cesionesrea
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'SCESREA = ' || :old.scesrea;
BEGIN
   --
   p_his_procesosrea('CESIONESREA', vindica, 'NCESION', :old.ncesion, :new.ncesion);
   p_his_procesosrea('CESIONESREA', vindica, 'ICESION', :old.icesion, :new.icesion);
   p_his_procesosrea('CESIONESREA', vindica, 'ICAPCES', :old.icapces, :new.icapces);
   p_his_procesosrea('CESIONESREA', vindica, 'SSEGURO', :old.sseguro, :new.sseguro);
   p_his_procesosrea('CESIONESREA', vindica, 'NVERSIO', :old.nversio, :new.nversio);
   p_his_procesosrea('CESIONESREA', vindica, 'SCONTRA', :old.scontra, :new.scontra);
   p_his_procesosrea('CESIONESREA', vindica, 'CTRAMO', :old.ctramo, :new.ctramo);
   p_his_procesosrea('CESIONESREA', vindica, 'SFACULT', :old.sfacult, :new.sfacult);
   p_his_procesosrea('CESIONESREA', vindica, 'NRIESGO', :old.nriesgo, :new.nriesgo);
   p_his_procesosrea('CESIONESREA', vindica, 'ICOMISI', :old.icomisi, :new.icomisi);
   p_his_procesosrea('CESIONESREA', vindica, 'ICOMREG', :old.icomreg, :new.icomreg);
   p_his_procesosrea('CESIONESREA', vindica, 'SCUMULO', :old.scumulo, :new.scumulo);
   p_his_procesosrea('CESIONESREA', vindica, 'CGARANT', :old.cgarant, :new.cgarant);
   p_his_procesosrea('CESIONESREA', vindica, 'SPLENO', :old.spleno, :new.spleno);
   p_his_procesosrea('CESIONESREA', vindica, 'CCALIF1', :old.ccalif1, :new.ccalif1);
   p_his_procesosrea('CESIONESREA', vindica, 'CCALIF2', :old.ccalif2, :new.ccalif2);
   p_his_procesosrea('CESIONESREA', vindica, 'NSINIES', :old.nsinies, :new.nsinies);
   p_his_procesosrea('CESIONESREA', vindica, 'FEFECTO', :old.fefecto, :new.fefecto);
   p_his_procesosrea('CESIONESREA', vindica, 'FVENCIM', :old.fvencim, :new.fvencim);
   p_his_procesosrea('CESIONESREA', vindica, 'FCONTAB', :old.fcontab, :new.fcontab);
   p_his_procesosrea('CESIONESREA', vindica, 'PCESION', :old.pcesion, :new.pcesion);
   p_his_procesosrea('CESIONESREA', vindica, 'SPROCES', :old.sproces, :new.sproces);
   p_his_procesosrea('CESIONESREA', vindica, 'CGENERA', :old.cgenera, :new.cgenera);
   p_his_procesosrea('CESIONESREA', vindica, 'FGENERA', :old.fgenera, :new.fgenera);
   p_his_procesosrea('CESIONESREA', vindica, 'FREGULA', :old.fregula, :new.fregula);
   p_his_procesosrea('CESIONESREA', vindica, 'FANULAC', :old.fanulac, :new.fanulac);
   p_his_procesosrea('CESIONESREA', vindica, 'NMOVIMI', :old.nmovimi, :new.nmovimi);
   p_his_procesosrea('CESIONESREA', vindica, 'SIDEPAG', :old.sidepag, :new.sidepag);
   p_his_procesosrea('CESIONESREA', vindica, 'IPRITARREA', :old.ipritarrea, :new.ipritarrea);
   p_his_procesosrea('CESIONESREA', vindica, 'IDTOSEL', :old.idtosel, :new.idtosel);
   p_his_procesosrea('CESIONESREA', vindica, 'PSOBREPRIMA', :old.psobreprima, :new.psobreprima);
   p_his_procesosrea('CESIONESREA', vindica, 'CDETCES', :old.cdetces, :new.cdetces);
   p_his_procesosrea('CESIONESREA', vindica, 'IPLENO', :old.ipleno, :new.ipleno);
   p_his_procesosrea('CESIONESREA', vindica, 'ICAPACI', :old.icapaci, :new.icapaci);
   p_his_procesosrea('CESIONESREA', vindica, 'NMOVIGEN', :old.nmovigen, :new.nmovigen);
   p_his_procesosrea('CESIONESREA', vindica, 'IEXTRAP', :old.iextrap, :new.iextrap);
   p_his_procesosrea('CESIONESREA', vindica, 'IEXTREA', :old.iextrea, :new.iextrea);
   p_his_procesosrea('CESIONESREA', vindica, 'NREEMB', :old.nreemb, :new.nreemb);
   p_his_procesosrea('CESIONESREA', vindica, 'NFACT', :old.nfact, :new.nfact);
   p_his_procesosrea('CESIONESREA', vindica, 'NLINEA', :old.nlinea, :new.nlinea);
   p_his_procesosrea('CESIONESREA', vindica, 'ITARIFREA', :old.itarifrea, :new.itarifrea);
   p_his_procesosrea('CESIONESREA', vindica, 'ICOMEXT', :old.icomext, :new.icomext);
   --
END trg_cesionesrea;


/
ALTER TRIGGER "AXIS"."TRG_CESIONESREA" ENABLE;
