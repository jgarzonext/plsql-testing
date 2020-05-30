/*
  INFORCOL Reaseguro Fase 1 Sprint 1
  Parametrizacion del ramo 802 Responsabilidad Civil
*/

DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24, 'USER_BBDD'));

    UPDATE parproductos
       SET cvalpar = 0
     WHERE sproduc IN (SELECT sproduc
                         FROM v_productos
                        WHERE cramo = 802
                          AND sproduc > 80000)
       AND cparpro = 'GAR_PRINCIPAL_REA';
	
	COMMIT;
    DBMS_OUTPUT.put_line('ACT_PARPRODUCTOS_RC.sql EJECUTADO CORRECTAMENTE: '||SQLERRM);
	
EXCEPTION
   WHEN OTHERS THEN
      ROLLBACK;
      DBMS_OUTPUT.put_line('ERROR SCRIPT ACT_PARPRODUCTOS_RC.sql : '||SQLERRM);	
END;
/