--------------------------------------------------------
--  DDL for View VIEW_TERAPEUTICOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VIEW_TERAPEUTICOS" ("CGRUPO", "TGRUPO", "CANATOM", "TANATOM", "CPROCED", "TPROCED", "CSUBCOD", "TSUBCOD") AS 
  SELECT
     terapeuticos.cgrupo,
     tgrupo,
     terapeuticos.canatom,
     tanatom,
     terapeuticos.cproced,
     tproced,
     terapeuticos.csubcod,
     tsubcod
FROM
    terapeuticos,grupo,anatomia,procedimiento,subcodigo
WHERE
 terapeuticos.cgrupo = grupo.cgrupo and
 terapeuticos.canatom = anatomia.canatom and
 terapeuticos.cproced = procedimiento.cproced and
 terapeuticos.csubcod = subcodigo.csubcod and
 grupo.cidioma = anatomia.cidioma and
 grupo.cidioma = procedimiento.cidioma and
 grupo.cidioma = subcodigo.cidioma and
 grupo.cidioma = 2

 
 
;
  GRANT UPDATE ON "AXIS"."VIEW_TERAPEUTICOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VIEW_TERAPEUTICOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VIEW_TERAPEUTICOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VIEW_TERAPEUTICOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VIEW_TERAPEUTICOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VIEW_TERAPEUTICOS" TO "PROGRAMADORESCSI";
