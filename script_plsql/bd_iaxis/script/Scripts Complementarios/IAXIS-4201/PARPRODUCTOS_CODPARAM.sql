
DELETE FROM PARPRODUCTOS WHERE cparpro = 'VALOR_DEF_DEDUC';

DELETE FROM CODPARAM WHERE cparam = 'VALOR_DEF_DEDUC';

INSERT INTO CODPARAM (CGRPPAR,COBLIGA,CPARAM,CTIPO,CUTILI,CVISIBLE,NORDEN) values ('GEN',0,'VALOR_DEF_DEDUC',4,1,1,115);

INSERT INTO PARPRODUCTOS (SPRODUC,CPARPRO,CVALPAR) values (80038,'VALOR_DEF_DEDUC',100000);
INSERT INTO PARPRODUCTOS (SPRODUC,CPARPRO,CVALPAR) values (80039,'VALOR_DEF_DEDUC',100000);
INSERT INTO PARPRODUCTOS (SPRODUC,CPARPRO,CVALPAR) values (80040,'VALOR_DEF_DEDUC',100000);
INSERT INTO PARPRODUCTOS (SPRODUC,CPARPRO,CVALPAR) values (80041,'VALOR_DEF_DEDUC',100000);
INSERT INTO PARPRODUCTOS (SPRODUC,CPARPRO,CVALPAR) values (80042,'VALOR_DEF_DEDUC',100000);
INSERT INTO PARPRODUCTOS (SPRODUC,CPARPRO,CVALPAR) values (80043,'VALOR_DEF_DEDUC',100000);
INSERT INTO PARPRODUCTOS (SPRODUC,CPARPRO,CVALPAR) values (80044,'VALOR_DEF_DEDUC',100000);

COMMIT;