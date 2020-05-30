BEGIN
  EXECUTE IMMEDIATE 'ALTER TABLE MIG_SIN_TRAMITA_PAGO_UAT ADD TOBSERVA VARCHAR2(1000)'; 
EXCEPTION
  WHEN OTHERS THEN
    IF (SQLCODE = -00904) THEN
         DBMS_OUTPUT.PUT_LINE('La columna TOBSERVA no existe en la tabla MIG_SIN_TRAMITA_PAGO_UAT. Ignorar este mensaje cuando se ejecute el lanzador varias veces.');
    ELSE
     DBMS_OUTPUT.PUT_LINE('ERROR...' || '. Descripción del Error-> ' || SQLERRM || ' - ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
    END IF;
END;
/