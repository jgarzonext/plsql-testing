/* Formatted on 30/07/2019 12:00*/
/* **************************** 30/07/2019 12:00 **********************************************************************
Versión           Descripción
01.               -Este script inserta el literal para el encabezado de la nueva sección para Gastos de Expedición y Primas mínimas
                   en la pantalla de tarificación axisctr207.
IAXIS-3980         30/07/2019 Daniel Rodríguez.
***********************************************************************************************************************/
--
delete from axis_literales where slitera = 89907042 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 89907042 ;
insert into axis_codliterales(slitera,clitera)values(89907042,2);
insert into axis_literales(cidioma,slitera,tlitera) VALUES(1,89907042,'Gespeses dexpedició');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(2,89907042,'Gastos de expedición');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(8,89907042,'Gastos de expedición');
--
COMMIT;
/



