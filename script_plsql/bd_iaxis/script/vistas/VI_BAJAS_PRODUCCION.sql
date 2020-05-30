--------------------------------------------------------
--  DDL for View VI_BAJAS_PRODUCCION
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_BAJAS_PRODUCCION" ("PRODUCTE", "POLISSA", "PRENEDOR", "DATA_EFECTE", "DATA_EMISIO_BAIXA", "DATA_ANULACIO", "USUARI", "AGENT", "MOTIU_ANULACIO") AS 
  SELECT v.ttitulo producte, s.npoliza || '-' || s.ncertif polissa,
          p.tnombre || ' ' || p.tapelli1 || ' ' || p.tapelli2 prenedor,
          s.fanulac data_anulacio, m.femisio data_emisio_baixa,
          s.fefecto data_efecte, u.tusunom usuari,
          p1.tnombre || ' ' || p1.tapelli1 || ' ' || p1.tapelli2 AGENT,
          j.tmotmov
     FROM motmovseg j,
          per_detper p1,
          agentes a,
          usuarios u,
          per_detper p,
          tomadores t,
          v_productos v,
          movseguro m,
          seguros s
    WHERE p.cagente IN (SELECT MIN (x.cagente)
                          FROM per_detper x
                         WHERE x.sperson = p.sperson)
      AND p.sperson = t.sperson
      AND p1.cagente IN (SELECT MIN (x.cagente)
                           FROM per_detper x
                          WHERE x.sperson = p1.sperson)
      AND p1.sperson(+) = a.sperson
      AND a.cagente = s.cagente
      AND t.nordtom = 1
      AND t.sseguro = s.sseguro
      AND v.sproduc = s.sproduc
      AND TO_CHAR (m.femisio, 'yyyy') = TO_CHAR (SYSDATE, 'yyyy')
      AND s.sseguro = m.sseguro
      AND m.nmovimi = (SELECT MAX (y.nmovimi)
                         FROM movseguro y
                        WHERE y.sseguro = s.sseguro)
      AND NOT EXISTS (SELECT v0.sseguro
                        FROM vi_certificados_0 v0
                       WHERE v0.sseguro = s.sseguro)
      AND s.fanulac IS NOT NULL
      AND u.cusuari(+) = m.cusumov
      AND j.cidioma = 1
      AND j.cmotmov = m.cmotmov 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_BAJAS_PRODUCCION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_BAJAS_PRODUCCION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_BAJAS_PRODUCCION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_BAJAS_PRODUCCION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_BAJAS_PRODUCCION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_BAJAS_PRODUCCION" TO "PROGRAMADORESCSI";
