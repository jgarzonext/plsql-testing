--------------------------------------------------------
--  DDL for Procedure P_RESULTLOG
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_RESULTLOG" (pcprogra IN VARCHAR2, ptexerr IN VARCHAR2)
authid current_user IS
BEGIN
  IF nvl(ptexerr,' ') = ' ' THEN
    dbms_output.put_line(' ');
    dbms_output.put_line('Proceso '||pcprogra||' finalizado correctamente a las '||
                         to_char(sysdate,'dd/mm/yyyy hh24:mi:ss'));
    dbms_output.put_line(' ');
    dbms_output.put_line('+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+');
    dbms_output.put_line(' ');
  ELSE
    dbms_output.put_line(' ');
    dbms_output.put_line('                      *******************');
    dbms_output.put_line('                      * ERROR: '||rpad(ptexerr,70,' '));
    dbms_output.put_line('                      *******************');
    dbms_output.put_line('Proceso '||pcprogra||' finalizado CON ERRORES a las '||
                         to_char(sysdate,'dd/mm/yyyy hh24:mi:ss'));
    dbms_output.put_line(' ');
    dbms_output.put_line('+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+');
    dbms_output.put_line(' ');
  END IF;
END;

 
 

/

  GRANT EXECUTE ON "AXIS"."P_RESULTLOG" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_RESULTLOG" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_RESULTLOG" TO "PROGRAMADORESCSI";
