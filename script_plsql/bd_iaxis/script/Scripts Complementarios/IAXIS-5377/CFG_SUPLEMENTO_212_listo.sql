delete from CFG_WIZARD where CMODO in ('SUPLEMENTO_212') and sproduc = 8063;

INSERT INTO CFG_WIZARD (CEMPRES, CMODO, CCFGWIZ, SPRODUC, CIDCFG) VALUES ('24', 'SUPLEMENTO_212', 'CFG_CENTRAL', '8063', '240212');

delete from PDS_POST_SUPL where CCONFIG = 'conf_225_8063_suplemento_tf';

delete from PDS_SUPL_COD_CONFIG where CCONFIG = 'conf_225_8063_suplemento_tf';

delete from PDS_SUPL_FORM where CCONFIG = 'conf_225_8063_suplemento_tf';

delete from PDS_SUPL_PERMITE where CCONFIG = 'conf_225_8063_suplemento_tf';

delete from PDS_SUPL_VALIDACIO where CCONFIG = 'conf_225_8063_suplemento_tf';

delete from PDS_SUPL_CONFIG where CCONFIG = 'conf_225_8063_suplemento_tf';

COMMIT;