/* Formatted on 30/07/2019 12:00*/
/* **************************** 30/07/2019 12:00 **********************************************************************
Versi�n           Descripci�n
01.               -Este script inserta el literal para el encabezado de la nueva secci�n para Gastos de Expedici�n y Primas m�nimas
                   en la pantalla de tarificaci�n axisctr207.
IAXIS-3980         30/07/2019 Daniel Rodr�guez.
***********************************************************************************************************************/
--
delete from axis_literales where slitera = 89907042 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 89907042 ;
insert into axis_codliterales(slitera,clitera)values(89907042,2);
insert into axis_literales(cidioma,slitera,tlitera) VALUES(1,89907042,'Gespeses dexpedici�');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(2,89907042,'Gastos de expedici�n');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(8,89907042,'Gastos de expedici�n');
--
COMMIT;
/



