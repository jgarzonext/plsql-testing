/*
  INFORCOL Reaseguro Fase 1 Sprint 3 - Ajustes reaseguro NO proporcional
  Parametrizacion de contrato
  2019-12-23
*/

DECLARE
    v_contexto NUMBER := 0;
BEGIN

    v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24, 'USER_BBDD'));

    -- Actualiza garantías sin reaseguro creaseg = 0
    UPDATE contratos
       SET fconfin = NULL
     WHERE scontra = 101
       AND nversio = 3;

    COMMIT;
    DBMS_OUTPUT.put_line('ACT_REASEGURO_FACULTATIVO_RC.sql EJECUTADO CORRECTAMENTE: '||SQLERRM);

EXCEPTION
   WHEN OTHERS THEN
      ROLLBACK;
      DBMS_OUTPUT.put_line('ERROR SCRIPT ACT_REASEGURO_FACULTATIVO_RC.sql : '||SQLERRM);	
END;
/