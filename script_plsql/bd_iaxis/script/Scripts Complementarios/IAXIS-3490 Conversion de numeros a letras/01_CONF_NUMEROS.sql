BEGIN

UPDATE numeros SET tdescri = 'DOSCIENT' WHERE CNUMERO = 200 AND CIDIOMA = 8;
UPDATE numeros SET tdescri = 'TRESCIENT' WHERE CNUMERO = 300 AND CIDIOMA = 8;
UPDATE numeros SET tdescri = 'CUATROCIENT' WHERE CNUMERO = 400 AND CIDIOMA = 8;
UPDATE numeros SET tdescri = 'QUINIENT' WHERE CNUMERO = 500 AND CIDIOMA = 8;
UPDATE numeros SET tdescri = 'SEISCIENT' WHERE CNUMERO = 600 AND CIDIOMA = 8;
UPDATE numeros SET tdescri = 'SETECIENT' WHERE CNUMERO = 700 AND CIDIOMA = 8;
UPDATE numeros SET tdescri = 'OCHOCIENT' WHERE CNUMERO = 800 AND CIDIOMA = 8;
UPDATE numeros SET tdescri = 'NOVECIENT' WHERE CNUMERO = 900 AND CIDIOMA = 8;

	COMMIT;
EXCEPTION WHEN  OTHERS THEN
	NULL;
END;
/

