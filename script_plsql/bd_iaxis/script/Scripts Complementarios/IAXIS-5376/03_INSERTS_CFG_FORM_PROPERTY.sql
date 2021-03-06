DECLARE
    VCIDCFG NUMBER := 240684;
BEGIN

	DELETE FROM CFG_FORM WHERE SPRODUC = 8063 AND CMODO = 'SUPLEMENTO_685' AND CFORM = 'AXISCTR207'; 
    FOR C IN (SELECT * FROM cfg_form where cform like '%AXISCTR207%' and sproduc IN (80001) and cmodo like '%SUPLEMENTO_685%')
    LOOP   
        INSERT INTO CFG_FORM(CEMPRES, CFORM, CMODO, CCFGFORM, SPRODUC, CIDCFG, CUSUALT, FALTA, CUSUMOD, FMODIFI) 
        VALUES(24, 'AXISCTR207', 'SUPLEMENTO_685', C.CCFGFORM, 8063, VCIDCFG, 'AXIS', SYSDATE(), NULL, NULL);
    END LOOP;
	
	COMMIT;
END;