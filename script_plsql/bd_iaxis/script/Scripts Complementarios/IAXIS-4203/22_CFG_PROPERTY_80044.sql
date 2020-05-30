DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE cfg_form_property WHERE cidcfg = 800441 AND cform = 'AXISCTR004';
	
	UPDATE cfg_form
	SET cidcfg = 800441
	WHERE cform = 'AXISCTR004'
	AND cmodo = 'ALTA_POLIZA'
	AND sproduc = 80044;
	
	
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','BT_ANT',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','BT_BUSCAR',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','BT_BUSCARHOST',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','BT_CBANCAR',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','BT_RIESGOS_HOST',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','BT_SEG',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CACTIVI',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CAGENTE',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CBANCAR',2,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CBANCAR',12,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CBANCAR',11,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CBANCAR',3,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CBANCAR',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CCOBBAN',3,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CCOBBAN',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CCOMPANIVNV',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CDOMPER',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CDURACI',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CDURACI',2,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CDURACI',3,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CDURACI',4,36023);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CFECMAN',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CFOLNUM',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CFORPAG',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CFORPAG',2,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CFORPAG',3,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CFORPAGREN',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CIDIOMA',3,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CIDIOMA',2,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CIDIOMA',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CINDREVFRAN',2,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CINDREVFRAN',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CMONCAP',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CMONEDA',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CMONPOL',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CMONPROD',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CPOLCIA',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CREAFAC',4,15);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CREATIP',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CREATIP',3,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CREATIP',4,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CRECFRA',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CRGGARDIF',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CRGGARDIF',2,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CSUBAGE',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CSUCURSAL',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CTEMPOR',4,442);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CTIPCOA',4,68446312);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CTIPCOB',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CTIPCOB',7,18);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CTIPCOB',2,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CTIPCOB',3,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CTIPCOB',4,16023);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CTIPCOM',4,441);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CTIPCOM',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CTIPREA',4,15);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CTIPRETR',2,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','CTIPRETR',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','DSP_COASEGURO',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','DSP_CONVENIOS',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','DSP_OTROS',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','DSP_PREGUNTASQUEST',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','DSP_PREIMPRESO',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','DSP_PRESTAMOS',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','DSP_PROMOTOR',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','DSP_REASEGURO',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','FEFECTO',2,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','FEFECTO',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','FEFECTO',3,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','FEFEPLAZO',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','FFINVIG',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','FRENOVA',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','FVENCPLAZO',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','GRPDRENTAS',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','INTTEC',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','LIT_PREG_DESPESES',8,9904461);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','LIT_PREG_QUESTSALUT',8,9001644);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','LIT_1000017',8,9904599);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','NDURACI',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','NDURCOB',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','NDURPER',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','NEDAMAR',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','NPOLIZA',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','NRENOVA',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','PCAPFALL',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','PCOMCOA',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','PCOMCON',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','PCOMGAS',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','PDOSCAB',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','PDTOCOM',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','PDTOTEC',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','PEJECUCION',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','POLISSA_INI',2,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','POLISSA_INI',3,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','POLISSA_INI',8,9904599);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','POLISSA_INI',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','PRECARG',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','PRECCOM',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,800441,'AXISCTR004','TARJETA',4,201263);
	
	
	
	COMMIT;

END;
/