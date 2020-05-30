--------------------------------------------------------
--  DDL for View VI_CARTERA_CERTIF0
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_CARTERA_CERTIF0" ("FCARTERA", "POLISSA", "POLISSA_HOST", "CODIGO", "AGR_PRODUCTO", "OFICINA_CODI", "PRENEDOR") AS 
  SELECT TO_CHAR (ADD_MONTHS ('01/01/2008', n.fila - 1), 'YYYYMM') fcartera,
          s.npoliza || '-' || s.ncertif, c.polissa_ini, s.sproduc codigo,
          v.ttitulo agr_producto, s.cagente,
             e.tnombre
          || DECODE (e.tapelli1, NULL, NULL, ' ')
          || e.tapelli1
          || DECODE (e.tapelli2, NULL, NULL, ' ')
          || e.tapelli2 prenedor
     FROM cnvpolizas c,
          v_productos v,
          per_detper e,
          movseguro m,
          tomadores t,
          seguros s,
          numero n
    WHERE c.sseguro(+) = s.sseguro
      AND v.sproduc = s.sproduc
      AND e.sperson = t.sperson
      AND e.cagente IN (SELECT MAX (x.cagente)
                          FROM per_detper x
                         WHERE x.sperson = t.sperson)
      AND s.sseguro = t.sseguro
      AND m.nmovimi =
             (SELECT MAX (nmovimi)
                FROM movseguro x
               WHERE x.nmovimi = m.nmovimi
                 AND x.sseguro = m.sseguro
                 AND m.fmovimi < ADD_MONTHS ('01/01/2008', n.fila)
                 AND m.femisio < ADD_MONTHS ('01/01/2008', n.fila))
      AND s.sseguro = m.sseguro
      AND (s.fanulac IS NULL OR s.fanulac >= ADD_MONTHS ('01/01/2008', n.fila)
          )
      AND ADD_MONTHS ('01/01/2008', n.fila) < f_sysdate
      AND EXISTS (SELECT v0.sseguro
                    FROM vi_certificados_0 v0
                   WHERE v0.sseguro = s.sseguro) 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_CARTERA_CERTIF0" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_CARTERA_CERTIF0" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_CARTERA_CERTIF0" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_CARTERA_CERTIF0" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_CARTERA_CERTIF0" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_CARTERA_CERTIF0" TO "PROGRAMADORESCSI";
