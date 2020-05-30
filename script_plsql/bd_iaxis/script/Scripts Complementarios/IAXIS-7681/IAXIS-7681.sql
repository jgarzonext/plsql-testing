DECLARE
  v_contexto NUMBER := 0;
BEGIN

  v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));

delete CFG_LANZAR_INFORMES_PARAMS 
where cmap = 'ReviClienComuloVigen'
and tparam in ('PCONTGAR', 'PCUM');

  
  COMMIT;

END;

