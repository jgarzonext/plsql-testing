--------------------------------------------------------
--  DDL for View SALDOS_CESTA_ULK
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."SALDOS_CESTA_ULK" ("TIPO", "CMOVIMI", "SSEGURO", "FFECMOV", "IMOVIMI", "CESTA") AS 
  select 'A' tipo, cmovimi, sseguro, ffecmov, imovimi, cesta
from ctaseguro c
where
cmovimi in (1,2,4,5,6,7,33, 34, 45,46)
group by sseguro, cmovimi,ffecmov,cesta, imovimi
/*
union all
select 'I', cmovimi, sseguro, ffecmov, cesta, tfonabv
from ctaseguro c, fondos f
where
cesta = ccodfon
and cmovimi in (5,6,7,45,46)
group by sseguro, cmovimi, ffecmov,cesta,tfonabv
union all
select 'F', cmovimi, sseguro, ffecmov, cesta, tfonabv
from ctaseguro c, fondos f
where
cesta = ccodfon
and cmovimi in (5,6,7,45,46)
group by sseguro, cmovimi, ffecmov,cesta,tfonabv
*/

 
 
;
  GRANT UPDATE ON "AXIS"."SALDOS_CESTA_ULK" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SALDOS_CESTA_ULK" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SALDOS_CESTA_ULK" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SALDOS_CESTA_ULK" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SALDOS_CESTA_ULK" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SALDOS_CESTA_ULK" TO "PROGRAMADORESCSI";
