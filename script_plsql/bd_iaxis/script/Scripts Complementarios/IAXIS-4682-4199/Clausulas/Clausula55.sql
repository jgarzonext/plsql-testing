DECLARE
BEGIN

--Codigo
INSERT INTO CODICLAUSUGEN ( SCLAGEN) 
VALUES ( (select max(sclagen)+1 from CODICLAUSUGEN) );

--Clausula
INSERT INTO CLAUSUGEN ( CIDIOMA, SCLAGEN, TCLATEX, TCLATIT) 
VALUES ( 8,
 (select max(sclagen) from CODICLAUSUGEN),
 '"EXCLUSIONES ESPECIFICAS PARA TRANSPORTE: 
• PÉRDIDAS O DAÑOS ORIGINADOS EN LA RESPONSABILIDAD CIVIL DEL VEH�?CULO LOS CUALES SEAN OBJETO DEL AMPARO DE RESPONSABILIDAD CIVIL DE AUTOMÓVILES. 
• PÉRDIDAS O DAÑOS DERIVADOS DEL INCUMPLIMIENTO DE NORMAS, REGLAMENTOS O EN GENERAL DISPOSICIONES LEGALES, INCLUIDO EL PAGO DE MULTAS Y SANCIONES, Y LAS RESTRICCIONES DE HORARIO PARA EL TRANSPORTE DE HIDROCARBUROS, SEGÚN RESOLUCIONES VIGENTES EN EL MOMENTO DEL SINIESTRO. 
• PÉRDIDAS O DAÑOS ORIGINADOS EN LA FALTA DE MANTENIMIENTO DEL TANQUE QUE CONTENGA EL L�?QUIDO TRANSPORTADO, O EN FALLAS O DEFICIENCIAS EN LOS SISTEMAS DE CIERRE DE LAS V�?LVULAS O DE LAS COMPUERTAS DEL CONTENEDOR O TANQUE. 
• PÉRDIDAS O DAÑOS QUE PROVENGAN DE GOTEO DE L�?QUIDO, SALVO QUE LA FUGA SEA COMO CONSECUENCIA DE UN ACCIDENTE PREVIO SUFRIDO POR EL VEH�?CULO O POR EL TANQUE DURANTE EL TRAYECTO EN EL CUAL SE PRESENTE LA FUGA.
• CONTAMINACIÓN GRADUAL/PAULATINA. DAÑOS AL MEDIO AMBIENTE O AL ECOSISTEMA. DESCONTAMINACIÓN DE SUELOS. GASTOS QUE DEMANDEN LA LIMPIEZA Y/O REMEDIACIÓN DE LAS �?REAS AFECTADAS POR CONTAMINACIÓN SÚBITA Y ACCIDENTAL, LOS GASTOS PARA EVITAR O DISMINUIR EL AGRAVAMIENTO DE LOS DAÑOS; INCLUSIVE LOS GASTOS DE LIMPIEZA, REACONDICIONAMIENTO DE LAS �?REAS AFECTADAS POR LA MATERIALIZACIÓN DEL RIESGO Y, OTROS GASTOS RELACIONADOS CON ESTOS EVENTOS. 
• INMOVILIZACIÓN DEL VEH�?CULO TRANSPORTADOR POR AUTORIDAD COMPETENTE. 
• TODA RECLAMACIÓN QUE PROVENGA DE VEH�?CULOS NO INCLUIDOS EN LA RELACIÓN A SUMINISTRAR POR EL ASEGURADO AL INICIO Y DURANTE LA VIGENCIA Y QUE DEBE DETALLAR: MARCA, REFERENCIA, MODELO, PLACA, CAPACIDAD. 
• RC PRODUCTOS. 
• RESPONSABILIDAD CIVIL MAR�?TIMA Y AÉREA. 
• DAÑOS A CASCO DE BUQUES Y MUELLES. 
• RIESGOS CATASTRÓFICOS, POL�?TICOS Y DE LA NATURALEZA.  ACTOS DE DIOS Y FUERZA MAYOR. 
• RESPONSABILIDAD PERSONAL. 
• DAÑOS A CONDUCCIONES SUBTERR�?NEAS. 
• DAÑOS A LA INFRAESTRUCTURA VIAL NACIONAL O URBANA. 
• DAÑOS A LA OBRA TRABAJADA O A LA HERRAMIENTA O LA MAQUINARIA USADA
• SE EXCLUYEN DE COBERTURA VEH�?CULOS CON M�?S DE 10 AÑOS DE ANTIGÜEDAD.
• SE EXCLUYEN DAÑOS A LOS BIENES, PRODUCTOS O MERCANC�?AS TRANSPORTADAS, AS�? COMO AL MEDIO DE TRANSPORTADOR.
 • SE EXCLUYE EL DAÑO PURO ECOLÓGICO ENTENDIDO COMO EL DAÑO AL MEDIO AMBIENTE SIN QUE EXISTA DAÑO A TERCEROS. 
• SE EXCLUYEN LOS GASTOS DE LIMPIEZA, REACONDICIONAMIENTO DE LAS �?REAS AFECTADAS POR LA MATERIALIZACIÓN DEL RIESGO."
',
 'HIDROCARBUROS:' );

--Productos
--RC CLINICA
--Parametros vccolect:0, vcramo: 802, vctipseg: 3, vmodalidad: 1
--INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
--VALUES ( 1, NULL, 0, 1, 802, 1, 3, NULL, 55, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--RC MEDICA
--Parametros vccolect:0, vcramo: 802, vctipseg: 2, vmodalidad: 1
--INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA, CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
--VALUES ( 1, NULL, 0, 1, 802, 1, 2, NULL, 55, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--RC GENERAL
--Parametros vccolect:0, vcramo: 802, vctipseg: 1, vmodalidad: 9
INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
VALUES ( 1, NULL, 0, 9, 802, 1, 1, NULL, 55, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--RC DERIVADA DE CONTRATO
--PESOS
--Parametros vccolect:0, vcramo: 802, vctipseg: 1, vmodalidad: 5
INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
VALUES ( 1, NULL, 0, 5, 802, 1, 1, NULL, 55, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--DOLAR
--Parametros vccolect:0, vcramo: 802, vctipseg: 1, vmodalidad: 6
INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
VALUES ( 1, NULL, 0, 6, 802, 1, 1, NULL, 55, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

--EURO
--Parametros vccolect:0, vcramo: 802, vctipseg: 2, vmodalidad: 6
INSERT INTO CLAUSUPRO ( CCAPITU, CCLAUCOLEC, CCOLECT, CMODALI, CRAMO, CTIPCLA,CTIPSEG, MULTIPLE, NORDEN, SCLAGEN, SCLAPRO, TIMAGEN) 
VALUES ( 1, NULL, 0, 6, 802, 1, 2, NULL, 55, (select max(sclagen) from CODICLAUSUGEN), (SELECT MAX(SCLAPRO)+1 FROM CLAUSUPRO), NULL );

COMMIT;
 
EXCEPTION
WHEN OTHERS THEN
    p_tab_error(f_sysdate, f_user, 'Error insertando', 55, 'Err insertando', ' SQLERRM = ' || SQLERRM);
END;