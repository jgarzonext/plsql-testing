DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE psu_controlpro 
	WHERE ccontrol = 801145
	AND sproduc IN (80002, 80003, 80004, 80005, 80006, 80007, 80008, 80009, 80010, 80011); 
	
	INSERT INTO psu_controlpro (ccontrol, sproduc, ctratar, cgarant, producci, renovaci, suplemen, cotizaci, autmanual, establoquea, autoriprev, cretenpor, cformula, cusualt, falta)
		VALUES (801145, 80002, 2, 0, '1', '1', '1', '1', 'A', 'E', 'S', 3, 804350, f_user, f_sysdate);
	INSERT INTO psu_controlpro (ccontrol, sproduc, ctratar, cgarant, producci, renovaci, suplemen, cotizaci, autmanual, establoquea, autoriprev, cretenpor, cformula, cusualt, falta)
		VALUES (801145, 80003, 2, 0, '1', '1', '1', '1', 'A', 'E', 'S', 3, 804350, f_user, f_sysdate);
	INSERT INTO psu_controlpro (ccontrol, sproduc, ctratar, cgarant, producci, renovaci, suplemen, cotizaci, autmanual, establoquea, autoriprev, cretenpor, cformula, cusualt, falta)
		VALUES (801145, 80004, 2, 0, '1', '1', '1', '1', 'A', 'E', 'S', 3, 804350, f_user, f_sysdate);
	INSERT INTO psu_controlpro (ccontrol, sproduc, ctratar, cgarant, producci, renovaci, suplemen, cotizaci, autmanual, establoquea, autoriprev, cretenpor, cformula, cusualt, falta)
		VALUES (801145, 80005, 2, 0, '1', '1', '1', '1', 'A', 'E', 'S', 3, 804350, f_user, f_sysdate);
	INSERT INTO psu_controlpro (ccontrol, sproduc, ctratar, cgarant, producci, renovaci, suplemen, cotizaci, autmanual, establoquea, autoriprev, cretenpor, cformula, cusualt, falta)
		VALUES (801145, 80006, 2, 0, '1', '1', '1', '1', 'A', 'E', 'S', 3, 804350, f_user, f_sysdate);
	INSERT INTO psu_controlpro (ccontrol, sproduc, ctratar, cgarant, producci, renovaci, suplemen, cotizaci, autmanual, establoquea, autoriprev, cretenpor, cformula, cusualt, falta)
		VALUES (801145, 80007, 2, 0, '1', '1', '1', '1', 'A', 'E', 'S', 3, 804350, f_user, f_sysdate);
	INSERT INTO psu_controlpro (ccontrol, sproduc, ctratar, cgarant, producci, renovaci, suplemen, cotizaci, autmanual, establoquea, autoriprev, cretenpor, cformula, cusualt, falta)
		VALUES (801145, 80008, 2, 0, '1', '1', '1', '1', 'A', 'E', 'S', 3, 804350, f_user, f_sysdate);
	INSERT INTO psu_controlpro (ccontrol, sproduc, ctratar, cgarant, producci, renovaci, suplemen, cotizaci, autmanual, establoquea, autoriprev, cretenpor, cformula, cusualt, falta)
		VALUES (801145, 80009, 2, 0, '1', '1', '1', '1', 'A', 'E', 'S', 3, 804350, f_user, f_sysdate);
	INSERT INTO psu_controlpro (ccontrol, sproduc, ctratar, cgarant, producci, renovaci, suplemen, cotizaci, autmanual, establoquea, autoriprev, cretenpor, cformula, cusualt, falta)
		VALUES (801145, 80010, 2, 0, '1', '1', '1', '1', 'A', 'E', 'S', 3, 804350, f_user, f_sysdate);
	INSERT INTO psu_controlpro (ccontrol, sproduc, ctratar, cgarant, producci, renovaci, suplemen, cotizaci, autmanual, establoquea, autoriprev, cretenpor, cformula, cusualt, falta)
		VALUES (801145, 80011, 2, 0, '1', '1', '1', '1', 'A', 'E', 'S', 3, 804350, f_user, f_sysdate);
			
	DELETE detvalores WHERE cvalor = 8002005 AND catribu = 6;
    INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002005, 1, 6, '801145');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002005, 2, 6, '801145');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (8002005, 8, 6, '801145');
	
	COMMIT;
	
END;
/