DELETE FROM PAREMPRESAS WHERE CPARAM='ORDENAR_LST_CVALORES';
DELETE FROM CODPARAM WHERE CPARAM='ORDENAR_LST_CVALORES';
Insert into CODPARAM (CPARAM,CUTILI,CTIPO,CGRPPAR,NORDEN,COBLIGA,TDEFECTO,CVISIBLE) 
values ('ORDENAR_LST_CVALORES','5','1','GEN','0','0',null,'1');
Insert into PAREMPRESAS (CEMPRES,CPARAM,NVALPAR,TVALPAR,FVALPAR) values ('24','ORDENAR_LST_CVALORES',null,',8001171,8001121,8001090,',null);
COMMIT;