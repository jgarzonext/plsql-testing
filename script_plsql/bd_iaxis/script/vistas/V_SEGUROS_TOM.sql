--------------------------------------------------------
--  DDL for View V_SEGUROS_TOM
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."V_SEGUROS_TOM" ("SSEGURO", "NPOLIZA", "NCERTIF", "SPERSON", "NORDTOM", "DESPRODUCTO", "TNOMBRE", "TAPELLI1", "TAPELLI2", "TSIGLAS", "CESQUEMA") AS 
  SELECT sd.sseguro, sd.npoliza, sd.ncertif, td.sperson, td.nordtom, f_desproducto_t(sd.cramo,sd.cmodali,sd.ctipseg,sd.ccolect,1,pdp.cidioma) desproducto,
       pdp.tnombre, pdp.tapelli1, pdp.tapelli2, pdp.tsiglas, 1 cesquema
FROM  seguros sd,
     tomadores td,
 personas pdp
WHERE sd.sseguro = td.sseguro
  AND td.sperson = pdp.sperson
 
 
;
  GRANT UPDATE ON "AXIS"."V_SEGUROS_TOM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."V_SEGUROS_TOM" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."V_SEGUROS_TOM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."V_SEGUROS_TOM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."V_SEGUROS_TOM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."V_SEGUROS_TOM" TO "PROGRAMADORESCSI";
