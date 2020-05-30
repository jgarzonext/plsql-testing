/* Formatted on 19/07/2019 12:00*/
/* **************************** 19/07/2019 12:00 **********************************************************************
Versi�n           Descripci�n
01.               -Este script actualiza los literales requeridos para actualizaci�n de acuerdo a la sugerencia del Product
                   owner.
IAXIS-4752         19/07/2019 Daniel Rodr�guez
***********************************************************************************************************************/
--
delete from axis_literales where slitera = 9909647 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 9909647 ;
insert into axis_codliterales(slitera,clitera)values(9909647,3);
insert into axis_literales(cidioma,slitera,tlitera) VALUES(1,9909647,'Concepte altres ingressos mensuals');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(2,9909647,'Concepto otros ingresos mensuales');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(8,9909647,'Concepto otros ingresos mensuales');
--
delete from axis_literales where slitera = 89907032 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 89907032 ;
insert into axis_codliterales(slitera,clitera)values(89907032,3);
insert into axis_literales(cidioma,slitera,tlitera) VALUES(1,89907032,'Origen de fons');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(2,89907032,'Origen de fondos');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(8,89907032,'Origen de fondos');
--
delete from axis_literales where slitera = 89907035 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 89907035  ;
insert into axis_codliterales(slitera,clitera)values(89907035,6);
insert into axis_literales(cidioma,slitera,tlitera) VALUES(1,89907035,'Secci� obligat�ria buida: Inclogui almenys una persona p�blicament exposada.');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(2,89907035,'Secci�n obligatoria vac�a: Incluya al menos una persona p�blicamente expuesta.');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(8,89907035,'Secci�n obligatoria vac�a: Incluya al menos una persona p�blicamente expuesta.');
--
delete from axis_literales where slitera = 89907036 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 89907036  ;
insert into axis_codliterales(slitera,clitera)values(89907036,6);
insert into axis_literales(cidioma,slitera,tlitera) VALUES(1,89907036,'Secci� obligat�ria buida: Inclogui almenys un producte o compte en moneda estrangera.');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(2,89907036,'Secci�n obligatoria vac�a: Incluya al menos un producto o cuenta en moneda extranjera.');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(8,89907036,'Secci�n obligatoria vac�a: Incluya al menos un producto o cuenta en moneda extranjera.');
--
delete from axis_literales where slitera = 89907037 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 89907037  ;
insert into axis_codliterales(slitera,clitera)values(89907037,6);
insert into axis_literales(cidioma,slitera,tlitera) VALUES(1,89907037,'Secci� obligat�ria buida: Inclogui almenys una reclamaci� o indemnitzaci�.');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(2,89907037,'Secci�n obligatoria vac�a: Incluya al menos una reclamaci�n o indemnizaci�n.');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(8,89907037,'Secci�n obligatoria vac�a: Incluya al menos una reclamaci�n o indemnizaci�n.');
--
delete from axis_literales where slitera = 89907038 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 89907038  ;
insert into axis_codliterales(slitera,clitera)values(89907038,6);
insert into axis_literales(cidioma,slitera,tlitera) VALUES(1,89907038,'Secci� obligat�ria buida: Inclogui almenys la informaci� detallada dun accionista o beneficiari final dacord amb la informaci� subministrada en la secci� Accionistes.');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(2,89907038,'Secci�n obligatoria vac�a: Incluya la informaci�n detallada de al menos un accionista o beneficiario final acorde a la informaci�n suministrada en la secci�n Accionistas.');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(8,89907038,'Secci�n obligatoria vac�a: Incluya la informaci�n detallada de al menos un accionista o beneficiario final acorde a la informaci�n suministrada en la secci�n Accionistas.');
--
delete from axis_literales where slitera = 89907044 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 89907044  ;
insert into axis_codliterales(slitera,clitera)values(89907044,3);
insert into axis_literales(cidioma,slitera,tlitera) VALUES(1,89907044,'iIiqui pa�s');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(2,89907044,'Indique pa�s');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(8,89907044,'Indique pa�s');
--
COMMIT;
/



