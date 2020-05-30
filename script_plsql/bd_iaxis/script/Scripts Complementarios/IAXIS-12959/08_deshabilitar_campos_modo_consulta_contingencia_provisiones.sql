delete from CFG_FORM where CFORM='AXISSIN083' and CMODO='CONSULTA_SINIESTROS' and CCFGFORM='CFG_CENTRAL' and SPRODUC=0 and CIDCFG=999996;
Insert into CFG_FORM (CEMPRES,CFORM,CMODO,CCFGFORM,SPRODUC,CIDCFG,CUSUALT,FALTA,CUSUMOD,FMODIFI) values 
(24,'AXISSIN083','CONSULTA_SINIESTROS','CFG_CENTRAL',0,999996,'AXIS',to_date('24-02-2020', 'dd-mm-yyyy'),null,null);

delete from CFG_FORM_PROPERTY where CIDCFG=999996 and CFORM='AXISSIN083' and CITEM='MODIFICACION' and CPRPTY=4 and CVALUE=951;
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values 
(24,999996,'AXISSIN083','MODIFICACION',4,951);

delete from CFG_FORM_DEP where CCFGDEP=951 and CITORIG='MODIFICACION' and TVALORIG='1' 
and CITDEST in ('NCLASEPRO','NINSTPROC','NFALLOCP','FCONTINGEN','TOBSFALLO','NMAXPP','NCONTIN','NCAUSA','NCALMOT');
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values 
(24,951,'MODIFICACION','1','NCLASEPRO',2,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values 
(24,951,'MODIFICACION','1','NINSTPROC',2,0);

Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values 
(24,951,'MODIFICACION','1','NFALLOCP',2,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values 
(24,951,'MODIFICACION','1','FCONTINGEN',2,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values 
(24,951,'MODIFICACION','1','TOBSFALLO',2,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values 
(24,951,'MODIFICACION','1','NMAXPP',2,0);

Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values 
(24,951,'MODIFICACION','1','NCONTIN',2,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values 
(24,951,'MODIFICACION','1','NCAUSA',2,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values 
(24,951,'MODIFICACION','1','NCALMOT',2,0);

commit;