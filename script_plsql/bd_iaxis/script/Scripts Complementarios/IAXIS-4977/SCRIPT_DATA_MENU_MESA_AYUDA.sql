begin
INSERT INTO MENU_CODIROLMEN (CROLMEN) VALUES ('0028-01');
INSERT INTO MENU_DESROLMEN (CROLMEN, TROLMEN, CIDIOMA) VALUES ('0028-01','0028-01-TI MESA DE AYUDA',8);
INSERT INTO MENU_DESROLMEN (CROLMEN, TROLMEN, CIDIOMA) VALUES ('0028-01','0028-01-TI MESA DE AYUDA',1);
INSERT INTO MENU_DESROLMEN (CROLMEN, TROLMEN, CIDIOMA) VALUES ('0028-01','0028-01-TI MESA DE AYUDA',2);
COMMIT;
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
---0028-01
--ACTUALIZACION DESCRIPCION ROL
UPDATE MENU_DESROLMEN SET TROLMEN = '0028-01-TI MESA DE AYUDA' WHERE CROLMEN = '0028-01' AND CIDIOMA = 8;
--BORRADO CONFIGURACION EXISTENTE
DELETE FROM MENU_OPCIONROL WHERE CROLMEN = '0028-01';
--CONFIGURACIÓN MENÚ Y SUBMENÚ
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0028-01',990000);

--CONFIGURACIÓN PÁGINAS
/
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0028-01',990101);

/

commit;