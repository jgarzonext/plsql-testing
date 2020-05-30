DELETE FROM AGR_CONTRATOS WHERE NVERSIO IS NULL;
DELETE FROM AGR_CONTRATOS WHERE CACTIVI IS NOT NULL;

DELETE FROM AGR_CONTRATOS WHERE SCONTRA = 700;
DELETE FROM AGR_CONTRATOS WHERE SCONTRA = 807;
DELETE FROM AGR_CONTRATOS WHERE SCONTRA = 808;

BEGIN
	BEGIN
		INSERT INTO AGR_CONTRATOS(SCONTRA, CRAMO, CMODALI, CCOLECT, CTIPSEG, CACTIVI, CGARANT, NVERSIO,ILIMSUB) 
		VALUES(700, 801, NULL, NULL, NULL, NULL, NULL, 1, NULL);
        COMMIT;
	EXCEPTION
		WHEN OTHERS THEN
		NULL;
	END;
END;