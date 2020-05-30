/* Formatted on 19/12/2019 17:30*/
/* **************************** 19/12/2019 17:30 **********************************************************************
Versión           Descripción
01.               -Este script agrega un nuevo literal para indicar un rechazo de transición desde una interfaz específica
IAXIS-7731         19/12/2019 Daniel Rodríguez
***********************************************************************************************************************/
--
BEGIN
  DELETE FROM axis_literales where slitera = 89907093 and cidioma in (1,2,8) ;
  DELETE FROM axis_codliterales where slitera = 89907093;
  INSERT INTO axis_codliterales(slitera,clitera)values(89907093,3);
  INSERT INTO axis_literales(cidioma,slitera,tlitera) VALUES(1,89907093,'Nº Document de pagament');  
  INSERT INTO axis_literales(cidioma,slitera,tlitera) VALUES(2,89907093,'Nº Documento de pago');
  INSERT INTO axis_literales(cidioma,slitera,tlitera) VALUES(8,89907093,'Nº Documento de pago');
--
COMMIT;
EXCEPTION
   WHEN OTHERS THEN
     dbms_output.put_line('ERROR OCCURRED-->'||SQLERRM);
     dbms_output.put_line('ERROR OCCURRED-->'||DBMS_UTILITY.format_error_backtrace);
     ROLLBACK;
End;
/
  



