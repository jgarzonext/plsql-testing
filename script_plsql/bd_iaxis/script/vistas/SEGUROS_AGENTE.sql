--------------------------------------------------------
--  DDL for View SEGUROS_AGENTE
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."SEGUROS_AGENTE" ("SSEGURO", "CMODALI", "CCOLECT", "CTIPSEG", "CASEGUR", "CAGENTE", "CRAMO", "NPOLIZA", "NCERTIF", "NSUPLEM", "FEFECTO", "CREAFAC", "CTARMAN", "COBJASE", "CTIPREB", "CACTIVI", "CCOBBAN", "CTIPCOA", "CTIPREA", "CRECMAN", "CRECCOB", "CTIPCOM", "FVENCIM", "FEMISIO", "FANULAC", "FCANCEL", "CSITUAC", "CBANCAR", "CTIPCOL", "FCARANT", "FCARPRO", "FCARANU", "CDURACI", "NDURACI", "NANUALI", "IPRIANU", "CIDIOMA", "NFRACCI", "CFORPAG", "PDTOORD", "NRENOVA", "CRECFRA", "TASEGUR", "CRETENI", "NDURCOB", "SCIACOA", "PPARCOA", "NPOLCOA", "NSUPCOA", "TNATRIE", "PDTOCOM", "PREVALI", "IREVALI", "NCUACOA", "NEDAMED", "CREVALI", "CEMPRES", "CAGRPRO", "NSOLICI", "FIMPSOL", "SPRODUC", "CCOMPANI", "INTPRES", "NMESCOB", "CNOTIBAJA", "CCARTERA", "NPARBEN", "NBNS", "CTRAMO", "CINDEXT", "PDISPRI", "IDISPRI", "CIMPASE", "CAGENCORR", "NPAGINA", "NLINEA", "CTIPBAN", "CTIPCOB", "SPRODTAR") AS 
  SELECT s.sseguro, s.cmodali, s.ccolect, s.ctipseg, s.casegur, s.cagente, s.cramo, s.npoliza,
          s.ncertif, s.nsuplem, s.fefecto, s.creafac, s.ctarman, s.cobjase, s.ctipreb,
          s.cactivi, s.ccobban, s.ctipcoa, s.ctiprea, s.crecman, s.creccob, s.ctipcom,
          s.fvencim, s.femisio, s.fanulac, s.fcancel, s.csituac, s.cbancar, s.ctipcol,
          s.fcarant, s.fcarpro, s.fcaranu, s.cduraci, s.nduraci, s.nanuali, s.iprianu,
          s.cidioma, s.nfracci, s.cforpag, s.pdtoord, s.nrenova, s.crecfra, s.tasegur,
          s.creteni, s.ndurcob, s.sciacoa, s.pparcoa, s.npolcoa, s.nsupcoa, s.tnatrie,
          s.pdtocom, s.prevali, s.irevali, s.ncuacoa, s.nedamed, s.crevali, s.cempres,
          s.cagrpro, s.nsolici, s.fimpsol, s.sproduc, s.ccompani, s.intpres, s.nmescob,
          s.cnotibaja, s.ccartera, s.nparben, s.nbns, s.ctramo, s.cindext, s.pdispri,
          s.idispri, s.cimpase, s.cagencorr, s.npagina, s.nlinea, s.ctipban, s.ctipcob,
          s.sprodtar
     FROM seguros s, agentes_agente_pol a
    WHERE a.cagente = s.cagente
;
  GRANT UPDATE ON "AXIS"."SEGUROS_AGENTE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SEGUROS_AGENTE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SEGUROS_AGENTE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SEGUROS_AGENTE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SEGUROS_AGENTE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SEGUROS_AGENTE" TO "PROGRAMADORESCSI";
