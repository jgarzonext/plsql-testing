/*SE AGREGAN LAS OPCIONES DE CONSULTA PROCESOS BATCH Y MANTENIMIENTO DE COTIZACIONES AL ROL DE GESTION DE MESA COMERCIAL*/
DELETE FROM MENU_OPCIONROL WHERE CROLMEN = '0008-01' AND COPCION IN (990000,990135,999674);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0008-01',990000);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0008-01',990135);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('0008-01',999674);

/
COMMIT;