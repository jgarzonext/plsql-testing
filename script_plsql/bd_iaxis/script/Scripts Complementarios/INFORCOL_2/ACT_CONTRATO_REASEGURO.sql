/*
  INFORCOL Reaseguro Fase 1 Sprint 2
  Parametrizacion de contrato
*/

DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24, 'USER_BBDD'));

    UPDATE contratos
       SET fconfin = to_date('30042019','ddmmyyyy')
     WHERE scontra = 700
       AND nversio = 4;

	COMMIT;
    DBMS_OUTPUT.put_line('ACT_CONTRATO_REASEGURO.sql EJECUTADO CORRECTAMENTE: '||SQLERRM);
	
EXCEPTION
   WHEN OTHERS THEN
      ROLLBACK;
      DBMS_OUTPUT.put_line('ERROR SCRIPT ACT_CONTRATO_REASEGURO.sql : '||SQLERRM);	
END;
/