/* Formatted on 09/07/2019  11:00*/
/* **************************** 09/07/2019  11:00 **********************************************************************
Versión           Descripción
01.               - Configuración en base de datos de plantilla:
                     1. Liquiración Outsourcing.
IAXIS-3651        07/07/2019 Daniel Rodríguez
***********************************************************************************************************************/
   DECLARE
   -- 
   V_EMPRESA             SEGUROS.CEMPRES%TYPE := 24;
   v_contexto            NUMBER; 
   --
   BEGIN 
     SELECT pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(v_empresa,
                                                                        'USER_BBDD'))
       INTO v_contexto
       FROM DUAL;
   --       
   DELETE FROM prod_plant_cab WHERE CTIPO = 119 AND CCODPLAN = 'LIQ_OUTSOURCING';
   --
   DELETE FROM detplantillas WHERE CCODPLAN = 'LIQ_OUTSOURCING';
   --
   DELETE FROM codiplantillas WHERE CCODPLAN = 'LIQ_OUTSOURCING';
   --
   DELETE FROM cfg_plantillas_tipos WHERE ctipo = 119 AND ttipo = 'LIQ_OUTSOURCING'; 
   --
   INSERT INTO cfg_plantillas_tipos (CTIPO, TTIPO, TDESCRIP, CDUPLICA)
   VALUES (119, 'LIQ_OUTSOURCING', 'Liquidación Outsourcing', 0);
   --
   INSERT INTO codiplantillas (CCODPLAN, IDCONSULTA, GEDOX, IDCAT, CGENFICH, CGENPDF, CGENREP)
   VALUES ('LIQ_OUTSOURCING', 0, 'S', 1, 1, 1, 2);
   INSERT INTO detplantillas (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CFIRMA)
   VALUES ('LIQ_OUTSOURCING', 1, 'Liquidació Outsourcing', 'reporteGestionOutsourcing.jasper', '.', 0);
   INSERT INTO detplantillas (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CFIRMA)
   VALUES ('LIQ_OUTSOURCING', 2, 'Liquidación Outsourcing', 'reporteGestionOutsourcing.jasper', '.', 0);
   INSERT INTO detplantillas (CCODPLAN, CIDIOMA, TDESCRIP, CINFORME, CPATH, CFIRMA)
   VALUES ('LIQ_OUTSOURCING', 8, 'Liquidación Outsourcing', 'reporteGestionOutsourcing.jasper', '.', 0);
   --
   INSERT INTO prod_plant_cab (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, CDUPLICA, CUSUALT, FALTA)
   VALUES (0, 119, 'LIQ_OUTSOURCING', 1, F_SYSDATE-1, 0, F_USER, F_SYSDATE-1);
   --
   COMMIT;
   --   
END;

