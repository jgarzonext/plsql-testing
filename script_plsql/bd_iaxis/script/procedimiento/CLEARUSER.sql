--------------------------------------------------------
--  DDL for Procedure CLEARUSER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."CLEARUSER" IS
/***********************************************************************
LMM5570, 08/04/2005.-
   Funci� que assigna l'etiqueta indicada al par�metre 'client_identifier' de la sessio.
   Inicialment aquest funci� nom�s ser� cridada des de TF2.
***********************************************************************/

BEGIN
    DBMS_SESSION.clear_identifier;
END;

 
 

/

  GRANT EXECUTE ON "AXIS"."CLEARUSER" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."CLEARUSER" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."CLEARUSER" TO "PROGRAMADORESCSI";
