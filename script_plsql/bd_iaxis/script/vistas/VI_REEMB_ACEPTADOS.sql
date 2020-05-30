--------------------------------------------------------
--  DDL for View VI_REEMB_ACEPTADOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_REEMB_ACEPTADOS" ("NPOLIZA", "NCERTIF", "CBANCAR", "NREEMB", "NFACT", "NLINEA", "IMPORTE", "CTIPO") AS 
  SELECT s.npoliza, s.ncertif, r.cbancar, raf.nreemb, raf.nfact, raf.nlinea,
          ipago importe, 1 ctipo
     FROM reembolsos r, reembfact rf, reembactosfac raf, seguros s
    WHERE r.nreemb = rf.nreemb
      AND rf.nreemb = raf.nreemb
      AND rf.nfact = raf.nfact
      AND rf.fbaja IS NULL
      AND raf.fbaja IS NULL
      AND raf.ftrans IS NULL
      AND s.sseguro = r.sseguro
      AND raf.cerror = 0
      AND NVL (raf.ipago, 0) > 0
      AND r.cestado NOT IN (0, 4, 5)
   UNION ALL
   SELECT s.npoliza, s.ncertif, r.cbancar, raf.nreemb, raf.nfact, raf.nlinea,
          ipagocomp importe, 2 ctipo
     FROM reembolsos r, reembfact rf, reembactosfac raf, seguros s
    WHERE r.nreemb = rf.nreemb
      AND rf.nreemb = raf.nreemb
      AND rf.nfact = raf.nfact
      AND rf.fbaja IS NULL
      AND raf.fbaja IS NULL
      AND raf.ftranscomp IS NULL
      AND s.sseguro = r.sseguro
      AND NVL (raf.ipagocomp, 0) > 0
      AND raf.cerror = 0
      AND r.cestado NOT IN (0, 4, 5) 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_REEMB_ACEPTADOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_REEMB_ACEPTADOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_REEMB_ACEPTADOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_REEMB_ACEPTADOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_REEMB_ACEPTADOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_REEMB_ACEPTADOS" TO "PROGRAMADORESCSI";
