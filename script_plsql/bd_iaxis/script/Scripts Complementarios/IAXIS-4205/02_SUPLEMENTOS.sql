DELETE FROM prodmotmov WHERE cmotmov = 141 AND sproduc IN (80038, 80039, 80040, 80041, 80042, 80049);

DELETE FROM pds_supl_cod_config WHERE cconfig = 'conf_141_80038_suplemento_tf';
DELETE FROM pds_supl_form WHERE cconfig = 'conf_141_80038_suplemento_tf';
DELETE FROM pds_supl_validacio WHERE cconfig = 'conf_141_80038_suplemento_tf';
DELETE FROM pds_supl_config WHERE cconfig = 'conf_141_80038_suplemento_tf';

DELETE FROM pds_supl_cod_config WHERE cconfig = 'conf_141_80039_suplemento_tf';
DELETE FROM pds_supl_form WHERE cconfig = 'conf_141_80039_suplemento_tf';
DELETE FROM pds_supl_validacio WHERE cconfig = 'conf_141_80039_suplemento_tf';
DELETE FROM pds_supl_config WHERE cconfig = 'conf_141_80039_suplemento_tf';

DELETE FROM pds_supl_cod_config WHERE cconfig = 'conf_141_80040_suplemento_tf';
DELETE FROM pds_supl_form WHERE cconfig = 'conf_141_80040_suplemento_tf';
DELETE FROM pds_supl_validacio WHERE cconfig = 'conf_141_80040_suplemento_tf';
DELETE FROM pds_supl_config WHERE cconfig = 'conf_141_80040_suplemento_tf';

DELETE FROM pds_supl_cod_config WHERE cconfig = 'conf_141_80041_suplemento_tf';
DELETE FROM pds_supl_form WHERE cconfig = 'conf_141_80041_suplemento_tf';
DELETE FROM pds_supl_validacio WHERE cconfig = 'conf_141_80041_suplemento_tf';
DELETE FROM pds_supl_config WHERE cconfig = 'conf_141_80041_suplemento_tf';

DELETE FROM pds_supl_cod_config WHERE cconfig = 'conf_141_80042_suplemento_tf';
DELETE FROM pds_supl_form WHERE cconfig = 'conf_141_80042_suplemento_tf';
DELETE FROM pds_supl_validacio WHERE cconfig = 'conf_141_80042_suplemento_tf';
DELETE FROM pds_supl_config WHERE cconfig = 'conf_141_80042_suplemento_tf';

DELETE FROM pds_supl_cod_config WHERE cconfig = 'conf_141_80043_suplemento_tf';
DELETE FROM pds_supl_form WHERE cconfig = 'conf_141_80043_suplemento_tf';
DELETE FROM pds_supl_validacio WHERE cconfig = 'conf_141_80043_suplemento_tf';
DELETE FROM pds_supl_config WHERE cconfig = 'conf_141_80043_suplemento_tf';


COMMIT;
/