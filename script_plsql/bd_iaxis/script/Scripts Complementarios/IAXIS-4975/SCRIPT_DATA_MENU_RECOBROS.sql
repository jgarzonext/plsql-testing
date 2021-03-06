begin
INSERT INTO MENU_CODIROLMEN (CROLMEN) VALUES ('0027-01');
INSERT INTO MENU_DESROLMEN (CROLMEN, TROLMEN, CIDIOMA) VALUES ('0027-01','0027-01-RECOBROS',8);
INSERT INTO MENU_DESROLMEN (CROLMEN, TROLMEN, CIDIOMA) VALUES ('0027-01','0027-01-RECOBROS',1);
INSERT INTO MENU_DESROLMEN (CROLMEN, TROLMEN, CIDIOMA) VALUES ('0027-01','0027-01-RECOBROS',2);
COMMIT;
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
---0027-01
--ACTUALIZACION DESCRIPCION ROL
UPDATE MENU_DESROLMEN SET TROLMEN = '0027-01-RECOBROS' WHERE CROLMEN = '0027-01' AND CIDIOMA = 8;
--BORRADO CONFIGURACION EXISTENTE
DELETE FROM MENU_OPCIONROL WHERE CROLMEN = '0027-01';
--CONFIGURACIÓN MENÚ Y SUBMENÚ
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',510);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',540);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',545);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',600);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',700);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',990010);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',20000);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',900400);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',900410);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',4000);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',990000);

--CONFIGURACIÓN PÁGINAS
/
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',515);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',543);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',990921);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',999676);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',900604);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',888887);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',888889);	
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',888890);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',990105);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',990103);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',999999);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',994);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',920004);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',20001);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',20003);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',40007);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',4001);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0027-01',525);
/

commit;
