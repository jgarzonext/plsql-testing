delete from CFG_FORM_PROPERTY where CEMPRES=24 AND CFORM='AXISSIN007' and  CVALUE=99840307 AND CITEM='CTRAMITA' AND CPRPTY=4;
Insert into CFG_FORM_PROPERTY (CEMPRES,CIDCFG,CFORM,CITEM,CPRPTY,CVALUE) values (24,999997,'AXISSIN007','CTRAMITA',4,99840307);

DELETE from cfg_form_dep where citorig= 'CTRAMITA' and ccfgdep =99840307;
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840307,'CTRAMITA','20-20-1','CCOMPANI',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840307,'CTRAMITA','20-20-1','CCULPAB',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840307,'CTRAMITA','20-20-1','CINFORM',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840307,'CTRAMITA','20-20-1','CPOLCIA',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840307,'CTRAMITA','20-20-1','CTCAUSIN',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840307,'CTRAMITA','20-20-1','IINDEMN',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840307,'CTRAMITA','20-20-1','IPERIT',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840307,'CTRAMITA','20-20-1','IRECLAM',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840307,'CTRAMITA','20-20-1','NRADICA',1,1);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840307,'CTRAMITA','20-20-1','NSINCIA',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840307,'CTRAMITA','21-21-1','BT_FIND_PJ',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840307,'CTRAMITA','21-21-1','CCOMPANI',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840307,'CTRAMITA','21-21-1','CCULPAB',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840307,'CTRAMITA','21-21-1','CINFORM',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840307,'CTRAMITA','21-21-1','CPOLCIA',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840307,'CTRAMITA','21-21-1','CTCAUSIN',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840307,'CTRAMITA','21-21-1','IINDEMN',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840307,'CTRAMITA','21-21-1','IPERIT',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840307,'CTRAMITA','21-21-1','IRECLAM',1,0);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840307,'CTRAMITA','21-21-1','NRADICA',1,1);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840307,'CTRAMITA','21-21-1','NRADICA',8,9909395);
Insert into CFG_FORM_DEP (CEMPRES,CCFGDEP,CITORIG,TVALORIG,CITDEST,CPRPTY,TVALUE) values (24,99840307,'CTRAMITA','21-21-1','NSINCIA',1,0);
commit;