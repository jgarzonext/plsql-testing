--------------------------------------------------------
--  DDL for View VISTA_SEGUROS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VISTA_SEGUROS" ("SSEGURO", "CMODALI", "CCOLECT", "CTIPSEG", "CASEGUR", "CAGENTE", "CRAMO", "NPOLIZA", "NCERTIF", "NSUPLEM", "FEFECTO", "CREAFAC", "CTARMAN", "COBJASE", "CTIPREB", "CACTIVI", "CCOBBAN", "CTIPCOA", "CTIPREA", "CRECMAN", "CRECCOB", "CTIPCOM", "FVENCIM", "FEMISIO", "FANULAC", "FCANCEL", "CSITUAC", "CBANCAR", "CTIPCOL", "FCARANT", "FCARPRO", "FCARANU", "CDURACI", "NDURACI", "NANUALI", "IPRIANU", "CIDIOMA", "NFRACCI", "CFORPAG", "PDTOORD", "NRENOVA", "CRECFRA", "TASEGUR", "CRETENI", "NDURCOB", "SCIACOA", "PPARCOA", "NPOLCOA", "NSUPCOA", "TNATRIE", "PDTOCOM", "PREVALI", "IREVALI", "NCUACOA", "NEDAMED", "CREVALI", "CEMPRES", "CAGRPRO") AS 
  SELECT "SSEGURO","CMODALI","CCOLECT","CTIPSEG","CASEGUR","CAGENTE","CRAMO","NPOLIZA","NCERTIF","NSUPLEM","FEFECTO","CREAFAC","CTARMAN","COBJASE","CTIPREB","CACTIVI","CCOBBAN","CTIPCOA","CTIPREA","CRECMAN","CRECCOB","CTIPCOM","FVENCIM","FEMISIO","FANULAC","FCANCEL","CSITUAC","CBANCAR","CTIPCOL","FCARANT","FCARPRO","FCARANU","CDURACI","NDURACI","NANUALI","IPRIANU","CIDIOMA","NFRACCI","CFORPAG","PDTOORD","NRENOVA","CRECFRA","TASEGUR","CRETENI","NDURCOB","SCIACOA","PPARCOA","NPOLCOA","NSUPCOA","TNATRIE","PDTOCOM","PREVALI","IREVALI","NCUACOA","NEDAMED","CREVALI","CEMPRES","CAGRPRO" FROM  seguros WHERE sseguro in
	(SELECT sseguro FROM segurosredcom sr, usuarios u
	 WHERE u.cusuari = F_USER AND sr.cagente = u.cdelega )
 
 
;
  GRANT UPDATE ON "AXIS"."VISTA_SEGUROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VISTA_SEGUROS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VISTA_SEGUROS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VISTA_SEGUROS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VISTA_SEGUROS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VISTA_SEGUROS" TO "PROGRAMADORESCSI";
