/* Formatted on 12/09/2019 12:30*/
/* **************************** 12/09/2019 12:30 **********************************************************************
Versión           Descripción
01.               -Este script agrega un nuevo literal para indicar cuándo un recaudo desde SAP supera el límite permitido
                   para un concepto: Prima, IVA o Gastos.
IAXIS-4884         12/09/2019 Daniel Rodríguez
***********************************************************************************************************************/
--
BEGIN
  DELETE FROM axis_literales where slitera = 89907056 and cidioma in (1,2,8) ;
  DELETE FROM axis_codliterales where slitera = 89907056;
  INSERT INTO axis_codliterales(slitera,clitera)values(89907056,3);
  INSERT INTO axis_literales(cidioma,slitera,tlitera) VALUES(1,89907056,'Pagament excedeix el saldo del concepte');  
  INSERT INTO axis_literales(cidioma,slitera,tlitera) VALUES(2,89907056,'Pago excede el saldo del concepto');
  INSERT INTO axis_literales(cidioma,slitera,tlitera) VALUES(8,89907056,'Pago excede el saldo del concepto');
--
COMMIT;
EXCEPTION
   WHEN OTHERS THEN
     dbms_output.put_line('ERROR OCCURRED-->'||SQLERRM);
     dbms_output.put_line('ERROR OCCURRED-->'||DBMS_UTILITY.format_error_backtrace);
     ROLLBACK;
End;
/
  



