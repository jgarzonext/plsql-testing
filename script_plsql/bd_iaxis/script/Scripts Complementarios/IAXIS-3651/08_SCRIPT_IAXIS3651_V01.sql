/* Formatted on 09/07/2019 11:09*/
/* **************************** 09/07/2019 11:09 **********************************************************************
Versi�n           Descripci�n
01.               -Este script agrega la opci�n en el men� de Administraci�n para la Gesti�n de Outsourcing.
IAXIS-3651         09/07/2019 Daniel Rodr�guez
***********************************************************************************************************************/
--
delete from menu_opcionrol where crolmen = 'MENU_TOTAL' and copcion = 40014;
delete from menu_opciones where copcion = 40014;
insert into menu_opciones (copcion,slitera,cinvcod,cinvtip,cmenpad,norden,tparame,ctipmen,cmodo,cusualt,falta,cusumod,fmodifi) 
values (40014,89906278,'AXISADM102',1,900400,40014,null,1,'MODIFICACION',f_user,f_sysdate,null,null);
insert into menu_opcionrol (crolmen,copcion,cusualt,falta,cusumod,fmodifi) 
values ('MENU_TOTAL',40014,f_user,f_sysdate,null,null); 
--
COMMIT;
/