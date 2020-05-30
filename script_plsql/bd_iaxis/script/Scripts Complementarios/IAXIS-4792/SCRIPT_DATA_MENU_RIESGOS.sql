--0014-01
--ACTUALIZACION DESCRIPCION ROL
UPDATE MENU_DESROLMEN SET TROLMEN = '0014-01-RIESGOS' WHERE CROLMEN = '0014-01' AND CIDIOMA = 8;
--BORRADO CONFIGURACION EXISTENTE
DELETE FROM MENU_OPCIONROL WHERE CROLMEN = '0014-01';
--CONFIGURACIÓN MENÚ Y SUBMENÚ
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0014-01',510);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0014-01',540);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0014-01',600);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0014-01',4000);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0014-01',900400);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0014-01',990000);		

--CONFIGURACIÓN PÁGINAS
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0014-01',515);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0014-01',541);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0014-01',610);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0014-01',900604);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0014-01',900416);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0014-01',900463);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0014-01',4001);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0014-01',525);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0014-01',999674);

/

--0014-02
--ACTUALIZACION DESCRIPCION ROL
UPDATE MENU_DESROLMEN SET TROLMEN = '0014-02-RIESGOS CONSULTA' WHERE CROLMEN = '0014-02' AND CIDIOMA = 8;
--BORRADO CONFIGURACION EXISTENTE
DELETE FROM MENU_OPCIONROL WHERE CROLMEN = '0014-02';
--CONFIGURACIÓN MENÚ Y SUBMENÚ
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0014-02',510);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0014-02',540);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0014-02',990000);		
--CONFIGURACIÓN PÁGINAS
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0014-02',515);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0014-02',541);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0014-02',525);
/
commit;