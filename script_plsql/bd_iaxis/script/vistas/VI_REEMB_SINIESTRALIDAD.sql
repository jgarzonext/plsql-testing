--------------------------------------------------------
--  DDL for View VI_REEMB_SINIESTRALIDAD
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_REEMB_SINIESTRALIDAD" ("PRODUCTE", "POLISSA", "CERTIF", "DATA_ANUL", "ESTAT", "COL_LECTIU", "PRENEDOR", "DATA_EFECTE", "PRIMES_TOT", "TOT_PAG_CASS", "TOT_PAG_FAC", "IEXTRA_TOT", "IPREST_TOT", "PRATIO_TOT", "PRIMES_ACT", "ACT_PAG_CASS", "ACT_PAG_FAC", "IEXTRA_ACT", "IPREST_ACT", "PRATIO_ACT") AS 
  select 
rs.tproducto   producte,
rs.npoliza  polissa,
rs.ncertif  certif,
s.fanulac data_anul,
d.tatribu estat,
rs.tnom_col col_lectiu,
rs.tnombre  prenedor,
rs.fefecto  data_efecte,
rs.itot80_tot primes_tot,
rs.ipag_tot tot_pag_cass,
rs.icomp_tot tot_pag_fac,
rs.iextra_tot,
rs.iprest_tot,
rs.pratio_tot,
rs.itot80_act primes_act,
rs.ipag_act act_pag_cass,
rs.icomp_act act_pag_fac,
rs.iextra_act,
rs.iprest_act,
rs.pratio_act
from
DETVALORES d,
SEGUROS s,
REEMB_SINIESTRALIDAD rs
where d.cvalor = 61
  and d.cidioma = 1
  and d.catribu = s.csituac
  and s.sseguro = rs.sseguro
  and rs.sproces = (SELECT MAX(sproces) from REEMB_SINIESTRALIDAD) 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_REEMB_SINIESTRALIDAD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_REEMB_SINIESTRALIDAD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_REEMB_SINIESTRALIDAD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_REEMB_SINIESTRALIDAD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_REEMB_SINIESTRALIDAD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_REEMB_SINIESTRALIDAD" TO "PROGRAMADORESCSI";
