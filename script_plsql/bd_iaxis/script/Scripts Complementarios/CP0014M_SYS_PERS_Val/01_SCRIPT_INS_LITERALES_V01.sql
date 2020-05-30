SET SERVEROUTPUT ON
DELETE axis_literales
 WHERE slitera = 9907933
/
BEGIN
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (1, 9907933, 'Error de dades. Revisar la Longitud o format dels camps.');
EXCEPTION
WHEN DUP_VAL_ON_INDEX THEN
  UPDATE axis_literales
     SET TLITERA = 'Error de dades. Revisar la Longitud o format dels camps.'
   WHERE SLITERA = 9907933
     AND CIDIOMA = 1;
END;
/

BEGIN
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (2, 9907933, 'Error de datos. Revise la longitud o formato de los campos.');
EXCEPTION
WHEN DUP_VAL_ON_INDEX THEN
  UPDATE axis_literales
     SET TLITERA = 'Error de datos. Revise la longitud o formato de los campos.'
   WHERE SLITERA = 9907933
     AND CIDIOMA = 2;
WHEN OTHERS THEN
  DBMS_OUTPUT.PUT_LINE('ERROR AL INSERTAR SLITERA 9907933 IDIOMA 2');
END;
/

BEGIN
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (8, 9907933, 'Error de datos. Revise la longitud o formato de los campos.');
EXCEPTION
WHEN DUP_VAL_ON_INDEX THEN
  UPDATE axis_literales
     SET TLITERA = 'Error de datos. Revise la longitud o formato de los campos.'
   WHERE SLITERA = 9907933
     AND CIDIOMA = 3;
END;
/
COMMIT
/