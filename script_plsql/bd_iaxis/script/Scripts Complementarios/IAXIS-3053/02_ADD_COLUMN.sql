
EXECUTE pac_skip_ora.p_comprovacolumn('ctgar_contragarantia','CAREA');
ALTER TABLE ctgar_contragarantia ADD CAREA NUMBER;
COMMENT ON COLUMN ctgar_contragarantia.CAREA IS 'Origen de contragarantia DETVALOR 8002011';

EXECUTE pac_skip_ora.p_comprovacolumn('ctgar_vehiculo','MODELO');
ALTER TABLE ctgar_vehiculo ADD MODELO DATE;
COMMENT ON COLUMN ctgar_vehiculo.MODELO IS 'Modelo del vehiculo';
            
COMMIT;
/
