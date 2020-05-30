/* Formatted on 02/01/2019 11:00*/
/* **************************** 02/01/2019 11:00 **********************************************************************
Versión           Descripción
01.               -Se actualiza la secuencia de sdetalle del la subtabla.
TCS1560           02/01/2019 Angelo Benavides
***********************************************************************************************************************/
DECLARE

vmaxlog NUMBER;
vmaxseq NUMBER;
vsqltext VARCHAR2(100);

BEGIN
  --
  SELECT MAX(l.slogact) 
    INTO vmaxlog 
    FROM log_actividad l ;
  --  
  SELECT sdetalle_conf.nextval
    INTO vmaxseq 
    FROM dual;
  --  
  FOR i IN vmaxseq .. vmaxlog LOOP
    IF vmaxseq <= vmaxlog THEN
      vsqltext := 'select sdetalle_conf.NEXTVAL vmaxseq from dual';
      EXECUTE IMMEDIATE vsqltext INTO vmaxseq;
    END IF;  
  END LOOP;  
  --
END;  
 