--------------------------------------------------------
--  DDL for View VISTA_EMPRESAS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VISTA_EMPRESAS" ("CEMPRES", "NNUMNIF", "TEMPRES", "FCARANT", "FCARPRO", "CCTATEC", "FMESCON", "IMINLIQ", "NCARENC", "FBORREA", "NCARDOM", "SPERSON", "CTIPEMP") AS 
  SELECT "CEMPRES","NNUMNIF","TEMPRES","FCARANT","FCARPRO","CCTATEC","FMESCON","IMINLIQ","NCARENC","FBORREA","NCARDOM","SPERSON","CTIPEMP"
     FROM empresas
 
 
;
  GRANT UPDATE ON "AXIS"."VISTA_EMPRESAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VISTA_EMPRESAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VISTA_EMPRESAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VISTA_EMPRESAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VISTA_EMPRESAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VISTA_EMPRESAS" TO "PROGRAMADORESCSI";
