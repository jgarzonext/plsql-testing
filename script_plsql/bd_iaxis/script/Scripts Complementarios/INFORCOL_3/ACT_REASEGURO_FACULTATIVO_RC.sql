/*
  INFORCOL Reaseguro Fase 1 Sprint 2 - Ajustes reaseguro facultativo RC
  Parametrizacion de contrato
  20191204
*/

DECLARE
    v_contexto NUMBER := 0;
BEGIN

    v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24, 'USER_BBDD'));

    -- Insercion parametro de traza para objeto F_BUSCACONTRATO
    INSERT INTO codparam (cparam, cutili, ctipo, cgrppar, norden, cobliga, tdefecto, cvisible)
         VALUES ('TRAZA_BUSCA_CONTRATO', '5', '2', 'GEN', '0', '0', '0', '1');
    INSERT INTO parempresas (cempres, cparam, nvalpar, tvalpar, fvalpar)
         VALUES ('24', 'TRAZA_BUSCA_CONTRATO', '1', NULL, NULL);

    -- Actualiza garantías sin reaseguro creaseg = 0
    UPDATE garanpro
       SET creaseg = 0
     WHERE sproduc IN (SELECT sproduc FROM v_productos
                        WHERE cramo = 802 AND sproduc > 80000)
       AND cgarant NOT IN (7050);

    COMMIT;
    DBMS_OUTPUT.put_line('ACT_REASEGURO_FACULTATIVO_RC.sql EJECUTADO CORRECTAMENTE: '||SQLERRM);

EXCEPTION
   WHEN OTHERS THEN
      ROLLBACK;
      DBMS_OUTPUT.put_line('ERROR SCRIPT ACT_REASEGURO_FACULTATIVO_RC.sql : '||SQLERRM);	
END;
/