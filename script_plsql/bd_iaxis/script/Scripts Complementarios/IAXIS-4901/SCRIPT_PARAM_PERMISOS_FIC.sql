DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_DETALLE' AND CIDCFG = 4 AND CPRPTY = 1;
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,4,'AXISPER009','BT_DETALLE',1,0);

COMMIT;