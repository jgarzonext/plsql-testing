--------------------------------------------------------
--  DDL for Procedure P_PROC_DEVOL_AUTOMATICO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_PROC_DEVOL_AUTOMATICO" (p_cactimp1 NUMBER, p_cactimp2 NUMBER) IS
   /******************************************************************************
   NOMBRE:       P_PROC_DEVOL_AUTOMATICO
   PROPÓSITO:    Procedimiento que realiza devoluciones automaticas

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/09/2009  DRA               1. 0010872: APR : carga entorno Val y migración final (calendario)
   ******************************************************************************/
   empresa        VARCHAR2(10);
   verror         NUMBER;
   v_sproces      NUMBER;
BEGIN
   BEGIN
      empresa := f_parinstalacion_n('EMPRESADEF');
      verror := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(empresa,
                                                                            'USER_BBDD'));

      IF verror > 0 THEN
         p_tab_error(f_sysdate, USER, 'P_PROC_DEVOL_AUTOMATICO', 1, 'INICIALIZA CONTEXT ',
                     verror);
         p_int_error(' Proceso devolucion auto', ' inicializar contexto error ', 1, 0);
         RETURN;
      END IF;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, USER, 'P_PROC_DEVOL_AUTOMATICO', 2, 'INICIALIZA CONTEXT ',
                     SQLERRM);
         p_int_error(' Proceso devolucion auto', ' inicializar contexto error ', 1, 0);
         RETURN;
   END;

   verror := f_procesini(USER, empresa, 'P_PROC_DEVOL_AUTOMAT',
                         'Proceso devoluciones automáticas', v_sproces);

   IF verror <> 0 THEN
      p_tab_error(f_sysdate, USER, 'P_PROC_DEVOL_AUTOMATICO', 3,
                  'Error al iniciar el rastro de procesos', 'Error: ' || verror);
   END IF;

   verror := pac_devolu.f_devol_automatico(p_cactimp1, p_cactimp2, f_usu_idioma, v_sproces);

   IF verror <> 0 THEN
      p_tab_error(f_sysdate, USER, 'P_PROC_DEVOL_AUTOMATICO', 4,
                  'Error en el proceso de devolucion', 'Error: ' || verror);
   END IF;

   verror := f_procesfin(v_sproces, verror);

   IF verror <> 0 THEN
      p_tab_error(f_sysdate, USER, 'P_PROC_DEVOL_AUTOMATICO', 3,
                  'Error al finalizar el rastro de procesos', 'Error: ' || verror);
   END IF;
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."P_PROC_DEVOL_AUTOMATICO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_PROC_DEVOL_AUTOMATICO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_PROC_DEVOL_AUTOMATICO" TO "PROGRAMADORESCSI";
