BEGIN
	UPDATE CODPARAM SET CTIPO = 1 WHERE CPARAM = 'PER_ING_TARJPROF' AND CUTILI = 8;
	COMMIT;
EXCEPTION WHEN OTHERS THEN
	DBMS_OUTPUT.PUT_LINE('ERROR AL ACTUALIZAR CODPARAM PER_ING_TARJPROF');
END;
/