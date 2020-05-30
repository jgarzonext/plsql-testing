--------------------------------------------------------
--  DDL for Trigger TRG_GARANPRO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_GARANPRO" 
   AFTER UPDATE ON garanpro
   FOR EACH ROW
DECLARE
   -- PK Tabla
   vindica VARCHAR2(200) := 'CMODALI = ' || :old.cmodali || ', CCOLECT = ' ||
                            :old.ccolect || ', CTIPSEG = ' || :old.ctipseg ||
                            ', CGARANT = ' || :old.cgarant ||
                            ', CACTIVI = ' || :old.cactivi || ', CRAMO = ' ||
                            :old.cramo;
BEGIN
   --
   p_his_procesosrea('GARANPRO', vindica, 'CPASMAX', :old.cpasmax, :new.cpasmax);
   p_his_procesosrea('GARANPRO', vindica, 'CDERREG', :old.cderreg, :new.cderreg);
   p_his_procesosrea('GARANPRO', vindica, 'CREASEG', :old.creaseg, :new.creaseg);
   p_his_procesosrea('GARANPRO', vindica, 'CEXCLUS', :old.cexclus, :new.cexclus);
   p_his_procesosrea('GARANPRO', vindica, 'CRENOVA', :old.crenova, :new.crenova);
   p_his_procesosrea('GARANPRO', vindica, 'CTECNIC', :old.ctecnic, :new.ctecnic);
   p_his_procesosrea('GARANPRO', vindica, 'CBASICA', :old.cbasica, :new.cbasica);
   p_his_procesosrea('GARANPRO', vindica, 'CPROVIS', :old.cprovis, :new.cprovis);
   p_his_procesosrea('GARANPRO', vindica, 'CTABLA', :old.ctabla, :new.ctabla);
   p_his_procesosrea('GARANPRO', vindica, 'PRECSEG', :old.precseg, :new.precseg);
   p_his_procesosrea('GARANPRO', vindica, 'CRAMDGS', :old.cramdgs, :new.cramdgs);
   p_his_procesosrea('GARANPRO', vindica, 'CDTOINT', :old.cdtoint, :new.cdtoint);
   p_his_procesosrea('GARANPRO', vindica, 'ICAPREV', :old.icaprev, :new.icaprev);
   p_his_procesosrea('GARANPRO', vindica, 'CIEDMAC', :old.ciedmac, :new.ciedmac);
   p_his_procesosrea('GARANPRO', vindica, 'CIEDMIC', :old.ciedmic, :new.ciedmic);
   p_his_procesosrea('GARANPRO', vindica, 'CIEDMAR', :old.ciedmar, :new.ciedmar);
   p_his_procesosrea('GARANPRO', vindica, 'IPRIMAX', :old.iprimax, :new.iprimax);
   p_his_procesosrea('GARANPRO', vindica, 'IPRIMIN', :old.iprimin, :new.iprimin);
   p_his_procesosrea('GARANPRO', vindica, 'CIEMA2C', :old.ciema2c, :new.ciema2c);
   p_his_procesosrea('GARANPRO', vindica, 'CIEMI2C', :old.ciemi2c, :new.ciemi2c);
   p_his_procesosrea('GARANPRO', vindica, 'CIEMA2R', :old.ciema2r, :new.ciema2r);
   p_his_procesosrea('GARANPRO', vindica, 'NEDMA2C', :old.nedma2c, :new.nedma2c);
   p_his_procesosrea('GARANPRO', vindica, 'NEDMI2C', :old.nedmi2c, :new.nedmi2c);
   p_his_procesosrea('GARANPRO', vindica, 'NEDMA2R', :old.nedma2r, :new.nedma2r);
   p_his_procesosrea('GARANPRO', vindica, 'SPRODUC', :old.sproduc, :new.sproduc);
   p_his_procesosrea('GARANPRO', vindica, 'COBJASEG', :old.cobjaseg, :new.cobjaseg);
   p_his_procesosrea('GARANPRO', vindica, 'CSUBOBJASEG', :old.csubobjaseg, :new.csubobjaseg);
   p_his_procesosrea('GARANPRO', vindica, 'CGENRIE', :old.cgenrie, :new.cgenrie);
   p_his_procesosrea('GARANPRO', vindica, 'CCLACAP', :old.cclacap, :new.cclacap);
   p_his_procesosrea('GARANPRO', vindica, 'CTARMAN', :old.ctarman, :new.ctarman);
   p_his_procesosrea('GARANPRO', vindica, 'COFERSN', :old.cofersn, :new.cofersn);
   p_his_procesosrea('GARANPRO', vindica, 'NPARBEN', :old.nparben, :new.nparben);
   p_his_procesosrea('GARANPRO', vindica, 'NBNS', :old.nbns, :new.nbns);
   p_his_procesosrea('GARANPRO', vindica, 'CRECFRA', :old.crecfra, :new.crecfra);
   p_his_procesosrea('GARANPRO', vindica, 'CCONTRA', :old.ccontra, :new.ccontra);
   p_his_procesosrea('GARANPRO', vindica, 'CMODINT', :old.cmodint, :new.cmodint);
   p_his_procesosrea('GARANPRO', vindica, 'CPARDEP', :old.cpardep, :new.cpardep);
   p_his_procesosrea('GARANPRO', vindica, 'CVALPAR', :old.cvalpar, :new.cvalpar);
   p_his_procesosrea('GARANPRO', vindica, 'CCAPMIN', :old.ccapmin, :new.ccapmin);
   p_his_procesosrea('GARANPRO', vindica, 'CDETALLE', :old.cdetalle, :new.cdetalle);
   p_his_procesosrea('GARANPRO', vindica, 'CMONCAP', :old.cmoncap, :new.cmoncap);
   p_his_procesosrea('GARANPRO', vindica, 'CGARPADRE', :old.cgarpadre, :new.cgarpadre);
   p_his_procesosrea('GARANPRO', vindica, 'CVISNIV', :old.cvisniv, :new.cvisniv);
   p_his_procesosrea('GARANPRO', vindica, 'CIEDMRV', :old.ciedmrv, :new.ciedmrv);
   p_his_procesosrea('GARANPRO', vindica, 'NEDAMRV', :old.nedamrv, :new.nedamrv);
   p_his_procesosrea('GARANPRO', vindica, 'CCLAMIN', :old.cclamin, :new.cclamin);
   p_his_procesosrea('GARANPRO', vindica, 'CTARIFA', :old.ctarifa, :new.ctarifa);
   p_his_procesosrea('GARANPRO', vindica, 'NORDEN', :old.norden, :new.norden);
   p_his_procesosrea('GARANPRO', vindica, 'CTIPGAR', :old.ctipgar, :new.ctipgar);
   p_his_procesosrea('GARANPRO', vindica, 'CTIPCAP', :old.ctipcap, :new.ctipcap);
   p_his_procesosrea('GARANPRO', vindica, 'CTIPTAR', :old.ctiptar, :new.ctiptar);
   p_his_procesosrea('GARANPRO', vindica, 'CGARDEP', :old.cgardep, :new.cgardep);
   p_his_procesosrea('GARANPRO', vindica, 'PCAPDEP', :old.pcapdep, :new.pcapdep);
   p_his_procesosrea('GARANPRO', vindica, 'CCAPMAX', :old.ccapmax, :new.ccapmax);
   p_his_procesosrea('GARANPRO', vindica, 'ICAPMAX', :old.icapmax, :new.icapmax);
   p_his_procesosrea('GARANPRO', vindica, 'ICAPMIN', :old.icapmin, :new.icapmin);
   p_his_procesosrea('GARANPRO', vindica, 'NEDAMIC', :old.nedamic, :new.nedamic);
   p_his_procesosrea('GARANPRO', vindica, 'NEDAMAC', :old.nedamac, :new.nedamac);
   p_his_procesosrea('GARANPRO', vindica, 'NEDAMAR', :old.nedamar, :new.nedamar);
   p_his_procesosrea('GARANPRO', vindica, 'CFORMUL', :old.cformul, :new.cformul);
   p_his_procesosrea('GARANPRO', vindica, 'CTIPFRA', :old.ctipfra, :new.ctipfra);
   p_his_procesosrea('GARANPRO', vindica, 'IFRANQU', :old.ifranqu, :new.ifranqu);
   p_his_procesosrea('GARANPRO', vindica, 'CGARANU', :old.cgaranu, :new.cgaranu);
   p_his_procesosrea('GARANPRO', vindica, 'CIMPCON', :old.cimpcon, :new.cimpcon);
   p_his_procesosrea('GARANPRO', vindica, 'CIMPDGS', :old.cimpdgs, :new.cimpdgs);
   p_his_procesosrea('GARANPRO', vindica, 'CIMPIPS', :old.cimpips, :new.cimpips);
   p_his_procesosrea('GARANPRO', vindica, 'CIMPCES', :old.cimpces, :new.cimpces);
   p_his_procesosrea('GARANPRO', vindica, 'CIMPARB', :old.cimparb, :new.cimparb);
   p_his_procesosrea('GARANPRO', vindica, 'CDTOCOM', :old.cdtocom, :new.cdtocom);
   p_his_procesosrea('GARANPRO', vindica, 'CREVALI', :old.crevali, :new.crevali);
   p_his_procesosrea('GARANPRO', vindica, 'CEXTRAP', :old.cextrap, :new.cextrap);
   p_his_procesosrea('GARANPRO', vindica, 'CRECARG', :old.crecarg, :new.crecarg);
   p_his_procesosrea('GARANPRO', vindica, 'CMODTAR', :old.cmodtar, :new.cmodtar);
   p_his_procesosrea('GARANPRO', vindica, 'PREVALI', :old.prevali, :new.prevali);
   p_his_procesosrea('GARANPRO', vindica, 'IREVALI', :old.irevali, :new.irevali);
   p_his_procesosrea('GARANPRO', vindica, 'CMODREV', :old.cmodrev, :new.cmodrev);
   p_his_procesosrea('GARANPRO', vindica, 'CIMPFNG', :old.cimpfng, :new.cimpfng);
   p_his_procesosrea('GARANPRO', vindica, 'CACTIVI', :old.cactivi, :new.cactivi);
   p_his_procesosrea('GARANPRO', vindica, 'CTARJET', :old.ctarjet, :new.ctarjet);
   p_his_procesosrea('GARANPRO', vindica, 'CTIPCAL', :old.ctipcal, :new.ctipcal);
   p_his_procesosrea('GARANPRO', vindica, 'CIMPRES', :old.cimpres, :new.cimpres);
   --
END trg_garanpro;


/
ALTER TRIGGER "AXIS"."TRG_GARANPRO" ENABLE;
