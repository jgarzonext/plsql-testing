--------------------------------------------------------
--  DDL for View VI_SUPLEM_PRODUCCION
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_SUPLEM_PRODUCCION" ("PRODUCTE", "POLISSA", "PRENEDOR", "DATA_EFECTE", "DATA_EMISIO_SUPLEM", "DATA_EFECTE_SUPLEM", "USUARI", "AGENT", "MOTIU_SUPLEM") AS 
  SELECT v.ttitulo producte,  
       s.npoliza || '-' || s.ncertif polissa,
       p.tnombre || ' ' || p.tapelli1 || ' ' || p.tapelli2 prenedor, 
       s.fefecto data_efecte_pol,
       m.femisio data_emisio_supl, 
       m.fefecto data_efecte_supl, 
       u.tusunom usuari,
       p1.tnombre || ' ' || p1.tapelli1 || ' ' || p1.tapelli2 AGENT, 
       j.tmotmov
  FROM motmovseg j, per_detper p1, agentes a, usuarios u, per_detper p, tomadores t,
       v_productos v, movseguro m, seguros s
 WHERE p.cagente IN(SELECT MIN(x.cagente)
                      FROM per_detper x
                     WHERE x.sperson = p.sperson)
   AND p.sperson = t.sperson
   AND p1.cagente IN(SELECT MIN(x.cagente)
                       FROM per_detper x
                      WHERE x.sperson = p1.sperson)
   AND p1.sperson(+) = a.sperson
   AND a.cagente = s.cagente
   AND t.nordtom = 1
   AND t.sseguro = s.sseguro
   AND v.sproduc = s.sproduc
   AND TO_CHAR(m.femisio, 'yyyy') = TO_CHAR(SYSDATE, 'yyyy')
   AND s.sseguro = m.sseguro
   AND m.cmovseg in (1,  --> SUPLEMENTOS 
                     2)  --> SUPLEMENTOS RENOVACIÓN CARTERA 
   AND u.cusuari(+) = m.cusumov
   AND j.cidioma = 1
   AND s.cramo in (2,24) 
   AND j.cmotmov = m.cmotmov 
 
 
;
  GRANT SELECT ON "AXIS"."VI_SUPLEM_PRODUCCION" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."VI_SUPLEM_PRODUCCION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_SUPLEM_PRODUCCION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_SUPLEM_PRODUCCION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_SUPLEM_PRODUCCION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_SUPLEM_PRODUCCION" TO "PROGRAMADORESCSI";
