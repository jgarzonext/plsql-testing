begin
insert into mig_cargas (NCARGA, CEMPRES, FINIORG, FFINORG, ESTORG, ID)
values (17492, '24', to_date('12-01-2018', 'dd-mm-yyyy'), to_date('12-01-2018', 'dd-mm-yyyy'), 'OK', 'MIG_PSUCONTROLSEG_TXT');

insert into mig_cargas_tab_mig (NCARGA, NTAB, TAB_ORG, TAB_DES, FINIDES, FFINDES, ESTDES)
values (17492, 96, 'Inserts Directos', 'MIG_PSUCONTROLSEG', to_date('18-11-2019 16:08:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-11-2019 16:08:46', 'dd-mm-yyyy hh24:mi:ss'), null);

insert into mig_orden_axis (TABLA, NORDEN, TFUNCION)
values ('PSUCONTROLSEG', 3321, 'pac_mig_axis_conf.f_migra_psucontrolseg');

commit;
end;