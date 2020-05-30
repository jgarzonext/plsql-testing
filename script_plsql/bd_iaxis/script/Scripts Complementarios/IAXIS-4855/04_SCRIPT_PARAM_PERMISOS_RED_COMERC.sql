--NUEVA OPCION MENÚ PAGINA CONSULTA AGENTES EN MODO CONSULTA
begin
Insert into MENU_OPCIONES (COPCION,SLITERA,CINVCOD,CINVTIP,CMENPAD,NORDEN,TPARAME,CTIPMEN,CMODO) values
(4004,9000520,'AXISAGE002',null,4000,2,null,1,'CONSULTA');
COMMIT;
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
begin
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISAGE002','CONSULTA','CFG_CENTRAL',0,20);
COMMIT;
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
begin
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISAGE001','CONSULTA','CFG_CENTRAL',0,20);
COMMIT;
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
/*SE MODIFICA LA OPCION DE MENÚ QUE LE CORRESPONDE A LOS ROLES CON PERMISOS DE CONSULTA SOBRE LA PANTALLA CONSULTA DE AGENTES*/
UPDATE
MENU_OPCIONROL
SET COPCION = 4004 
WHERE CROLMEN NOT IN ('0008-01', 'FULL_ACCESS') AND COPCION = 4002;
----------------------------------------------------
----------------------------------------------------
/*CONFIGURACIÓN EXTERNA DETALLE FICHA TECNICA*/
----------------------------------------------------
/*SE ELIMINA POSIBLE CONFIGURACIÓN EXISTENTE*/
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISAGE002' AND CITEM = 'CRETENC' AND CIDCFG = 20  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISAGE002' AND CITEM = 'CTIPIVA' AND CIDCFG = 20  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISAGE002' AND CITEM = 'NCOLEGI' AND CIDCFG = 20  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISAGE001' AND CITEM = 'BT_NUEVO' AND CIDCFG = 20  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISAGE002' AND CITEM = 'MOD_AGENTE' AND CIDCFG = 20  AND CPRPTY = 1;

/*SE INGRESA LA NUEVA CONFIGURACIÓN DE PERMISOS*/
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,20,'AXISAGE002','CRETENC',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,20,'AXISAGE002','CTIPIVA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,20,'AXISAGE002','NCOLEGI',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,20,'AXISAGE001','BT_NUEVO',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,20,'AXISAGE002','MOD_AGENTE',1,0);

/
commit;

