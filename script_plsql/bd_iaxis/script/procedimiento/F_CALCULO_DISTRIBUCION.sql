--------------------------------------------------------
--  DDL for Procedure F_CALCULO_DISTRIBUCION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."F_CALCULO_DISTRIBUCION" (psseguro number,pfvalor date)IS
saldototal number;
saldofondo number;
CURSOR cur_segdisin2 IS
        select ccesta
        from SEGDISIN2
        where sseguro = psseguro
	and ((pfvalor between finicio and ffin)
	or (pfvalor > finicio and ffin is null));
BEGIN
delete t_distribucion where sseguro = psseguro;

saldototal := F_SALDO_POLIZA_ULK (psseguro,pfvalor);

for valor in cur_segdisin2 loop
  saldofondo := F_SALDO_FONDO_ULK (psseguro,valor.ccesta,pfvalor);
  if saldototal <> 0 then
     insert into T_DISTRIBUCION (sseguro,ccodfon,pdistri)
     values (psseguro,valor.ccesta,saldofondo/saldototal);
  else
     insert into T_DISTRIBUCION (sseguro,ccodfon,pdistri)
     values (psseguro,valor.ccesta,0);
  end if;
end loop;

commit;

END;

 
 

/

  GRANT EXECUTE ON "AXIS"."F_CALCULO_DISTRIBUCION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_CALCULO_DISTRIBUCION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_CALCULO_DISTRIBUCION" TO "PROGRAMADORESCSI";
