
UPDATE CFG_LANZAR_INFORMES
SET SLITERA = 89906318
WHERE CEMPRES = 24 
AND CFORM = 'AXISLIST003'
AND CMAP = 'Comunicaciones'
AND TEVENTO = 'GENERAL'
AND SPRODUC = 0
AND CCFGFORM = 'GENERAL';

DELETE FROM CFG_LANZAR_INFORMES_PARAMS
WHERE CEMPRES = 24 
    AND CFORM = 'AXISLIST003'
    AND CMAP = 'Comunicaciones'
    AND TPARAM = 'PNISINIES';

	DELETE FROM CFG_LANZAR_INFORMES_PARAMS
WHERE CEMPRES = 24 
    AND CFORM = 'AXISLIST003'
    AND CMAP = 'Comunicaciones'
    AND NORDER = 3;

UPDATE CFG_LANZAR_INFORMES_PARAMS
SET TPARAM = 'PNRAMO',
NORDER = 3,
SLITERA = 100784,
NOTNULL = 1,
LVALOR = 'SELECT: select 0 v, ''TODOS'' d from dual union SELECT cramo v, tramo d FROM ramos WHERE cidioma = 8'
WHERE CEMPRES = 24 
    AND CFORM = 'AXISLIST003'
    AND CMAP = 'Comunicaciones'
    AND NORDER = 4;
	
commit;
/