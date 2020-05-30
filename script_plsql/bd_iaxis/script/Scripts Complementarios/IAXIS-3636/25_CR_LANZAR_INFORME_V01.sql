-- CFG_LANZAR_INFORMES_PARAMS
DELETE cfg_lanzar_informes_params
 WHERE cempres = 24
   AND cmap = 'reporteRangoDian'
   AND sproduc = 0
   AND ccfgform = 'GENERAL';
--
INSERT INTO cfg_lanzar_informes_params
  (cempres, cform, cmap, tevento, sproduc, ccfgform, tparam, norder, slitera, ctipo, notnull, lvalor)
VALUES
  (24, 'AXISLIST003', 'reporteRangoDian', 'GENERAL', 0, 'GENERAL', 'PFINI', 1, 9000526, 3, 1, NULL);
--
INSERT INTO cfg_lanzar_informes_params
  (cempres, cform, cmap, tevento, sproduc, ccfgform, tparam, norder, slitera, ctipo, notnull, lvalor)
VALUES
  (24, 'AXISLIST003', 'reporteRangoDian', 'GENERAL', 0, 'GENERAL', 'PFFIN', 2, 9910357, 3, 1, NULL);
--
INSERT INTO cfg_lanzar_informes_params
  (cempres, cform, cmap, tevento, sproduc, ccfgform, tparam, norder, slitera, ctipo, notnull, lvalor)
VALUES
  (24, 'AXISLIST003', 'reporteRangoDian', 'GENERAL', 0, 'GENERAL', 'PSUCURSAL', 3, 9909330, 2, 1, 'SELECT:SELECT codi v, nombre d
  FROM (SELECT a.cagente codi, pac_redcomercial.ff_desagente(a.cagente, pac_md_common.f_get_cxtidioma, 2) nombre, p.nnumide
           FROM agentes a, per_personas p, agentes_agente_pol ap
          WHERE a.cagente = ap.cagente
            AND a.sperson = p.sperson
            AND a.ctipage = 2
            AND ap.cempres = pac_md_common.f_get_cxtempresa)
 ORDER BY 1');
--
INSERT INTO cfg_lanzar_informes_params
  (cempres, cform, cmap, tevento, sproduc, ccfgform, tparam, norder, slitera, ctipo, notnull, lvalor)
VALUES
  (24, 'AXISLIST003', 'reporteRangoDian', 'GENERAL', 0, 'GENERAL', 'PPRODUCTO', 4, 9902909, 2, 1,
   'SELECT:SELECT DISTINCT s.cactivi v, p.CGRUPO||'' - ''|| s.ttitulo d 
  FROM activiprod p, activisegu s
 WHERE nvl(p.cactivo, 1) = 1
   AND s.cactivi = s.cactivi
   AND s.cramo = s.cramo
   AND s.cidioma = pac_md_common.f_get_cxtidioma
   AND p.cramo = s.cramo
   AND p.CGRUPO IS NOT NULL
order by 1');
-- CFG_LANZAR_INFORMES
DELETE cfg_lanzar_informes c
 WHERE cempres = 24
   AND c.cmap = 'reporteRangoDian'
   AND cform = 'AXISLIST003'
   AND sproduc = 0
   AND ccfgform = 'GENERAL';
--
INSERT INTO cfg_lanzar_informes
  (cempres, cform, cmap, tevento, sproduc, slitera, lparams, genera_report, ccfgform, lexport, ctipo, cgenrec, carea)
VALUES
  (24, 'AXISLIST003', 'reporteRangoDian', 'GENERAL', 0, 89906254, NULL, 1, 'GENERAL', 'XLSX', 1, 0, 8);
-- DET_LANZAR_INFORMES
DELETE det_lanzar_informes d
 WHERE d.cempres = 24
   AND cmap = 'reporteRangoDian';
--
INSERT INTO det_lanzar_informes
  (cempres, cmap, cidioma, tdescrip, cinforme)
VALUES
  (24, 'reporteRangoDian', 1, 'Reporte rango Dian', 'reporteRangoDian.jasper');

INSERT INTO det_lanzar_informes
  (cempres, cmap, cidioma, tdescrip, cinforme)
VALUES
  (24, 'reporteRangoDian', 2, 'Reporte rango Dian', 'reporteRangoDian.jasper');

INSERT INTO det_lanzar_informes
  (cempres, cmap, cidioma, tdescrip, cinforme)
VALUES
  (24, 'reporteRangoDian', 8, 'Reporte rango Dian', 'reporteRangoDian.jasper');
-- AXIS_LITERALES
DELETE axis_literales ac WHERE ac.slitera = 89906254;
-- AXIS_CODLITERALES
DELETE axis_codliterales ac WHERE ac.slitera = 89906254;
--
INSERT INTO axis_codliterales (slitera, clitera) VALUES (89906254, 3);
--
INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 89906254, 'Reporte rango DIAN');

INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 89906254, 'Reporte rango DIAN');

INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 89906254, 'Reporte rango DIAN');
COMMIT;
/