/*Grants tabla y sinonimo para CON_HOMOLOGA_OSIAX*/
GRANT EXECUTE ON AXIS.data_marcas TO R_AXIS;
GRANT EXECUTE ON AXIS.marcas_type_marcas TO R_AXIS;
CREATE OR REPLACE SYNONYM AXIS00.data_marcas FOR AXIS.data_marcas;
CREATE OR REPLACE SYNONYM AXIS00.marcas_type_marcas FOR AXIS.marcas_type_marcas;
/
