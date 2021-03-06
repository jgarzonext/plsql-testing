UPDATE DET_LANZAR_INFORMES  SET CINFORME='Reporte_Infomre_tecnico.jasper' WHERE CMAP='Reporte_Informe_technico_doc';
UPDATE CFG_LANZAR_INFORMES  SET LEXPORT='PDF|DOCX' WHERE CMAP='Reporte_Informe_technico_doc';

DELETE FROM CFG_LANZAR_INFORMES_PARAMS  WHERE TPARAM = 'FECHAINICIO' AND CMAP='Reporte_Informe_technico_doc';
DELETE FROM CFG_LANZAR_INFORMES_PARAMS  WHERE TPARAM = 'FECHATERMINA' AND CMAP='Reporte_Informe_technico_doc';

INSERT INTO CFG_LANZAR_INFORMES_PARAMS (CEMPRES, CFORM, CMAP, TEVENTO ,SPRODUC,CCFGFORM, TPARAM, NORDER,SLITERA,CTIPO,NOTNULL) VALUES 
('24', 'AXISLIST003', 'Reporte_Informe_technico_doc', 'GENERAL',0,'GENERAL','FECHAINICIO',8,'9000526',3,1);

INSERT INTO CFG_LANZAR_INFORMES_PARAMS (CEMPRES, CFORM, CMAP, TEVENTO ,SPRODUC,CCFGFORM, TPARAM, NORDER,SLITERA,CTIPO,NOTNULL) VALUES 
('24', 'AXISLIST003', 'Reporte_Informe_technico_doc', 'GENERAL',0,'GENERAL','FECHATERMINA',9,'9909846',3,1);


UPDATE numeros SET tdescri = 'DOSCIENT' WHERE CNUMERO = 200 AND CIDIOMA = 8;
UPDATE numeros SET tdescri = 'TRESCIENT' WHERE CNUMERO = 300 AND CIDIOMA = 8;
UPDATE numeros SET tdescri = 'CUATROCIENT' WHERE CNUMERO = 400 AND CIDIOMA = 8;
UPDATE numeros SET tdescri = 'QUINIENT' WHERE CNUMERO = 500 AND CIDIOMA = 8;
UPDATE numeros SET tdescri = 'SEISCIENT' WHERE CNUMERO = 600 AND CIDIOMA = 8;
UPDATE numeros SET tdescri = 'SETECIENT' WHERE CNUMERO = 700 AND CIDIOMA = 8;
UPDATE numeros SET tdescri = 'OCHOCIENT' WHERE CNUMERO = 800 AND CIDIOMA = 8;
UPDATE numeros SET tdescri = 'NOVECIENT' WHERE CNUMERO = 900 AND CIDIOMA = 8;

COMMIT;