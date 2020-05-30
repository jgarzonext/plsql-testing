-- Contexto empresa
SELECT pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,
                                                                    'USER_BBDD'))
  FROM dual;
  
BEGIN
  INSERT INTO psu_codusuagru
    (cusuagru, cusualt, falta, cusumod, fmodifi)
  VALUES
    ('45', f_user, f_sysdate, NULL, NULL);
EXCEPTION
  WHEN dup_val_on_index THEN
    NULL;
END;
/

-- AXIS_CONF1
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_CONF1','8','24','USUARIO PRUEBAS1','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_CONF1'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_CONF1','MENU_TOTAL','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_CONF1','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_CONF1','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_CONF1',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/


-- AXIS_CONF2
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_CONF2','8','24','USUARIO PRUEBAS2','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_CONF2'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_CONF2','MENU_TOTAL','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_CONF2','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_CONF2','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_CONF2',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/


-- AXIS_CONF3
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_CONF3','8','24','USUARIO PRUEBAS3','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_CONF3'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_CONF3','MENU_TOTAL','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_CONF3','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_CONF3','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_CONF3',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/

-- AXIS_CONF4
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_CONF4','8','24','USUARIO PRUEBAS1','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_CONF4'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_CONF4','MENU_TOTAL','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_CONF4','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_CONF4','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_CONF4',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/


-- AXIS_CONF5
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_CONF5','8','24','USUARIO PRUEBAS1','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_CONF5'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_CONF5','MENU_TOTAL','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_CONF5','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_CONF5','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_CONF5',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/

-- AXIS_CONF6
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_CONF6','8','24','USUARIO PRUEBAS1','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_CONF6'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_CONF6','MENU_TOTAL','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_CONF6','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_CONF6','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_CONF6',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/

-- AXIS_CONF7
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_CONF7','8','24','USUARIO PRUEBAS1','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_CONF7'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_CONF7','MENU_TOTAL','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_CONF7','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_CONF7','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_CONF7',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/

-- AXIS_CONF8
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_CONF8','8','24','USUARIO PRUEBAS1','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_CONF8'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_CONF8','MENU_TOTAL','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_CONF8','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_CONF8','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_CONF8',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/


-- AXIS_CONF9
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_CONF9','8','24','USUARIO PRUEBAS1','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_CONF9'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_CONF9','MENU_TOTAL','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_CONF9','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_CONF9','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_CONF9',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/


-- AXIS_CONF10
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_CONF10','8','24','USUARIO PRUEBAS1','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_CONF10'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_CONF10','MENU_TOTAL','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_CONF10','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_CONF10','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_CONF10',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/

-- AXIS_CONF11
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_CONF11','8','24','USUARIO PRUEBAS1','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_CONF11'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_CONF11','MENU_TOTAL','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_CONF11','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_CONF11','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_CONF11',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/

-- AXIS_CONF12
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_CONF12','8','24','USUARIO PRUEBAS1','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_CONF12'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_CONF12','MENU_TOTAL','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_CONF12','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_CONF12','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_CONF12',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/


-- AXIS_CONF13
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_CONF13','8','24','USUARIO PRUEBAS1','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_CONF13'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_CONF13','MENU_TOTAL','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_CONF13','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_CONF13','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_CONF13',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/


-- AXIS_CONF14
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_CONF14','8','24','USUARIO PRUEBAS1','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_CONF14'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_CONF14','MENU_TOTAL','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_CONF14','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_CONF14','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_CONF14',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/


-- AXIS_CONF15
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_CONF15','8','24','USUARIO PRUEBAS1','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_CONF15'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_CONF15','MENU_TOTAL','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_CONF15','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_CONF15','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_CONF15',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/


-- AXIS_CONF16
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_CONF16','8','24','USUARIO PRUEBAS1','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_CONF16'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_CONF16','MENU_TOTAL','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_CONF16','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_CONF16','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_CONF16',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/


-- AXIS_CONF17
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_CONF17','8','24','USUARIO PRUEBAS1','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_CONF17'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_CONF17','MENU_TOTAL','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_CONF17','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_CONF17','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_CONF17',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/


-- AXIS_CONF18
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_CONF18','8','24','USUARIO PRUEBAS1','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_CONF18'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_CONF18','MENU_TOTAL','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_CONF18','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_CONF18','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_CONF18',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/


-- AXIS_CONF19
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_CONF19','8','24','USUARIO PRUEBAS19','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_CONF19'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_CONF19','MENU_TOTAL','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_CONF19','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_CONF19','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_CONF19',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/


-- AXIS_CONF20
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_CONF20','8','24','USUARIO PRUEBAS20','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_CONF20'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_CONF20','MENU_TOTAL','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_CONF20','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_CONF20','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_CONF20',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/


-- AXIS_CONF21
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_CONF21','8','24','USUARIO PRUEBAS21','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_CONF21'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_CONF21','MENU_TOTAL','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_CONF21','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_CONF21','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_CONF21',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
  

commit;
/