--------------------------------------------------------
--  DDL for View VISTA_DETRECIBOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VISTA_DETRECIBOS" ("NRECIBO", "CCONCEP", "CGARANT", "NRIESGO", "ICONCEP") AS 
  select "NRECIBO","CCONCEP","CGARANT","NRIESGO","ICONCEP" from detrecibos where nrecibo in
( SELECT nrecibo FROM recibosredcom sr, usuarios u
  WHERE u.cusuari = F_USER AND sr.cagente = u.cdelega )
 
 
;
  GRANT UPDATE ON "AXIS"."VISTA_DETRECIBOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VISTA_DETRECIBOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VISTA_DETRECIBOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VISTA_DETRECIBOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VISTA_DETRECIBOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VISTA_DETRECIBOS" TO "PROGRAMADORESCSI";
