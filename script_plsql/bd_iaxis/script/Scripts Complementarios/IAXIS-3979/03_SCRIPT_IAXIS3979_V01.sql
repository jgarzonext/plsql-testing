/* Formatted on 05/08/2019 17:00*/
/* **************************** 05/08/2019 17:00 **********************************************************************
Versión           Descripción
01.               -Se actualizan los productos que tendrán configuración para prima mínima en endosos.
02.               -Se eliminan los registros para CA.
IAXIS-3979        05/08/2019 Daniel Rodríguez
***********************************************************************************************************************/
BEGIN
--
delete from parproductos where sproduc in (80007,80009,80006,80004,80001,80002,80003,80005,80012,80008,80010,80011) and cparpro = 'PRIMA_MINIMA_SUP';
--
insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80007, 'PRIMA_MINIMA_SUP', 1, null, null, null);

insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80009, 'PRIMA_MINIMA_SUP', 1, null, null, null);

insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80001, 'PRIMA_MINIMA_SUP', 1, null, null, null);

insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80002, 'PRIMA_MINIMA_SUP', 1, null, null, null);

insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80003, 'PRIMA_MINIMA_SUP', 1, null, null, null);

insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80012, 'PRIMA_MINIMA_SUP', 1, null, null, null);

insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (80011, 'PRIMA_MINIMA_SUP', 1, null, null, null);
--
COMMIT;
EXCEPTION
   WHEN OTHERS THEN
     dbms_output.put_line('ERROR OCCURED-->'||SQLERRM);
     dbms_output.put_line('ERROR OCCURED-->'||DBMS_UTILITY.format_error_backtrace);
     rollback;
End;
/

