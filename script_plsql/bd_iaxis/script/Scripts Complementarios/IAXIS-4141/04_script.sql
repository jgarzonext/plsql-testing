
delete from CLAUSUPRO where SCLAPRO = 4129;
delete from CLAUSUGEN where SCLAGEN = 4438;
delete from CODICLAUSUGEN where SCLAGEN = 4438;

INSERT INTO CODICLAUSUGEN(SCLAGEN) VALUES('4438');

INSERT INTO CLAUSUGEN(SCLAGEN, CIDIOMA, TCLATIT, TCLATEX) VALUES('4438', '1', 'R. CIVIL PROFESIONES MEDICAS', 'INDEMNIZAR LOS PERJUICIOS PATRIMONIALES (DAÑO EMERGENTE) DERIVADOS DE LA RESPONSABILIDAD CIVIL PROFESIONAL MEDICA EN QUE PUDIERE INCURRIR EL ASEGURADO A CONSECUENCIA DE NEGLIGENCIA, IMPRUDENCIA O IMPERICIA EN EL EJERCICIO DE SU PROFESIÓN MEDICA.');
INSERT INTO CLAUSUGEN(SCLAGEN, CIDIOMA, TCLATIT, TCLATEX) VALUES('4438', '2', 'R. CIVIL PROFESIONES MEDICAS', 'INDEMNIZAR LOS PERJUICIOS PATRIMONIALES (DAÑO EMERGENTE) DERIVADOS DE LA RESPONSABILIDAD CIVIL PROFESIONAL MEDICA EN QUE PUDIERE INCURRIR EL ASEGURADO A CONSECUENCIA DE NEGLIGENCIA, IMPRUDENCIA O IMPERICIA EN EL EJERCICIO DE SU PROFESIÓN MEDICA.');
INSERT INTO CLAUSUGEN(SCLAGEN, CIDIOMA, TCLATIT, TCLATEX) VALUES('4438', '8', 'R. CIVIL PROFESIONES MEDICAS', 'INDEMNIZAR LOS PERJUICIOS PATRIMONIALES (DAÑO EMERGENTE) DERIVADOS DE LA RESPONSABILIDAD CIVIL PROFESIONAL MEDICA EN QUE PUDIERE INCURRIR EL ASEGURADO A CONSECUENCIA DE NEGLIGENCIA, IMPRUDENCIA O IMPERICIA EN EL EJERCICIO DE SU PROFESIÓN MEDICA.');


Insert into CLAUSUPRO (SCLAPRO,CCOLECT,CRAMO,CTIPSEG,CMODALI,CTIPCLA,SCLAGEN,NORDEN,CCAPITU,TIMAGEN,MULTIPLE,CCLAUCOLEC) values ('4129','0','802','2','1','2','4438','8','1',null,null,null);

commit;
/