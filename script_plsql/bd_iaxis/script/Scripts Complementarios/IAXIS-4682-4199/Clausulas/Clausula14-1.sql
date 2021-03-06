DECLARE
BEGIN

--Codigo
INSERT INTO CODICLAUSUGEN ( SCLAGEN) 
VALUES ( (select max(sclagen)+1 from CODICLAUSUGEN) );

--Clausula
INSERT INTO CLAUSUGEN ( CIDIOMA, SCLAGEN, TCLATEX, TCLATIT) 
VALUES ( 8,
 (select max(sclagen) from CODICLAUSUGEN),
 'AL ESTAR INCLUIDO EL AMPARO DE PREDIOS LABORES Y OPERACIONES, CLINICA DE LA COSTA QUEDA CUBIERTA POR LA RESPONSABILIDAD CIVIL EXTRACONTRACTUAL EN QUE SE VEA INVOLUCRADA POR EL USO DE SUS INTALACIONES: PREDIOS, CAMAS, APARATOS MEDICOS, ASCENSORES ETC, DE ACUERDO A LA CLAUSULA SEGUNDA DEL CLAUSULADO GENERAL DE RESPONSABILIDAD CIVIL EXTRACONTRACTUAL FORMA SU-OD-04-02-ABR 2009, EL CUAL TAMBIEN HACE PARTE INTEGRAL DE LA PRESENTE POLIZA, EN CUANTO A LOS AMPAROS NOMBRADOS/CUBIERTOS POR ESTA.',
 'Predios, Labores y Operaciones - Vigencia:' );

--Productos
--RC CLINICA
--Parametros vccolect:0, vcramo: 802, vctipseg: 3, vmodalidad: 1
INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
VALUES ( 1, NULL, 0, 1, 802, 1, 3, NULL, 14, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--INSERT INTO CLAUSUGAR ( CACCION, CACTIVI, CCOLECT, CGARANT, CMODALI, CRAMO, CTIPSEG, SCLAPRO) 
--VALUES ( 1, 0, 0, 7055, 1, 802, 3, (SELECT MAX(SCLAPRO) FROM CLAUSUPRO) );

--RC MEDICA
--Parametros vccolect:0, vcramo: 802, vctipseg: 2, vmodalidad: 1
--INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA, CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
--VALUES ( 1, NULL, 0, 1, 802, 1, 2, NULL, 1, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--RC GENERAL
--Parametros vccolect:0, vcramo: 802, vctipseg: 1, vmodalidad: 9
--INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
--VALUES ( 1, NULL, 0, 9, 802, 1, 1, NULL, 13, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--INSERT INTO CLAUSUGAR ( CACCION, CACTIVI, CCOLECT, CGARANT, CMODALI, CRAMO, CTIPSEG, SCLAPRO) 
--VALUES ( 1, 0, 0, 7055, 9, 802, 1, (SELECT MAX(SCLAPRO) FROM CLAUSUPRO) );

--RC DERIVADA DE CONTRATO
--PESOS
--Parametros vccolect:0, vcramo: 802, vctipseg: 1, vmodalidad: 5
--INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
--VALUES ( 1, NULL, 0, 5, 802, 1, 1, NULL, 14, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--INSERT INTO CLAUSUGAR ( CACCION, CACTIVI, CCOLECT, CGARANT, CMODALI, CRAMO, CTIPSEG, SCLAPRO) 
--VALUES ( 1, 0, 0, 7055, 5, 802, 1, (SELECT MAX(SCLAPRO) FROM CLAUSUPRO) );

--DOLAR
--Parametros vccolect:0, vcramo: 802, vctipseg: 1, vmodalidad: 6
--INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
--VALUES ( 1, NULL, 0, 6, 802, 1, 1, NULL, 14, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--INSERT INTO CLAUSUGAR ( CACCION, CACTIVI, CCOLECT, CGARANT, CMODALI, CRAMO, CTIPSEG, SCLAPRO) 
--VALUES ( 1, 0, 0, 7055, 6, 802, 1, (SELECT MAX(SCLAPRO) FROM CLAUSUPRO) );

--EURO
--Parametros vccolect:0, vcramo: 802, vctipseg: 2, vmodalidad: 6
--INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
--VALUES ( 1, NULL, 0, 6, 802, 1, 2, NULL, 14, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--INSERT INTO CLAUSUGAR ( CACCION, CACTIVI, CCOLECT, CGARANT, CMODALI, CRAMO, CTIPSEG, SCLAPRO) 
--VALUES ( 1, 0, 0, 7055, 6, 802, 2, (SELECT MAX(SCLAPRO) FROM CLAUSUPRO) );

COMMIT;
 
EXCEPTION
WHEN OTHERS THEN
    p_tab_error(f_sysdate, f_user, 'Error insertando', 14, 'Err insertando', ' SQLERRM = ' || SQLERRM);
END;