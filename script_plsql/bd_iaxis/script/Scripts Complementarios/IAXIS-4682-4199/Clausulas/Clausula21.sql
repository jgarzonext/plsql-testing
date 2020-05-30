DECLARE
BEGIN

--Codigo
INSERT INTO CODICLAUSUGEN ( SCLAGEN) 
VALUES ( (select max(sclagen)+1 from CODICLAUSUGEN) );

--Clausula
INSERT INTO CLAUSUGEN ( CIDIOMA, SCLAGEN, TCLATEX, TCLATIT) 
VALUES ( 8,
 (select max(sclagen) from CODICLAUSUGEN),
 '"ÁEREAS:
""SE EXCLUYEN LOS RIESGOS PROPIOS CUBIERTOS POR UNA POLIZA DE SEGURO DE AVIACION O NAVEGACION""- (SEGÚN SEA EL CASO).
""SE AMPLIA EL ALCANCE DE LA EXCLUSION CONTENIDA EN EL ITEM 19 DE LA CLAUSULA TERCERA - EXCLUSIONES, DEL CLAUSULADO GENERAL POLIZA DE RESPONSABILIDAD CIVIL EXTRACONTRACTUAL PARA CONTRATISTAS ASI: SE EXCLUYEN LAS RECLAMACIONES DERIVADAS DE UN SINIESTRO QUE EL ASEGURADO O
PERSONA ENCARGADA POR EL, HAYA OCASIONADO MEDIANTE EL USO DE UNA EMBARCACION O UNA AERONAVE; O BIEN RECLAMACIONES QUE LE SEAN PRESENTADAS EN SU CALIDAD DE PROPIETARIO, TENEDOR O POSEEDOR DE DICHOS VEHICULOS ACUATICOS O AEREOS, ASI MISMO, SE EXCLUYEN LOS DAÑOS A NAVES O AERONAVES."""
',
 'ACTIVIDADES MARÍTIMAS, FLUVILAES Y ÁEREAS:' );

--Productos
--RC CLINICA
--Parametros vccolect:0, vcramo: 802, vctipseg: 3, vmodalidad: 1
--INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
--VALUES ( 1, NULL, 0, 1, 802, 1, 3, NULL, 27, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--RC MEDICA
--Parametros vccolect:0, vcramo: 802, vctipseg: 2, vmodalidad: 1
--INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA, CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
--VALUES ( 1, NULL, 0, 1, 802, 1, 2, NULL, 27, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--RC GENERAL
--Parametros vccolect:0, vcramo: 802, vctipseg: 1, vmodalidad: 9
--INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
--VALUES ( 1, NULL, 0, 9, 802, 1, 1, NULL, 27, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--RC DERIVADA DE CONTRATO
--PESOS
--Parametros vccolect:0, vcramo: 802, vctipseg: 1, vmodalidad: 5
INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
VALUES ( 1, NULL, 0, 5, 802, 1, 1, NULL, 21, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--DOLAR
--Parametros vccolect:0, vcramo: 802, vctipseg: 1, vmodalidad: 6
INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
VALUES ( 1, NULL, 0, 6, 802, 1, 1, NULL, 21, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--EURO
--Parametros vccolect:0, vcramo: 802, vctipseg: 2, vmodalidad: 6
INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
VALUES ( 1, NULL, 0, 6, 802, 1, 2, NULL, 21, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

COMMIT;
 
EXCEPTION
WHEN OTHERS THEN
    p_tab_error(f_sysdate, f_user, 'Error insertando', 21, 'Err insertando', ' SQLERRM = ' || SQLERRM);
END;