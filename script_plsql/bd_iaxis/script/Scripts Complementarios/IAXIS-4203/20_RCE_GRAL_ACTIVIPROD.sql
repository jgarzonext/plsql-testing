DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE activisegu WHERE cramo = 802 AND cactivi IN(2, 3, 4, 5);
	DELETE codiactseg WHERE cramo = 802 AND cactivi IN(2, 3, 4, 5);
	
    INSERT INTO codiactseg (cramo, cactivi, cclarie) VALUES (802, 2, 0);
    INSERT INTO codiactseg (cramo, cactivi, cclarie) VALUES (802, 3, 0);
    INSERT INTO codiactseg (cramo, cactivi, cclarie) VALUES (802, 4, 0);
    INSERT INTO codiactseg (cramo, cactivi, cclarie) VALUES (802, 5, 0);
    
	INSERT INTO activisegu (cidioma, cactivi, cramo, ttitulo, tactivi) VALUES (1, 2, 802, 'Act. Petroleras', 'R.C.E. GENERAL ACTIVIDADES PETROLERAS');
	INSERT INTO activisegu (cidioma, cactivi, cramo, ttitulo, tactivi) VALUES (2, 2, 802, 'Act. Petroleras', 'R.C.E. GENERAL ACTIVIDADES PETROLERAS');
	INSERT INTO activisegu (cidioma, cactivi, cramo, ttitulo, tactivi) VALUES (8, 2, 802, 'Act. Petroleras', 'R.C.E. GENERAL ACTIVIDADES PETROLERAS');
	INSERT INTO activisegu (cidioma, cactivi, cramo, ttitulo, tactivi) VALUES (1, 3, 802, 'Vigilancia', 'R.C.E. GENERAL VIGILANCIA');
	INSERT INTO activisegu (cidioma, cactivi, cramo, ttitulo, tactivi) VALUES (2, 3, 802, 'Vigilancia', 'R.C.E. GENERAL VIGILANCIA');
	INSERT INTO activisegu (cidioma, cactivi, cramo, ttitulo, tactivi) VALUES (8, 3, 802, 'Vigilancia', 'R.C.E. GENERAL VIGILANCIA');
	INSERT INTO activisegu (cidioma, cactivi, cramo, ttitulo, tactivi) VALUES (1, 4, 802, 'Blindaje', 'R.C.E. GENERAL BLINDAJE');
	INSERT INTO activisegu (cidioma, cactivi, cramo, ttitulo, tactivi) VALUES (2, 4, 802, 'Blindaje', 'R.C.E. GENERAL BLINDAJE');
	INSERT INTO activisegu (cidioma, cactivi, cramo, ttitulo, tactivi) VALUES (8, 4, 802, 'Blindaje', 'R.C.E. GENERAL BLINDAJE');
	INSERT INTO activisegu (cidioma, cactivi, cramo, ttitulo, tactivi) VALUES (1, 5, 802, 'Empresarial', 'R.C.E. GENERAL EMPRESARIAL');
	INSERT INTO activisegu (cidioma, cactivi, cramo, ttitulo, tactivi) VALUES (2, 5, 802, 'Empresarial', 'R.C.E. GENERAL EMPRESARIAL');
	INSERT INTO activisegu (cidioma, cactivi, cramo, ttitulo, tactivi) VALUES (8, 5, 802, 'Empresarial', 'R.C.E. GENERAL EMPRESARIAL');
	
	COMMIT;
	
END;
/