DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	UPDATE cfg_form_property
	SET cvalue = 1
	WHERE cform = 'AXISCTR019'
	AND cidcfg = 1
	AND citem = 'CACTIVI';
	
	DELETE cfg_form_dep WHERE ccfgdep = 99840298;
	
	DELETE cfg_form_property 
	WHERE cidcfg = 1
	AND cform = 'AXISCTR019'
	AND citem = 'CSUCURSAL'
	AND cprpty= 4;
	
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) 
	VALUES (24, 1, 'AXISCTR019', 'CSUCURSAL', 4, 99840298);

	INSERT INTO cfg_form_dep(cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue)
	VALUES (24, 99840298, 'CSUCURSAL', '-1', 'CAGENTE', 2, 1);
	INSERT INTO cfg_form_dep(cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue)
	VALUES (24, 99840298, 'CSUCURSAL', '10102', 'CAGENTE', 2, 0);
	INSERT INTO cfg_form_dep(cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue)
	VALUES (24, 99840298, 'CSUCURSAL', '10106', 'CAGENTE', 2, 0);
	INSERT INTO cfg_form_dep(cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue)
	VALUES (24, 99840298, 'CSUCURSAL', '10111', 'CAGENTE', 2, 0);
	INSERT INTO cfg_form_dep(cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue)
	VALUES (24, 99840298, 'CSUCURSAL', '20101', 'CAGENTE', 2, 0);
	INSERT INTO cfg_form_dep(cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue)
	VALUES (24, 99840298, 'CSUCURSAL', '20103', 'CAGENTE', 2, 0);
	INSERT INTO cfg_form_dep(cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue)
	VALUES (24, 99840298, 'CSUCURSAL', '20105', 'CAGENTE', 2, 0);
	INSERT INTO cfg_form_dep(cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue)
	VALUES (24, 99840298, 'CSUCURSAL', '20107', 'CAGENTE', 2, 0);
	INSERT INTO cfg_form_dep(cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue)
	VALUES (24, 99840298, 'CSUCURSAL', '20108', 'CAGENTE', 2, 0);
	INSERT INTO cfg_form_dep(cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue)
	VALUES (24, 99840298, 'CSUCURSAL', '20112', 'CAGENTE', 2, 0);
	INSERT INTO cfg_form_dep(cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue)
	VALUES (24, 99840298, 'CSUCURSAL', '20115', 'CAGENTE', 2, 0);
	INSERT INTO cfg_form_dep(cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue)
	VALUES (24, 99840298, 'CSUCURSAL', '20116', 'CAGENTE', 2, 0);
	INSERT INTO cfg_form_dep(cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue)
	VALUES (24, 99840298, 'CSUCURSAL', '20117', 'CAGENTE', 2, 0);
	INSERT INTO cfg_form_dep(cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue)
	VALUES (24, 99840298, 'CSUCURSAL', '20118', 'CAGENTE', 2, 0);
	INSERT INTO cfg_form_dep(cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue)
	VALUES (24, 99840298, 'CSUCURSAL', '20123', 'CAGENTE', 2, 0);
	INSERT INTO cfg_form_dep(cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue)
	VALUES (24, 99840298, 'CSUCURSAL', '20124', 'CAGENTE', 2, 0);
	INSERT INTO cfg_form_dep(cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue)
	VALUES (24, 99840298, 'CSUCURSAL', '20131', 'CAGENTE', 2, 0);
	INSERT INTO cfg_form_dep(cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue)
	VALUES (24, 99840298, 'CSUCURSAL', '20136', 'CAGENTE', 2, 0);

	COMMIT;
	
END;
/