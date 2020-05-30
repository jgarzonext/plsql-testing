--------------------------------------------------------
--  DDL for View VIEW_SINISTRES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VIEW_SINISTRES" ("NSINIES", "SSEGURO", "NRIESGO", "CUSUARI", "FSINIES", "FNOTIFI", "CESTSIN", "TSINIES", "CCAUEST", "CCAUSIN", "FESTSIN", "NPOLIZA", "BUSCA_TOMADOR", "CRAMO", "CMODALI", "NCERTIF", "NSINCOA") AS 
  SELECT s.NSINIES, s.SSEGURO, s.NRIESGO, s.CUSUARI, s.FSINIES, s.FNOTIFI,
s.CESTSIN, s.TSINIES, s.CCAUEST, s.CCAUSIN, s.FESTSIN, g.npoliza,
p1.tbuscar busca_tomador, g.cramo, g.cmodali, g.ncertif, s.nsincoa
FROM PERSONAS p1, TOMADORES t, SEGUROS g, SINIESTROS s
WHERE p1.sperson = t.sperson
AND t.nordtom = 1
AND t.sseguro = s.sseguro
AND g.sseguro = s.sseguro

 
 
;
  GRANT SELECT ON "AXIS"."VIEW_SINISTRES" TO "PROGRAMADORESCSI";
  GRANT UPDATE ON "AXIS"."VIEW_SINISTRES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VIEW_SINISTRES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VIEW_SINISTRES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VIEW_SINISTRES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VIEW_SINISTRES" TO "CONF_DWH";
