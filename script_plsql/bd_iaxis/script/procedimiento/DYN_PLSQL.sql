--------------------------------------------------------
--  DDL for Procedure DYN_PLSQL
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."DYN_PLSQL" (blk IN VARCHAR2, nerror OUT NUMBER)
IS
   mascara EXCEPTION;
   PRAGMA EXCEPTION_INIT(mascara, -201);
   PRAGMA EXCEPTION_INIT(mascara, -6550);
   cur PLS_INTEGER := DBMS_SQL.OPEN_CURSOR;
   fdbk PLS_INTEGER;
   bloque VARCHAR2(4000):=RTRIM(blk);
BEGIN
   bloque := RTRIM(bloque, ';'||chr(10));
   PK_AUTOM.traza(PK_AUTOM.trazas, pk_autom.depurar,BLOQUE);
   IF SUBSTR(bloque, LENGTH(bloque), 1) <> ';' THEN
   		bloque:=bloque||';';
   END IF;
   DBMS_SQL.PARSE (cur,
      'BEGIN ' || bloque || ' END;',
      DBMS_SQL.NATIVE);
   fdbk := DBMS_SQL.EXECUTE (cur);
   DBMS_SQL.CLOSE_CURSOR (cur);
   nerror := 0;
EXCEPTION
  WHEN mascara THEN
     DBMS_SQL.CLOSE_CURSOR (cur);
     PK_AUTOM.traza(PK_AUTOM.trazas, pk_autom.depurar,'DYN_PLSQL: '||SQLERRM);
	 nerror := -1;
  WHEN OTHERS THEN
     DBMS_SQL.CLOSE_CURSOR (cur);
     -----DBMS_OUTPUT.PUT_LINE(SUBSTR('BEGIN ' || bloque || ' END;',1,56));
     PK_AUTOM.traza(PK_AUTOM.trazas, pk_autom.depurar,'DYN_PLSQL: '||SQLERRM);
     -----DBMS_OUTPUT.PUT_LINE(sqlerrm);
	 nerror := -2;
END;

 
 

/

  GRANT EXECUTE ON "AXIS"."DYN_PLSQL" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."DYN_PLSQL" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."DYN_PLSQL" TO "PROGRAMADORESCSI";
