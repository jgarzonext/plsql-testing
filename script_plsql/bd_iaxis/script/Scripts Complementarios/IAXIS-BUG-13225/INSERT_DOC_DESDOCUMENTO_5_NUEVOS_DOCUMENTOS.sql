delete from doc_desdocumento where cdocume = 1237;
delete from doc_coddocumento where cdocume = 1237;
insert into DOC_CODDOCUMENTO (CDOCUME, CUSUALT, FALTA, CUSUMOD, FMODIFI, CCODPLAN)
values (1237, 'AXIS_CONF', f_sysdate, null, null, null);
insert into DOC_DESDOCUMENTO (CDOCUME, CIDIOMA, TTITDOC, TDOCUME)
values (1237, 8, 'Comunicación terceros (intermediario, codeudores)', 'Comunicación terceros (intermediario, codeudores)');

delete from doc_desdocumento where cdocume = 1238;
delete from doc_coddocumento where cdocume = 1238;
insert into DOC_CODDOCUMENTO (CDOCUME, CUSUALT, FALTA, CUSUMOD, FMODIFI, CCODPLAN)
values (1238, 'AXIS_CONF', f_sysdate, null, null, null);
insert into DOC_DESDOCUMENTO (CDOCUME, CIDIOMA, TTITDOC, TDOCUME)
values (1238, 8, 'Comunicaciones reporte a cifin', 'Comunicaciones reporte a cifin');

delete from doc_desdocumento where cdocume = 1239;
delete from doc_coddocumento where cdocume = 1239;
insert into DOC_CODDOCUMENTO (CDOCUME, CUSUALT, FALTA, CUSUMOD, FMODIFI, CCODPLAN)
values (1239, 'AXIS_CONF', f_sysdate, null, null, null);
insert into DOC_DESDOCUMENTO (CDOCUME, CIDIOMA, TTITDOC, TDOCUME)
values (1239, 8, 'Concepto archivo recobros', 'Concepto archivo recobros');

delete from doc_desdocumento where cdocume = 1240;
delete from doc_coddocumento where cdocume = 1240;
insert into DOC_CODDOCUMENTO (CDOCUME, CUSUALT, FALTA, CUSUMOD, FMODIFI, CCODPLAN)
values (1240, 'AXIS_CONF', f_sysdate, null, null, null);
insert into DOC_DESDOCUMENTO (CDOCUME, CIDIOMA, TTITDOC, TDOCUME)
values (1240, 8, 'Respuestas a comunicaciones terceros', 'Respuestas a comunicaciones terceros');

delete from doc_desdocumento where cdocume = 1241;
delete from doc_coddocumento where cdocume = 1241;
insert into DOC_CODDOCUMENTO (CDOCUME, CUSUALT, FALTA, CUSUMOD, FMODIFI, CCODPLAN)
values (1241, 'AXIS_CONF', f_sysdate, null, null, null);
insert into DOC_DESDOCUMENTO (CDOCUME, CIDIOMA, TTITDOC, TDOCUME)
values (1241, 8, 'Respuestas al afinanziado / garantizado', 'Respuestas al afinanziado / garantizado');
commit;