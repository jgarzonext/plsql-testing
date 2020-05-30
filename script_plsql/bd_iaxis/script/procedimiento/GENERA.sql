--------------------------------------------------------
--  DDL for Procedure GENERA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."GENERA" (segm IN VARCHAR2) IS
BEGIN
   pk_autom.traza(PK_AUTOM.trazas, pk_autom.depurar, 'Genera: '||segm);
   genera_segmento(pk_autom.mensaje, segm);
EXCEPTION
   WHEN OTHERS THEN
      dbms_output.put_line('ERROR A GENERA: '||SQLERRM);
END genera;

 
 

/

  GRANT EXECUTE ON "AXIS"."GENERA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."GENERA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."GENERA" TO "PROGRAMADORESCSI";
