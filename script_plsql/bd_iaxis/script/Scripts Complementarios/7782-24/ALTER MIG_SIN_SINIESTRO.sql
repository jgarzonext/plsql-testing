BEGIN
  EXECUTE IMMEDIATE 'ALTER TABLE MIG_SIN_SINIESTRO_UAT DROP COLUMN TDETPRETEN'; 
EXCEPTION
  WHEN OTHERS THEN
    IF (SQLCODE = -00904) THEN
         DBMS_OUTPUT.PUT_LINE('La columna TDETPRETEN no existe en la tabla MIG_SIN_SINIESTRO_UAT. Ignorar este mensaje cuando se ejecute el lanzador varias veces.');
    ELSE
     DBMS_OUTPUT.PUT_LINE('ERROR...' || '. Descripción del Error-> ' || SQLERRM || ' - ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
    END IF;
END;
/
BEGIN
  EXECUTE IMMEDIATE 'ALTER TABLE MIG_SIN_SINIESTRO DROP COLUMN TDETPRETEN'; 
EXCEPTION
  WHEN OTHERS THEN
    IF (SQLCODE = -00904) THEN
         DBMS_OUTPUT.PUT_LINE('La columna TDETPRETEN no existe en la tabla MIG_SIN_SINIESTRO. Ignorar este mensaje cuando se ejecute el lanzador varias veces.');
    ELSE
     DBMS_OUTPUT.PUT_LINE('ERROR...' || '. Descripción del Error-> ' || SQLERRM || ' - ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
    END IF;
END;
/
ALTER TABLE MIG_SIN_SINIESTRO_UAT ADD TDETPRETEN VARCHAR2(4000);
ALTER TABLE MIG_SIN_SINIESTRO ADD TDETPRETEN VARCHAR2(4000);