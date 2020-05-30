--------------------------------------------------------
--  DDL for Procedure F_DISTRIBUCION_ULK
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."F_DISTRIBUCION_ULK" (psseguro number,pfefecto date) IS
BEGIN

delete from t_dist_ulk where sseguro = psseguro;

insert into t_dist_ulk
select sseguro,ccesta,pdistrec,pdistuni,pdistext
from segdisin2
where sseguro = psseguro
and ((pfefecto between finicio and ffin)
or (pfefecto >= finicio and ffin is null));

commit;

END;

 
 

/

  GRANT EXECUTE ON "AXIS"."F_DISTRIBUCION_ULK" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_DISTRIBUCION_ULK" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_DISTRIBUCION_ULK" TO "PROGRAMADORESCSI";
