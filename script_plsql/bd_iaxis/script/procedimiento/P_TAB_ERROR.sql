--------------------------------------------------------
--  DDL for Procedure P_TAB_ERROR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_TAB_ERROR" (pferror IN DATE
                                          , pcusuari IN VARCHAR2
                                          , ptobjeto IN VARCHAR2
                                          , pntraza IN NUMBER
                                          , ptdescrip IN VARCHAR2
                                          , pterror IN VARCHAR2
                                          , pdebug IN NUMBER DEFAULT 1)
AS

   PRAGMA AUTONOMOUS_TRANSACTION;
   v_statement    VARCHAR2(4000);
   v_part         VARCHAR2(50);
   v_debugapp     NUMBER;
   v_debuguser    NUMBER;

BEGIN

   -- n¿mero del d¿a de la semana
   -- v_part := 'tab_error_d0'||to_char(sysdate, 'D','NLS_DATE_LANGUAGE=SPANISH');
   v_part := 'tab_error_d0'||to_char(1 + TRUNC (sysdate) - TRUNC (sysdate, 'IW'));

   --Nivel global de debug en la aplicaci¿n (2 todo, 1 seg¿n usuario, 0 s¿lo errores)
   v_debugapp := nvl(pac_parametros.f_parinstalacion_n('DEBUG_TABERROR'),1);

   --Nivel de debug del usuario (99 todo, 50 warnings y errores, 1 errores)
   v_debuguser := NVL(pac_contexto.f_contextovalorparametro('DEBUG'), 1);

   IF ((v_debugapp = 2) or (v_debugapp = 1 and v_debuguser >= pdebug) or (v_debugapp = 0 and pdebug = 1))THEN

      v_statement := 'INSERT INTO ' || v_part || ' '
                     || '(ferror, cusuari, tobjeto, ntraza, tdescrip, terror)'
                     || ' VALUES (systimestamp,:b1,:b2,:b3,:b4,:b5)';

      EXECUTE IMMEDIATE v_statement
                  USING pcusuari, ptobjeto, NVL(pntraza, 1), ptdescrip, pterror;

      COMMIT;

   END IF;

END;

/

  GRANT EXECUTE ON "AXIS"."P_TAB_ERROR" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_TAB_ERROR" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_TAB_ERROR" TO "PROGRAMADORESCSI";
