--------------------------------------------------------
--  DDL for View VIEW_ENFERMEDADES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VIEW_ENFERMEDADES" ("CENFGRP", "TENFERM", "CCIPSAP", "TCIPSAP", "CSUBCO1", "TCODCI9") AS 
  SELECT
     enfermedades.cenfgrp,
     tenferm,
     enfermedades.ccipsap,
     tcipsap,
     csubco1,
     tcodci9
FROM
    enfermedades,enfermedad,cipsap
WHERE
 enfermedades.cenfgrp = enfermedad.cenfgrp and
 enfermedades.ccipsap = cipsap.ccipsap and
 enfermedad.cidioma = cipsap.cidioma and
 cipsap.cidioma = 2

 
 
;
  GRANT UPDATE ON "AXIS"."VIEW_ENFERMEDADES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VIEW_ENFERMEDADES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VIEW_ENFERMEDADES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VIEW_ENFERMEDADES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VIEW_ENFERMEDADES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VIEW_ENFERMEDADES" TO "PROGRAMADORESCSI";
