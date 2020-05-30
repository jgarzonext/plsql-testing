/* Formatted on 09/07/2019 11:09*/
/* **************************** 09/07/2019 11:09 **********************************************************************
Versión           Descripción
01.               -Este script agrega los literales necesarios para la configuración de las pantallas para la Gestión
                   de Outsourcing.
IAXIS-3651         09/07/2019 Daniel Rodríguez
***********************************************************************************************************************/
-- Liquidación Outsourcing 
delete from axis_literales where slitera = 89906278 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 89906278 and clitera = 12 ;
insert into axis_codliterales(slitera,clitera)values(89906278,12);
insert into axis_literales(cidioma,slitera,tlitera) VALUES(1,89906278,'Liquidación Outsourcing');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(2,89906278,'Liquidación Outsourcing');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(8,89906278,'Liquidación Outsourcing');
--Estado gestión 
delete from axis_literales where slitera = 89906279 and cidioma in (1,2,8);
delete from axis_codliterales where slitera = 89906279 and clitera = 2;
insert into axis_codliterales(slitera,clitera)values(89906279,2);
insert into axis_literales(cidioma,slitera,tlitera) values(1,89906279,'Estado gestión');
insert into axis_literales(cidioma,slitera,tlitera) values(2,89906279,'Estado gestión');
insert into axis_literales(cidioma,slitera,tlitera) values(8,89906279,'Estado gestión');
--Valor gestionado 
delete from axis_literales where slitera = 89906283 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 89906283 and clitera = 7 ;
insert into axis_codliterales(slitera,clitera)values(89906283,7);
insert into axis_literales(cidioma,slitera,tlitera) values(1,89906283,'Valor gestionado');
insert into axis_literales(cidioma,slitera,tlitera) values(2,89906283,'Valor gestionado');
insert into axis_literales(cidioma,slitera,tlitera) values(8,89906283,'Valor gestionado');
--Fecha gestión 
delete from axis_literales where slitera = 89906284 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 89906284 and clitera = 7;
insert into axis_codliterales(slitera,clitera)values(89906284,7);
insert into axis_literales(cidioma,slitera,tlitera) values(1,89906284,'Fecha gestión');
insert into axis_literales(cidioma,slitera,tlitera) values(2,89906284,'Fecha gestión');
insert into axis_literales(cidioma,slitera,tlitera) values(8,89906284,'Fecha gestión');
--Fecha recaudo 
delete from axis_literales where slitera = 89906285 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 89906285 and clitera = 7;
insert into axis_codliterales(slitera,clitera)values(89906285,7);
insert into axis_literales(cidioma,slitera,tlitera) values(1,89906285,'Fecha recaudo');
insert into axis_literales(cidioma,slitera,tlitera) values(2,89906285,'Fecha recaudo');
insert into axis_literales(cidioma,slitera,tlitera) values(8,89906285,'Fecha recaudo');
--Calcular pago 
delete from axis_literales where slitera = 89906291 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 89906291 and clitera = 7;
insert into axis_codliterales(slitera,clitera)values(89906291,7);
insert into axis_literales(cidioma,slitera,tlitera) values(1,89906291,'Calcular pago');
insert into axis_literales(cidioma,slitera,tlitera) values(2,89906291,'Calcular pago');
insert into axis_literales(cidioma,slitera,tlitera) values(8,89906291,'Calcular pago');
--Información de pagos 
delete from axis_literales where slitera = 89906292 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 89906292 and clitera = 2;
insert into axis_codliterales(slitera,clitera)values(89906292,2);
insert into axis_literales(cidioma,slitera,tlitera) values(1,89906292,'Información de pagos');
insert into axis_literales(cidioma,slitera,tlitera) values(2,89906292,'Información de pagos');
insert into axis_literales(cidioma,slitera,tlitera) values(8,89906292,'Información de pagos');
--Fecha de orden 
delete from axis_literales where slitera = 89906293 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 89906293 and clitera = 2;
insert into axis_codliterales(slitera,clitera)values(89906293,2);
insert into axis_literales(cidioma,slitera,tlitera) values(1,89906293,'Fecha de orden');
insert into axis_literales(cidioma,slitera,tlitera) values(2,89906293,'Fecha de orden');
insert into axis_literales(cidioma,slitera,tlitera) values(8,89906293,'Fecha de orden');
--Total a pagar 
delete from axis_literales where slitera = 89906294 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 89906294 and clitera = 2;
insert into axis_codliterales(slitera,clitera)values(89906294,2);
insert into axis_literales(cidioma,slitera,tlitera) values(1,89906294,'Total a pagar');
insert into axis_literales(cidioma,slitera,tlitera) values(2,89906294,'Total a pagar');
insert into axis_literales(cidioma,slitera,tlitera) values(8,89906294,'Total a pagar');
--Estado del Pago ERP
delete from axis_literales where slitera = 89906295 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 89906295 and clitera = 2;
insert into axis_codliterales(slitera,clitera)values(89906295,2);
insert into axis_literales(cidioma,slitera,tlitera) values(1,89906295,'Estado del pago ERP');
insert into axis_literales(cidioma,slitera,tlitera) values(2,89906295,'Estado del pago ERP');
insert into axis_literales(cidioma,slitera,tlitera) values(8,89906295,'Estado del pago ERP');
--Nº de proceso ERP
delete from axis_literales where slitera = 89906296 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 89906296 and clitera = 2;
insert into axis_codliterales(slitera,clitera)values(89906296,2);
insert into axis_literales(cidioma,slitera,tlitera) values(1,89906296,'Nº de proceso ERP');
insert into axis_literales(cidioma,slitera,tlitera) values(2,89906296,'Nº de proceso ERP');
insert into axis_literales(cidioma,slitera,tlitera) values(8,89906296,'Nº de proceso ERP');
--Vr.Pagado ERP
delete from axis_literales where slitera = 89906297 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 89906297 and clitera = 2;
insert into axis_codliterales(slitera,clitera)values(89906297,2);
insert into axis_literales(cidioma,slitera,tlitera) values(1,89906297,'Vr.Pagado ERP');
insert into axis_literales(cidioma,slitera,tlitera) values(2,89906297,'Vr.Pagado ERP');
insert into axis_literales(cidioma,slitera,tlitera) values(8,89906297,'Vr.Pagado ERP');
-- Vr. Pend. Liquidar
delete from axis_literales where slitera = 89907019 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 89907019 and clitera = 2;
insert into axis_codliterales(slitera,clitera)values(89907019,2);
insert into axis_literales(cidioma,slitera,tlitera) values(1,89907019,'Vr. Pend. Liquidar');
insert into axis_literales(cidioma,slitera,tlitera) values(2,89907019,'Vr. Pend. Liquidar');
insert into axis_literales(cidioma,slitera,tlitera) values(8,89907019,'Vr. Pend. Liquidar');	
-- Modificación de pago outsourcing
DELETE FROM AXIS_LITERALES WHERE SLITERA = 89907012;
DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89907012;
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA) VALUES (89907012,2);
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (1, 89907012, 'Modificació de pagament outsourcing');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (2, 89907012, 'Modificación de pago outsourcing');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (8, 89907012, 'Modificación de pago outsourcing');
-- Vr. Pend. Liquidar
delete from axis_literales where slitera = 89907019 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 89907019 and clitera = 2;
insert into axis_codliterales(slitera,clitera)values(89907019,2);
insert into axis_literales(cidioma,slitera,tlitera) values(1,89907019,'Vr. Pend. Liquidar');
insert into axis_literales(cidioma,slitera,tlitera) values(2,89907019,'Vr. Pend. Liquidar');
insert into axis_literales(cidioma,slitera,tlitera) values(8,89907019,'Vr. Pend. Liquidar');
--
COMMIT; 
/



