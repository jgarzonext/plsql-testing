--------------------------------------------------------
--  DDL for View VI_PROMOCIONES_CORREDORES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_PROMOCIONES_CORREDORES" ("PÒLISSA", "REBUT", "DATA EFECTE", "PRIMA TOTAL", "PRIMA NETA", "5%", "AGENT", "NOM AGENT", "ANY EFECTE") AS 
  SELECT   s.npoliza "PÒLISSA", r.nrecibo "REBUT", r.fefecto "DATA EFECTE",
         v.itotalr "PRIMA TOTAL", v.iprinet "PRIMA NETA", ROUND(v.iprinet * .05, 2) "5%",
         r.cagente "AGENT", f_desagente_t(r.cagente) "NOM AGENT",
         TO_CHAR(r.fefecto, 'YYYY') "ANY EFECTE"
    FROM vdetrecibos v, recibos r, seguros s, pregunpolseg p
   WHERE v.nrecibo = r.nrecibo
     AND r.nmovimi = p.nmovimi
     AND p.sseguro = r.sseguro
     AND s.sseguro = r.sseguro
     AND p.crespue = 1
     AND p.cpregun = 531
     AND r.cagente BETWEEN 40 AND 50
     AND r.fefecto < (SELECT TO_DATE(SUBSTR(a.crespue, 1, 6), 'yyyymm')
                        FROM pregunpolseg a
                       WHERE a.sseguro = p.sseguro
                         AND a.cpregun = 552
                         AND a.nmovimi = p.nmovimi)
     AND r.fefecto >= '01/11/2009'
ORDER BY r.cagente, s.npoliza, r.nrecibo 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_PROMOCIONES_CORREDORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_PROMOCIONES_CORREDORES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_PROMOCIONES_CORREDORES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_PROMOCIONES_CORREDORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_PROMOCIONES_CORREDORES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_PROMOCIONES_CORREDORES" TO "PROGRAMADORESCSI";
