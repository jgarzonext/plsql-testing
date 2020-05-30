/******************************************************************************
  IAXIS-3264 -JLTS -19/01/2020. Se crea el literal de error para la validación 
                                del proceso de comisiones en baja de amparos.
******************************************************************************/
-- Se eliminan los registros
DELETE axis_literales WHERE slitera = 89907102;
--
DELETE axis_codliterales WHERE slitera = 89907102;
-- Se insertan los registros
INSERT INTO axis_codliterales
  (slitera,
   clitera)
VALUES
  (89907102,
   6);
--
INSERT INTO axis_literales
  (cidioma,
   slitera,
   tlitera)
VALUES
  (1,
   89907102,
   'Error a inserir en la taula COMRECIBO (Baixa Amparo)');

INSERT INTO axis_literales
  (cidioma,
   slitera,
   tlitera)
VALUES
  (2,
   89907102,
   'Error a insertar en la tabla COMRECIBO (Baja Amparo)');

INSERT INTO axis_literales
  (cidioma,
   slitera,
   tlitera)
VALUES
  (8,
   89907102,
   'Error a insertar en la tabla COMRECIBO (Baja Amparo)');
COMMIT
/
