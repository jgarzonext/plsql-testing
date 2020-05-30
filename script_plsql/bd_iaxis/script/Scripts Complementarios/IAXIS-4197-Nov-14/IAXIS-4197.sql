DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	update activisegu
	set Tactivi = 'GARANTÍA DE CUMPLIMIENTO EN FAVOR DE ENTIDADES PARTICULARES'
	where cidioma = 8
	and Cramo = 801
	and cactivi = 1;

	update  activisegu
	set tactivi = 'GARANTÍA ÚNICA DE SEGUROS DE CUMPLIMIENTO EN FAVOR DE ENTIDADES ESTATALES'
	where cidioma = 8
	and cramo = 801
	and cactivi = 0;

	update  activisegu
	set tactivi = 'PÓLIZA ÚNICA DE SEGURO DE CUMPLIMIENTO PARA CONTRATOS ESTATALES A FAVOR DE ECOPETROL S.A.'
	where cidioma = 8
	and cramo = 801
	and cactivi = 2;

	update  activisegu
	set tactivi = 'PÓLIZA DE CUMPLIMIENTO A FAVOR DE EMPRESAS DE SERVICIOS PÚBLICOS LEY 142 DE 1994'
	where cidioma = 8
	and cramo = 801
	and cactivi = 3;

	update  respuestas
	set trespue = 'Banco de la República'
	where cpregun = 2876
	and cidioma = 8
	and crespue = 20;

	update CLAUSUGEN
	SET TCLATEX = 'EXCLUSIÓN DE TRANSCCIONES PROHÍBIDAS, EMBARGOS Y SANCIONES ECONÓMICAS: LA COMPAÑÍA NO PROVEERA COBERTURA NI ESTARÁ OBLIGADA A PAGAR NINGUNA PÉRDIDA, RECLAMACIÓN O BENEFICIO EN VIRTUD DE ESTA PÓLIZA SI LA PROVISIÓN DE DICHA COBERTURA, O EL PAGO DE DICHA PÉRDIDA, RECLAMACIÓN O BENEFICIO PUDIERE EXPONER A LA COMPAÑIA A ALGUNA SANCIÓN, PROHIBICIÓN O RESTRICCIÓN CONFORME A LAS RESOLUCIONES DE LAS NACIONES UNIDAS O SANCIONES COMERCIALES O ECONÓMICAS, LEYES O NORMATIVAS DE CUALQUIER JURISDICCIÓN APLICABLE A LA COMPAÑÍA.' 
	 WHERE SCLAGEN = 4439
	AND CIDIOMA = 8;

	update activisegu
	 set tactivi = 'PÓLIZA DE CUMPLIMIENTO A FAVOR DE EMPRESAS DE SERVICIOS PÚBLICOS LEY 142 DE 1994'
	where cidioma = 8
	and cramo = 801
	and cactivi = 3;

	UPDATE TITULOPRO
	SET TTITULO = 'Caución Judicial'
	WHERE CIDIOMA = 8
	AND CRAMO = 801
	AND CMODALI = 10
	AND CTIPSEG = 1;

    update companias
    set Tcompani = 'COMPAÑIA ASEGURADORA DE FIANZAS S.A. CONFIANZA'
    where sperson in (1, 2);

	insert into prod_plant_cab (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, FHASTA, CGARANT, CDUPLICA, NORDEN, CLAVE, NRESPUE, TCOPIAS, CCATEGORIA, CDIFERIDO, CUSUALT, FALTA, CUSUMOD, FMODIFI)
	values (80001, 0, 'CONF800102', 1, to_date(sysdate, 'dd-mm-yyyy'), null, null, 1, null, null, null, null, null, null, 'AXIS', to_date('13-11-2019 08:12:50', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date(sysdate, 'dd-mm-yyyy'));

	insert into prod_plant_cab (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, FHASTA, CGARANT, CDUPLICA, NORDEN, CLAVE, NRESPUE, TCOPIAS, CCATEGORIA, CDIFERIDO, CUSUALT, FALTA, CUSUMOD, FMODIFI)
	values (80002, 0, 'CONF800102', 1, to_date(sysdate, 'dd-mm-yyyy'), null, null, 1, null, null, null, null, null, null, 'AXIS', to_date('13-11-2019 08:12:50', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date(sysdate, 'dd-mm-yyyy'));

	insert into prod_plant_cab (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, FHASTA, CGARANT, CDUPLICA, NORDEN, CLAVE, NRESPUE, TCOPIAS, CCATEGORIA, CDIFERIDO, CUSUALT, FALTA, CUSUMOD, FMODIFI)
	values (80003, 0, 'CONF800102', 1, to_date(sysdate, 'dd-mm-yyyy'), null, null, 1, null, null, null, null, null, null, 'AXIS', to_date('13-11-2019 08:12:50', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date(sysdate, 'dd-mm-yyyy'));

	insert into prod_plant_cab (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, FHASTA, CGARANT, CDUPLICA, NORDEN, CLAVE, NRESPUE, TCOPIAS, CCATEGORIA, CDIFERIDO, CUSUALT, FALTA, CUSUMOD, FMODIFI)
	values (80004, 0, 'CONF800102', 1, to_date(sysdate, 'dd-mm-yyyy'), null, null, 1, null, null, null, null, null, null, 'AXIS', to_date('13-11-2019 08:12:50', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date(sysdate, 'dd-mm-yyyy'));

	insert into prod_plant_cab (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, FHASTA, CGARANT, CDUPLICA, NORDEN, CLAVE, NRESPUE, TCOPIAS, CCATEGORIA, CDIFERIDO, CUSUALT, FALTA, CUSUMOD, FMODIFI)
	values (80005, 0, 'CONF800102', 1, to_date(sysdate, 'dd-mm-yyyy'), null, null, 1, null, null, null, null, null, null, 'AXIS', to_date('13-11-2019 08:12:50', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date(sysdate, 'dd-mm-yyyy'));

	insert into prod_plant_cab (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, FHASTA, CGARANT, CDUPLICA, NORDEN, CLAVE, NRESPUE, TCOPIAS, CCATEGORIA, CDIFERIDO, CUSUALT, FALTA, CUSUMOD, FMODIFI)
	values (80006, 0, 'CONF800102', 1, to_date(sysdate, 'dd-mm-yyyy'), null, null, 1, null, null, null, null, null, null, 'AXIS', to_date('13-11-2019 08:12:50', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date(sysdate, 'dd-mm-yyyy'));

	insert into prod_plant_cab (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, FHASTA, CGARANT, CDUPLICA, NORDEN, CLAVE, NRESPUE, TCOPIAS, CCATEGORIA, CDIFERIDO, CUSUALT, FALTA, CUSUMOD, FMODIFI)
	values (80007, 0, 'CONF800102', 1, to_date(sysdate, 'dd-mm-yyyy'), null, null, 1, null, null, null, null, null, null, 'AXIS', to_date('13-11-2019 08:12:50', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date(sysdate, 'dd-mm-yyyy'));

	insert into prod_plant_cab (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, FHASTA, CGARANT, CDUPLICA, NORDEN, CLAVE, NRESPUE, TCOPIAS, CCATEGORIA, CDIFERIDO, CUSUALT, FALTA, CUSUMOD, FMODIFI)
	values (80008, 0, 'CONF800102', 1, to_date(sysdate, 'dd-mm-yyyy'), null, null, 1, null, null, null, null, null, null, 'AXIS', to_date('13-11-2019 08:12:50', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date(sysdate, 'dd-mm-yyyy'));

	insert into prod_plant_cab (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, FHASTA, CGARANT, CDUPLICA, NORDEN, CLAVE, NRESPUE, TCOPIAS, CCATEGORIA, CDIFERIDO, CUSUALT, FALTA, CUSUMOD, FMODIFI)
	values (80009, 0, 'CONF800102', 1, to_date(sysdate, 'dd-mm-yyyy'), null, null, 1, null, null, null, null, null, null, 'AXIS', to_date('13-11-2019 08:12:50', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date(sysdate, 'dd-mm-yyyy'));

	insert into prod_plant_cab (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, FHASTA, CGARANT, CDUPLICA, NORDEN, CLAVE, NRESPUE, TCOPIAS, CCATEGORIA, CDIFERIDO, CUSUALT, FALTA, CUSUMOD, FMODIFI)
	values (80010, 0, 'CONF800102', 1, to_date(sysdate, 'dd-mm-yyyy'), null, null, 1, null, null, null, null, null, null, 'AXIS', to_date('13-11-2019 08:12:50', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date(sysdate, 'dd-mm-yyyy'));

	insert into prod_plant_cab (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, FHASTA, CGARANT, CDUPLICA, NORDEN, CLAVE, NRESPUE, TCOPIAS, CCATEGORIA, CDIFERIDO, CUSUALT, FALTA, CUSUMOD, FMODIFI)
	values (80012, 0, 'CONF800102', 1, to_date(sysdate, 'dd-mm-yyyy'), null, null, 1, null, null, null, null, null, null, 'AXIS', to_date('13-11-2019 08:12:50', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date(sysdate, 'dd-mm-yyyy'));

	insert into prod_plant_cab (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, FHASTA, CGARANT, CDUPLICA, NORDEN, CLAVE, NRESPUE, TCOPIAS, CCATEGORIA, CDIFERIDO, CUSUALT, FALTA, CUSUMOD, FMODIFI)
	values (80011, 0, 'CONF800102', 1, to_date(sysdate, 'dd-mm-yyyy'), null, null, 1, null, null, null, null, null, null, 'AXIS', to_date('13-11-2019 08:12:50', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date(sysdate, 'dd-mm-yyyy'));


	COMMIT;

END;
/