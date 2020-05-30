/* Formatted on 02/01/2019 11:00*/
/* **************************** 02/01/2019 11:00 **********************************************************************
Versión           Descripción
01.               -Creacion de documento para siniestros
IAXIS-2066        19/03/2019 Angelo Benavides 
***********************************************************************************************************************/
--
delete from doc_desdocumento where cdocume = 1229;
delete from doc_coddocumento where cdocume = 1229;
--
insert into DOC_CODDOCUMENTO (CDOCUME, CUSUALT, FALTA, CUSUMOD, FMODIFI, CCODPLAN)
values (1229, 'AXIS_CONF', to_date('10-10-2016 10:11:25', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
--
insert into DOC_DESDOCUMENTO (CDOCUME, CIDIOMA, TTITDOC, TDOCUME)
values (1229, 8, 'Poliza', 'Poliza');
--
commit;
--