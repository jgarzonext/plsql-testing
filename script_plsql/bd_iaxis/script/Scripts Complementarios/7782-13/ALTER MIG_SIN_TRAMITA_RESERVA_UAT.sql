BEGIN
  EXECUTE IMMEDIATE 'ALTER TABLE MIG_SIN_TRAMITA_RESERVA_UAT DROP COLUMN CMOVRES'; 
  EXCEPTION
  WHEN OTHERS THEN
      IF (SQLCODE = -00904) THEN
         DBMS_OUTPUT.PUT_LINE('La columna CMOVRES no existe en la tabla mig_sin_tramita_reserva_uat. Ignorar este mensaje cuando se ejecute el lanzador varias veces.');
	  ELSE
		 DBMS_OUTPUT.PUT_LINE('ERROR...' || '. Descripción del Error-> ' || SQLERRM || ' - ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
      END IF;
END;
/

ALTER TABLE MIG_SIN_TRAMITA_RESERVA_UAT ADD CMOVRES  NUMBER;