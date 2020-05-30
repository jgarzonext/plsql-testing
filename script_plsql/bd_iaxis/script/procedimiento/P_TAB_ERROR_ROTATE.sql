--------------------------------------------------------
--  DDL for Procedure P_TAB_ERROR_ROTATE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_TAB_ERROR_ROTATE" 
AS
   v_statement    VARCHAR2(4000);
   v_dia_semana   VARCHAR2(2);
   v_dia_siguiente_semana   VARCHAR2(2);
   v_dia_mes   VARCHAR2(2);
   v_ultimo_dia_mes   VARCHAR2(2);
   v_mes varchar2(2);
BEGIN

   -- n퓅ero del d풹 de la semana
   v_dia_semana := trim(to_char(to_number(to_char(sysdate, 'D')), '00'));

   v_dia_siguiente_semana := trim(to_char(to_number(to_char(sysdate+1, 'D')), '00'));



   v_dia_mes := to_char(sysdate, 'DD');

   v_ultimo_dia_mes := to_char(last_day (sysdate), 'DD');

   if v_dia_mes = v_ultimo_dia_mes then
   -- si hoy es el 퓄timo d풹 del mes, lo del d풹 siguiente tendr� que ir en la tabla del mes siguiente previo truncado de la misma.
      v_mes := to_char(add_months(sysdate, 1), 'MM');

      v_statement := 'TRUNCATE TABLE TAB_ERROR_M'||v_mes;

      EXECUTE IMMEDIATE v_statement;

   else

      v_mes := to_char(sysdate, 'MM');

   end if;

   v_statement := 'INSERT INTO tab_error_m'||v_mes||' SELECT * FROM TAB_ERROR_D'||v_dia_siguiente_semana;

   EXECUTE IMMEDIATE v_statement;

   v_statement := 'TRUNCATE TABLE TAB_ERROR_D'||v_dia_siguiente_semana;

   EXECUTE IMMEDIATE v_statement;

   COMMIT;


END;

/

  GRANT EXECUTE ON "AXIS"."P_TAB_ERROR_ROTATE" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_TAB_ERROR_ROTATE" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_TAB_ERROR_ROTATE" TO "PROGRAMADORESCSI";
