/* Formatted on 09/07/2019 11:09*/
/* **************************** 09/07/2019 11:09 **********************************************************************
Versión           Descripción
01.               -Este script agrega las listas de valores necesarias para la configuración de las pantallas para la Gestión
                   de Outsourcing.
IAXIS-3651         09/07/2019 Daniel Rodríguez
***********************************************************************************************************************/
--
-- Motivo para no comisionar
delete FROM DETVALORES WHERE CVALOR = 8002023;
delete FROM VALORES WHERE CVALOR = 8002023;
Insert into VALORES (cvalor,cidioma,tvalor) values (8002023,1,'Motiu per no comissionar');
Insert into VALORES (cvalor,cidioma,tvalor) values (8002023,2,'Motivo para no comisionar');
Insert into VALORES (cvalor,cidioma,tvalor) values (8002023,8,'Motivo para no comisionar');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002023,8,1,'anulacion por no pago');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002023,2,1,'anulacion por no pago');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002023,1,1,'anulacion per no pagament');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002023,8,2,'tiene acuerdo de pago');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002023,2,2,'tiene acuerdo de pago');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002023,1,2,'te acord de pagament');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002023,8,3,'reportado en centrales de riesgo');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002023,2,3,'reportado en centrales de riesgo');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002023,1,3,'reported at risk centers');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002023,8,4,'producto coaseguro aceptado');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002023,2,4,'producto coaseguro aceptado');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002023,1,4,'producte coassegurança acceptat');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002023,8,5,'modo de pago por cruces');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002023,2,5,'modo de pago por cruces');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002023,1,5,'manera de pagament per encreuaments');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002023,8,6,'modo de pago por financiacion');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002023,2,6,'modo de pago por financiacion');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002023,1,6,'manera de pagament per finançament');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002023,8,7,'El cliente pago antes de la comunicación del Outsourcing');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002023,2,7,'El cliente pago antes de la comunicación del Outsourcing');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002023,1,7,'El client pagament abans de la comunicació del Outsourcing');
--
-- Estado de la orden
delete FROM DETVALORES WHERE CVALOR = 8002024;
delete FROM VALORES WHERE CVALOR = 8002024;
Insert into VALORES (cvalor,cidioma,tvalor) values (8002024,1,'Estat de la ordre');
Insert into VALORES (cvalor,cidioma,tvalor) values (8002024,2,'Estado de la orden');
Insert into VALORES (cvalor,cidioma,tvalor) values (8002024,8,'Estado de la orden');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002024,8,1,'Pendiente(Abierta)');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002024,2,1,'Pendiente(Abierta)');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002024,1,1,'Pendent (Oberta)');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002024,8,2,'Pendiente(Cerrada)');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002024,2,2,'Pendiente(Cerrada)');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002024,1,2,'Pendent (Tancada)');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002024,8,3,'Pagada');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002024,2,3,'Pagada');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002024,1,3,'Pagada');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002024,8,4,'Anulada');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002024,2,4,'Anulada');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002024,1,4,'Anullada');
--
-- Estado de la orden
delete FROM DETVALORES WHERE CVALOR = 8002020;
delete FROM VALORES WHERE CVALOR = 8002020;
Insert into VALORES (cvalor,cidioma,tvalor) values (8002020,1,'Estat Gestió');
Insert into VALORES (cvalor,cidioma,tvalor) values (8002020,2,'Estado Gestión');
Insert into VALORES (cvalor,cidioma,tvalor) values (8002020,8,'Estado Gestión');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002020,8,1,'Pendiente');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002020,2,1,'Pendiente');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002020,1,1,'Pendiente');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002020,8,2,'Liquidado');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002020,2,2,'Liquidado');
insert into DETVALORES (cvalor,cidioma,catribu,tatribu) values (8002020,1,2,'Liquidado');
--
COMMIT;
/