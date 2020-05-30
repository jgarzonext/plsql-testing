/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script inserta en las tablas codiplantillas y detplantillas.        
********************************************************************************************************************** */
       
DELETE FROM detplantillas
WHERE CCODPLAN = 'CONF800104';

DELETE FROM codiplantillas
WHERE CCODPLAN = 'CONF800104';

INSERT INTO codiplantillas (CCODPLAN, IDCONSULTA, GEDOX, IDCAT, CGENFICH, CGENPDF, CGENREP)
VALUES ('CONF800104', 0, 'S', 1, 1, 1, 2);

INSERT INTO detplantillas (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CFIRMA)
VALUES ('CONF800104', 1, 'Condiciones particulares', 'CONFCaratulaCJ.jasper', '.', 0);
INSERT INTO detplantillas (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CFIRMA)
VALUES ('CONF800104', 2, 'Condiciones particulares', 'CONFCaratulaCJ.jasper', '.', 0);
INSERT INTO detplantillas (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CFIRMA)
VALUES ('CONF800104', 8, 'Condiciones particulares', 'CONFCaratulaCJ.jasper', '.', 0);

   COMMIT;
/