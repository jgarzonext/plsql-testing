--------------------------------------------------------
--  DDL for Procedure DESARROLLAR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."DESARROLLAR" (segm IN VARCHAR2) IS
  mens 		VARCHAR2(10):= pk_autom.mensaje;
  programa 	VARCHAR2(2000);
  nerror number;
BEGIN
 	SELECT automata
 	  INTO programa
 	  FROM automatas
 	 WHERE mensaje = mens
 	   AND segmento = segm;
 	dyn_plsql(programa,nerror);
EXCEPTION
   WHEN NO_DATA_FOUND THEN
       NULL;
END desarrollar;

 
 

/

  GRANT EXECUTE ON "AXIS"."DESARROLLAR" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."DESARROLLAR" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."DESARROLLAR" TO "PROGRAMADORESCSI";
