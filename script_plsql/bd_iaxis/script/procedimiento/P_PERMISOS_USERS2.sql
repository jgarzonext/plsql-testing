--------------------------------------------------------
--  DDL for Procedure P_PERMISOS_USERS2
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_PERMISOS_USERS2" IS
CURSOR objectes ( pusuari IN VARCHAR2) IS
select 'grant select, insert, delete, update on '||table_name||' to '||pusuari INS
  from user_tables
  where not exists ( select '*'
                        from user_tab_privs
                        where user_tab_privs.table_name=user_tables.table_name and
                          grantee='')
UNION
select 'grant select, insert, update, delete on '||object_name||' to '||pusuari INS
  from user_objects
  where not exists ( select 'user_objects.object_name' INS
                       from user_tab_privs
                       where user_tab_privs.table_name=user_objects.object_name and
                         grantee='')
    and OBJECT_TYPE = 'VIEW'
UNION
select 'grant select on '||object_name||' to '||pusuari INS
  from user_objects
  where not exists ( select 'user_objects.object_name'
                       from user_tab_privs
                       where user_tab_privs.table_name=user_objects.object_name and
                         grantee='')
    and OBJECT_TYPE = 'SEQUENCE'
UNION
select 'grant execute on '||object_name||' to '||pusuari INS
  from user_objects
  where not exists ( select 'user_objects.object_name'
                       from user_tab_privs
                       where user_tab_privs.table_name=user_objects.object_name and
                         grantee='')
    and OBJECT_TYPE IN ('FUNCTION','PROCEDURE','PACKAGE')
	and OBJECT_NAME <>'P_PERIMISOS_USERS';
usuari  VARCHAR2(10);
BEGIN
FOR i IN 1..7 LOOP
 usuari:='MVPR'||LPAD(i,2,'0');
 FOR C in objectes(usuari) LOOP
   BEGIN
    EXECUTE IMMEDIATE c.ins;
   EXCEPTION
    WHEN OTHERS THEN NULL;
   END;
 END LOOP;
END LOOP ;

END p_permisos_users2;

 
 

/

  GRANT EXECUTE ON "AXIS"."P_PERMISOS_USERS2" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_PERMISOS_USERS2" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_PERMISOS_USERS2" TO "PROGRAMADORESCSI";
