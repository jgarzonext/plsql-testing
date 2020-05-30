/* Formatted on 15/08/2019 15:00*/
/* **************************** 15/08/2019 15:00 **********************************************************************
Versi�n           Descripci�n
01.               -Se actualizan los productos que tendr�n configuraci�n para c�lculo de prima por vigencia de amparo.
                   Solo aplica para los productos 
                    -RCE Cl�nicas
                    -RCE M�dicas
                    -RCE Profesionales
IAXIS-5031        15/08/2019 Daniel Rodr�guez
***********************************************************************************************************************/
BEGIN
--
delete from parproductos where sproduc in (8062, 8063, 8064) and cparpro = 'PRIMA_VIG_AMPARO';
--
insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (8062, 'PRIMA_VIG_AMPARO', 1, null, null, null);

insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (8063, 'PRIMA_VIG_AMPARO', 1, null, null, null);

insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (8064, 'PRIMA_VIG_AMPARO', 1, null, null, null);
--
COMMIT;
EXCEPTION
   WHEN OTHERS THEN
     dbms_output.put_line('ERROR OCCURED-->'||SQLERRM);
     dbms_output.put_line('ERROR OCCURED-->'||DBMS_UTILITY.format_error_backtrace);
     rollback;
End;
/

