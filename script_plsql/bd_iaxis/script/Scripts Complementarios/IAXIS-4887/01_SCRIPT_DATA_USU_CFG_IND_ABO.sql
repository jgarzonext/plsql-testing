--SE ELIMINAN LOS FORMULARIOS DEL USUARIO Y REGISTROS EXISTENTES QUE SE INSERTARÁN POSTERIORMENTE
UPDATE CFG_USER SET CCFGFORM = 'CFG_CENTRAL' WHERE CUSER = 'AXIS_ABO';
DELETE FROM CFG_FORM WHERE CCFGFORM LIKE 'CFG_INDEM_ABO';
DELETE FROM CFG_FORM_PROPERTY WHERE CIDCFG = 111;
DELETE FROM CFG_COD_CFGFORM_DET WHERE CCFGFORM = 'CFG_INDEM_ABO'; 
DELETE FROM CFG_COD_CFGFORM WHERE CCFGFORM = 'CFG_INDEM_ABO'; 

--SE CREA USUARIO CFG_INDEM_ABO
Insert into CFG_COD_CFGFORM (CEMPRES,CCFGFORM,TDESC) values (24,'CFG_INDEM_ABO','Configuración de pantallas para Abogado Indemnizaciones');
Insert into CFG_COD_CFGFORM_DET (CEMPRES,CCFGFORM,CIDIOMA,TCFGFORM) values (24,'CFG_INDEM_ABO',1,'Configuración de pantallas para Abogado Indemnizaciones');
Insert into CFG_COD_CFGFORM_DET (CEMPRES,CCFGFORM,CIDIOMA,TCFGFORM) values (24,'CFG_INDEM_ABO',2,'Configuración de pantallas para Abogado Indemnizaciones');
Insert into CFG_COD_CFGFORM_DET (CEMPRES,CCFGFORM,CIDIOMA,TCFGFORM) values (24,'CFG_INDEM_ABO',8,'Configuración de pantallas para Abogado Indemnizaciones');

--SE COPIA CONFIGURACION DEL USUARIO CFG_CENTRAL PARA PERSONALIZAR POSTERIORMENTE SEGÚN ESPECIFICACIONES DEL CFG_INDEM_ABO
INSERT INTO CFG_FORM (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG)
SELECT F.CEMPRES, F.CFORM, F.CMODO, 'CFG_INDEM_ABO' CCFGFORM, F.SPRODUC, F.CIDCFG FROM
CFG_FORM F
JOIN CFG_COD_FORM CF ON F.CFORM = CF.CFORM
WHERE F.CCFGFORM = 'CFG_CENTRAL';
--SE COPIAN PROPIEDADES DE CONFIGURACIÓN INICIALES
INSERT INTO CFG_FORM_PROPERTY (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
SELECT '24' CEMPRES, '111' CIDCFG, CFORM, CITEM, CPRPTY, CVALUE FROM CFG_FORM_PROPERTY WHERE CIDCFG = 3 AND (CFORM IN ('AXISSIN016' ))
UNION 
SELECT '24' CEMPRES, '111' CIDCFG, CFORM, CITEM, CPRPTY, CVALUE FROM CFG_FORM_PROPERTY WHERE CIDCFG = 779 AND (CFORM IN ('AXISSIN017'))
UNION 
SELECT '24' CEMPRES, '111' CIDCFG, CFORM, CITEM, CPRPTY, CVALUE FROM CFG_FORM_PROPERTY WHERE CIDCFG = 778 AND (CFORM IN ('AXISSIN006'));

--SE ELIMINA CONFIGURACIÓN DE FORMULARIOS EXISTENTE
DELETE FROM CFG_FORM WHERE CEMPRES = 24 AND CFORM IN ('AXISSIN006','AXISSIN017','AXISSIN016','AXISSIN039') AND CMODO = 'MODIF_SINIESTROS' AND CCFGFORM = 'CFG_INDEM_ABO';
--SE CREA NUEVA CONFIGURACIÓN DE FORMULARIOS
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISSIN006','MODIF_SINIESTROS','CFG_INDEM_ABO',0,111);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISSIN017','MODIF_SINIESTROS','CFG_INDEM_ABO',0,111);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISSIN016','MODIF_SINIESTROS','CFG_INDEM_ABO',0,111);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISSIN039','MODIF_SINIESTROS','CFG_INDEM_ABO',0,111);

--SE PERSONALIZA CONFIGURACIÓN PARA EL USUARIO
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN017' AND CITEM = 'BT_NUEVA_PER' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'REF_ICON_MAS' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_BORRAR_AGENDA' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_SIN_NUEVO_TRAM' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_SIN_EDITAR_TRAM_GEN' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_CIT_TRAM_DEL' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_CIT_TRAM_CONS' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_SIN_CONSUL_TRAM_LOC' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_ELIMINAR_DOC' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_SIN_NUEVO_TRAM_APOYO' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'LIT_ELIMINAR' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'LIT_EDITAR' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_SIN_NUEVO_TRAM_RESERVA' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'VARIARRES' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BORRAR' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'HISTORICO' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_SIN_NUEVO_TRAM_DEST' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_SIN_EDITAR_TRAM_DEST' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_SIN_DELETE_TRAM_DEST' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_SIN_NUEVO_TRAM_PAGOS' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_SIN_EDITAR_CAB_PAGO' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_SIN_NUEVO_TRAM_PAG_MOV' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_SIN_NUEVO_TRAM_PAG_DET' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_SIN_EDITAR_TRAM_PAG_DET' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_SIN_DELETE_TRAM_PAG_DET' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_SIN_NUEVO_TRAM_REC' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_SIN_EDITAR_CAB_RECOB' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_SIN_NUEVO_MOV_PAGO' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_SIN_NUEVO_RECO' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_SIN_EDITAR_TRAM_REC_DET' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_SIN_DELETE_TRAM_REC_DET' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN039' AND CITEM = 'NOVA_PERSONA' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_SIN_DELETE_PER_REL' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_BORRAR_AGENDA_TRAMITA' AND CIDCFG = 111  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISSIN006' AND CITEM = 'BT_DOCUM_PENDIENTE' AND CIDCFG = 111  AND CPRPTY = 1;

Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN017','BT_NUEVA_PER',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','REF_ICON_MAS',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_BORRAR_AGENDA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_SIN_NUEVO_TRAM',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_SIN_EDITAR_TRAM_GEN',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_CIT_TRAM_DEL',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_CIT_TRAM_CONS',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_SIN_CONSUL_TRAM_LOC',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_ELIMINAR_DOC',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_SIN_NUEVO_TRAM_APOYO',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','LIT_ELIMINAR',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','LIT_EDITAR',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_SIN_NUEVO_TRAM_RESERVA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','VARIARRES',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BORRAR',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','HISTORICO',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_SIN_NUEVO_TRAM_DEST',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_SIN_EDITAR_TRAM_DEST',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_SIN_DELETE_TRAM_DEST',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_SIN_NUEVO_TRAM_PAGOS',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_SIN_EDITAR_CAB_PAGO',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_SIN_NUEVO_TRAM_PAG_MOV',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_SIN_NUEVO_TRAM_PAG_DET',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_SIN_EDITAR_TRAM_PAG_DET',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_SIN_DELETE_TRAM_PAG_DET',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_SIN_NUEVO_TRAM_REC',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_SIN_EDITAR_CAB_RECOB',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_SIN_NUEVO_MOV_PAGO',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_SIN_NUEVO_RECO',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_SIN_EDITAR_TRAM_REC_DET',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_SIN_DELETE_TRAM_REC_DET',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN039','NOVA_PERSONA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_SIN_DELETE_PER_REL',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_BORRAR_AGENDA_TRAMITA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,111,'AXISSIN006','BT_DOCUM_PENDIENTE',1,0);

--SE RELACION EL USUARIO CON SU CFG_USER PERSONALIZADO
UPDATE CFG_USER SET CCFGFORM = 'CFG_INDEM_ABO' WHERE CUSER = 'AXIS_ABO';
COMMIT;