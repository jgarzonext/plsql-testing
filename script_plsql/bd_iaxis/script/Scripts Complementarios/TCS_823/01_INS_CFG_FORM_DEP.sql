DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE FROM cfg_form_dep 
    where ccfgdep = 99840294;
	DELETE FROM cfg_form_property where cform = 'AXISCGA002'
    AND citem = 'CCLASE' 
    AND cprpty = 4;

	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 0, 'AXISCGA002', 'CCLASE', 4, 99840294);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 992223, 'AXISCGA002', 'CCLASE', 4, 99840294);

	INSERT INTO cfg_form_dep (cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue) VALUES (24, 99840294, 'CCLASE', '1', 'TB_CODEUDORES', 1, 1);
	INSERT INTO cfg_form_dep (cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue) VALUES (24, 99840294, 'CCLASE', '2', 'TB_CODEUDORES', 1, 1);
	INSERT INTO cfg_form_dep (cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue) VALUES (24, 99840294, 'CCLASE', '3', 'TB_CODEUDORES', 1, 1);
	INSERT INTO cfg_form_dep (cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue) VALUES (24, 99840294, 'CCLASE', '4', 'TB_CODEUDORES', 1, 1);
	INSERT INTO cfg_form_dep (cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue) VALUES (24, 99840294, 'CCLASE', '100', 'TB_CODEUDORES', 1, 0);
	INSERT INTO cfg_form_dep (cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue) VALUES (24, 99840294, 'CCLASE', '101', 'TB_CODEUDORES', 1, 1);
	INSERT INTO cfg_form_dep (cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue) VALUES (24, 99840294, 'CCLASE', '102', 'TB_CODEUDORES', 1, 1);
	INSERT INTO cfg_form_dep (cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue) VALUES (24, 99840294, 'CCLASE', '103', 'TB_CODEUDORES', 1, 1);
	INSERT INTO cfg_form_dep (cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue) VALUES (24, 99840294, 'CCLASE', '104', 'TB_CODEUDORES', 1, 1);
	INSERT INTO cfg_form_dep (cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue) VALUES (24, 99840294, 'CCLASE', '105', 'TB_CODEUDORES', 1, 1);
	INSERT INTO cfg_form_dep (cempres, ccfgdep, citorig, tvalorig, citdest, cprpty, tvalue) VALUES (24, 99840294, 'CCLASE', '106', 'TB_CODEUDORES', 1, 1);
    
    COMMIT;
	
END;