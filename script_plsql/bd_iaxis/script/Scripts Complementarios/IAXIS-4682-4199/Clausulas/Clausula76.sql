DECLARE
BEGIN

--Codigo
INSERT INTO CODICLAUSUGEN ( SCLAGEN) 
VALUES ( (select max(sclagen)+1 from CODICLAUSUGEN) );

--Clausula
INSERT INTO CLAUSUGEN ( CIDIOMA, SCLAGEN, TCLATEX, TCLATIT) 
VALUES ( 8,
 (select max(sclagen) from CODICLAUSUGEN),
 '"REVOCACION DE LA POLIZA 60 DIAS , PREVIO AVISO AL MINISTERIO 
LA PRESENTE POLIZA AMPARA CONTABIMINACION AMBIENTAL SUBITA E IMPREVISTA, MAS NO LA PAULATINA
ESTA PÓLIZA CUBRE AL CABEZOTE MAS CUALQUIER REMOLQUE QUE SE ENGANCHE A ESTE
DESIGNACION DE AJUSTADORES POR MUTUO ACUERDO CON EL ASEGURADO
CLAUSULA DE ARBITRAMENTO COLOMBIANA
AMPLIACION DEL PLAZO PARA AVISO DE SINIESTRO A 10 DIAS"',
 'TRANSPORTE MCIA EXTRAPESADA, EXTRADIMENSIONADA :' );

--Productos
--RC CLINICA
--Parametros vccolect:0, vcramo: 802, vctipseg: 3, vmodalidad: 1
--INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
--VALUES ( 1, NULL, 0, 1, 802, 1, 3, NULL, 76, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--RC MEDICA
--Parametros vccolect:0, vcramo: 802, vctipseg: 2, vmodalidad: 1
--INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA, CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
--VALUES ( 1, NULL, 0, 1, 802, 1, 2, NULL, 76, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--RC GENERAL
--Parametros vccolect:0, vcramo: 802, vctipseg: 1, vmodalidad: 9
INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
VALUES ( 1, NULL, 0, 9, 802, 1, 1, NULL, 76, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--RC DERIVADA DE CONTRATO
--PESOS
--Parametros vccolect:0, vcramo: 802, vctipseg: 1, vmodalidad: 5
INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
VALUES ( 1, NULL, 0, 5, 802, 1, 1, NULL, 76, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--DOLAR
--Parametros vccolect:0, vcramo: 802, vctipseg: 1, vmodalidad: 6
INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
VALUES ( 1, NULL, 0, 6, 802, 1, 1, NULL, 76	, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--EURO
--Parametros vccolect:0, vcramo: 802, vctipseg: 2, vmodalidad: 6
INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
VALUES ( 1, NULL, 0, 6, 802, 1, 2, NULL, 76, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

COMMIT;
 
EXCEPTION
WHEN OTHERS THEN
    p_tab_error(f_sysdate, f_user, 'Error insertando', 76, 'Err insertando', ' SQLERRM = ' || SQLERRM);
END;