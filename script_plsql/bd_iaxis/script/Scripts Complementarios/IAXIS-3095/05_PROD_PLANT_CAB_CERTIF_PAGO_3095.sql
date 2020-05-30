/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script inserta en las tablas codiplantillas y detplantillas.        
********************************************************************************************************************** */
    
DELETE FROM prod_plant_cab
WHERE CCODPLAN = 'CONF000004';
	
DELETE FROM detplantillas
WHERE CCODPLAN = 'CONF000004';

DELETE FROM codiplantillas
WHERE CCODPLAN = 'CONF000004';

DELETE FROM prod_plant_cab
WHERE CCODPLAN = 'CONF000001'
and sproduc in (80002, 80003);

INSERT INTO codiplantillas (CCODPLAN, IDCONSULTA, GEDOX, IDCAT, CGENFICH, CGENPDF, CGENREP)
VALUES ('CONF000004', 0, 'S', 1, 1, 1, 2);

INSERT INTO detplantillas (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CFIRMA)
VALUES ('CONF000004', 1, 'Certificación de pago', 'CONFCertPagoME.jasper', '.', 0);
INSERT INTO detplantillas (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CFIRMA)
VALUES ('CONF000004', 2, 'Certificación de pago', 'CONFCertPagoME.jasper', '.', 0);
INSERT INTO detplantillas (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CFIRMA)
VALUES ('CONF000004', 8, 'Certificación de pago', 'CONFCertPagoME.jasper', '.', 0);

Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI)
values ('80002','0','CONF000004','1',to_date('01/01/16','DD/MM/RR'),null,null,'0',null,null,null,'pac_impresion_conf.f_mov_recibo',null,null,'AXIS',to_date('29/11/17','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI)
values ('80002','8','CONF000004','1',to_date('01/01/16','DD/MM/RR'),null,null,'0',null,null,null,'pac_impresion_conf.f_mov_recibo',null,null,'AXIS',to_date('29/11/17','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI)
values ('80003','0','CONF000004','1',to_date('01/01/16','DD/MM/RR'),null,null,'0',null,null,null,'pac_impresion_conf.f_mov_recibo',null,null,'AXIS',to_date('29/11/17','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI)
values ('80003','8','CONF000004','1',to_date('01/01/16','DD/MM/RR'),null,null,'0',null,null,null,'pac_impresion_conf.f_mov_recibo',null,null,'AXIS',to_date('29/11/17','DD/MM/RR'),null,null);

   COMMIT;
/