/* Formatted on 27/06/2019 05:55 AM IST */
/***************************** 27/06/2019 05:55 AM IST ****************************************************************
Versión         Descripción
01              - Reenvio Peticiones con error asientos contables
					Se debe crear una funcionalidad en la cual cuando un asiento contable no integre a SAP, este se debe corregir y volver a enviar la petición con la corrección.
					Se sugiere crear un campo de status en la tabla INT_MENSAJES, en el cual valide la respuesta del asiento contable, si pago correctamente coloque 1, si no coloque 2.
					En los casos 2, son los que tienen errores, esto sirve para generar informes de lo errores que se tienen. Cuando se genere la corrección de ese asiento contable generara un nuevo SINTERF el cual debe tener una relación con el que tiene error, ya sea por póliza, cuenta contable u otro campo en común, Si pasa este registro quedara en 1 y deberá cambiar el estado del campo STATUS con el que esta asociado a 1. Si genera error los registros deben quedar con 2. 
IAXIS-4191        27/06/2019 Pranay Khobragade
**********************************************************************************************************************/

-- Add new columns and change size of log_id column
ALTER TABLE SERVICIO_LOGS MODIFY LOG_ID VARCHAR2(50);

ALTER TABLE SERVICIO_LOGS
  ADD rt_sinterf NUMBER;
  
ALTER TABLE SERVICIO_LOGS
  ADD uni_id VARCHAR(50);

--------------------
-- Script to insert new link in Administration 
insert into axis_codliterales (SLITERA, CLITERA)
values (89906322, 3);

insert into axis_literales (CIDIOMA,SLITERA, TLITERA)
values (1, 89906322, 'Reenvío de Servicios');

insert into axis_literales (CIDIOMA,SLITERA, TLITERA)
values (2, 89906322, 'Reenvío de Servicios');

insert into axis_literales (CIDIOMA,SLITERA, TLITERA)
values (8, 89906322, 'Reenvío de Servicios');

Insert into menu_opciones (COPCION,SLITERA,CINVCOD,CINVTIP,CMENPAD,NORDEN,TPARAME,CTIPMEN,CMODO,CUSUALT,FALTA,CUSUMOD) 
values (999706,89906322,'AXISADM200',1,900400,999705,null,1,'MODIFICACION','AXIS_CONF',sysdate,'AXIS_CONF');

Insert into menu_opcionrol (CROLMEN,COPCION,CUSUALT,FALTA) 
values ('MENU_TOTAL',999706,'AXIS_CONF', sysdate); 

-------------------------------------------------------------------
--for creating table titles and label

insert into axis_codliterales (SLITERA, CLITERA) values (89906332, 2);

insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (1, 89906332, 'Sinterf');
insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (2, 89906332, 'Sinterf');
insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (8, 89906332, 'Sinterf');

insert into axis_codliterales (SLITERA, CLITERA) values (89906333, 2);

insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (1, 89906333, 'Cinterf');
insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (2, 89906333, 'Cinterf');
insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (8, 89906333, 'Cinterf');

insert into axis_codliterales (SLITERA, CLITERA) values (89906334, 2);

insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (1, 89906334, 'Lista de Solicitud');
insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (2, 89906334, 'Lista de Solicitud');
insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (8, 89906334, 'Lista de Solicitud');

insert into axis_codliterales (SLITERA, CLITERA) values (89906335, 2);

insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (1, 89906335, 'Respuesta de Solicitud');
insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (2, 89906335, 'Respuesta de Solicitud');
insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (8, 89906335, 'Respuesta de Solicitud');

insert into axis_codliterales (SLITERA, CLITERA) values (89906336, 2);

insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (1, 89906336, 'Buscando Solicitud...');
insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (2, 89906336, 'Buscando Solicitud...');
insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (8, 89906336, 'Buscando Solicitud...');

commit;
/