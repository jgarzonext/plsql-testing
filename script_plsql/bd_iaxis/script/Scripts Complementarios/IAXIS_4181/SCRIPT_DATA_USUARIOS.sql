-- AXIS_AUX
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_AUX','8','24','USUARIO PRUEBA AUXILIAR INDEM','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_AUX'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_AUX','0011-01','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_AUX','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_AUX','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_AUX',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/

-- AXIS_ABO
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_ABO','8','24','USUARIO PRUEBA ABOGADO INDEM','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_ABO'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_ABO','0011-02','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_ABO','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_ABO','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_ABO',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/

-- AXIS_AUX_CONT
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_AUX_CONT','8','24','USUARIO PRUEBA AUXILIAR CONT INDEM','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_AUX_CONT'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_AUX_CONT','0011-03','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_AUX_CONT','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_AUX_CONT','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_AUX_CONT',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
 

-- AXIS_GEREN
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_GEREN','8','24','USUARIO PRUEBA GERENCIA INDEM','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_GEREN'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_GEREN','0011-04','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_GEREN','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_GEREN','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_GEREN',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/

commit;