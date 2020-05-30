/*
  INFORCOL Reaseguro Fase 1 Sprint 4
  Reaseguro XL - Parametrizacion de tramos para reaseguro XL
*/

DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24, 'USER_BBDD'));

	DELETE FROM PAREMPRESAS
	 WHERE CEMPRES = 24 AND CPARAM = 'PERMITE_MTRAMOXL_REA';

	INSERT INTO PAREMPRESAS (CEMPRES, CPARAM, NVALPAR, TVALPAR, FVALPAR)
         VALUES (24, 'PERMITE_MTRAMOXL_REA', 1, NULL, NULL);
	
	COMMIT;
    DBMS_OUTPUT.put_line('3_SCRIPT_SPRINT_4.sql EJECUTADO CORRECTAMENTE: '||SQLERRM);
	
EXCEPTION
   WHEN OTHERS THEN
      ROLLBACK;
      DBMS_OUTPUT.put_line('ERROR SCRIPT 3_SCRIPT_SPRINT_4.sql : '||SQLERRM);	
END;
/