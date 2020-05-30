/* Formatted on 13/04/2019 07:00 (Formatter Plus v4.8.8)
/* **************************** 14/04/2019  07:00 **********************************************************************
    Versión         01.
    Desarrollador   Fabrica Software INFORCOL
    Fecha           13/05/2020
    Actualzacion    13/05/2020
    Descripcion     Reaseguro facultativo - Ajustes para deposito en prima 
                    Configuracion para los nuevos campos de la tabla CUASEFAC, para visualizarlos en la pantalla de consulta de cesiones
***********************************************************************************************************************/

DECLARE
    v_contexto NUMBER := 0;
BEGIN

    v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24, 'USER_BBDD'));  
    DELETE axis_literales
     WHERE slitera IN (89908055);
    
    DELETE axis_codliterales
     WHERE slitera IN (89908055);     

    insert into axis_codliterales (SLITERA, CLITERA)
    values (89908055, 2);

    insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
    values (1, 89908055, '% Dipòsit Reas.');

    insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
    values (2, 89908055, '% Depósito Reas.');

    insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
    values (8, 89908055, '% Depósito Reas.');

	UPDATE cfg_form_property
       SET cvalue = 89908055
     WHERE CEMPRES = 24
       AND CFORM = 'AXISREA020' 
       AND CITEM = 'PRESREA';

---------------
    DELETE axis_literales
     WHERE slitera IN (89908056);

    DELETE axis_codliterales
     WHERE slitera IN (89908056);

    insert into axis_codliterales (SLITERA, CLITERA)
    values (89908056, 2);
    
    insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
    values (1, 89908056, 'Dipòsit Local');

    insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
    values (2, 89908056, 'Depósito Local');

    insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
    values (8, 89908056, 'Depósito Local');
    
-----------	
    DELETE axis_literales
     WHERE slitera IN (89908057);

    DELETE axis_codliterales
     WHERE slitera IN (89908057);

    insert into axis_codliterales (SLITERA, CLITERA)
    values (89908057, 2);

    insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
    values (1, 89908057, 'Dipòsit Retenido');

    insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
    values (2, 89908057, 'Depósito Retenido');

    insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
    values (8, 89908057, 'Depósito Retenido');

    COMMIT;
    DBMS_OUTPUT.put_line('3_SCRIPT_CONFIGURACION_LITERALES.sql EJECUTADO CORRECTAMENTE: '||SQLERRM);

EXCEPTION
   WHEN OTHERS THEN
      ROLLBACK;
      DBMS_OUTPUT.put_line('ERROR SCRIPT 3_SCRIPT_CONFIGURACION_LITERALES.sql : '||SQLERRM);	
END;
/