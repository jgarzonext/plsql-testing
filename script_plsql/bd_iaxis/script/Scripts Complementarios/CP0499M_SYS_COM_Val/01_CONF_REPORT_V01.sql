/* Formatted on 07/07/2015 08:17 (Formatter Plus v4.8.8) - (CSI-Factory Standard Format v.2.0) */
DELETE axis_literales WHERE slitera = 89906224 and cidioma = 8;
DELETE AXIS_CODLITERALES where slitera = 89906224;

INSERT INTO AXIS_CODLITERALES (SLITERA,CLITERA) values (89906224,3);
INSERT INTO axis_literales
            (cidioma, slitera, tlitera)
     VALUES (8, 89906224, 'Trazabilidad de Personas');

DELETE FROM cfg_lanzar_informes 
      WHERE cmap = 'Trazabilidad'
        AND cempres = 24;
INSERT INTO cfg_lanzar_informes
            (cempres, cform, cmap, tevento, sproduc, slitera, lparams, genera_report,
             ccfgform, lexport, ctipo, carea)
     VALUES (24, 'AXISLIST003', 'Trazabilidad', 'GENERAL', 0, 89906224, ':PNNUMIDE', '1',
             'GENERAL', 'PDF', 1, 1);
             
DELETE FROM cfg_lanzar_informes_params
      WHERE cmap = 'Trazabilidad'
        AND cempres = 24;
INSERT INTO cfg_lanzar_informes_params
            (cempres, cform, cmap, tevento, sproduc, ccfgform, tparam, norder,
             slitera, ctipo, notnull,
             lvalor)
     VALUES (24, 'AXISLIST003', 'Trazabilidad', 'GENERAL', 0, 'GENERAL', 'PNNUMIDE', 1,
             9908121, 1, 1,'');

DELETE FROM det_lanzar_informes
      WHERE cmap = 'Trazabilidad'
        AND cempres = 24;
INSERT INTO det_lanzar_informes
            (cempres, cmap, cidioma, tdescrip,
             cinforme)
     VALUES (24, 'Trazabilidad', 8, 'Trazabilidad de Personas', 'Trazabilidad1.jrxml');