--------------------------------------------------------
--  DDL for View VW_DATECSA_PERSON
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VW_DATECSA_PERSON" ("NNUMIDE", "NOMBRE") AS 
  SELECT  p.nnumide,
        tnombre||' '||tapelli1||' '||tapelli2 nombre
FROM per_detper PD
JOIN PER_PERSONAS P ON p.sperson=pd.sperson
;
  GRANT INSERT ON "AXIS"."VW_DATECSA_PERSON" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VW_DATECSA_PERSON" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."VW_DATECSA_PERSON" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VW_DATECSA_PERSON" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VW_DATECSA_PERSON" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VW_DATECSA_PERSON" TO "PROGRAMADORESCSI";
