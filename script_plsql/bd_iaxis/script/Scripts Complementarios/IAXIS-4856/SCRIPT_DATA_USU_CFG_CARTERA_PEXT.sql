--SE ELIMINAN LOS FORMULARIOS DEL USUARIO Y REGISTROS EXISTENTES QUE SE INSERTARÁN POSTERIORMENTE
UPDATE CFG_USER SET CCFGFORM = 'CFG_CENTRAL' WHERE CUSER = 'AXIS_CARTERA_PEXT';
DELETE FROM CFG_FORM WHERE CCFGFORM LIKE 'CFG_CARTERA_PEXT';
DELETE FROM CFG_FORM_PROPERTY WHERE CIDCFG = 92;
DELETE FROM CFG_COD_CFGFORM_DET WHERE CCFGFORM = 'CFG_CARTERA_PEXT'; 
DELETE FROM CFG_COD_CFGFORM WHERE CCFGFORM = 'CFG_CARTERA_PEXT'; 

--SE CREA USUARIO CFG_CARTERA_PEXT
Insert into CFG_COD_CFGFORM (CEMPRES,CCFGFORM,TDESC) values (24,'CFG_CARTERA_PEXT','Configuración de pantallas para Cartera Proveedor Externo');
Insert into CFG_COD_CFGFORM_DET (CEMPRES,CCFGFORM,CIDIOMA,TCFGFORM) values (24,'CFG_CARTERA_PEXT',1,'Configuración de pantallas para Cartera Proveedor Externo');
Insert into CFG_COD_CFGFORM_DET (CEMPRES,CCFGFORM,CIDIOMA,TCFGFORM) values (24,'CFG_CARTERA_PEXT',2,'Configuración de pantallas para Cartera Proveedor Externo');
Insert into CFG_COD_CFGFORM_DET (CEMPRES,CCFGFORM,CIDIOMA,TCFGFORM) values (24,'CFG_CARTERA_PEXT',8,'Configuración de pantallas para Cartera Proveedor Externo');

--SE COPIA CONFIGURACION DEL USUARIO CFG_CENTRAL PARA PERSONALIZAR POSTERIORMENTE SEGÚN ESPECIFICACIONES DEL CFG_CARTERA_PEXT
INSERT INTO CFG_FORM (CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG)
SELECT F.CEMPRES, F.CFORM, F.CMODO, 'CFG_CARTERA_PEXT' CCFGFORM, F.SPRODUC, F.CIDCFG FROM
CFG_FORM F
JOIN CFG_COD_FORM CF ON F.CFORM = CF.CFORM
WHERE F.CCFGFORM = 'CFG_CENTRAL';
--SE COPIAN PROPIEDADES DE CONFIGURACIÓN INICIALES
INSERT INTO CFG_FORM_PROPERTY (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
SELECT '24' CEMPRES, '92' CIDCFG, CFORM, CITEM, CPRPTY, CVALUE FROM CFG_FORM_PROPERTY WHERE CIDCFG = 3 AND (CFORM LIKE 'AXISFIC%' OR CFORM LIKE 'AXISPER%')
UNION 
SELECT '24' CEMPRES, '92' CIDCFG, CFORM, CITEM, CPRPTY, CVALUE FROM CFG_FORM_PROPERTY WHERE CIDCFG = 1001 AND (CFORM LIKE 'AXISFIC%' OR CFORM LIKE 'AXISPER%')
UNION 
SELECT '24' CEMPRES, '92' CIDCFG, CFORM, CITEM, CPRPTY, CVALUE FROM CFG_FORM_PROPERTY WHERE CIDCFG = 1007 AND (CFORM LIKE 'AXISFIC%' OR CFORM LIKE 'AXISPER%')
UNION 
SELECT '24' CEMPRES, '92' CIDCFG, CFORM, CITEM, CPRPTY, CVALUE FROM CFG_FORM_PROPERTY WHERE CIDCFG = 1 AND (CFORM LIKE 'AXISPER017');
--SE CREA NUEVA CONFIGURACIÓN DE FORMULARIOS
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISPER008','MANTTO_PER','CFG_CARTERA_PEXT',0,92);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISPER009','MANTTO_PER','CFG_CARTERA_PEXT',0,92);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISFIC004','MANTTO_PER','CFG_CARTERA_PEXT',0,92);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISFIC001','MANTTO_PER','CFG_CARTERA_PEXT',0,92);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISPER014','MANTTO_PER','CFG_CARTERA_PEXT',0,92);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISPER004','MANTTO_PER','CFG_CARTERA_PEXT',0,92);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISPER010','MANTTO_PER','CFG_CARTERA_PEXT',0,92);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISPER017','MANTTO_PER','CFG_CARTERA_PEXT',0,92);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISFIC005','MANTTO_PER','CFG_CARTERA_PEXT',0,92);
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG) values (24,'AXISFIC007','MANTTO_PER','CFG_CARTERA_PEXT',0,92);

--SE PERSONALIZA CONFIGURACIÓN PARA EL USUARIO
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER008' AND CITEM = 'BT_NUEVA_PERSONA' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_IMPRIMIR' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDIDATOSPER' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDIDATOSPER2' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVFIC' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDITFIC' AND CIDCFG = 92  AND CPRPTY = 1;
--TARJETAS Y CUENTAS BANCARIAS
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'DSP_TARJETAS' AND CIDCFG = 92  AND CPRPTY = 1;
--DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'DSP_CUENTAS' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVCUENTA' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDITCUENTA' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_DELCUENTA' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVDIR' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDITDIR' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_DELDIR' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVCONTACTO' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDITCONTACTO' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_DELCONTACTO' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVTARJETA' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDITTARJETA' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_DELTARJETA' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVCUENTA' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDITCUENTA' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_DELCUENTA' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVNACIONALIDAD' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDITNACIONALIDAD' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_BORRARNACIONALIDAD' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVIDENT' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDITIDENT' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_DELIDENT' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVPERREL' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVREGFISC' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_DELREGFISC' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVIMPUESTO' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_DELIMPUESTO' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NUEVO_DETSARLAFT' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_DEL_REGSARLAFT' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NUEVO_AGENDA' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_SIN_EDITAR_AGD' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDITPROPI' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDITMARCAS' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDITIRPF' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_DELIRPF' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVIRPF' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVPERREL' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_MODIFDOCUM' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_NVRIESGO' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'CBOTCUMCUP' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_EDIT_REGSARLAFT' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_FIND_REGSARLAFT' AND CIDCFG = 92  AND CPRPTY = 1;
DELETE FROM CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER009' AND CITEM = 'BT_PRINT_REGSARLAFT' AND CIDCFG = 92  AND CPRPTY = 1;

Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER008','BT_NUEVA_PERSONA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_IMPRIMIR',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_EDIDATOSPER',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_EDIDATOSPER2',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_NVFIC',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_EDITFIC',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_NVDIR',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_EDITDIR',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_DELDIR',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_NVCONTACTO',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_EDITCONTACTO',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_DELCONTACTO',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_NVTARJETA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_EDITTARJETA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_DELTARJETA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_NVCUENTA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_EDITCUENTA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_DELCUENTA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_NVNACIONALIDAD',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_EDITNACIONALIDAD',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_BORRARNACIONALIDAD',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_NVIDENT',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_EDITIDENT',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_DELIDENT',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_NVPERREL',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_NVREGFISC',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_DELREGFISC',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_NVIMPUESTO',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_DELIMPUESTO',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_NUEVO_DETSARLAFT',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_DEL_REGSARLAFT',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_NUEVO_AGENDA',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_SIN_EDITAR_AGD',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_EDITPROPI',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_EDITMARCAS',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_EDITIRPF',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_DELIRPF',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_NVIRPF',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','CBOTCUMCUP',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_EDIT_REGSARLAFT',1,0);
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,92,'AXISPER009','BT_PRINT_REGSARLAFT',1,0);


--SE RELACION EL USUARIO CON SU CFG_USER PERSONALIZADO
UPDATE CFG_USER SET CCFGFORM = 'CFG_CARTERA_PEXT' WHERE CUSER = 'AXIS_CARTERA_PEXT';
COMMIT;