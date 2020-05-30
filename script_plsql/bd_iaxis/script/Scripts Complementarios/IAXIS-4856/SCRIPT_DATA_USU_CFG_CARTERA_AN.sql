--SE ELIMINAN LOS FORMULARIOS DEL USUARIO Y REGISTROS EXISTENTES QUE SE INSERTAR�N POSTERIORMENTE
UPDATE CFG_USER SET CCFGFORM = 'CFG_CENTRAL' WHERE CUSER = 'AXIS_CARTERA';
DELETE FROM CFG_FORM WHERE CCFGFORM LIKE 'CFG_CARTERA_AN';
DELETE FROM CFG_FORM_PROPERTY WHERE CIDCFG = 91;
DELETE FROM CFG_COD_CFGFORM_DET WHERE CCFGFORM = 'CFG_CARTERA_AN'; 
DELETE FROM CFG_COD_CFGFORM WHERE CCFGFORM = 'CFG_CARTERA_AN'; 

--SE CREA USUARIO CFG_CARTERA_AN
Insert into CFG_COD_CFGFORM (CEMPRES,CCFGFORM,TDESC) values (24,'CFG_CARTERA_AN','Configuraci�n de pantallas para Cartera Analista');
Insert into CFG_COD_CFGFORM_DET (CEMPRES,CCFGFORM,CIDIOMA,TCFGFORM) values (24,'CFG_CARTERA_AN',1,'Configuraci�n de pantallas para Cartera Analista');
Insert into CFG_COD_CFGFORM_DET (CEMPRES,CCFGFORM,CIDIOMA,TCFGFORM) values (24,'CFG_CARTERA_AN',2,'Configuraci�n de pantallas para Cartera Analista');
Insert into CFG_COD_CFGFORM_DET (CEMPRES,CCFGFORM,CIDIOMA,TCFGFORM) values (24,'CFG_CARTERA_AN',8,'Configuraci�n de pantallas para Cartera Analista');

--SE COPIA CONFIGURACION DEL USUARIO CFG_CENTRAL PARA PERSONALIZAR POSTERIORMENTE SEG�N ESPECIFICACIONES DEL CFG_CARTERA_AN
INSERT INTO CFG_FORM (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG)
SELECT F.CEMPRES, F.CFORM, F.CMODO, 'CFG_CARTERA_AN' CCFGFORM, F.SPRODUC, F.CIDCFG FROM
CFG_FORM F
JOIN CFG_COD_FORM CF ON F.CFORM = CF.CFORM
WHERE F.CCFGFORM = 'CFG_CENTRAL';
--SE COPIAN PROPIEDADES DE CONFIGURACI�N INICIALES
INSERT INTO CFG_FORM_PROPERTY (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
SELECT '24' CEMPRES, '91' CIDCFG, CFORM, CITEM, CPRPTY, CVALUE FROM CFG_FORM_PROPERTY WHERE CIDCFG = 3 AND (CFORM LIKE 'AXISFIC%' OR CFORM LIKE 'AXISPER%')
UNION 
SELECT '24' CEMPRES, '91' CIDCFG, CFORM, CITEM, CPRPTY, CVALUE FROM CFG_FORM_PROPERTY WHERE CIDCFG = 1001 AND (CFORM LIKE 'AXISFIC%' OR CFORM LIKE 'AXISPER%')
UNION 
SELECT '24' CEMPRES, '91' CIDCFG, CFORM, CITEM, CPRPTY, CVALUE FROM CFG_FORM_PROPERTY WHERE CIDCFG = 1007 AND (CFORM LIKE 'AXISFIC%' OR CFORM LIKE 'AXISPER%')
UNION 
SELECT '24' CEMPRES, '91' CIDCFG, CFORM, CITEM, CPRPTY, CVALUE FROM CFG_FORM_PROPERTY WHERE CIDCFG = 1 AND (CFORM LIKE 'AXISPER017');
--SE CREA NUEVA CONFIGURACI�N DE FORMULARIOS
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISPER008','MANTTO_PER','CFG_CARTERA_AN',0,91);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISPER009','MANTTO_PER','CFG_CARTERA_AN',0,91);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISFIC004','MANTTO_PER','CFG_CARTERA_AN',0,91);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISFIC001','MANTTO_PER','CFG_CARTERA_AN',0,91);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISPER014','MANTTO_PER','CFG_CARTERA_AN',0,91);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISPER004','MANTTO_PER','CFG_CARTERA_AN',0,91);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISPER010','MANTTO_PER','CFG_CARTERA_AN',0,91);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISPER017','MANTTO_PER','CFG_CARTERA_AN',0,91);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISFIC005','MANTTO_PER','CFG_CARTERA_AN',0,91);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISFIC007','MANTTO_PER','CFG_CARTERA_AN',0,91);

--SE PERSONALIZA CONFIGURACI�N PARA EL USUARIO
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER008' AND CITEM = 'BT_NUEVA_PERSONA' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_IMPRIMIR' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDIDATOSPER' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDIDATOSPER2' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVFIC' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDITFIC' AND CIDCFG = 91  AND CPRPTY = 1;
--TARJETAS Y CUENTAS BANCARIAS
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'DSP_TARJETAS' AND CIDCFG = 91  AND CPRPTY = 1;
--DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'DSP_CUENTAS' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVCUENTA' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDITCUENTA' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_DELCUENTA' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVDIR' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDITDIR' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_DELDIR' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVCONTACTO' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDITCONTACTO' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_DELCONTACTO' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVTARJETA' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDITTARJETA' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_DELTARJETA' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVCUENTA' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDITCUENTA' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_DELCUENTA' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVNACIONALIDAD' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDITNACIONALIDAD' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_BORRARNACIONALIDAD' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVIDENT' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDITIDENT' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_DELIDENT' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVPERREL' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVREGFISC' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_DELREGFISC' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVIMPUESTO' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_DELIMPUESTO' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NUEVO_DETSARLAFT' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_DEL_REGSARLAFT' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NUEVO_AGENDA' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_SIN_EDITAR_AGD' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDITPROPI' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDITIRPF' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_DELIRPF' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVIRPF' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVPERREL' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_MODIFDOCUM' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVRIESGO' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'CBOTCUMCUP' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDIT_REGSARLAFT' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_FIND_REGSARLAFT' AND CIDCFG = 91  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_PRINT_REGSARLAFT' AND CIDCFG = 91  AND CPRPTY = 1;


Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER008','BT_NUEVA_PERSONA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_IMPRIMIR',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_EDIDATOSPER',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_EDIDATOSPER2',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_NVFIC',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_EDITFIC',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_NVDIR',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_EDITDIR',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_DELDIR',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_NVCONTACTO',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_EDITCONTACTO',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_DELCONTACTO',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_NVTARJETA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_EDITTARJETA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_DELTARJETA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_NVCUENTA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_EDITCUENTA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_DELCUENTA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_NVNACIONALIDAD',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_EDITNACIONALIDAD',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_BORRARNACIONALIDAD',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_NVIDENT',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_EDITIDENT',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_DELIDENT',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_NVPERREL',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_NVREGFISC',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_DELREGFISC',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_NVIMPUESTO',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_DELIMPUESTO',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_NUEVO_DETSARLAFT',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_DEL_REGSARLAFT',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_NUEVO_AGENDA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_SIN_EDITAR_AGD',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_EDITPROPI',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_EDITIRPF',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_DELIRPF',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_NVIRPF',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','CBOTCUMCUP',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_EDIT_REGSARLAFT',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,91,'AXISPER009','BT_PRINT_REGSARLAFT',1,0);


--SE RELACION EL USUARIO CON SU CFG_USER PERSONALIZADO
UPDATE CFG_USER SET CCFGFORM = 'CFG_CARTERA_AN' WHERE CUSER = 'AXIS_CARTERA';
COMMIT;