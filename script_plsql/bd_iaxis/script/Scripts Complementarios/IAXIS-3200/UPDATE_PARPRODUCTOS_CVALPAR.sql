UPDATE PARPRODUCTOS SET CVALPAR = 180 WHERE SPRODUC >= 10000 AND CPARPRO = 'VIG_FECHA_TARIFA';
COMMIT;

DELETE PARPRODUCTOS WHERE SPRODUC >= 10000 AND CPARPRO = 'VIG_SIMUL';
Insert into PARPRODUCTOS (SPRODUC,CPARPRO,CVALPAR,NAGRUPA,TVALPAR,FVALPAR) values ('80001','VIG_SIMUL','180',null,null,null);
Insert into PARPRODUCTOS (SPRODUC,CPARPRO,CVALPAR,NAGRUPA,TVALPAR,FVALPAR) values ('80002','VIG_SIMUL','180',null,null,null);
Insert into PARPRODUCTOS (SPRODUC,CPARPRO,CVALPAR,NAGRUPA,TVALPAR,FVALPAR) values ('80003','VIG_SIMUL','180',null,null,null);
Insert into PARPRODUCTOS (SPRODUC,CPARPRO,CVALPAR,NAGRUPA,TVALPAR,FVALPAR) values ('80004','VIG_SIMUL','180',null,null,null);
Insert into PARPRODUCTOS (SPRODUC,CPARPRO,CVALPAR,NAGRUPA,TVALPAR,FVALPAR) values ('80005','VIG_SIMUL','180',null,null,null);
Insert into PARPRODUCTOS (SPRODUC,CPARPRO,CVALPAR,NAGRUPA,TVALPAR,FVALPAR) values ('80006','VIG_SIMUL','180',null,null,null);
Insert into PARPRODUCTOS (SPRODUC,CPARPRO,CVALPAR,NAGRUPA,TVALPAR,FVALPAR) values ('80007','VIG_SIMUL','180',null,null,null);
Insert into PARPRODUCTOS (SPRODUC,CPARPRO,CVALPAR,NAGRUPA,TVALPAR,FVALPAR) values ('80008','VIG_SIMUL','180',null,null,null);
Insert into PARPRODUCTOS (SPRODUC,CPARPRO,CVALPAR,NAGRUPA,TVALPAR,FVALPAR) values ('80009','VIG_SIMUL','180',null,null,null);
Insert into PARPRODUCTOS (SPRODUC,CPARPRO,CVALPAR,NAGRUPA,TVALPAR,FVALPAR) values ('80010','VIG_SIMUL','180',null,null,null);
Insert into PARPRODUCTOS (SPRODUC,CPARPRO,CVALPAR,NAGRUPA,TVALPAR,FVALPAR) values ('80011','VIG_SIMUL','180',null,null,null);
COMMIT;
/