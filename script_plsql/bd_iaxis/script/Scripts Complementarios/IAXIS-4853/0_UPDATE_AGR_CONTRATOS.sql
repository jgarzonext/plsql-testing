DECLARE 
  CURSOR contr IS
	SELECT * FROM contratos ORDER BY scontra, nversio;
	
	v_ramo NUMBER := 0;
	v_existe NUMBER := 0;
BEGIN 
  
  FOR reg IN contr LOOP
  
    --SE OBTIENE EL CRAMO DEL CONTRATO ACTUAL
	BEGIN
		SELECT DISTINCT(cramo) INTO v_ramo FROM agr_contratos WHERE scontra = reg.scontra AND ROWNUM = 1;
	EXCEPTION
		WHEN NO_DATA_FOUND THEN
		v_ramo := 0;
	END;
	
	--VALIDAR SI EXISTE EL CONTRATO CON LA VERSION
	BEGIN
		SELECT COUNT(1) INTO v_existe FROM agr_contratos WHERE scontra = reg.scontra AND nversio = reg.nversio;
	EXCEPTION
		WHEN NO_DATA_FOUND THEN
		v_existe := 0;
	END;
	
	IF v_existe <= 0 THEN
		--SI NO EXISTE REGISTRO SE INSERTA EN AGR_CONTRATOS
		INSERT INTO agr_contratos(SCONTRA, CRAMO, CMODALI, CCOLECT, CTIPSEG, CACTIVI, CGARANT, NVERSIO, ILIMSUB)
		VALUES(reg.scontra, v_ramo, NULL, NULL, NULL, NULL, NULL, reg.nversio, NULL);
	END IF;
	
  END LOOP;
  --BORRAR LAS VERSIONES NULL
  DELETE FROM agr_contratos WHERE nversio IS NULL;
  COMMIT;
END;