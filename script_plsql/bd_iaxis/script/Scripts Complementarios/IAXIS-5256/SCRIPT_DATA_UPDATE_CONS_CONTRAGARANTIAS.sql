--SE AJUSTA CONFIGURACIÓN EXISTENTE DE CONTRAGARANTIAS EN MODO CONSULTA
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISCTR300' AND CITEM = 'BT_EDIT_CON' AND CIDCFG = 1001  AND CPRPTY = 1;
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,1001,'AXISCTR300','BT_EDIT_CON',1,0);

COMMIT;