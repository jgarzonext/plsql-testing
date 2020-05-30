BEGIN
  EXECUTE IMMEDIATE 'ALTER TABLE PER_CARGAS MODIFY CCODIGO NUMBER'; 
EXCEPTION
  WHEN OTHERS THEN
    IF (SQLCODE = -00904) THEN
         DBMS_OUTPUT.PUT_LINE('La columna CCODIGO no existe en la tabla PER_CARGAS. Ignorar este mensaje cuando se ejecute el lanzador varias veces.');
    ELSE
     DBMS_OUTPUT.PUT_LINE('ERROR...' || '. Descripción del Error-> ' || SQLERRM || ' - ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
    END IF;
END;
/