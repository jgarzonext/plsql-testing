/* *******************************************************************************************************************
Versión	Descripción
01.		Este script inserta en las tablas cfg_plantillas_tipos, codiplantillas, detplantillas y prod_plant_cab.        
********************************************************************************************************************** */

   DECLARE 
   V_EMPRESA             SEGUROS.CEMPRES%TYPE := 24;
   v_contexto            NUMBER; 
   BEGIN 
      SELECT pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(v_empresa, 'USER_BBDD')) INTO v_contexto   
        FROM DUAL; 
        
DELETE FROM prod_plant_cab
WHERE CTIPO = 113
AND CCODPLAN = 'CONF_PAG_CARTERA';

DELETE FROM detplantillas
WHERE CCODPLAN = 'CONF_PAG_CARTERA';

DELETE FROM codiplantillas
WHERE CCODPLAN = 'CONF_PAG_CARTERA';

DELETE FROM cfg_plantillas_tipos
WHERE CTIPO = 113
AND TTIPO = 'PAGARE_CARTERA';

INSERT INTO cfg_plantillas_tipos (CTIPO, TTIPO, TDESCRIP, CDUPLICA)
VALUES (113, 'PAGARE_CARTERA', 'Pagaré y carta de compromiso de Cartera en contragarantías', 0);

INSERT INTO codiplantillas (CCODPLAN, IDCONSULTA, GEDOX, IDCAT, CGENFICH, CGENPDF, CGENREP)
VALUES ('CONF_PAG_CARTERA', 0, 'S', 1, 1, 1, 2);

INSERT INTO detplantillas (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CFIRMA)
VALUES ('CONF_PAG_CARTERA', 1, 'Pagaré Cartera', 'PagareCartera.jasper', '.', 0);
INSERT INTO detplantillas (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CFIRMA)
VALUES ('CONF_PAG_CARTERA', 2, 'Pagaré Cartera', 'PagareCartera.jasper', '.', 0);
INSERT INTO detplantillas (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CFIRMA)
VALUES ('CONF_PAG_CARTERA', 8, 'Pagaré Cartera', 'PagareCartera.jasper', '.', 0);

INSERT INTO prod_plant_cab (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, CDUPLICA, CUSUALT, FALTA)
VALUES (0, 113, 'CONF_PAG_CARTERA', 1, F_SYSDATE, 0, F_USER, F_SYSDATE);

   COMMIT;
   END;
/