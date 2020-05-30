/* Formatted on 09/08/2019 17:00*/
/* **************************** 09/08/2019 17:00 **********************************************************************
Versión           Descripción
01.               -Se actualizan las redes comerciales de los intermediarios:
                    PAEZ MORENO ASESORES DE SEGUROS LIMITADA -> ARMENIA
                    GIL PIN, FLOR TERESA	                 -> ARMENIA
                    GARCIA SANCHE, JACKELINE                 -> TUNJA
                    RUA SEGUROS SOCIEDAD 	                 -> TUNJA
                    ASESORES DE SEGUROS FANNY MEDINA LTDA. 	 -> YOPAL
                    CLAUDIA LILIANA PELAEZ MESA              -> YOPAL
IAXIS-3979        09/08/2019 Daniel Rodríguez
***********************************************************************************************************************/
BEGIN
--
delete from ageredcom a where a.cagente in (5000398, 6000407, 5000698, 6000996, 5000487, 6001036);

insert into ageredcom (CAGENTE, CEMPRES, CTIPAGE, FMOVINI, FMOVFIN, FBAJA, CPERVISIO, CPERNIVEL, CPOLVISIO, CPOLNIVEL, C00, C01, C02, C03, C04, C05, C06, C07, C08, C09, C10, C11, C12)
values (5000398, 24, 5, to_date('11-07-2016 21:51:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, 19000, 1, 19000, 1, 19000, 20000, 20136, 20127, 0, 5000398, 0, 0, 0, 0, 0, 0, 0);

insert into ageredcom (CAGENTE, CEMPRES, CTIPAGE, FMOVINI, FMOVFIN, FBAJA, CPERVISIO, CPERNIVEL, CPOLVISIO, CPOLNIVEL, C00, C01, C02, C03, C04, C05, C06, C07, C08, C09, C10, C11, C12)
values (5000487, 24, 5, to_date('11-07-2016 21:51:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, 19000, 1, 19000, 1, 19000, 20000, 0, 20128, 0, 5000487, 0, 0, 0, 0, 0, 0, 0);

insert into ageredcom (CAGENTE, CEMPRES, CTIPAGE, FMOVINI, FMOVFIN, FBAJA, CPERVISIO, CPERNIVEL, CPOLVISIO, CPOLNIVEL, C00, C01, C02, C03, C04, C05, C06, C07, C08, C09, C10, C11, C12)
values (5000698, 24, 5, to_date('11-07-2016 21:51:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, 19000, 1, 19000, 1, 19000, 20000, 20123, 20126, 0, 5000698, 0, 0, 0, 0, 0, 0, 0);

insert into ageredcom (CAGENTE, CEMPRES, CTIPAGE, FMOVINI, FMOVFIN, FBAJA, CPERVISIO, CPERNIVEL, CPOLVISIO, CPOLNIVEL, C00, C01, C02, C03, C04, C05, C06, C07, C08, C09, C10, C11, C12)
values (6000407, 24, 6, to_date('11-07-2016 21:51:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, 19000, 1, 19000, 1, 19000, 20000, 20136, 20127, 0, 0, 6000407, 0, 0, 0, 0, 0, 0);

insert into ageredcom (CAGENTE, CEMPRES, CTIPAGE, FMOVINI, FMOVFIN, FBAJA, CPERVISIO, CPERNIVEL, CPOLVISIO, CPOLNIVEL, C00, C01, C02, C03, C04, C05, C06, C07, C08, C09, C10, C11, C12)
values (6000996, 24, 6, to_date('11-07-2016 21:51:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, 19000, 1, 19000, 1, 19000, 20000, 20123, 20126, 0, 0, 6000996, 0, 0, 0, 0, 0, 0);

insert into ageredcom (CAGENTE, CEMPRES, CTIPAGE, FMOVINI, FMOVFIN, FBAJA, CPERVISIO, CPERNIVEL, CPOLVISIO, CPOLNIVEL, C00, C01, C02, C03, C04, C05, C06, C07, C08, C09, C10, C11, C12)
values (6001036, 24, 6, to_date('11-07-2016 21:51:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, 19000, 1, 19000, 1, 19000, 20000, 0, 20128, 0, 0, 6001036, 0, 0, 0, 0, 0, 0);
--
COMMIT;
--
EXCEPTION
   WHEN OTHERS THEN
     dbms_output.put_line('ERROR OCCURED-->'||SQLERRM);
     dbms_output.put_line('ERROR OCCURED-->'||DBMS_UTILITY.format_error_backtrace);
     rollback;
End;
/

