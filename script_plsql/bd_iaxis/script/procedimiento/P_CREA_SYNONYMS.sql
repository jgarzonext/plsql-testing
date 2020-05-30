--------------------------------------------------------
--  DDL for Procedure P_CREA_SYNONYMS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_CREA_SYNONYMS" is
 CURSOR publi IS
  SELECT OBJECT_NAME A
    FROM USER_OBJECTS
    WHERE OBJECT_TYPE IN ('SEQUENCE','TABLE','PROCEDURE','FUNCTION','PAKAGE','PAKAGE BODY','VIEW')
  MINUS
  select TABLE_NAME A
  from all_synonyms
  where table_owner ='MVIDA1';
churro varchar2(1000);
BEGIN
 FOR C in publi LOOP
  churro:='create public synonym '||c.a||' for '||c.a;
   p_control_error(null,'PUBLICS',churro);
  begin
   execute immediate churro;
  exception
   when others then
  null;
  end;
 END LOOP;
END p_crea_synonyms;

 
 

/

  GRANT EXECUTE ON "AXIS"."P_CREA_SYNONYMS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_CREA_SYNONYMS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_CREA_SYNONYMS" TO "PROGRAMADORESCSI";
