DROP TABLE tmp_gca_salfavcli;

create table tmp_gca_salfavcli(SGSFAVCLI NUMBER); 

update gca_cargaconc_mapeo set tcolori = 'campo05' where cfichero = 108 and tcoldest = 'CSUCURSAL';
UPDATE AXIS_LITERALES SET TLITERA = 'Partida débito' where slitera = 9910366;
commit;
/