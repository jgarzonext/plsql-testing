
delete prod_plant_cab
where sproduc in (80003)
and ccodplan = 'CONF000001';

delete prod_plant_cab
where sproduc in (80003)
and ccodplan = 'CONF800110'
and fdesde = '25-SEP-19'
AND CTIPO = 0;

Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI)
values (80003,0,'SU-OD-63-01',1,to_date('27-MAR-19','DD-MON-RR'),null,null,1,null,null,null,'pac_impresion_conf.f_clausula_ecopetrol_gb',null,null,'AXIS',to_date('07-MAY-19','DD-MON-RR'),null,null);

Insert into PROD_PLANT_CAB (CCODPLAN,SPRODUC,CTIPO,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('SU-OD-01-05',80003,0,1,to_date('27-MAR-19','DD-MON-RR'),null,null,1,null,null,null,'pac_impresion_conf.f_clausulado_ecop',null,null,'AXIS_CONF',to_date('21-MAY-19','DD-MON-RR'),null,null);

Insert into PROD_PLANT_CAB (CCODPLAN,SPRODUC,CTIPO,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('SU-OD-06-05',80003,0,1,to_date('27-MAR-19','DD-MON-RR'),null,null,1,null,null,null,'pac_impresion_conf.f_clausulado_part_p',null,null,'AXIS_CONF',to_date('21-MAY-19','DD-MON-RR'),null,null);

Insert into PROD_PLANT_CAB (CCODPLAN,SPRODUC,CTIPO,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('SU-OD-07-05',80003,0,1,to_date('27-MAR-19','DD-MON-RR'),null,null,1,null,null,null,'pac_impresion_conf.f_clausulado_sp',null,null,'AXIS_CONF',to_date('21-MAY-19','DD-MON-RR'),null,null);

Insert into PROD_PLANT_CAB (CCODPLAN,SPRODUC,CTIPO,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('SU-OD-39-01',80003,0,1,to_date('27-MAR-19','DD-MON-RR'),null,null,1,null,null,null,'pac_impresion_conf.f_clausulado_gu_ani',null,null,'AXIS_CONF',to_date('21-MAY-19','DD-MON-RR'),null,null);

Insert into PROD_PLANT_CAB (CCODPLAN,SPRODUC,CTIPO,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('SU-OD-38-04',80003,0,1,to_date('27-MAR-19','DD-MON-RR'),null,null,1,null,null,null,'pac_impresion_conf.f_clausulado_gu_rpc',null,null,'AXIS_CONF',to_date('21-MAY-19','DD-MON-RR'),null,null);

Insert into PROD_PLANT_CAB (CCODPLAN,SPRODUC,CTIPO,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('SU-OD-62-01',80003,0,1,to_date('27-MAR-19','DD-MON-RR'),null,null,1,null,null,null,'pac_impresion_conf.f_clausulado_part_brep',null,null,'AXIS_CONF',to_date('21-MAY-19','DD-MON-RR'),null,null);

Insert into PROD_PLANT_CAB (CCODPLAN,SPRODUC,CTIPO,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('SU-OD-02-04',80003,0,1,to_date('27-MAR-19','DD-MON-RR'),null,null,1,null,null,null,'pac_impresion_conf.f_clausulado_part_zf',null,null,'AXIS_CONF',to_date('21-MAY-19','DD-MON-RR'),null,null);

DELETE PROD_PLANT_CAB p
WHERE p.sproduc = 80004
and p.ctipo = 0
AND CCODPLAN = 'CONF000003';

DELETE PROD_PLANT_CAB p
WHERE p.sproduc = 80004
and p.ctipo = 0
AND CCODPLAN = 'CONF000001';
           
DELETE PROD_PLANT_CAB p
WHERE p.sproduc = 80004
and p.ctipo = 0
AND CCODPLAN = 'CONF800110'
and fdesde = '25-SEP-19'
AND CTIPO = 0;

update activisegu
set Tactivi = 'GARANTÍA DE CUMPLIMIENTO EN FAVOR DE ENTIDADES PARTICULARES'
where cidioma = 8
and Cramo = 801
and cactivi = 1;

update  activisegu
set tactivi = 'GARANTÍA ÚNICA DE SEGUROS DE CUMPLIMIENTO EN FAVOR DE ENTIDADES ESTATALES'
where cidioma = 8
and cramo = 801
and cactivi = 0;

update  activisegu
set tactivi = 'PÓLIZA ÚNICA DE SEGURO DE CUMPLIMIENTO PARA CONTRATOS ESTATALES A FAVOR DE ECOPETROL S.A.'
where cidioma = 8
and cramo = 801
and cactivi = 2;

update  activisegu
set tactivi = 'PÓLIZA DE CUMPLIMIENTO A FAVOR DE EMPRESAS DE SERVICIOS PÚBLICOS LEY 142 DE 1994'
where cidioma = 8
and cramo = 801
and cactivi = 3;

update  respuestas
set trespue = 'Banco de la República'
where cpregun = 2876
and cidioma = 8
and crespue = 20;

update CLAUSUGEN
SET TCLATEX = 'EXCLUSION DE TRANSCCIONES PROHIBIDAS, EMBARGOS Y SANCIONES ECONÓMICAS: LA COMPAÑIA NO PROVEERA COBERTURA NI ESTARA OBLIGADA A PAGAR NINGUNA PERDIDA, RECLAMACIÓN O BENEFICIO EN VIRTUD DE ESTA PÓLIZA SI LA PROVISION DE DICHA COBERTURA, O EL PAGO DE DICHA PÉRDIDA, RECLAMACIÓN O BENEFICIO PUDIERE EXPONER A LA COMPAÑIA A ALGUNA SANCIÓN, PROHIBICIÓN O RESTRICCIÓN CONFORME A LAS RESOLUCIONES DE LAS NACIONES UNIDAS O SANCIONES COMERCIALES O ECONÓMICAS, LEYES O NORMATIVAS DE CUALQUIER JURISDICCIÓN APLICABLE A LA COMPAÑIA.' 
 WHERE SCLAGEN = 4439
AND CIDIOMA = 8;

update activisegu
 set tactivi = 'PÓLIZA DE CUMPLIMIENTO A FAVOR DE EMPRESAS DE SERVICIOS PÚBLICOS LEY 142 DE 1994'
where cidioma = 8
and cramo = 801
and cactivi = 3;

UPDATE TITULOPRO
SET TTITULO = 'Caución Judicial'
WHERE CIDIOMA = 8
AND CRAMO = 801
AND CMODALI = 10
AND CTIPSEG = 1;

delete prod_plant_cab
where sproduc in (80005)
and ccodplan = 'CONF800110'
and fdesde = '25-SEP-19'
AND CTIPO = 0;
 
DELETE PROD_PLANT_CAB p
WHERE p.sproduc = 80005
and p.ctipo = 0
AND CCODPLAN = 'CONF000003';

DELETE PROD_PLANT_CAB p
WHERE p.sproduc = 80005
and p.ctipo = 0
AND CCODPLAN = 'CONF000001';

delete prod_plant_cab
where sproduc in (80006)
and ccodplan = 'CONF800110'
and fdesde = '25-SEP-19'
AND CTIPO = 0;
 
DELETE PROD_PLANT_CAB p
WHERE p.sproduc = 80006
and p.ctipo = 0
AND CCODPLAN = 'CONF000003';

DELETE PROD_PLANT_CAB p
WHERE p.sproduc = 80006
and p.ctipo = 0
AND CCODPLAN = 'CONF000001';

DELETE PROD_PLANT_CAB p
WHERE p.sproduc = 80006
and p.ctipo = 0
AND CCODPLAN = 'SU-OD-02-04';

delete producto_texto_jspr
where sproduc = 80001
and cactivi = 2;

Insert into  producto_texto_jspr (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80001,2,1,1);
Insert into  producto_texto_jspr (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80001,2,4,2);
Insert into  producto_texto_jspr (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80001,2,5,3);
Insert into  producto_texto_jspr (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80001,2,6,4);
Insert into  producto_texto_jspr (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80001,2,7,5);
Insert into  producto_texto_jspr (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80001,2,8,6);
Insert into  producto_texto_jspr (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80001,2,9,7);
Insert into  producto_texto_jspr (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80001,2,11,8);

delete producto_texto_jspr
where sproduc = 80002
and cactivi = 2;

Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80002,2,1,1);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80002,2,4,2);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80002,2,5,3);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80002,2,6,4);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80002,2,7,5);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80002,2,8,6);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80002,2,9,7);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80002,2,11,9);

delete producto_texto_jspr
where sproduc = 80003
and cactivi = 2;

Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80003,2,1,1);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80003,2,4,2);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80003,2,5,3);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80003,2,6,4);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80003,2,7,5);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80003,2,8,6);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80003,2,9,7);
Insert into PRODUCTO_TEXTO_JSPR (SPRODUC,CACTIVI,ID_TEXTO,ORDEN) values (80003,2,11,9);
 
DELETE PROD_PLANT_CAB p
WHERE p.sproduc = 80010
and p.ctipo = 0
AND CCODPLAN = 'CONF000003';

DELETE PROD_PLANT_CAB p
WHERE p.sproduc = 80010
and p.ctipo = 0
AND CCODPLAN = 'SU-OD-08-04';

delete prod_plant_cab
where sproduc in (80010)
and ccodplan = 'CONF800110'
and fdesde = '25-SEP-19'
and ctipo = 0;
 
DELETE PROD_PLANT_CAB 
WHERE sproduc = 80012
and ctipo = 0
and ccodplan not in 'SU-OD-06-05'
and ccodplan like 'SU%';

delete prod_plant_cab
where sproduc in (80012)
and ccodplan = 'CONF800110'
and fdesde = '25-SEP-19'
AND CTIPO = 0;
 
commit;
