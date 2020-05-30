/* Formatted on 23/10/2019 17:30*/
/* **************************** 23/10/2019 17:30 **********************************************************************
Versión           Descripción
01.               -Este script agrega un nuevo literal para indicar cuándo un recibo de caja desde SAP o no tiene
                   valor a reversar o no existe para el número de recibo de iAxis relacionado.
IAXIS-4926         23/10/2019 Daniel Rodríguez
***********************************************************************************************************************/
--
BEGIN
  DELETE FROM axis_literales where slitera = 89907065 and cidioma in (1,2,8) ;
  DELETE FROM axis_codliterales where slitera = 89907065;
  INSERT INTO axis_codliterales(slitera,clitera)values(89907065,3);
  INSERT INTO axis_literales(cidioma,slitera,tlitera) VALUES(1,89907065,'Rebut de caixa no existeix');  
  INSERT INTO axis_literales(cidioma,slitera,tlitera) VALUES(2,89907065,'Recibo de caja no existe');
  INSERT INTO axis_literales(cidioma,slitera,tlitera) VALUES(8,89907065,'Recibo de caja no existe');
  --
  DELETE FROM axis_literales where slitera = 89907066 and cidioma in (1,2,8) ;
  DELETE FROM axis_codliterales where slitera = 89907066;
  INSERT INTO axis_codliterales(slitera,clitera)values(89907066,3);
  INSERT INTO axis_literales(cidioma,slitera,tlitera) VALUES(1,89907066,'No hi ha valors a revertir');  
  INSERT INTO axis_literales(cidioma,slitera,tlitera) VALUES(2,89907066,'No existen valores a reversar');
  INSERT INTO axis_literales(cidioma,slitera,tlitera) VALUES(8,89907066,'No existen valores a reversar');
  --
  DELETE FROM axis_literales where slitera = 89907067 and cidioma in (1,2,8) ;
  DELETE FROM axis_codliterales where slitera = 89907067;
  INSERT INTO axis_codliterales(slitera,clitera)values(89907067,3);
  INSERT INTO axis_literales(cidioma,slitera,tlitera) VALUES(1,89907067,'Registre no trobat en COMRECIBO');  
  INSERT INTO axis_literales(cidioma,slitera,tlitera) VALUES(2,89907067,'Registro no encontrado en COMRECIBO');
  INSERT INTO axis_literales(cidioma,slitera,tlitera) VALUES(8,89907067,'Registro no encontrado en COMRECIBO');  
  --
  DELETE FROM axis_literales where slitera = 89907068 and cidioma in (1,2,8) ;
  DELETE FROM axis_codliterales where slitera = 89907068;
  INSERT INTO axis_codliterales(slitera,clitera)values(89907068,3);
  INSERT INTO axis_literales(cidioma,slitera,tlitera) VALUES(1,89907068,'Registre duplicat en COMRECIBO');  
  INSERT INTO axis_literales(cidioma,slitera,tlitera) VALUES(2,89907068,'Registro duplicado en COMRECIBO');
  INSERT INTO axis_literales(cidioma,slitera,tlitera) VALUES(8,89907068,'Registro duplicado en COMRECIBO');
  --
  DELETE FROM axis_literales where slitera = 89907069 and cidioma in (1,2,8) ;
  DELETE FROM axis_codliterales where slitera = 89907069;
  INSERT INTO axis_codliterales(slitera,clitera)values(89907069,3);
  INSERT INTO axis_literales(cidioma,slitera,tlitera) VALUES(1,89907069,'Error en inserir en COMRECIBO');  
  INSERT INTO axis_literales(cidioma,slitera,tlitera) VALUES(2,89907069,'Error al insertar en COMRECIBO');
  INSERT INTO axis_literales(cidioma,slitera,tlitera) VALUES(8,89907069,'Error al insertar en COMRECIBO');
--
COMMIT;
EXCEPTION
   WHEN OTHERS THEN
     dbms_output.put_line('ERROR OCCURRED-->'||SQLERRM);
     dbms_output.put_line('ERROR OCCURRED-->'||DBMS_UTILITY.format_error_backtrace);
     ROLLBACK;
End;
/
  



