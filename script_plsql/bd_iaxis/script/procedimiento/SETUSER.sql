--------------------------------------------------------
--  DDL for Procedure SETUSER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."SETUSER" (pcusuari IN VARCHAR2) IS
/***********************************************************************
LMM5570, 08/04/2005.-
   Funci� que assigna l'etiqueta indicada al par�metre 'client_identifier' de la sessio.
   Inicialment aquest funci� nom�s ser� cridada des de TF2.
***********************************************************************/

BEGIN
    EXECUTE IMMEDIATE 'ALTER SESSION SET NLS_DATE_FORMAT=''DD/MM/YY''';
    DBMS_SESSION.set_identifier(upper(pcusuari));
END;

 
 

/

  GRANT EXECUTE ON "AXIS"."SETUSER" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."SETUSER" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."SETUSER" TO "PROGRAMADORESCSI";
