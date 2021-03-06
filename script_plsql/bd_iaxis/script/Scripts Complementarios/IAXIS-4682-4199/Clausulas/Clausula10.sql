DECLARE
BEGIN

--Codigo
INSERT INTO CODICLAUSUGEN ( SCLAGEN) 
VALUES ( (select max(sclagen)+1 from CODICLAUSUGEN) );

--Clausula
INSERT INTO CLAUSUGEN ( CIDIOMA, SCLAGEN, TCLATEX, TCLATIT) 
VALUES ( 8,
 (select max(sclagen) from CODICLAUSUGEN),
 '"CLAUSULA DE ASENTAMIENTOS Y/O HUNDIMIENTOS Y/O PROPIEDADES ADYACENTES
EL PRESENTE SEGURO SE EXTIENDE A AMPARAR LA RESPONSABILIDAD QUE SE DERIVA DE DAÑOS A CAUSA DE VIBRACIÓN, ELIMINACIÓN O DEBILITAMIENTO DE ELEMENTOS PORTANTES, HUNDIMIENTO DE TERRENO, DERRUMBES Y/O DESLIZAMIENTO DE TIERRA, ASENTAMIENTO,  INUNDACIONES, DESBORDAMIENTO Y ANEGACIONES POR AGUAS REPRESADAS, SIEMPRE QUE HAYAN SIDO CAUSADAS POR EL ASEGURADO Y SE CUMPLAN LAS SIGUIENTES CONDICIONES:
- EN CASO DE RESPONSABILIDAD POR PÉRDIDAS O DAÑOS EN PROPIEDAD, TERRENOS O EDIFICIOS, EL ASEGURADOR INDEMNIZAR�? AL ASEGURADO TALES DAÑOS O PÉRDIDAS SÓLO CUANDO TENGAN POR CONSECUENCIA LA INESTABILIDAD DE LAS PROPIEDADES DE TERCEROS O AFECTEN LOS ELEMENTOS SOPORTANTES O EL SUBSUELO DE PROPIEDADES DE TERCEROS: NO SER�?N OBJETO DE COBERTURA LOS DAÑOS, GRIETAS, O FISURAS QUE NO CUMPLAN CON LAS ANTERIORES CARACTER�?STICAS.
- EN CASO DE RESPONSABILIDAD POR PÉRDIDAS O DAÑOS EN PROPIEDAD, TERRENOS O EDIFICIOS, EL ASEGURADOR INDEMNIZAR�? AL ASEGURADO TALES DAÑOS O PÉRDIDAS SÓLO SUJETO A QUE LA REFERIDA PROPIEDAD, LOS TERRENOS O EDIFICIOS SE ENCONTRARAN EN ESTADO SEGURO ANTES DE COMENZAR LAS OBRAS CIVILES Y CUANDO SE HAYAN TOMADO LAS NECESARIAS MEDIDAS DE SEGURIDAD.
- A SOLICITUD DE LA ASEGURADORA, ANTES DE COMENZAR LAS OBRAS CIVILES EL ASEGURADO ELABORAR�? POR SU PROPIA CUENTA UN INFORME SOBRE EL ESTADO EN QUE SE ENCUENTRA LA PROPIEDAD, LOS TERRENOS O LOS EDIFICIOS QUE POSIBLEMENTE SE VEAN AMENAZADOS. ES NECESARIO CONTAR CON ACTAS DE VECINDADES, ELABORADAS ANTES DE INICIARSE LAS OBRAS, EN LAS QUE CONSTE EL ESTADO DE LAS PROPIEDADES VECINAS.
EL ASEGURADOR NO INDEMNIZAR�? AL ASEGURADO EN CASO DE RESPONSABILIDAD POR:
- DAÑOS PREVISIBLES TENIENDO EN CUENTA EL TIPO DE LOS TRABAJOS DE CONSTRUCCIÓN O SU EJECUCIÓN.
- DAÑOS DE MENOR IMPORTANCIA QUE NO PERJUDICAN LA ESTABILIDAD DE LA PROPIEDAD AFECTADA, DE LOS TERRENOS O EDIFICIOS NI CONSTITUYEN UN PELIGRO PARA LOS USUARIOS.
- COSTES POR CONCEPTO DE PREVENCIÓN O AMINORACIÓN DE DAÑOS QUE HAY QUE INVERTIR EN EL TRANSCURSO DEL PER�?ODO DEL SEGURO."',
 'Amparo: Estruct Existente y/o Propiedad Adyacente Asentamientos de terceros -  Vigencia/Evento:' );

--Productos
--RC CLINICA
--Parametros vccolect:0, vcramo: 802, vctipseg: 3, vmodalidad: 1
--INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
--VALUES ( 1, NULL, 0, 1, 802, 1, 3, NULL, 11, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--RC MEDICA
--Parametros vccolect:0, vcramo: 802, vctipseg: 2, vmodalidad: 1
--INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA, CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
--VALUES ( 1, NULL, 0, 1, 802, 1, 2, NULL, 11, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--RC GENERAL
--Parametros vccolect:0, vcramo: 802, vctipseg: 1, vmodalidad: 9
INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
VALUES ( 1, NULL, 0, 9, 802, 1, 1, NULL, 10, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--INSERT INTO CLAUSUGAR ( CACCION, CACTIVI, CCOLECT, CGARANT, CMODALI, CRAMO, CTIPSEG, SCLAPRO) 
--VALUES ( 1, 0, 0, 7040, 9, 802, 1, (SELECT MAX(SCLAPRO) FROM CLAUSUPRO) );
--
--INSERT INTO CLAUSUGAR ( CACCION, CACTIVI, CCOLECT, CGARANT, CMODALI, CRAMO, CTIPSEG, SCLAPRO) 
--VALUES ( 1, 0, 0, 7060, 9, 802, 1, (SELECT MAX(SCLAPRO) FROM CLAUSUPRO) );

--RC DERIVADA DE CONTRATO
--PESOS
--Parametros vccolect:0, vcramo: 802, vctipseg: 1, vmodalidad: 5
INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
VALUES ( 1, NULL, 0, 5, 802, 1, 1, NULL, 10, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--INSERT INTO CLAUSUGAR ( CACCION, CACTIVI, CCOLECT, CGARANT, CMODALI, CRAMO, CTIPSEG, SCLAPRO) 
--VALUES ( 1, 0, 0, 7040, 5, 802, 1, (SELECT MAX(SCLAPRO) FROM CLAUSUPRO) );
--
--INSERT INTO CLAUSUGAR ( CACCION, CACTIVI, CCOLECT, CGARANT, CMODALI, CRAMO, CTIPSEG, SCLAPRO) 
--VALUES ( 1, 0, 0, 7060, 5, 802, 1, (SELECT MAX(SCLAPRO) FROM CLAUSUPRO) );

--DOLAR
--Parametros vccolect:0, vcramo: 802, vctipseg: 1, vmodalidad: 6
INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
VALUES ( 1, NULL, 0, 6, 802, 1, 1, NULL, 10, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--INSERT INTO CLAUSUGAR ( CACCION, CACTIVI, CCOLECT, CGARANT, CMODALI, CRAMO, CTIPSEG, SCLAPRO) 
--VALUES ( 1, 0, 0, 7040, 6, 802, 1, (SELECT MAX(SCLAPRO) FROM CLAUSUPRO) );
--
--INSERT INTO CLAUSUGAR ( CACCION, CACTIVI, CCOLECT, CGARANT, CMODALI, CRAMO, CTIPSEG, SCLAPRO) 
--VALUES ( 1, 0, 0, 7060, 6, 802, 1, (SELECT MAX(SCLAPRO) FROM CLAUSUPRO) );

--EURO
--Parametros vccolect:0, vcramo: 802, vctipseg: 2, vmodalidad: 6
INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
VALUES ( 1, NULL, 0, 6, 802, 1, 2, NULL, 10, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--INSERT INTO CLAUSUGAR ( CACCION, CACTIVI, CCOLECT, CGARANT, CMODALI, CRAMO, CTIPSEG, SCLAPRO) 
--VALUES ( 1, 0, 0, 7040, 6, 802, 2, (SELECT MAX(SCLAPRO) FROM CLAUSUPRO) );
--
--INSERT INTO CLAUSUGAR ( CACCION, CACTIVI, CCOLECT, CGARANT, CMODALI, CRAMO, CTIPSEG, SCLAPRO) 
--VALUES ( 1, 0, 0, 7060, 6, 802, 2, (SELECT MAX(SCLAPRO) FROM CLAUSUPRO) );

COMMIT;
 
EXCEPTION
WHEN OTHERS THEN
    p_tab_error(f_sysdate, f_user, 'Error insertando', 10, 'Err insertando', ' SQLERRM = ' || SQLERRM);
END;