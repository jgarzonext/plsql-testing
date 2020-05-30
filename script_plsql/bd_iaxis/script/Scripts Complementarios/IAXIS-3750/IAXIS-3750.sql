select pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD')) FROM dual;
/
declare


begin

delete AVISOS
where caviso = 733805;

delete CFG_REL_AVISOS
where caviso = 733805;


delete axis_literales
where slitera = 89907091;
delete axis_codliterales
where slitera = 89907091;

Insert into AXIS_CODLITERALES
   (SLITERA, CLITERA)
 Values
   (89907091, 2);
   
Insert into AXIS_LITERALES
   (CIDIOMA, SLITERA, TLITERA)
 Values
   (1, 89907091, 'Este negocio requiere formato USF/For eyes');
Insert into AXIS_LITERALES
   (CIDIOMA, SLITERA, TLITERA)
 Values
   (2, 89907091, 'Este negocio requiere formato USF/For eyes');
Insert into AXIS_LITERALES
   (CIDIOMA, SLITERA, TLITERA)
 Values
   (8, 89907091, 'Este negocio requiere formato USF/For eyes');
COMMIT;

Insert into AVISOS
   (CEMPRES, CAVISO, SLITERA, CTIPAVISO, TFUNC, 
    CACTIVO, CUSUARI, FALTA, CUSUMOD, FMODIFI)
 Values
   (24, 733805, 89907091, 1, 'PAC_AVISOS_CONF.F_VALIDA_FORMATO_USF', 
    1, f_user,f_sysdate, NULL, NULL);
    
Insert into CFG_REL_AVISOS
   (CEMPRES, CIDREL, CAVISO, CBLOQUEO, NORDEN, 
    CUSUARI, FALTA)
 Values
   (24, 733716, 733805, 2, 1, 
    f_user, f_sysdate);
    
Insert into CFG_REL_AVISOS
   (CEMPRES, CIDREL, CAVISO, CBLOQUEO, NORDEN, 
    CUSUARI, FALTA)
 Values
   (24, 733735, 733805, 2, 1, 
    f_user, f_sysdate);    


Insert into CFG_AVISOS (CEMPRES,CFORM,CMODO,CCFGAVIS,CRAMO,SPRODUC,CIDREL,CUSUARI,FALTA,CUSUMOD,FMODIFI) 
values (24,'AXISCTR207','ALTA_POLIZA','CFG_CENTRAL',801,80007,733735,'AXIS_CONF',f_sysdate,null,null);

Insert into CFG_AVISOS (CEMPRES,CFORM,CMODO,CCFGAVIS,CRAMO,SPRODUC,CIDREL,CUSUARI,FALTA,CUSUMOD,FMODIFI) 
values (24,'AXISCTR207','ALTA_POLIZA','CFG_CENTRAL',801,80008,733735,'AXIS_CONF',f_sysdate,null,null);

Insert into CFG_AVISOS (CEMPRES,CFORM,CMODO,CCFGAVIS,CRAMO,SPRODUC,CIDREL,CUSUARI,FALTA,CUSUMOD,FMODIFI)
values (24,'AXISCTR207','ALTA_POLIZA','CFG_CENTRAL',801,80009,733735,'AXIS_CONF',f_sysdate,null,null);

Insert into CFG_AVISOS (CEMPRES,CFORM,CMODO,CCFGAVIS,CRAMO,SPRODUC,CIDREL,CUSUARI,FALTA,CUSUMOD,FMODIFI) 
values (24,'AXISCTR207','ALTA_POLIZA','CFG_CENTRAL',801,80010,733735,'AXIS_CONF',f_sysdate,null,null);

Insert into CFG_AVISOS (CEMPRES,CFORM,CMODO,CCFGAVIS,CRAMO,SPRODUC,CIDREL,CUSUARI,FALTA,CUSUMOD,FMODIFI)
values (24,'AXISCTR207','ALTA_POLIZA','CFG_CENTRAL',801,80011,733735,'AXIS_CONF',f_sysdate,null,null);
--

Insert into DETPLANTILLAS (CCODPLAN,CIDIOMA,TDESCRIP,CINFORME,CPATH,CMAPEAD,CFIRMA,TCONFFIRMA) 
values ('Formato_USF',8,'Formato USF','CONF_USF.jasper','.',null,0,null);

Insert into CODIPLANTILLAS (CCODPLAN,IDCONSULTA,GEDOX,IDCAT,CGENFICH,CGENPDF,CGENREP,CTIPODOC,CFDIGITAL) 
values ('Formato_USF',0,'S',1,1,1,2,null,'0');

--
Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values (80001,100,'Formato_USF',1,f_sysdate,null,null,0,null,null,null,null,null,null,'AXIS',f_sysdate,null,null);

Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values (80002,100,'Formato_USF',1,f_sysdate,null,null,0,null,null,null,null,null,null,'AXIS',f_sysdate,null,null);

Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values (80003,100,'Formato_USF',1,f_sysdate,null,null,0,null,null,null,null,null,null,'AXIS',f_sysdate,null,null);

Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values (80004,100,'Formato_USF',1,f_sysdate,null,null,0,null,null,null,null,null,null,'AXIS_CONF',f_sysdate,null,null);

Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values (80005,100,'Formato_USF',1,f_sysdate,null,null,0,null,null,null,null,null,null,'AXIS_CONF',f_sysdate,null,null);

Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values (80006,100,'Formato_USF',1,f_sysdate,null,null,0,null,null,null,null,null,null,'AXIS_CONF',f_sysdate,null,null);

Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI)
values (80008,100,'Formato_USF',1,f_sysdate,null,null,0,null,null,null,null,null,null,'AXIS',f_sysdate,null,null);

Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI)
values (80010,100,'Formato_USF',1,f_sysdate,null,null,0,null,null,null,null,null,null,'AXIS',f_sysdate,null,null);

Insert into PROD_PLANT_CAB (SPRODUC,CTIPO,CCODPLAN,IMP_DEST,FDESDE,FHASTA,CGARANT,CDUPLICA,NORDEN,CLAVE,NRESPUE,TCOPIAS,CCATEGORIA,CDIFERIDO,CUSUALT,FALTA,CUSUMOD,FMODIFI) 
values (80012,100,'Formato_USF',1,f_sysdate,null,null,0,null,null,null,null,null,null,'AXIS_CONF',f_sysdate,null,null);

--
DELETE DET_lanzar_informes
where cmap like '%USF%';

DELETE CFG_LANZAR_INFORMES_PARAMS
where cmap like '%USF%';

DELETE cfg_lanzar_informes
where cmap like '%USF%';
    
--	
	DELETE parproductos WHERE cparpro = 'AVISO_USF_F' AND sproduc BETWEEN 80007  AND 80010;
	DELETE desparam WHERE cparam = 'AVISO_USF_F';
	DELETE codparam WHERE cparam = 'AVISO_USF_F';

	INSERT INTO codparam (cparam, cutili, ctipo, cgrppar, cobliga, tdefecto, cvisible) VALUES ('AVISO_USF_F', 1, 2, 'GEN', 0, 0, 1);

	INSERT INTO desparam (cparam, cidioma, tparam) VALUES ('AVISO_USF_F', 1, 'Aviso usf fijo valor mayor indicado ');
	INSERT INTO desparam (cparam, cidioma, tparam) VALUES ('AVISO_USF_F', 2, 'Aviso usf fijo valor mayor indicado');
	INSERT INTO desparam (cparam, cidioma, tparam) VALUES ('AVISO_USF_F', 8, 'Aviso usf fijo valor mayor indicado');

	INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80007, 'AVISO_USF_F', 1);
	INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80008, 'AVISO_USF_F', 1);
	INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80009, 'AVISO_USF_F', 1);
	INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80010, 'AVISO_USF_F', 1);


--	
	DELETE parproductos WHERE cparpro = 'AVISO_USF' AND sproduc IN(80001, 80002, 80003, 80004,80005, 80006, 80011, 80012);
	DELETE desparam WHERE cparam = 'AVISO_USF';
	DELETE codparam WHERE cparam = 'AVISO_USF';

	INSERT INTO codparam (cparam, cutili, ctipo, cgrppar, cobliga, tdefecto, cvisible) VALUES ('AVISO_USF', 1, 2, 'GEN', 0, 0, 1);

	INSERT INTO desparam (cparam, cidioma, tparam) VALUES ('AVISO_USF', 1, 'Aviso usf valor mayor indicado');
	INSERT INTO desparam (cparam, cidioma, tparam) VALUES ('AVISO_USF', 2, 'Aviso usf valor mayor indicado');
	INSERT INTO desparam (cparam, cidioma, tparam) VALUES ('AVISO_USF', 8, 'Aviso usf valor mayor indicado');

	INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80001, 'AVISO_USF', 1);
	INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80002, 'AVISO_USF', 1);
        INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80003, 'AVISO_USF', 1);
	INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80004, 'AVISO_USF', 1);
   	INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80005, 'AVISO_USF', 1);
        INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80006, 'AVISO_USF', 1);
	INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80011, 'AVISO_USF', 1);
	INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80012, 'AVISO_USF', 1);

   
 commit;
 
end;