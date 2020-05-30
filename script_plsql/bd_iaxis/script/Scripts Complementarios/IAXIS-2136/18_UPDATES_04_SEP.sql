
update activisegu
set tactivi = 'PÓLIZA ÚNICA DE SEGURO DE CUMPLIMIENTO PARA CONTRATOS ESTATALES A FAVOR DE ECOPETROL S.A.'
where cidioma = 8
and cramo = 801
and cactivi = 2;

update detplantillas
set tdescrip = 'SU-OD-05-07 Clausulado Garantía Unica de Cumplimiento en Favor de Entidades Estatales (Decreto 1082 de 2015)'
where ccodplan = 'SU-OD-05-07'
AND CIDIOMA = 8;

insert into prod_plant_cab (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, FHASTA, CGARANT, CDUPLICA, NORDEN, CLAVE, NRESPUE, TCOPIAS, CCATEGORIA, CDIFERIDO, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (80005, 0, 'SU-OD-06-05', 1, to_date('27-03-2019', 'dd-mm-yyyy'), null, null, 1, null, null, null, 'pac_impresion_conf.f_clausulado_part_zf', null, null, 'AXIS_CONF', to_date('03-09-2019 10:47:28', 'dd-mm-yyyy hh24:mi:ss'), null, null);

update detplantillas
set tdescrip = 'SU-OD-07-05 Clausulado Póliza de Cumplimiento a Favor de Empresas de Servicios Públicos (Ley 142 de 1994)'
where ccodplan = 'SU-OD-07-05'
AND CIDIOMA = 8;

update activisegu
set tactivi = 'POLIZA DE CUMPLIMIENTO A FAVOR DE EMPRESAS DE SERVICIOS PUBLICOS LEY 142 DE 1994'
where cidioma = 8
and cramo = 801
and cactivi = 3;

update activisegu
set tactivi = 'POLIZA DE CUMPLIMIENTO DE DISPOSICIONES LEGALES'
where cidioma = 8
and cramo = 801
and cactivi = 7;

update respuestas
set trespue = 'Banco de la República'
where  CPREGUN=2876
and cidioma = 8
and crespue = 20;

insert into prod_plant_cab (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, FHASTA, CGARANT, CDUPLICA, NORDEN, CLAVE, NRESPUE, TCOPIAS, CCATEGORIA, CDIFERIDO, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (80006, 0, 'SU-OD-02-04', 1, to_date('27-03-2019', 'dd-mm-yyyy'), null, null, 1, null, null, null, 'pac_impresion_conf.f_clausulado_part_zf', null, null, 'AXIS_CONF', to_date('02-09-2019 10:47:28', 'dd-mm-yyyy hh24:mi:ss'), null, null);

insert into prod_plant_cab (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, FHASTA, CGARANT, CDUPLICA, NORDEN, CLAVE, NRESPUE, TCOPIAS, CCATEGORIA, CDIFERIDO, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (8063, 0, 'CONF000001', 1, to_date('01-01-2016', 'dd-mm-yyyy'), null, null, 1, null, null, null, 'pac_impresion_conf.f_mov_recibo', null, null, 'AXIS_CONF', to_date('05-01-2017 11:07:04', 'dd-mm-yyyy hh24:mi:ss'), null, null);

insert into prod_plant_cab (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, FHASTA, CGARANT, CDUPLICA, NORDEN, CLAVE, NRESPUE, TCOPIAS, CCATEGORIA, CDIFERIDO, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (8063, 0, 'CONF000002', 1, to_date('01-01-2016', 'dd-mm-yyyy'), null, null, 1, null, null, null, 'pac_impresion_conf.f_val_consorcio', null, null, 'AXIS_CONF', to_date('05-01-2017 11:07:04', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('25-04-2019 17:08:34', 'dd-mm-yyyy hh24:mi:ss'));

insert into prod_plant_cab (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, FHASTA, CGARANT, CDUPLICA, NORDEN, CLAVE, NRESPUE, TCOPIAS, CCATEGORIA, CDIFERIDO, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (8063, 0, 'CONF000003', 1, to_date('01-01-2016', 'dd-mm-yyyy'), null, null, 1, null, null, null, 'pac_impresion_conf.f_coacedido', null, null, 'AXIS_CONF', to_date('05-01-2017 11:07:04', 'dd-mm-yyyy hh24:mi:ss'), 'AXIS', to_date('25-04-2019 17:08:34', 'dd-mm-yyyy hh24:mi:ss'));

insert into prod_plant_cab (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, FHASTA, CGARANT, CDUPLICA, NORDEN, CLAVE, NRESPUE, TCOPIAS, CCATEGORIA, CDIFERIDO, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (8063, 0, 'CONF800101', 1, to_date('01-01-2016', 'dd-mm-yyyy'), null, null, 1, null, null, null, null, null, null, 'AXIS_CONF', to_date('05-01-2017 11:07:04', 'dd-mm-yyyy hh24:mi:ss'), null, null);

insert into prod_plant_cab (SPRODUC, CTIPO, CCODPLAN, IMP_DEST, FDESDE, FHASTA, CGARANT, CDUPLICA, NORDEN, CLAVE, NRESPUE, TCOPIAS, CCATEGORIA, CDIFERIDO, CUSUALT, FALTA, CUSUMOD, FMODIFI)
values (8063, 0, 'SU-OD-11-03', 1, to_date('05-01-2017', 'dd-mm-yyyy'), null, null, 1, null, null, null, null, null, null, 'AXIS_CONF', to_date('05-01-2017 11:07:05', 'dd-mm-yyyy hh24:mi:ss'), null, null);

insert into codiplantillas (CCODPLAN, IDCONSULTA, GEDOX, IDCAT, CGENFICH, CGENPDF, CGENREP, CTIPODOC, CFDIGITAL)
values ('SU-OD-11-03', 0, 'S', 1, 0, 0, 0, null, null);
 
COMMIT;