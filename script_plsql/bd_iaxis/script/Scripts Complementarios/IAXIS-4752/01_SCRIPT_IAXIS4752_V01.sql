/* Formatted on 19/07/2019 12:00*/
/* **************************** 19/07/2019 12:00 **********************************************************************
Versión           Descripción
01.               -Este script actualiza los literales requeridos para actualización de acuerdo a la sugerencia del Product
                   owner.
IAXIS-4752         19/07/2019 Daniel Rodríguez
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
insert into axis_literales(cidioma,slitera,tlitera) VALUES(1,89907035,'Secció obligatòria buida: Inclogui almenys una persona públicament exposada.');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(2,89907035,'Sección obligatoria vacía: Incluya al menos una persona públicamente expuesta.');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(8,89907035,'Sección obligatoria vacía: Incluya al menos una persona públicamente expuesta.');
--
delete from axis_literales where slitera = 89907036 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 89907036  ;
insert into axis_codliterales(slitera,clitera)values(89907036,6);
insert into axis_literales(cidioma,slitera,tlitera) VALUES(1,89907036,'Secció obligatòria buida: Inclogui almenys un producte o compte en moneda estrangera.');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(2,89907036,'Sección obligatoria vacía: Incluya al menos un producto o cuenta en moneda extranjera.');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(8,89907036,'Sección obligatoria vacía: Incluya al menos un producto o cuenta en moneda extranjera.');
--
delete from axis_literales where slitera = 89907037 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 89907037  ;
insert into axis_codliterales(slitera,clitera)values(89907037,6);
insert into axis_literales(cidioma,slitera,tlitera) VALUES(1,89907037,'Secció obligatòria buida: Inclogui almenys una reclamació o indemnització.');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(2,89907037,'Sección obligatoria vacía: Incluya al menos una reclamación o indemnización.');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(8,89907037,'Sección obligatoria vacía: Incluya al menos una reclamación o indemnización.');
--
delete from axis_literales where slitera = 89907038 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 89907038  ;
insert into axis_codliterales(slitera,clitera)values(89907038,6);
insert into axis_literales(cidioma,slitera,tlitera) VALUES(1,89907038,'Secció obligatòria buida: Inclogui almenys la informació detallada dun accionista o beneficiari final dacord amb la informació subministrada en la secció Accionistes.');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(2,89907038,'Sección obligatoria vacía: Incluya la información detallada de al menos un accionista o beneficiario final acorde a la información suministrada en la sección Accionistas.');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(8,89907038,'Sección obligatoria vacía: Incluya la información detallada de al menos un accionista o beneficiario final acorde a la información suministrada en la sección Accionistas.');
--
delete from axis_literales where slitera = 89907044 and cidioma in (1,2,8) ;
delete from axis_codliterales where slitera = 89907044  ;
insert into axis_codliterales(slitera,clitera)values(89907044,3);
insert into axis_literales(cidioma,slitera,tlitera) VALUES(1,89907044,'iIiqui país');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(2,89907044,'Indique país');
insert into axis_literales(cidioma,slitera,tlitera) VALUES(8,89907044,'Indique país');
--
COMMIT;
/



