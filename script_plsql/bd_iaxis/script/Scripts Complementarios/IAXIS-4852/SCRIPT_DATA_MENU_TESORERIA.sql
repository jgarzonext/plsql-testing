--0015-01
--ACTUALIZACION DESCRIPCION ROL
UPDATE MENU_DESROLMEN SET TROLMEN = '0015-01-TESORERIA AUXILIAR' WHERE CROLMEN = '0015-01' AND CIDIOMA = 8;
--BORRADO CONFIGURACION EXISTENTE
DELETE FROM MENU_OPCIONROL WHERE CROLMEN = '0015-01';
--CONFIGURACIÓN MENÚ Y SUBMENÚ
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0015-01',900400);

--CONFIGURACIÓN PÁGINAS
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0015-01',990135);

/

commit;
