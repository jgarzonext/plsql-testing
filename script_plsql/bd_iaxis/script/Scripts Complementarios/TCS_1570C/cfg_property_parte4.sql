/*Validación para obligatoriedad regimen fiscal*/
UPDATE CFG_FORM_PROPERTY
SET CPRPTY= 4, 
CVALUE = 78, CITEM = 'CREGIMENFISCAL'
where citem = 'CREGFISCAL';
COMMIT;


delete CFG_FORM_DEP
where ccfgdep in (78) and cempres = '24';
commit;
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',0,'CREGIMENFISCAL',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',1,'CREGIMENFISCAL',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',2,'CREGIMENFISCAL',3,1);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',3,'CREGIMENFISCAL',3,1);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',4,'CREGIMENFISCAL',3,1);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',6,'CREGIMENFISCAL',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',7,'CREGIMENFISCAL',3,1);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',8,'CREGIMENFISCAL',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',9,'CREGIMENFISCAL',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',10,'CREGIMENFISCAL',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',11,'CREGIMENFISCAL',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',12,'CREGIMENFISCAL',3,0);
INSERT INTO CFG_FORM_DEP VALUES (24,78,'CCODVIN',13,'CREGIMENFISCAL',3,0);
commit;
