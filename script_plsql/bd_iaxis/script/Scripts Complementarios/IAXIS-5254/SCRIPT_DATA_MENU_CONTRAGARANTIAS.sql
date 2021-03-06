--0030-01
begin
INSERT INTO MENU_CODIROLMEN (CROLMEN) VALUES ('0030-01');
INSERT INTO MENU_DESROLMEN (CROLMEN, TROLMEN, CIDIOMA) VALUES ('0030-01','Menú para el área de Contragarantias',8);
INSERT INTO MENU_DESROLMEN (CROLMEN, TROLMEN, CIDIOMA) VALUES ('0030-01','Menú para el área de Contragarantias',1);
INSERT INTO MENU_DESROLMEN (CROLMEN, TROLMEN, CIDIOMA) VALUES ('0030-01','Menú para el área de Contragarantias',2);
COMMIT;
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
--BORRADO CONFIGURACION EXISTENTE
DELETE FROM MENU_OPCIONROL WHERE CROLMEN = '0030-01';
--CONFIGURACIÓN MENÚ Y SUBMENÚ
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0030-01',540);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0030-01',545);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0030-01',600);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0030-01',900400);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0030-01',990000);
--CONFIGURACIÓN PÁGINAS
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0030-01',543);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0030-01',999675);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0030-01',900604);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0030-01',999702);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0030-01',525);
/
commit;
