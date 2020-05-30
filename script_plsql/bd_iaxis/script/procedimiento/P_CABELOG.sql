--------------------------------------------------------
--  DDL for Procedure P_CABELOG
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_CABELOG" (pcprogra IN VARCHAR2, pcempres IN NUMBER,
                     psproces IN NUMBER,   pcnegati IN NUMBER)
authid current_user IS
--
-- Cabecera de log para la interficie contable
--
--
BEGIN
  dbms_output.put_line(' ');
  dbms_output.put_line('***********************************');
  dbms_output.put_line('* Llamada al '||substr(pcprogra,1,8)||'             *');
  dbms_output.put_line('* Parámetros                      *');
  dbms_output.put_line('*   Empresa: '||rpad(pcempres,8,' ')||'             *');
  dbms_output.put_line('*   Proceso: '||rpad(psproces,8,' ')||'             *');
  dbms_output.put_line('*   Negati.: '||rpad(pcnegati,8,' ')||'             *');
  dbms_output.put_line('*                                 *');
  dbms_output.put_line('*   Fecha: '||to_char(sysdate,'dd/mm/yyyy hh24:mi:ss')||'    *');
  dbms_output.put_line('***********************************');
  dbms_output.put_line(' ');
  dbms_output.put_line(' ');
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."P_CABELOG" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_CABELOG" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_CABELOG" TO "PROGRAMADORESCSI";
