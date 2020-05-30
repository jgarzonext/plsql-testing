 /* *******************************************************************************************************************
Versión	Descripción
01.		Este script inserta en las tablas axis_codliterales y axis_literales. 
        IAXIS-5329 JRVG 30/04/2020       
********************************************************************************************************************** */ 
  DECLARE 
   V_EMPRESA   SEGUROS.CEMPRES%TYPE := 24;
   V_CONTEXTO  NUMBER; 
   BEGIN 
   
     SELECT PAC_CONTEXTO.F_INICIALIZARCTX(PAC_PARAMETROS.F_PAREMPRESA_T(V_EMPRESA, 'USER_BBDD')) INTO V_CONTEXTO FROM DUAL; 

     DELETE FROM DET_LANZAR_INFORMES WHERE CMAP = 'CancelPorNoPagoPre';
     DELETE FROM CFG_LANZAR_INFORMES_PARAMS  WHERE CFORM = 'AXISLIST003' AND CMAP = 'CancelPorNoPagoPre';
     DELETE FROM CFG_LANZAR_INFORMES WHERE CFORM = 'AXISLIST003' AND CMAP = 'CancelPorNoPagoPre' AND SLITERA= 89908052 ;
     DELETE FROM AXIS_LITERALES  WHERE SLITERA = 89908052 AND CIDIOMA IN (1,2,8);
     DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89908052  AND CLITERA = 2;
     
     INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA) VALUES (89908052, 2);
     INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (8, 89908052, 'Prevención de Cancelaciones');
     INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (1, 89908052, 'Prevención de Cancelaciones');
     INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (2, 89908052, 'Prevención de Cancelaciones');
     INSERT INTO CFG_LANZAR_INFORMES (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, SLITERA, LPARAMS, GENERA_REPORT, CCFGFORM, LEXPORT, CTIPO, CGENREC, CAREA)
     VALUES (24, 'AXISLIST003', 'CancelPorNoPagoPre', 'GENERAL', 0, 89908052, NULL, 1, 'GENERAL', 'PDF|XLSX|TXT', 1, 0, 8);
     INSERT INTO CFG_LANZAR_INFORMES_PARAMS (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
     VALUES (24, 'AXISLIST003', 'CancelPorNoPagoPre', 'GENERAL', 0, 'GENERAL', 'PCRAMO', 3, 100784, 2, 0, 'SELECT:select a.cramo v, a.tramo d FROM ramos a where cidioma = 8');
     INSERT INTO CFG_LANZAR_INFORMES_PARAMS (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
     VALUES (24, 'AXISLIST003', 'CancelPorNoPagoPre', 'GENERAL', 0, 'GENERAL', 'SDESDE', 4, 9910689, 2, 0, 
                 'SELECT:select a.cagente v, a.cagente || ''.'' || PAC_REDCOMERCIAL.ff_desagente (a.cagente, f_usu_idioma ,4 ) d FROM agentes a, redcomercial r WHERE a.ctipage = 2  AND r.cagente = a.cagente  AND r.fmovfin IS NULL  ORDER BY 1');
     INSERT INTO CFG_LANZAR_INFORMES_PARAMS (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
     VALUES (24, 'AXISLIST003', 'CancelPorNoPagoPre', 'GENERAL', 0, 'GENERAL', 'SHASTA', 5, 9910690, 2, 0, 
                 'SELECT:select a.cagente v, a.cagente || ''.'' || PAC_REDCOMERCIAL.ff_desagente (a.cagente, f_usu_idioma ,4 ) d FROM agentes a, redcomercial r WHERE a.ctipage = 2  AND r.cagente = a.cagente  AND r.fmovfin IS NULL  ORDER BY 1');
     INSERT INTO CFG_LANZAR_INFORMES_PARAMS (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
     VALUES (24, 'AXISLIST003', 'CancelPorNoPagoPre', 'GENERAL', 0, 'GENERAL', 'CESTADO', 6, 100587, 2, 1, 'SELECT:select catribu v, tatribu d from detvalores where cvalor = 8002026 and cidioma = 8 and catribu = 2');
     INSERT INTO CFG_LANZAR_INFORMES_PARAMS (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
     VALUES (24, 'AXISLIST003', 'CancelPorNoPagoPre', 'GENERAL', 0, 'GENERAL', 'PFINICIO', 1, 9000526, 3, 1, NULL);
     INSERT INTO CFG_LANZAR_INFORMES_PARAMS (CEMPRES, CFORM, CMAP, TEVENTO, SPRODUC, CCFGFORM, TPARAM, NORDER, SLITERA, CTIPO, NOTNULL, LVALOR)
     VALUES (24, 'AXISLIST003', 'CancelPorNoPagoPre', 'GENERAL', 0, 'GENERAL', 'PFFIN', 2, 9000527, 3, 1, NULL);
     INSERT INTO DET_LANZAR_INFORMES (CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME)
     VALUES (24, 'CancelPorNoPagoPre', 2, 'Prevención de Cancelaciones', 'CancelPorNoPagoPre.jasper');
     INSERT INTO DET_LANZAR_INFORMES (CEMPRES, CMAP, CIDIOMA, TDESCRIP, CINFORME)
     VALUES (24, 'CancelPorNoPagoPre', 8, 'Prevención de Cancelaciones', 'CancelPorNoPagoPre.jasper');
     
     UPDATE CFG_LANZAR_INFORMES_PARAMS 
         SET LVALOR = 'SELECT:select catribu v, tatribu d from detvalores where cvalor = 8002026 and cidioma = 8 and catribu = 1' 
      WHERE CMAP = 'CancelPorNoPago' AND SLITERA = 100587 AND NORDER = 6;
     
  COMMIT;
 END;
/
