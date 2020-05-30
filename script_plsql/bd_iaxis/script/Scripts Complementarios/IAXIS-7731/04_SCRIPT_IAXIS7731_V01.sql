/* Formatted on 19/12/2019 17:30*/
/* **************************** 19/12/2019 17:30 **********************************************************************
Versi�n           Descripci�n
01.               -Este script agrega un nuevo literal para indicar un rechazo de transici�n desde una interfaz espec�fica
IAXIS-7731         19/12/2019 Daniel Rodr�guez
***********************************************************************************************************************/
--
BEGIN
  DELETE FROM axis_literales where slitera = 89907093 and cidioma in (1,2,8) ;
  DELETE FROM axis_codliterales where slitera = 89907093;
  INSERT INTO axis_codliterales(slitera,clitera)values(89907093,3);
  INSERT INTO axis_literales(cidioma,slitera,tlitera) VALUES(1,89907093,'N� Document de pagament');  
  INSERT INTO axis_literales(cidioma,slitera,tlitera) VALUES(2,89907093,'N� Documento de pago');
  INSERT INTO axis_literales(cidioma,slitera,tlitera) VALUES(8,89907093,'N� Documento de pago');
--
COMMIT;
EXCEPTION
   WHEN OTHERS THEN
     dbms_output.put_line('ERROR OCCURRED-->'||SQLERRM);
     dbms_output.put_line('ERROR OCCURRED-->'||DBMS_UTILITY.format_error_backtrace);
     ROLLBACK;
End;
/
  



