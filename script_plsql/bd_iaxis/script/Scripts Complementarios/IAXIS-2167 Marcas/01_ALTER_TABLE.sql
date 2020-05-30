EXECUTE pac_skip_ora.p_comprovacolumn('agr_marcas','cproveedor');
ALTER TABLE agr_marcas ADD cproveedor NUMBER;
COMMENT ON COLUMN agr_marcas.cproveedor IS '0 Inactivo / 1 Activo';
COMMENT ON COLUMN agr_marcas.caacion IS '';
COMMENT ON COLUMN agr_marcas.caacion IS 'Codigo de acciónn (VF 8002008)';
COMMENT ON COLUMN agr_marcas.carea IS '';
COMMENT ON COLUMN agr_marcas.carea IS 'Area responsable (VF 8002004)';

EXECUTE pac_skip_ora.p_comprovacolumn('per_agr_marcas','cproveedor');
ALTER TABLE per_agr_marcas ADD cproveedor NUMBER DEFAULT 0;
COMMENT ON COLUMN per_agr_marcas.cproveedor IS '0 Inactivo / 1 Activo';

EXECUTE pac_skip_ora.p_comprovacolumn('mig_per_agr_marcas','cproveedor');
ALTER TABLE mig_per_agr_marcas ADD cproveedor NUMBER;
COMMENT ON COLUMN mig_per_agr_marcas.cproveedor IS 'Marca Proveedor (0 Inactivo / 1 Activo)';

EXECUTE pac_skip_ora.p_comprovacolumn('mig_per_agr_marcas_bs','cproveedor');
ALTER TABLE mig_per_agr_marcas_bs ADD cproveedor NUMBER(1,0);
