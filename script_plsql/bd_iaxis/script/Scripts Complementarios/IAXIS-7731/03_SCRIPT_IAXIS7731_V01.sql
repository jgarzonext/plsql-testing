/* Formatted on 19/12/2019 17:30 (Formatter Plus v.1.0)*/
/* **************************** 19/12/2019 17:30 **********************************************************************
Versión           Descripción
01.               -Se actualiza el listado de valores del módulo de siniestros con código 3 - Estado del pago.
                  	** Se agrega el estado 3 - "Reversado"
IAXIS-7731         19/12/2019 Daniel Rodríguez
***********************************************************************************************************************/
--
BEGIN
  --
  DELETE FROM detvalores d WHERE d.cvalor = 3 AND d.cidioma IN (1,2,8) AND d.catribu = 3;
  --
  INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
  VALUES (3, 1, 3, 'Reversado');
  --
  INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
  VALUES (3, 2, 3, 'Reversado');
  --
  INSERT INTO detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
  VALUES (3, 8, 3, 'Reversado');
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
