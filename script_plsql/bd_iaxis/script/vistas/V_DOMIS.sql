--------------------------------------------------------
--  DDL for View V_DOMIS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."V_DOMIS" ("POLISSA", "REBUT", "TIPUS", "NOM", "COGNOM1", "COGNOM2", "VENCIMENT", "COMPTE", "IMPORT", "SPROCES") AS 
  select s.npoliza  POLISSA, 
             r.nrecibo  REBUT,  
             d.tatribu  TIPUS, 
             p.tnombre  NOM, 
             p.tapelli1 COGNOM1, 
             p.tapelli2 COGNOM2,
             to_char(y.fvencim,'dd/mm/yyyy')  VENCIMENT, 
             y.cbancar  COMPTE, 
             v.itotalr  IMPORT,
             r.sproces
      from per_detper p,
           tomadores t, 
           detvalores d,
           seguros s, 
           recibos y,
           vdetrecibos v, 
           domiciliaciones r
      where r.nrecibo = v.nrecibo
      and s.sseguro = r.sseguro
      and d.cvalor = 8
      and d.cidioma = 1
      and d.CATRIBU = r.ctiprec
      and t.sseguro = r.sseguro
      and t.nordtom = (select min(x.nordtom) from tomadores x where x.sseguro = r.sseguro)
      and p.sperson = t.sperson
      and y.nrecibo = r.nrecibo 
 
 
;
  GRANT UPDATE ON "AXIS"."V_DOMIS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."V_DOMIS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."V_DOMIS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."V_DOMIS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."V_DOMIS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."V_DOMIS" TO "PROGRAMADORESCSI";
