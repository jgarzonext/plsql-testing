/************  ccuenta 412140 **************/

update detmodconta_interf d set  d.tlibro = '' where d.nlinea = 420;
commit;

update cuentassap c set c.linea = 420 where c.ccuenta = 4121400205 and c.codcuenta = 19;
commit;
/