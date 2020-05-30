--------------------------------------------------------
--  DDL for View V_SEGUROS_ASE
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."V_SEGUROS_ASE" ("SSEGURO", "NPOLIZA", "NCERTIF", "SPERSON", "NORDEN", "DESPRODUCTO", "TNOMBRE", "TAPELLI1", "TAPELLI2", "TSIGLAS", "CESQUEMA") AS 
  SELECT sd.sseguro, sd.npoliza, sd.ncertif, ad.sperson, ad.norden, f_desproducto_t(sd.cramo,sd.cmodali,sd.ctipseg,sd.ccolect,1,pdp.cidioma) desproducto,
       pdp.tnombre, pdp.tapelli1, pdp.tapelli2, pdp.tsiglas, 1 cesquema
FROM seguroS sd,
     asegurados ad,
     personas pdp
WHERE sd.sseguro = ad.sseguro
  AND ad.sperson = pdp.sperson
 
 
;
  GRANT UPDATE ON "AXIS"."V_SEGUROS_ASE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."V_SEGUROS_ASE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."V_SEGUROS_ASE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."V_SEGUROS_ASE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."V_SEGUROS_ASE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."V_SEGUROS_ASE" TO "PROGRAMADORESCSI";
