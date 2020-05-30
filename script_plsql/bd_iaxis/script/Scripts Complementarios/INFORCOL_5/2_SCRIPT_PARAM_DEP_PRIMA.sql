/*
  INFORCOL Reaseguro Fase 1 Sprint 4
  Reaseguro facultativo - ajuste para deposito en prima retenida
*/

DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24, 'USER_BBDD'));

	DELETE FROM AXIS_LITERALES
	 WHERE slitera IN (89908012, 89908013);

	DELETE FROM axis_codliterales
	 WHERE slitera IN (89908012, 89908013);

	DELETE FROM cfg_form_property 
	 WHERE cempres = 24
	   AND cform = 'AXISREA020'
	   AND citem = 'PRESREA';
	--
	INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)
	VALUES (89908012, 2);

	INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)
	VALUES (89908013, 2);

	INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA)
	VALUES (1, 89908012, '% Deposito Local');

	INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA)
	VALUES (2, 89908012, '% Deposito Local');

	INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA)
	VALUES (8, 89908012, '% Deposito Local');

	INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA)
	VALUES (1, 89908013, '% Deposito Reas.');

	INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA)
	VALUES (2, 89908013, '% Deposito Reas.');

	INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA)
	VALUES (8, 89908013, '% Deposito Reas.');
	--
	INSERT INTO CFG_FORM_PROPERTY (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
	VALUES (24, 2, 'AXISREA020', 'PRESREA', 8, 89908013);

	INSERT INTO CFG_FORM_PROPERTY (CEMPRES, CIDCFG, CFORM, CITEM, CPRPTY, CVALUE)
	VALUES (24, 1, 'AXISREA020', 'PRESREA', 8, 89908013);
	--
	UPDATE CFG_FORM_PROPERTY
	   SET CVALUE = 89908012
	 WHERE CFORM = 'AXISREA020'
	   AND CITEM = 'PRESERV';
	
	COMMIT;
    DBMS_OUTPUT.put_line('2_SCRIPT_SPRINT_4.sql EJECUTADO CORRECTAMENTE: '||SQLERRM);
	
EXCEPTION
   WHEN OTHERS THEN
      ROLLBACK;
      DBMS_OUTPUT.put_line('ERROR SCRIPT 2_SCRIPT_SPRINT_4.sql : '||SQLERRM);	
END;
/