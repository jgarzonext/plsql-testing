--0030-01-COMERCIAL CONSULTA
begin
insert into usuarios (cusuari,cidioma,cempres,tusunom,tpcpath,cdelega,cprovin,cpoblac,cvistas,cweb,repserver,ejecucion,sperson,fbaja,ctipusu,cagecob,copcion,tpwd,falta,cusubbdd,cautlog,cempleado,cterminal,cusubaja,ctermfisic,cislogged,flogin,cnsesiones,cvispubli,cbloqueo,fbloqueo,mail_usu)
values ('AXIS_CONTRAG','8','24','USUARIO PRUEBA CONTRAGARANTIAS','C:/','19000',null,null,null,null,null,'0',null,null,'2',null,'0',DBMS_OBFUSCATION_TOOLKIT.desencrypt
                                         (input => UTL_RAW.cast_to_raw(RPAD('AXIS', 32, ' ')),
                                          KEY => UTL_RAW.cast_to_raw(RPAD(UPPER('AXIS_CONTRAG'),
                                                                          32, ' '))),f_sysdate,null,null,null,null,null,null,'0',f_sysdate,'0','1',null,null,'usuario_pruebas@confianza.com.co');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
END;
/
BEGIN
insert into menu_usercodirol (cuser,crolmen,cusualt,falta,fmodifi) 
values ('AXIS_CONTRAG','0030-01','AXIS_CONF',F_SYSDATE,F_SYSDATE);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into psu_usuagru (cusuari,cusuagru,cusualt,falta,cusumod,fmodifi) values ('AXIS_CONTRAG','45','AXIS_CONF',F_SYSDATE,null,null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
INSERT INTO CFG_USER (CUSER,CEMPRES,CCFGWIZ,CCFGFORM,CCFGACC,CCFGDOC,CACCPROD,CCFGMAP,CROL) 
values ('AXIS_CONTRAG','24','CFG_CENTRAL','CFG_CENTRAL', 'CFG_ACC_CENTRAL',null, null, null, null);
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/
BEGIN
insert into pds_config_user (cuser,cconfwiz,cconacc,cconform,cconfmen,cconsupl) values ('AXIS_CONTRAG',null,null,null,null,'SUPL_TOTAL');
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      NULL;
end;
/

commit;