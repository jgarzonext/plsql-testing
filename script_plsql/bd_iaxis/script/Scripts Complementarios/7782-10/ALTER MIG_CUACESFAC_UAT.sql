BEGIN
  EXECUTE IMMEDIATE 'ALTER TABLE mig_cuacesfac_uat DROP COLUMN PRESREA'; 
  EXCEPTION
  WHEN OTHERS THEN
      IF (SQLCODE = -00904) THEN
         DBMS_OUTPUT.PUT_LINE('La columna PRESREA no existe en la tabla mig_cuacesfac_uat. Ignorar este mensaje cuando se ejecute el lanzador varias veces.');
	  ELSE
		 DBMS_OUTPUT.PUT_LINE('ERROR...' || '. Descripción del Error-> ' || SQLERRM || ' - ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
      END IF;
END;
/

ALTER TABLE MIG_CUACESFAC_UAT ADD PRESREA  NUMBER(5,2);
COMMENT ON COLUMN MIG_CUACESFAC_UAT.PRESREA IS 'Porcentaje reserva sobre cesion a cargo del reasegurador';