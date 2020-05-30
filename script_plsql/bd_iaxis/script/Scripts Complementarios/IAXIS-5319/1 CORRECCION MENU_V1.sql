select pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD')) FROM dual; 

UPDATE menu_opciones SET CUSUMOD= 'AXIS_CONF', CMENPAD = 900400  WHERE COPCION = 1004;
COMMIT;
/