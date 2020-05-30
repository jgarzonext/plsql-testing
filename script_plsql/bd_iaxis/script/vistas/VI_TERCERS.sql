--------------------------------------------------------
--  DDL for View VI_TERCERS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_TERCERS" ("IDENTIFICACIO", "NOM", "COGNOM1", "COGNOM2", "DATA_ALTA", "CODI_TERCERS") AS 
  SELECT DISTINCT b.nnumide, a.tnombre, a.tapelli1, a.tapelli2, a.fmovimi,
                   b.snip
              FROM per_detper a, per_personas b
             WHERE a.sperson = b.sperson 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_TERCERS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_TERCERS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_TERCERS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_TERCERS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_TERCERS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_TERCERS" TO "PROGRAMADORESCSI";
