DECLARE
BEGIN

--Codigo
INSERT INTO CODICLAUSUGEN ( SCLAGEN) 
VALUES ( (select max(sclagen)+1 from CODICLAUSUGEN) );

--Clausula
INSERT INTO CLAUSUGEN ( CIDIOMA, SCLAGEN, TCLATEX, TCLATIT) 
VALUES ( 8,
 (select max(sclagen) from CODICLAUSUGEN),
 'EXCLUSIONES ESPECIFICAS: CONTAMINACION PAULATINA, DAÑO PURO ECOLÓGICO.  - LA PRESENTE POLIZA NO SE EXTIENDE A CURBIR RC PRODUCTOS
',
 'PRODUCTOS DE PAPEL Y CARTON/PLASTICO Y CAUCHO/ MUEBLES:' );

--Productos
--RC CLINICA
--Parametros vccolect:0, vcramo: 802, vctipseg: 3, vmodalidad: 1
--INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
--VALUES ( 1, NULL, 0, 1, 802, 1, 3, NULL, 29, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--RC MEDICA
--Parametros vccolect:0, vcramo: 802, vctipseg: 2, vmodalidad: 1
--INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA, CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
--VALUES ( 1, NULL, 0, 1, 802, 1, 2, NULL, 29, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--RC GENERAL
--Parametros vccolect:0, vcramo: 802, vctipseg: 1, vmodalidad: 9
--INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
--VALUES ( 1, NULL, 0, 9, 802, 1, 1, NULL, 29, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--RC DERIVADA DE CONTRATO
--PESOS
--Parametros vccolect:0, vcramo: 802, vctipseg: 1, vmodalidad: 5
INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
VALUES ( 1, NULL, 0, 5, 802, 1, 1, NULL, 23, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--DOLAR
--Parametros vccolect:0, vcramo: 802, vctipseg: 1, vmodalidad: 6
INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
VALUES ( 1, NULL, 0, 6, 802, 1, 1, NULL, 23, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--EURO
--Parametros vccolect:0, vcramo: 802, vctipseg: 2, vmodalidad: 6
INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
VALUES ( 1, NULL, 0, 6, 802, 1, 2, NULL, 23, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

COMMIT;
 
EXCEPTION
WHEN OTHERS THEN
    p_tab_error(f_sysdate, f_user, 'Error insertando', 23, 'Err insertando', ' SQLERRM = ' || SQLERRM);
END;