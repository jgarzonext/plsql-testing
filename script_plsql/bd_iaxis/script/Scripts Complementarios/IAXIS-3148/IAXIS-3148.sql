DELETE FROM MOTMOVSEG WHERE CMOTMOV = 390; 
DELETE FROM CODIMOTMOV WHERE CMOTMOV= 390;

INSERT INTO CODIMOTMOV (CMOTMOV, CGENREC, CIMPRES, CACTIVO, CMOVSEG, CGESMOV, CTIPVAL) VALUES (390,0,0,1,52,0,0);

INSERT INTO motmovseg(CIDIOMA, CMOTMOV, TMOTMOV) VALUES ('8',390,'P - Decisi�n del Cliente');
INSERT INTO motmovseg(CIDIOMA, CMOTMOV, TMOTMOV) VALUES ('2',390,'P - Decisi�n del Cliente');
INSERT INTO motmovseg(CIDIOMA, CMOTMOV, TMOTMOV) VALUES ('1',390,'P - Decisi� del Client');

COMMIT;

/
