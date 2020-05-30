--------------------------------------------------------
--  DDL for Procedure J_EJECUTA2
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."J_EJECUTA2" 
 (p_command  IN  VARCHAR2)
 AS LANGUAGE JAVA
NAME 'jejecuta.executeCommand (java.lang.String)';

 
 

/

  GRANT EXECUTE ON "AXIS"."J_EJECUTA2" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."J_EJECUTA2" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."J_EJECUTA2" TO "PROGRAMADORESCSI";
