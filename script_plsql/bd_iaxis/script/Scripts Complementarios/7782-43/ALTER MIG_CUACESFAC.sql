BEGIN
  EXECUTE IMMEDIATE 'ALTER TABLE MIG_CUACESFAC DROP COLUMN IRESERV'; 
  EXCEPTION
  WHEN OTHERS THEN
      IF (SQLCODE = -00904) THEN
         DBMS_OUTPUT.PUT_LINE('La columna IRESERV no existe en la tabla MIG_CUACESFAC. Ignorar este mensaje cuando se ejecute el lanzador varias veces.');
    ELSE
     DBMS_OUTPUT.PUT_LINE('ERROR...' || '. Descripción del Error-> ' || SQLERRM || ' - ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
      END IF;
END;
/
BEGIN
  EXECUTE IMMEDIATE 'ALTER TABLE MIG_CUACESFAC DROP COLUMN IRESREA'; 
  EXCEPTION
  WHEN OTHERS THEN
      IF (SQLCODE = -00904) THEN
         DBMS_OUTPUT.PUT_LINE('La columna IRESREA no existe en la tabla MIG_CUACESFAC. Ignorar este mensaje cuando se ejecute el lanzador varias veces.');
    ELSE
     DBMS_OUTPUT.PUT_LINE('ERROR...' || '. Descripción del Error-> ' || SQLERRM || ' - ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
      END IF;
END;
/
ALTER TABLE MIG_CUACESFAC ADD IRESERV NUMBER;
COMMENT ON COLUMN MIG_CUACESFAC.IRESERV IS 'Importe reserva sobre cesion a cargo de la compania'; 
/
ALTER TABLE MIG_CUACESFAC ADD IRESREA NUMBER;
COMMENT ON COLUMN MIG_CUACESFAC.IRESREA IS 'Importe reserva sobre cesion a cargo del reasegurador';
/