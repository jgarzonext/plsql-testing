DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE clausupreg WHERE cpregun = 9803;
	DELETE clausupro WHERE sclagen = 4441;
	DELETE clausugen WHERE sclagen  = 4441;
	--DELETE codiclausugen WHERE sclagen  = 4441;
    
	--INSERT INTO codiclausugen(sclagen) VALUES (4441);
	
	INSERT INTO clausugen (sclagen, cidioma, tclatit, tclatex) VALUES (4441, 1, 'BENEFICIARI ADDICIONAL', 'SEMPRE QUE TRACTI DE BÉNS/ACTIVITATS DIFERENTS ALS EMPARATS SOTA LA PRESENT PÒLISSA I/O SEMPRE QUE PUGUI OSTENTAR SEVA QUALITAT DE TERCER.');
	INSERT INTO clausugen (sclagen, cidioma, tclatit, tclatex) VALUES (4441, 8, 'BENEFICIARIO ADICIONAL', 'SIEMPRE QUE SE TRATE DE BIENES/ACTIVIDADES DISTINTOS A LOS AMPARADOS BAJO LA PRESENTE PÓLIZA Y/O SIEMPRE QUE PUEDA OSTENTAR SU CALIDAD DE TERCERO.');
	INSERT INTO clausugen (sclagen, cidioma, tclatit, tclatex) VALUES (4441, 2, 'BENEFICIARIO ADICIONAL', 'SIEMPRE QUE SE TRATE DE BIENES/ACTIVIDADES DISTINTOS A LOS AMPARADOS BAJO LA PRESENTE PÓLIZA Y/O SIEMPRE QUE PUEDA OSTENTAR SU CALIDAD DE TERCERO.');
	
	INSERT INTO clausupro (sclapro, ccolect, cramo, ctipseg, cmodali, ctipcla, sclagen, norden, ccapitu, timagen, multiple, cclaucolec, cusualt, falta)	VALUES (89467, 0, 802, 1, 5, 1, 4441, 80, 1, NULL, NULL, NULL, f_user, f_sysdate);		
	INSERT INTO clausupro (sclapro, ccolect, cramo, ctipseg, cmodali, ctipcla, sclagen, norden, ccapitu, timagen, multiple, cclaucolec, cusualt, falta) VALUES (89468, 0, 802, 2, 6, 1, 4441, 80, 1, NULL, NULL, NULL, f_user, f_sysdate);
	INSERT INTO clausupro (sclapro, ccolect, cramo, ctipseg, cmodali, ctipcla, sclagen, norden, ccapitu, timagen, multiple, cclaucolec, cusualt, falta) VALUES (89469, 0, 802, 1, 6, 1, 4441, 80, 1, NULL, NULL, NULL, f_user, f_sysdate);
	INSERT INTO clausupro (sclapro, ccolect, cramo, ctipseg, cmodali, ctipcla, sclagen, norden, ccapitu, timagen, multiple, cclaucolec, cusualt, falta) VALUES (89470, 0, 802, 1, 7, 1, 4441, 80, 1, NULL, NULL, NULL, f_user, f_sysdate);
	INSERT INTO clausupro (sclapro, ccolect, cramo, ctipseg, cmodali, ctipcla, sclagen, norden, ccapitu, timagen, multiple, cclaucolec, cusualt, falta) VALUES (89471, 0, 802, 2, 8, 1, 4441, 80, 1, NULL, NULL, NULL, f_user, f_sysdate);
	INSERT INTO clausupro (sclapro, ccolect, cramo, ctipseg, cmodali, ctipcla, sclagen, norden, ccapitu, timagen, multiple, cclaucolec, cusualt, falta) VALUES (89472, 0, 802, 1, 8, 1, 4441, 80, 1, NULL, NULL, NULL, f_user, f_sysdate);
	INSERT INTO clausupro (sclapro, ccolect, cramo, ctipseg, cmodali, ctipcla, sclagen, norden, ccapitu, timagen, multiple, cclaucolec, cusualt, falta) VALUES (89473, 0, 802, 1, 9, 1, 4441, 80, 1, NULL, NULL, NULL, f_user, f_sysdate);
	INSERT INTO clausupro (sclapro, ccolect, cramo, ctipseg, cmodali, ctipcla, sclagen, norden, ccapitu, timagen, multiple, cclaucolec, cusualt, falta) VALUES (89474, 0, 802, 2, 1, 1, 4441, 80, 1, NULL, NULL, NULL, f_user, f_sysdate);
	INSERT INTO clausupro (sclapro, ccolect, cramo, ctipseg, cmodali, ctipcla, sclagen, norden, ccapitu, timagen, multiple, cclaucolec, cusualt, falta) VALUES (89475, 0, 802, 3, 1, 1, 4441, 80, 1, NULL, NULL, NULL, f_user, f_sysdate);
	INSERT INTO clausupro (sclapro, ccolect, cramo, ctipseg, cmodali, ctipcla, sclagen, norden, ccapitu, timagen, multiple, cclaucolec, cusualt, falta) VALUES (89476, 0, 802, 4, 1, 1, 4441, 80, 1, NULL, NULL, NULL, f_user, f_sysdate);
	
	INSERT INTO clausupreg (cpregun, crespue, sclapro) VALUES (9803, 1, 89467);
	INSERT INTO clausupreg (cpregun, crespue, sclapro) VALUES (9803, 1, 89468);
	INSERT INTO clausupreg (cpregun, crespue, sclapro) VALUES (9803, 1, 89469);
	INSERT INTO clausupreg (cpregun, crespue, sclapro) VALUES (9803, 1, 89470);
	INSERT INTO clausupreg (cpregun, crespue, sclapro) VALUES (9803, 1, 89471);
	INSERT INTO clausupreg (cpregun, crespue, sclapro) VALUES (9803, 1, 89472);
	INSERT INTO clausupreg (cpregun, crespue, sclapro) VALUES (9803, 1, 89473);
	INSERT INTO clausupreg (cpregun, crespue, sclapro) VALUES (9803, 1, 89474);
	INSERT INTO clausupreg (cpregun, crespue, sclapro) VALUES (9803, 1, 89475);
	INSERT INTO clausupreg (cpregun, crespue, sclapro) VALUES (9803, 1, 89476);
	
	
	COMMIT;
	
END;
/