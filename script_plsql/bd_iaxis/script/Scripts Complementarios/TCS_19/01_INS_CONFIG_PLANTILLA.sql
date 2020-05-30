/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script inserta en las tablas cfg_plantillas_tipos, codiplantillas, detplantillas y prod_plant_cab.        
********************************************************************************************************************** */

   DECLARE 
   V_EMPRESA             SEGUROS.CEMPRES%TYPE := 24;
   v_contexto            NUMBER; 
   BEGIN 
      SELECT pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(v_empresa, 'USER_BBDD')) INTO v_contexto   
        FROM DUAL; 
        
DELETE FROM prod_plant_cab
WHERE CTIPO = 111
AND CCODPLAN = 'CONF_PAG_COMERCIAL';

DELETE FROM prod_plant_cab
WHERE CTIPO = 112
AND CCODPLAN = 'CONF_PAG_RECOBROS';

DELETE FROM prod_plant_cab
WHERE CTIPO = 113
AND CCODPLAN = 'CONF_PAG_CARTERA';


DELETE FROM detplantillas
WHERE CCODPLAN = 'CONF_PAG_COMERCIAL';

DELETE FROM detplantillas
WHERE CCODPLAN = 'CONF_PAG_RECOBROS';

DELETE FROM detplantillas
WHERE CCODPLAN = 'CONF_PAG_CARTERA';


DELETE FROM codiplantillas
WHERE CCODPLAN = 'CONF_PAG_COMERCIAL';

DELETE FROM codiplantillas
WHERE CCODPLAN = 'CONF_PAG_RECOBROS';

DELETE FROM codiplantillas
WHERE CCODPLAN = 'CONF_PAG_CARTERA';


DELETE FROM cfg_plantillas_tipos
WHERE CTIPO = 111
AND TTIPO = 'PAGARE_COMERCIAL';

DELETE FROM cfg_plantillas_tipos
WHERE CTIPO = 112
AND TTIPO = 'PAGARE_RECOBROS';

DELETE FROM cfg_plantillas_tipos
WHERE CTIPO = 113
AND TTIPO = 'PAGARE_CARTERA';


INSERT INTO cfg_plantillas_tipos (CTIPO, TTIPO, TDESCRIP, CDUPLICA)
VALUES (111, 'PAGARE_COMERCIAL', 'Pagaré y carta de compromiso de Comercial en contragarantías', 0);
INSERT INTO cfg_plantillas_tipos (CTIPO, TTIPO, TDESCRIP, CDUPLICA)
VALUES (112, 'PAGARE_RECOBROS', 'Pagaré y carta de compromiso de Recobros en contragarantías', 0);
INSERT INTO cfg_plantillas_tipos (CTIPO, TTIPO, TDESCRIP, CDUPLICA)
VALUES (113, 'PAGARE_CARTERA', 'Pagaré y carta de compromiso de Cartera en contragarantías', 0);


INSERT INTO codiplantillas (CCODPLAN, IDCONSULTA, GEDOX, IDCAT, CGENFICH, CGENPDF, CGENREP)
VALUES ('CONF_PAG_COMERCIAL', 0, 'S', 1, 1, 1, 2);
INSERT INTO codiplantillas (CCODPLAN, IDCONSULTA, GEDOX, IDCAT, CGENFICH, CGENPDF, CGENREP)
VALUES ('CONF_PAG_RECOBROS', 0, 'S', 1, 1, 1, 2);
INSERT INTO codiplantillas (CCODPLAN, IDCONSULTA, GEDOX, IDCAT, CGENFICH, CGENPDF, CGENREP)
VALUES ('CONF_PAG_CARTERA', 0, 'S', 1, 1, 1, 2);


INSERT INTO detplantillas (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CFIRMA)
VALUES ('CONF_PAG_COMERCIAL', 1, 'Pagaré Comercial', 'CONFPagComercial.jasper', '.', 0);
INSERT INTO detplantillas (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CFIRMA)
VALUES ('CONF_PAG_COMERCIAL', 2, 'Pagaré Comercial', 'CONFPagComercial.jasper', '.', 0);
INSERT INTO detplantillas (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CFIRMA)
VALUES ('CONF_PAG_COMERCIAL', 8, 'Pagaré Comercial', 'CONFPagComercial.jasper', '.', 0);

INSERT INTO detplantillas (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CFIRMA)
VALUES ('CONF_PAG_RECOBROS', 1, 'Pagaré Recobros', 'CONFPagCRecobros.jasper', '.', 0);
INSERT INTO detplantillas (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CFIRMA)
VALUES ('CONF_PAG_RECOBROS', 2, 'Pagaré Recobros', 'CONFPagCRecobros.jasper', '.', 0);
INSERT INTO detplantillas (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CFIRMA)
VALUES ('CONF_PAG_RECOBROS', 8, 'Pagaré Recobros', 'CONFPagCRecobros.jasper', '.', 0);

INSERT INTO detplantillas (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CFIRMA)
VALUES ('CONF_PAG_CARTERA', 1, 'Pagaré Cartera', 'CONFPagCartera.jasper', '.', 0);
INSERT INTO detplantillas (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CFIRMA)
VALUES ('CONF_PAG_CARTERA', 2, 'Pagaré Cartera', 'CONFPagCartera.jasper', '.', 0);
INSERT INTO detplantillas (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CFIRMA)
VALUES ('CONF_PAG_CARTERA', 8, 'Pagaré Cartera', 'CONFPagCartera.jasper', '.', 0);


INSERT INTO prod_plant_cab (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, CDUPLICA, CUSUALT, FALTA)
VALUES (0, 111, 'CONF_PAG_COMERCIAL', 1, F_SYSDATE, 0, F_USER, F_SYSDATE);
INSERT INTO prod_plant_cab (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, CDUPLICA, CUSUALT, FALTA)
VALUES (0, 112, 'CONF_PAG_RECOBROS', 1, F_SYSDATE, 0, F_USER, F_SYSDATE);
INSERT INTO prod_plant_cab (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, CDUPLICA, CUSUALT, FALTA)
VALUES (0, 113, 'CONF_PAG_CARTERA', 1, F_SYSDATE, 0, F_USER, F_SYSDATE);

   COMMIT;
   END;
/