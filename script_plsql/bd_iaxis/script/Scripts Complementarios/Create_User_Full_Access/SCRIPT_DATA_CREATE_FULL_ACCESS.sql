/*SE RESTAURA CONFIGURACION MODO CONSULTA PANTALLA DE GESTION DE PÓLIZAS*/
UPDATE CFG_FORM_PROPERTY SET CVALUE = 0 WHERE CEMPRES = 24 AND CIDCFG = 1001 AND CFORM = 'AXISCTR020' AND CITEM = 'LAPIZ1' AND CPRPTY = 1;

/*ELIMINACIÓN OPCIONES USUARIOS EXISTENTES*/
DELETE FROM MENU_OPCIONROL WHERE COPCION IN (1900,4007,4012,910000,990101,990948,501
);
/*ELIMINACIÓN EXISTENTE FULL_ACCESS*/
DELETE FROM MENU_OPCIONROL WHERE CROLMEN = 'FULL_ACCESS';
DELETE FROM MENU_DESROLMEN WHERE CROLMEN = 'FULL_ACCESS';
DELETE FROM MENU_USERCODIROL WHERE CROLMEN = 'FULL_ACCESS';
DELETE FROM MENU_CODIROLMEN WHERE CROLMEN = 'FULL_ACCESS';

/*MOSTRAR CIFIN*/
/*CREACIÓN MENÚ FULL ACCESS*/
Insert into MENU_CODIROLMEN (CROLMEN) values ('FULL_ACCESS');
/*DESCRPCIÓN MENÚ*/
Insert into MENU_DESROLMEN (CROLMEN,CIDIOMA,TROLMEN) values ('FULL_ACCESS',1,'Menu Full Access');
Insert into MENU_DESROLMEN (CROLMEN,CIDIOMA,TROLMEN) values ('FULL_ACCESS',2,'Menu Full Access');
Insert into MENU_DESROLMEN (CROLMEN,CIDIOMA,TROLMEN) values ('FULL_ACCESS',8,'Menu Full Access');
/*RELACIÓN DE TODAS LAS OPCIONES DE PANTALLA AL MENÚ FULL_ACCESS*/
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',0);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',100);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',151);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',500);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',501);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',502);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',503);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',510);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',511);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',512);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',513);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',514);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',520);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',525);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',540);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',541);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',545);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',580);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',581);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',600);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',610);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',620);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',700);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',989);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',994);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',997);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',1000);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',1001);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',1002);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',1004);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',1010);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',1011);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',1012);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',1013);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',1014);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',1015);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',1016);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',1900);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',3003);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',3007);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',4000);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',4001);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',4002);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',4007);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',4010);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',4011);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',4012);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',4013);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',6004);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',6006);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',6007);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',6008);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',9886);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',20000);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',20001);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',20002);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',20003);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',20004);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',20010);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',21000);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',40002);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',40003);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',40005);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',40007);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',40010);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',40014);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',49000);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',90500);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',99110);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',110617);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',888887);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',888889);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',888890);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',900101);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',900153);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',900154);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',900400);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',900410);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',900411);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',900413);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',900415);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',900416);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',900424);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',900425);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',900427);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',900440);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',900450);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',900451);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',900456);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',900461);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',900462);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',900463);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',900464);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',900550);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',900604);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',900605);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',900606);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',910000);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',920000);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',920002);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',920003);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',920004);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',920010);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990000);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990010);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990101);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990103);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990105);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990110);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990113);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990114);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990135);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990136);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990153);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990909);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990910);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990911);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990917);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990919);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990920);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990921);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990934);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990936);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990939);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990948);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990951);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990958);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990961);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990962);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990963);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990964);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990966);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990967);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990970);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990971);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990975);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',990977);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',995016);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',999015);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',999016);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',999017);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',999018);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',999227);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',999228);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',999551);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',999552);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',999666);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',999667);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',999669);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',999670);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',999674);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',999675);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',999677);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',999678);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',999679);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',999700);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',999701);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',999702);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',999703);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',999704);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',999705);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',999706);
Insert into MENU_OPCIONROL (CROLMEN,COPCION) values ('FULL_ACCESS',999999);

/*CREACIÓN USUARIO CON ROL FULL ACCESS*/
--FULL_ACCESS
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('MAIN_AXIS','8','24','CONFIANZA S.A','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('MAIN_AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('MAIN_AXIS'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('MAIN_AXIS','FULL_ACCESS','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('MAIN_AXIS','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('MAIN_AXIS','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('MAIN_AXIS',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/

commit;