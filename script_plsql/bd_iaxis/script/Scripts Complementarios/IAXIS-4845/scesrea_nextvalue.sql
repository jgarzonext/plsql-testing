DECLARE


vmaxlog NUMBER;
vmaxseq NUMBER;
vsqltext VARCHAR2(100);


BEGIN
  --
  SELECT MAX(l.scesrea) 
    INTO vmaxlog 
    FROM cesionesrea l ;
  --  
  SELECT scesrea.nextval
    INTO vmaxseq 
    FROM dual;
  --  
  FOR i IN vmaxseq .. vmaxlog LOOP
    IF vmaxseq <= vmaxlog THEN
      vsqltext := 'select scesrea.nextval vmaxseq from dual';
      EXECUTE IMMEDIATE vsqltext INTO vmaxseq;
    END IF;  
  END LOOP;
  --
  COMMIT;  
  --
END;
