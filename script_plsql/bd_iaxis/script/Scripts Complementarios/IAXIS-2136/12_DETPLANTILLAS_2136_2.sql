/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script inserta en las tablas codiplantillas y detplantillas.        
********************************************************************************************************************** */
       
DELETE FROM detplantillas
WHERE CCODPLAN = 'CONF800105';

DELETE FROM codiplantillas
WHERE CCODPLAN = 'CONF800105';

INSERT INTO codiplantillas (CCODPLAN, IDCONSULTA, GEDOX, IDCAT, CGENFICH, CGENPDF, CGENREP)
VALUES ('CONF800105', 0, 'S', 1, 1, 1, 2);

INSERT INTO detplantillas (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CFIRMA)
VALUES ('CONF800105', 1, 'Condiciones particulares', 'CONFCaratula_ME.jasper', '.', 0);
INSERT INTO detplantillas (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CFIRMA)
VALUES ('CONF800105', 2, 'Condiciones particulares', 'CONFCaratula_ME.jasper', '.', 0);
INSERT INTO detplantillas (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CFIRMA)
VALUES ('CONF800105', 8, 'Condiciones particulares', 'CONFCaratula_ME.jasper', '.', 0);

   COMMIT;
/