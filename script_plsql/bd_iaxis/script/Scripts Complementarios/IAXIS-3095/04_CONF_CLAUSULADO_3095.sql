delete from prod_plant_cab
where ccodplan in ('SU-OD-01-04', 'SU-OD-01-05', 'SU-OD-02-04', 'SU-OD-03-02', 'SU-OD-03-04', 'SU-OD-05-06', 'SU-OD-05-07', 'SU-OD-06-04', 'SU-OD-06-05', 'SU-OD-07-04', 'SU-OD-07-05', 'SU-OD-08-03', 'SU-OD-08-04', 
                   'SU-OD-37-04', 'SU-OD-37-05', 'SU-OD-38-03', 'SU-OD-38-04', 'SU-OD-62-01', 'SU-OD-63-01', 'SU-OD-39-01');

delete from detplantillas
where ccodplan in ('SU-OD-01-04', 'SU-OD-01-05', 'SU-OD-02-04', 'SU-OD-03-02', 'SU-OD-03-04', 'SU-OD-05-06', 'SU-OD-05-07', 'SU-OD-06-04', 'SU-OD-06-05', 'SU-OD-07-04', 'SU-OD-07-05', 'SU-OD-08-03', 'SU-OD-08-04', 
                   'SU-OD-37-04', 'SU-OD-37-05', 'SU-OD-38-03', 'SU-OD-38-04', 'SU-OD-62-01', 'SU-OD-63-01', 'SU-OD-39-01');

delete from codiplantillas
where ccodplan in ('SU-OD-01-04', 'SU-OD-01-05', 'SU-OD-02-04', 'SU-OD-03-02', 'SU-OD-03-04', 'SU-OD-05-06', 'SU-OD-05-07', 'SU-OD-06-04', 'SU-OD-06-05', 'SU-OD-07-04', 'SU-OD-07-05', 'SU-OD-08-03', 'SU-OD-08-04', 
                   'SU-OD-37-04', 'SU-OD-37-05', 'SU-OD-38-03', 'SU-OD-38-04', 'SU-OD-62-01', 'SU-OD-63-01', 'SU-OD-39-01');


-- SU-OD-01-05
Insert into CODIPLANTILLAS (CCODPLAN,IDCONSULTA,GEDOX,IDCAT,CGENFICH,CGENPDF,CGENREP,CTIPODOC,CFDIGITAL) 
values ('SU-OD-01-05','0','S','1','0','0','0',null,null);

Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA)
values ('SU-OD-01-05','1','SU-OD-01-05 Clausulado Póliza única de seguro de cumplimiento para contratos estatales a favor de Ecopetrol S.A.','SU-OD-01-05.pdf','.',null,'0',null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-01-05','2','SU-OD-01-05 Clausulado Póliza única de seguro de cumplimiento para contratos estatales a favor de Ecopetrol S.A.','SU-OD-01-05.pdf','.',null,'0',null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-01-05','8','SU-OD-01-05 Clausulado Póliza única de seguro de cumplimiento para contratos estatales a favor de Ecopetrol S.A.','SU-OD-01-05.pdf','.',null,'0',null);

Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80001','0','SU-OD-01-05','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_ecop',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80001','21','SU-OD-01-05','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_ecop',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80002','0','SU-OD-01-05','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_ecop',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80002','21','SU-OD-01-05','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_ecop',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80003','0','SU-OD-01-05','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_ecop',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80003','21','SU-OD-01-05','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_ecop',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);


-- SU-OD-02-04
Insert into CODIPLANTILLAS (CCODPLAN,IDCONSULTA,GEDOX,IDCAT,CGENFICH,CGENPDF,CGENREP,CTIPODOC,CFDIGITAL) 
values ('SU-OD-02-04','0','S','1','0','0','0',null,null);

Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA)
values ('SU-OD-02-04','1','SU-OD-02-04 Clausulado Póliza de seguro de cumplimiento a favor de Zona Franca','SU-OD-02-04.pdf','.',null,'0',null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-02-04','2','SU-OD-02-04 Clausulado Póliza de seguro de cumplimiento a favor de Zona Franca','SU-OD-02-04.pdf','.',null,'0',null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-02-04','8','SU-OD-02-04 Clausulado Póliza de seguro de cumplimiento a favor de Zona Franca','SU-OD-02-04.pdf','.',null,'0',null);

Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80001','0','SU-OD-02-04','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_part_zf',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80001','21','SU-OD-02-04','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_part_zf',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80002','0','SU-OD-02-04','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_part_zf',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80002','21','SU-OD-02-04','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_part_zf',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80003','0','SU-OD-02-04','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_part_zf',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80003','21','SU-OD-02-04','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_part_zf',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);


-- SU-OD-03-04
Insert into CODIPLANTILLAS (CCODPLAN,IDCONSULTA,GEDOX,IDCAT,CGENFICH,CGENPDF,CGENREP,CTIPODOC,CFDIGITAL) 
values ('SU-OD-03-04','0','S','1','0','0','0',null,null);

Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-03-04','1','SU-OD-03-04 Clausulado Póliza de seguro de Cumplimiento en favor de las entidades otorgantes del sfv','SU-OD-03-04.pdf','.',null,'0',null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-03-04','2','SU-OD-03-04 Clausulado Póliza de seguro de Cumplimiento en favor de las entidades otorgantes del sfv','SU-OD-03-04.pdf','.',null,'0',null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-03-04','8','SU-OD-03-04 Clausulado Póliza de seguro de Cumplimiento en favor de las entidades otorgantes del sfv','SU-OD-03-04.pdf','.',null,'0',null);

Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80011','0','SU-OD-03-04','1',to_date('25/11/16','DD/MM/RR'),null,null,'1',null,null,null,null,null,null,'AXIS',to_date('19/02/18','DD/MM/RR'),'AXIS',to_date('05/04/19','DD/MM/RR'));
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80011','21','SU-OD-03-04','1',to_date('25/11/16','DD/MM/RR'),null,null,'1',null,null,null,null,null,null,'AXIS',to_date('19/02/18','DD/MM/RR'),'AXIS',to_date('05/04/19','DD/MM/RR'));


-- SU-OD-05-07
Insert into CODIPLANTILLAS (CCODPLAN,IDCONSULTA,GEDOX,IDCAT,CGENFICH,CGENPDF,CGENREP,CTIPODOC,CFDIGITAL) 
values ('SU-OD-05-07','0','S','1','0','0','0',null,null);

Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-05-07','1','SU-OD-05-07 Clausulado Garantia unica de Cumplimiento en Favor de Entidades Estatales (Decreto 1082 de 2015)','SU-OD-05-07.pdf','.',null,'0',null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-05-07','2','SU-OD-05-07 Clausulado Garantia unica de Cumplimiento en Favor de Entidades Estatales (Decreto 1082 de 2015)','SU-OD-05-07.pdf','.',null,'0',null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-05-07','8','SU-OD-05-07 Clausulado GarantÃ­a Ãšnica de Cumplimiento en Favor de Entidades Estatales (Decreto 1082 de 2015)','SU-OD-05-07.pdf','.',null,'0',null);

Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80001','0','SU-OD-05-07','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_gu_dec1082',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80001','21','SU-OD-05-07','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_gu_dec1082',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80002','0','SU-OD-05-07','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_gu_dec1082',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80002','21','SU-OD-05-07','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_gu_dec1082',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80003','0','SU-OD-05-07','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_gu_dec1082',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80003','21','SU-OD-05-07','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_gu_dec1082',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);


-- SU-OD-06-05
Insert into CODIPLANTILLAS (CCODPLAN,IDCONSULTA,GEDOX,IDCAT,CGENFICH,CGENPDF,CGENREP,CTIPODOC,CFDIGITAL) 
values ('SU-OD-06-05','0','S','1','0','0','0',null,null);

Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-06-05','1','SU-OD-06-05 Clausulado Garantia de Cumplimiento en Favor de Entidades Particulares','SU-OD-06-05.pdf','.',null,'0',null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-06-05','2','SU-OD-06-05 Clausulado Garantia de Cumplimiento en Favor de Entidades Particulares','SU-OD-06-05.pdf','.',null,'0',null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-06-05','8','SU-OD-06-05 Clausulado GarantÃ­a de Cumplimiento en Favor de Entidades Particulares','SU-OD-06-05.pdf','.',null,'0',null);

Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80001','0','SU-OD-06-05','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_part_p',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80001','21','SU-OD-06-05','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_part_p',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80002','0','SU-OD-06-05','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_part_p',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80002','21','SU-OD-06-05','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_part_p',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80003','0','SU-OD-06-05','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_part_p',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80003','21','SU-OD-06-05','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_part_p',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);


-- SU-OD-07-05
Insert into CODIPLANTILLAS (CCODPLAN,IDCONSULTA,GEDOX,IDCAT,CGENFICH,CGENPDF,CGENREP,CTIPODOC,CFDIGITAL) 
values ('SU-OD-07-05','0','S','1','0','0','0',null,null);

Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-07-05','1','SU-OD-07-05 Clausulado Póliza de Cumplimiento a Favor de Empresas de Servicios Publicos (Ley 142 de 1994)','SU-OD-07-05.pdf','.',null,'0',null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-07-05','2','SU-OD-07-05 Clausulado Póliza de Cumplimiento a Favor de Empresas de Servicios Publicos (Ley 142 de 1994)','SU-OD-07-05.pdf','.',null,'0',null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-07-05','8','SU-OD-07-05 Clausulado Póliza de Cumplimiento a Favor de Empresas de Servicios PÃºblicos (Ley 142 de 1994)','SU-OD-07-05.pdf','.',null,'0',null);

Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80001','0','SU-OD-07-05','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_sp',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80001','21','SU-OD-07-05','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_sp',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80002','0','SU-OD-07-05','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_sp',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80002','21','SU-OD-07-05','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_sp',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80003','0','SU-OD-07-05','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_sp',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80003','21','SU-OD-07-05','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_sp',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);


-- SU-OD-08-04
Insert into CODIPLANTILLAS (CCODPLAN,IDCONSULTA,GEDOX,IDCAT,CGENFICH,CGENPDF,CGENREP,CTIPODOC,CFDIGITAL) 
values ('SU-OD-08-04','0','S','1','0','0','0',null,null);

Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA)
values ('SU-OD-08-04','1','SU-OD-08-04 Clausulado Cumplimiento de Disposiciones Legales','SU-OD-08-04.pdf','.',null,'0',null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA)
values ('SU-OD-08-04','2','SU-OD-08-04 Clausulado Cumplimiento de Disposiciones Legales','SU-OD-08-04.pdf','.',null,'0',null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA)
values ('SU-OD-08-04','8','SU-OD-08-04 Clausulado Cumplimiento de Disposiciones Legales','SU-OD-08-04.pdf','.',null,'0',null);

Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80009','0','SU-OD-08-04','1',to_date('25/11/16','DD/MM/RR'),null,null,'1',null,null,null,null,null,null,'AXIS',to_date('19/02/18','DD/MM/RR'),'AXIS',to_date('05/04/19','DD/MM/RR'));
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80009','21','SU-OD-08-04','1',to_date('25/11/16','DD/MM/RR'),null,null,'1',null,null,null,null,null,null,'AXIS',to_date('19/02/18','DD/MM/RR'),'AXIS',to_date('05/04/19','DD/MM/RR'));
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80010','0','SU-OD-08-04','1',to_date('25/11/16','DD/MM/RR'),null,null,'1',null,null,null,null,null,null,'AXIS',to_date('19/02/18','DD/MM/RR'),'AXIS',to_date('05/04/19','DD/MM/RR'));
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80010','21','SU-OD-08-04','1',to_date('25/11/16','DD/MM/RR'),null,null,'1',null,null,null,null,null,null,'AXIS',to_date('19/02/18','DD/MM/RR'),'AXIS',to_date('05/04/19','DD/MM/RR'));


-- SU-OD-38-04
Insert into CODIPLANTILLAS (CCODPLAN,IDCONSULTA,GEDOX,IDCAT,CGENFICH,CGENPDF,CGENREP,CTIPODOC,CFDIGITAL) 
values ('SU-OD-38-04','0','S','1','0','0','0',null,null);

Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-38-04','1','SU-OD-38-04 Clausulado Póliza de Cumplimiento ante Entidades Publicas con Regimen Privado de Contratacion','SU-OD-38-04.pdf','.',null,'0',null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-38-04','2','SU-OD-38-04 Clausulado Póliza de Cumplimiento ante Entidades Publicas con Regimen Privado de Contratacion','SU-OD-38-04.pdf','.',null,'0',null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-38-04','8','SU-OD-38-04 Clausulado Póliza de Cumplimiento ante Entidades Publicas con Regimen Privado de Contratacion','SU-OD-38-04.pdf','.',null,'0',null);

Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80001','0','SU-OD-38-04','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_gu_rpc',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80001','21','SU-OD-38-04','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_gu_rpc',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80002','0','SU-OD-38-04','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_gu_rpc',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80002','21','SU-OD-38-04','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_gu_rpc',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80003','0','SU-OD-38-04','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_gu_rpc',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80003','21','SU-OD-38-04','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_gu_rpc',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);


-- SU-OD-62-01
Insert into CODIPLANTILLAS (CCODPLAN,IDCONSULTA,GEDOX,IDCAT,CGENFICH,CGENPDF,CGENREP,CTIPODOC,CFDIGITAL) 
values ('SU-OD-62-01','0','S','1','0','0','0',null,null);

Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-62-01','1','SU-OD-62-01 Clausulado Póliza de seguro de Cumplimiento en favor del Banco de la República','SU-OD-62-01.pdf','.',null,'0',null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-62-01','2','SU-OD-62-01 Clausulado Póliza de seguro de Cumplimiento en favor del Banco de la República','SU-OD-62-01.pdf','.',null,'0',null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-62-01','8','SU-OD-62-01 Clausulado Póliza de seguro de Cumplimiento en favor del Banco de la República','SU-OD-62-01.pdf','.',null,'0',null);

Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80001','0','SU-OD-62-01','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_part_brep',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80001','21','SU-OD-62-01','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_part_brep',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80002','0','SU-OD-62-01','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_part_brep',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80002','21','SU-OD-62-01','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_part_brep',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80003','0','SU-OD-62-01','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_part_brep',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80003','21','SU-OD-62-01','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_part_brep',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);


-- SU-OD-63-01
Insert into CODIPLANTILLAS (CCODPLAN,IDCONSULTA,GEDOX,IDCAT,CGENFICH,CGENPDF,CGENREP,CTIPODOC,CFDIGITAL) 
values ('SU-OD-63-01','0','S','1','0','0','0',null,null);

Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-63-01','1','SU-OD-63-01 Clausulado Cumplimiento para contratos estatales a favor de Ecopetrol S.A. Convenio Grandes Beneficiarios','SU-OD-63-01.pdf','.',null,'0',null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-63-01','2','SU-OD-63-01 Clausulado Cumplimiento para contratos estatales a favor de Ecopetrol S.A. Convenio Grandes Beneficiarios','SU-OD-63-01.pdf','.',null,'0',null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-63-01','8','SU-OD-63-01 Clausulado Cumplimiento para contratos estatales a favor de Ecopetrol S.A. Convenio Grandes Beneficiarios','SU-OD-63-01.pdf','.',null,'0',null);

Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80001','0','SU-OD-63-01','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausula_ecopetrol_gb',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80001','21','SU-OD-63-01','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausula_ecopetrol_gb',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80002','0','SU-OD-63-01','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausula_ecopetrol_gb',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80002','21','SU-OD-63-01','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausula_ecopetrol_gb',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80003','0','SU-OD-63-01','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausula_ecopetrol_gb',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80003','21','SU-OD-63-01','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausula_ecopetrol_gb',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);


-- SU-OD-39-01
Insert into CODIPLANTILLAS (CCODPLAN,IDCONSULTA,GEDOX,IDCAT,CGENFICH,CGENPDF,CGENREP,CTIPODOC,CFDIGITAL) 
values ('SU-OD-39-01','0','S','1','0','0','0',null,null);

Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-39-01','1','SU-OD-39-01 Clausulado Cumplimiento Garantía Unica ante la A.N.I (Decreto 1082 de 2015)','SU-OD-39-01.pdf','.',null,'0',null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-39-01','2','SU-OD-39-01 Clausulado Cumplimiento Garantía Unica ante la A.N.I (Decreto 1082 de 2015)','SU-OD-39-01.pdf','.',null,'0',null);
Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('SU-OD-39-01','8','SU-OD-39-01 Clausulado Cumplimiento Garantía Unica ante la A.N.I (Decreto 1082 de 2015)','SU-OD-39-01.pdf','.',null,'0',null);

Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80001','0','SU-OD-39-01','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_gu_ani',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80001','21','SU-OD-39-01','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_gu_ani',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80002','0','SU-OD-39-01','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_gu_ani',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80002','21','SU-OD-39-01','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_gu_ani',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80003','0','SU-OD-39-01','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_gu_ani',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values ('80003','21','SU-OD-39-01','1',to_date('27/03/19','DD/MM/RR'),null,null,'1',null,null,null,'pac_impresion_conf.f_clausulado_gu_ani',null,null,'AXIS',to_date('27/03/19','DD/MM/RR'),null,null);


COMMIT;
/