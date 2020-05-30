/* Formatted on 11/08/2019 15:00*/
/* **************************** 11/08/2019 15:00 **********************************************************************
Versión           Descripción
01.               -Se actualizan los productos que tendrán configuración para prima mínima en endosos (RCE).
IAXIS-5031        11/08/2019 Daniel Rodríguez
***********************************************************************************************************************/
BEGIN
--
delete from parproductos where sproduc in (80038, 80039, 80040, 80044, 8062, 8063, 8064) and cparpro = 'PRIMA_MINIMA_SUP';
--
insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80038, 'PRIMA_MINIMA_SUP', 1, null, null, null);

insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80039, 'PRIMA_MINIMA_SUP', 1, null, null, null);

insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80040, 'PRIMA_MINIMA_SUP', 1, null, null, null);

insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80044, 'PRIMA_MINIMA_SUP', 1, null, null, null);

insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (8062, 'PRIMA_MINIMA_SUP', 1, null, null, null);

insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (8063, 'PRIMA_MINIMA_SUP', 1, null, null, null);

insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (8064, 'PRIMA_MINIMA_SUP', 1, null, null, null);
--
COMMIT;
EXCEPTION
   WHEN OTHERS THEN
     dbms_output.put_line('ERROR OCCURED-->'||SQLERRM);
     dbms_output.put_line('ERROR OCCURED-->'||DBMS_UTILITY.format_error_backtrace);
     rollback;
End;
/

