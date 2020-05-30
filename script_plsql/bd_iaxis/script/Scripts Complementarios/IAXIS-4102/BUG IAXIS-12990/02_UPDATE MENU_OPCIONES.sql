 -- Ajuste de literales 17/03/2020 JRVG 
 
DECLARE
  v_contexto NUMBER := 0;
  
  BEGIN
       v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
       update menu_opciones m set m.slitera = '9910404' where m.cinvcod in ('AXISGCA004');
       update menu_opciones m set m.slitera = '9910403' where m.cinvcod in ('AXISGCA005');
  COMMIT;

END;
/