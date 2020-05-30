DECLARE
  v_contexto NUMBER := 0;
BEGIN

  v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));

update CFG_LANZAR_INFORMES
set lexport = 'XLSX'
where cmap = 'ReviClienComuloVigen';
  
  COMMIT;

END;







