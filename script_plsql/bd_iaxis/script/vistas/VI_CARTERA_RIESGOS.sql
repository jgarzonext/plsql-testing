--------------------------------------------------------
--  DDL for View VI_CARTERA_RIESGOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_CARTERA_RIESGOS" ("FCARTERA", "CODIGO", "AGR_PRODUCTO", "CAGENTE", "DESAGENTE", "POLISSES", "ASSEGURATS") AS 
  SELECT   TO_CHAR(ADD_MONTHS('01/01/2008', n.fila - 1), 'YYYYMM') fcartera, s.sproduc codigo,
            v.ttitulo agr_producto, s.cagente,
            e.tnombre || DECODE(e.tapelli1, NULL, NULL, ' ') || e.tapelli1
            || DECODE(e.tapelli2, NULL, NULL, ' ') || e.tapelli2 desagente,
            COUNT(DISTINCT s.sseguro) polisses,
            COUNT(DISTINCT s.sseguro || r.nriesgo) assegurats
       FROM v_productos v, per_detper e, agentes a, movseguro m, riesgos r, seguros s,
            numero n
      WHERE v.sproduc = s.sproduc
        AND e.sperson = a.sperson
        AND a.cagente = s.cagente
        AND s.sseguro = r.sseguro
        AND s.csituac != 4
        AND r.fefecto < ADD_MONTHS('01/01/2008', n.fila)
        AND m.cmotmov = 100
        AND m.femisio < ADD_MONTHS('01/01/2008', n.fila)
        AND s.sseguro = m.sseguro
        AND(s.fanulac IS NULL
            OR s.fanulac >= ADD_MONTHS('01/01/2008', n.fila))
        AND(r.fanulac IS NULL
            OR r.fanulac >= ADD_MONTHS('01/01/2008', n.fila))
        AND ADD_MONTHS('01/01/2008', n.fila) < f_sysdate
        AND s.sseguro NOT IN(SELECT v0.sseguro
                               FROM vi_certificados_0 v0
                              WHERE v0.sseguro = s.sseguro)
   GROUP BY TO_CHAR(ADD_MONTHS('01/01/2008', n.fila - 1), 'YYYYMM'), s.cagente, s.sproduc,
            v.ttitulo,
            e.tnombre || DECODE(e.tapelli1, NULL, NULL, ' ') || e.tapelli1
            || DECODE(e.tapelli2, NULL, NULL, ' ') || e.tapelli2 
 
 
;
  GRANT SELECT ON "AXIS"."VI_CARTERA_RIESGOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_CARTERA_RIESGOS" TO "PROGRAMADORESCSI";
  GRANT UPDATE ON "AXIS"."VI_CARTERA_RIESGOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_CARTERA_RIESGOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_CARTERA_RIESGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_CARTERA_RIESGOS" TO "R_AXIS";
