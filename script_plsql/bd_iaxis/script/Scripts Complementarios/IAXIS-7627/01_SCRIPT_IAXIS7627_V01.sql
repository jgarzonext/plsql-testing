/* Formatted on 18/11/2018 17:00 (Formatter Plus v.1.0)*/
/* **************************** 18/11/2018 17:00 **********************************************************************
Versión           Descripción
01.               -Se actualiza el listado de valores con código 800008 - Subtipo de recibo. 
                  	** Se agrega el subtipo 17 - "Anulación de póliza"
                  	** Se actualiza el subtipo 8. Pasa de "Anulación" a "Rechazo de movimiento"
IAXIS-7627         18/11/2018 Daniel Rodríguez
***********************************************************************************************************************/
--
BEGIN
  --
  DELETE FROM detvalores d WHERE d.cvalor = 800008 AND d.cidioma IN (1,2,8) AND d.catribu = 8;
  DELETE FROM detvalores d WHERE d.cvalor = 800008 AND d.cidioma IN (1,2,8) AND d.catribu = 17;
  --
  INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
  VALUES (800008, 1, 8, 'Rebuig de moviment');
  --
  INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
  VALUES (800008, 2, 8, 'Rechazo de movimiento');
  --
  INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
  VALUES (800008, 8, 8, 'Rechazo de movimiento');
  --
  INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
  VALUES (800008, 1, 17, 'Anullació de pòlissa');
  --
  INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
  VALUES (800008, 2, 17, 'Anulación de póliza');
  --
  INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
  VALUES (800008, 8, 17, 'Anulación de póliza');
  --
  COMMIT;
  -- 
EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    dbms_output.put_line('Error mientras se insertaba un nuevo atributo en detvalores: ' || SQLERRM);
    -- 
END;
/ 
