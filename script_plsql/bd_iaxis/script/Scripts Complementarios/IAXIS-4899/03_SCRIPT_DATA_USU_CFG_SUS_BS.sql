--SE ELIMINAN LOS FORMULARIOS DEL USUARIO Y REGISTROS EXISTENTES QUE SE INSERTARÁN POSTERIORMENTE
UPDATE CFG_USER SET CCFGFORM = 'CFG_CENTRAL' WHERE CUSER = 'AXIS_SUSCRIP_BS';
DELETE FROM CFG_FORM WHERE CCFGFORM = 'CFG_SUSC_BS';
DELETE FROM CFG_FORM_PROPERTY WHERE CIDCFG = 32;
DELETE FROM CFG_COD_CFGFORM_DET WHERE CCFGFORM = 'CFG_SUSC_BS'; 
DELETE FROM CFG_COD_CFGFORM WHERE CCFGFORM = 'CFG_SUSC_BS'; 


--SE CREA USUARIO CFG_SUSC_BS
Insert into CFG_COD_CFGFORM (CEMPRES,CCFGFORM,TDESC) values (24,'CFG_SUSC_BS','Configuración de pantallas para Suscriptor Confianza BS');
Insert into CFG_COD_CFGFORM_DET (CEMPRES,CCFGFORM,CIDIOMA,TCFGFORM) values (24,'CFG_SUSC_BS',1,'Configuración de pantallas para Suscriptor Confianza BS');
Insert into CFG_COD_CFGFORM_DET (CEMPRES,CCFGFORM,CIDIOMA,TCFGFORM) values (24,'CFG_SUSC_BS',2,'Configuración de pantallas para Suscriptor Confianza BS');
Insert into CFG_COD_CFGFORM_DET (CEMPRES,CCFGFORM,CIDIOMA,TCFGFORM) values (24,'CFG_SUSC_BS',8,'Configuración de pantallas para Suscriptor Confianza BS');

--SE COPIA CONFIGURACION DEL USUARIO CFG_CENTRAL PARA PERSONALIZAR POSTERIORMENTE SEGÚN ESPECIFICACIONES DEL CFG_SUSC_BS
INSERT INTO CFG_FORM (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG)
SELECT F.CEMPRES, F.CFORM, F.CMODO, 'CFG_SUSC_BS' CCFGFORM, F.SPRODUC, F.CIDCFG FROM
CFG_FORM F
JOIN CFG_COD_FORM CF ON F.CFORM = CF.CFORM
WHERE F.CCFGFORM = 'CFG_CENTRAL';
--SE COPIAN PROPIEDADES DE CONFIGURACIÓN INICIALES
INSERT INTO CFG_FORM_PROPERTY (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
SELECT '24' CEMPRES, '32' CIDCFG, CFORM, CITEM, CPRPTY, CVALUE FROM CFG_FORM_PROPERTY WHERE CIDCFG = 3 AND (CFORM LIKE 'AXISFIC%' OR CFORM LIKE 'AXISPER%')
UNION 
SELECT '24' CEMPRES, '32' CIDCFG, CFORM, CITEM, CPRPTY, CVALUE FROM CFG_FORM_PROPERTY WHERE CIDCFG = 1001 AND (CFORM LIKE 'AXISFIC%' OR CFORM LIKE 'AXISPER%')
UNION 
SELECT '24' CEMPRES, '32' CIDCFG, CFORM, CITEM, CPRPTY, CVALUE FROM CFG_FORM_PROPERTY WHERE CIDCFG = 1007 AND (CFORM LIKE 'AXISFIC%' OR CFORM LIKE 'AXISPER%')
UNION 
SELECT '24' CEMPRES, '32' CIDCFG, CFORM, CITEM, CPRPTY, CVALUE FROM CFG_FORM_PROPERTY WHERE CIDCFG = 1 AND (CFORM LIKE 'AXISPER017');
--SE CREA NUEVA CONFIGURACIÓN DE FORMULARIOS
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISFIC005','MANTTO_PER','CFG_SUSC_BS',0,32);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISPER008','MANTTO_PER','CFG_SUSC_BS',0,32);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISPER009','MANTTO_PER','CFG_SUSC_BS',0,32);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISFIC004','MANTTO_PER','CFG_SUSC_BS',0,32);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISFIC001','MANTTO_PER','CFG_SUSC_BS',0,32);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISPER014','MANTTO_PER','CFG_SUSC_BS',0,32);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISPER004','MANTTO_PER','CFG_SUSC_BS',0,32);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISPER010','MANTTO_PER','CFG_SUSC_BS',0,32);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISPER017','MANTTO_PER','CFG_SUSC_BS',0,32);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISFIC007','MANTTO_PER','CFG_SUSC_BS',0,32);

--SE PERSONALIZA CONFIGURACIÓN PARA EL USUARIO
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDIDATOSPER' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDIDATOSPER2' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC001' AND CITEM = 'BT_IMPRIMIR' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC001' AND CITEM = 'BT_NVENDEFIN' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC001' AND CITEM = 'BT_EDITENDEFIN' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC001' AND CITEM = 'BT_DELENDEFIN' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC001' AND CITEM = 'BT_MODIFDOCUM' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC001' AND CITEM = 'BT_NVDOCU' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_IMPRIMIR' AND CIDCFG = 32  AND CPRPTY = 1;
--ENDEUDAMIENTO FINANCIERO
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC004' AND CITEM = 'BT_DELENDEFIN' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC004' AND CITEM = 'CFUENTE' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC004' AND CITEM = 'IMINIMO' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC004' AND CITEM = 'ICAPPAG' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC004' AND CITEM = 'NMORA' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC004' AND CITEM = 'NCONSUL' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC004' AND CITEM = 'IENDTOT' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC004' AND CITEM = 'NCALIFA' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC004' AND CITEM = 'NCALIFB' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC004' AND CITEM = 'NCALIFC' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC004' AND CITEM = 'NCALIFD' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC004' AND CITEM = 'NCALIFE' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC004' AND CITEM = 'NSCORE' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC004' AND CITEM = 'ICAPEND' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC004' AND CITEM = 'FCUPO' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC004' AND CITEM = 'ICUPOS' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC004' AND CITEM = 'ICUPOG' AND CIDCFG = 32  AND CPRPTY = 1;
--DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC004' AND CITEM = 'TCBUREA' AND CIDCFG = 32  AND CPRPTY = 1;
--[axisfic005] INDICADORES FINANCIEROS
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC005' AND CITEM = 'BT_EDICUENTAS' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC007' AND CITEM = 'BT_ACEPTAR' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC005' AND CITEM = 'FCUPO' AND CIDCFG = 32  AND CPRPTY = 2;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC005' AND CITEM = 'ICO_FCUPO' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC005' AND CITEM = 'ICUPOG' AND CIDCFG = 32  AND CPRPTY = 2;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC005' AND CITEM = 'ICUPOS' AND CIDCFG = 32  AND CPRPTY = 2;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC005' AND CITEM = 'FCUPOS' AND CIDCFG = 32  AND CPRPTY = 2;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC005' AND CITEM = 'ICO_FCUPOS' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISFIC005' AND CITEM = 'CMONCAM' AND CIDCFG = 32  AND CPRPTY = 2;
--TARJETAS Y CUENTAS BANCARIAS
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'DSP_TARJETAS' AND CIDCFG = 32  AND CPRPTY = 1;
--DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'DSP_CUENTAS' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVCUENTA' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDITCUENTA' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_DELCUENTA' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_DELREGFISC' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_DELIMPUESTO' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDITPROPI' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVRIESGO' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_DEL_REGSARLAFT' AND CIDCFG = 32  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDIT_REGSARLAFT' AND CIDCFG = 32  AND CPRPTY = 1;

Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISPER009','BT_EDIDATOSPER',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISPER009','BT_EDIDATOSPER2',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC001','BT_IMPRIMIR',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC001','BT_NVENDEFIN',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC001','BT_EDITENDEFIN',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC001','BT_DELENDEFIN',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC001','BT_MODIFDOCUM',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC001','BT_NVDOCU',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISPER009','BT_IMPRIMIR',1,0);
--ENDEUDAMIENTO FINCANCIERO
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC004','BT_DELENDEFIN',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC004','CFUENTE',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC004','IMINIMO',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC004','ICAPPAG',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC004','NMORA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC004','NCONSUL',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC004','IENDTOT',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC004','NCALIFA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC004','NCALIFB',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC004','NCALIFC',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC004','NCALIFD',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC004','NCALIFE',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC004','NSCORE',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC004','ICAPEND',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC004','FCUPO',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC004','ICUPOS',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC004','ICUPOG',1,0);
--Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC004','TCBUREA',1,0);
--[axisfic005] INDICADORES FINANCIEROS
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC005','BT_EDICUENTAS',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC007','BT_ACEPTAR',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC005','FCUPO',2,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC005','ICO_FCUPO',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC005','ICUPOG',2,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC005','ICUPOS',2,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC005','FCUPOS',2,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC005','ICO_FCUPOS',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISFIC005','CMONCAM',2,0);

--TARJETAS Y CUENTAS BANCARIAS
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISPER009','DSP_TARJETAS',1,0);
--Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISPER009','DSP_CUENTAS',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISPER009','BT_NVCUENTA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISPER009','BT_EDITCUENTA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISPER009','BT_DELCUENTA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISPER009','BT_DELREGFISC',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISPER009','BT_DELIMPUESTO',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISPER009','BT_EDITPROPI',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISPER009','BT_NVRIESGO',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISPER009','BT_DEL_REGSARLAFT',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,32,'AXISPER009','BT_EDIT_REGSARLAFT',1,0);

--SE RELACION EL USUARIO CON SU CFG_USER PERSONALIZADO
UPDATE CFG_USER SET CCFGFORM = 'CFG_SUSC_BS' WHERE CUSER = 'AXIS_SUSCRIP_BS';
COMMIT;