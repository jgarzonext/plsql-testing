--------------------------------------------------------
--  DDL for View VIEW_DIAGNOSTICOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VIEW_DIAGNOSTICOS" ("CSECCIO", "TSECCIO", "CPRUEBA", "TPRUEBA", "CESPECI", "TESPECI", "CSUBESP", "TSUBESP") AS 
  SELECT
     diagnosticos.cseccio,
     tseccio,
     diagnosticos.cprueba,
     tprueba,
     diagnosticos.cespeci,
     tespeci,
     diagnosticos.csubesp,
     tsubesp
FROM
    diagnosticos,seccion,prueba,especific,subespecif
WHERE
 diagnosticos.cseccio = seccion.cseccio    and
 diagnosticos.cprueba = prueba.cprueba     and
 diagnosticos.cespeci = especific.cespeci  and
 diagnosticos.csubesp = subespecif.csubesp and
 seccion.cidioma = prueba.cidioma and
 seccion.cidioma = especific.cidioma and
 seccion.cidioma = subespecif.cidioma and
 seccion.cidioma = 2

 
 
;
  GRANT UPDATE ON "AXIS"."VIEW_DIAGNOSTICOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VIEW_DIAGNOSTICOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VIEW_DIAGNOSTICOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VIEW_DIAGNOSTICOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VIEW_DIAGNOSTICOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VIEW_DIAGNOSTICOS" TO "PROGRAMADORESCSI";
