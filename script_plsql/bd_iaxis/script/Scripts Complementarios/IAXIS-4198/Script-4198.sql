
UPDATE CODIPLANTILLAS C SET C.CFDIGITAL = 0 WHERE C.CCODPLAN IS NOT NULL;

Commit;

UPDATE CODIPLANTILLAS C
   SET C.CFDIGITAL = 1
 WHERE C.CCODPLAN IN ('CONF800102',
                      'CONF000001',
                      'CONF000004',
                      'CONF800101',
                      'CONF800104',
                      'CONF800105'); 
Commit;					
						
UPDATE INT_HOSTB2B I
SET I.URL = 'http://192.168.111.31:8080/confaxisconnect/i008/firmaDigital'
 WHERE I.CINTERF = 'I008';						

Commit;
/		 