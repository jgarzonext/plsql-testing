--------------------------------------------------------
--  DDL for View V_PLANTILLAS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."V_PLANTILLAS" ("SPRODUC", "CTIPO", "CCODPLAN", "IMP_DEST", "FDESDE", "CDUPLICA", "TCOPIAS", "IDCONSULTA", "GEDOX", "IDCAT", "CGENFICH", "CGENPDF", "CIDIOMA", "TDESCRIP", "CINFORME", "CPATH", "CCOMENT", "CCONSULTA", "CTIPOLOB", "CCONSULTALOB", "FORMULES") AS 
  SELECT sproduc, ctipo, ppb.ccodplan, imp_dest, fdesde, cduplica, tcopias, cp.idconsulta,
          gedox, idcat, cgenfich, cgenpdf, cidioma, tdescrip, cinforme, cpath, ccoment,
          cconsulta, ctipolob, cconsultalob, (SELECT COUNT(1)
                                                FROM plantivalores pv
                                               WHERE pv.ccodplan = ppb.ccodplan) formules
     FROM prod_plant_cab ppb, codiplantillas cp, detplantillas dp, consultas c
    WHERE ppb.ccodplan = cp.ccodplan
      AND dp.ccodplan = cp.ccodplan
      AND cp.idconsulta = c.idconsulta 
 
 
;
  GRANT UPDATE ON "AXIS"."V_PLANTILLAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."V_PLANTILLAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."V_PLANTILLAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."V_PLANTILLAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."V_PLANTILLAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."V_PLANTILLAS" TO "PROGRAMADORESCSI";
