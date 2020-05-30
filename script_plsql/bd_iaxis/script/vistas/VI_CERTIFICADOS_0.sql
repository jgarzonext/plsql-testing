--------------------------------------------------------
--  DDL for View VI_CERTIFICADOS_0
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_CERTIFICADOS_0" ("SSEGURO", "NPOLIZA", "NCERTIF", "SPRODUC") AS 
  (SELECT x1.sseguro, x1.npoliza, x1.ncertif, x1.sproduc
      FROM seguros x1, parproductos x2
     WHERE x1.sproduc = x2.sproduc
       AND x2.cparpro = 'ADMITE_CERTIFICADOS'   ---> Tienen certificados 0
       AND x1.ncertif = 0) 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_CERTIFICADOS_0" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_CERTIFICADOS_0" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_CERTIFICADOS_0" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_CERTIFICADOS_0" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_CERTIFICADOS_0" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_CERTIFICADOS_0" TO "PROGRAMADORESCSI";
