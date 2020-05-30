--Ajuste de literales iaxis-12990 17/03/2020 JRVG

DECLARE
  v_contexto NUMBER := 0;
  
  BEGIN
       v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
       
          update axis_literales a set a.tlitera = 'Mostrar sólo los pendientes' where a.slitera = 9910360 and a.cidioma = 8;
          update axis_literales a set a.tlitera = 'Depuración Saldos A Favor' where a.slitera = 9910403 and a.cidioma = 8;
          update axis_literales a set a.tlitera = 'Gestión Saldos A Favor' where a.slitera = 9910404 and a.cidioma = 8;

          delete axis_literales where cidioma = 8 and slitera = 89908040; 
          delete axis_literales where cidioma = 8 and slitera = 89908041;
          delete axis_codliterales where slitera = 89908040 and clitera = 3;
          delete axis_codliterales where slitera = 89908041 and clitera = 3;

          insert into axis_codliterales (slitera, clitera) values (89908040, 3); 
          insert into axis_codliterales (slitera, clitera) values (89908041, 3); 
          insert into axis_literales (cidioma, slitera, tlitera) values (8, 89908040, 'Nit del tercero');
          insert into axis_literales (cidioma, slitera, tlitera) values (8, 89908041, 'Nombre del tercero');

        COMMIT;
END;
/
