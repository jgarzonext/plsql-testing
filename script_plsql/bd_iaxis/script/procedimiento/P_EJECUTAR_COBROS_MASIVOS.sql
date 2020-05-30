--------------------------------------------------------
--  DDL for Procedure P_EJECUTAR_COBROS_MASIVOS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_EJECUTAR_COBROS_MASIVOS" (
   psproces IN NUMBER,
   pcadena IN VARCHAR2,
   pcadforpag IN VARCHAR2,
   pcempres IN NUMBER,
   pcusuari IN VARCHAR2,
   psperson IN NUMBER,
   pctipmov IN NUMBER,
   pimovimi IN NUMBER,
   piautliq IN NUMBER,
   pipagsin IN NUMBER,
   pcmoneop IN NUMBER,
   piautliqp IN NUMBER DEFAULT NULL,
   pidifcambio IN NUMBER DEFAULT NULL)
AUTHID CURRENT_USER IS
/******************************************************************************
   NOMBRE:       P_Ejecutar_Cobros_Masivos
   PROPÓSITO:    Ejecuar el proceso de cobros masivos

   REVISIONES:
   Ver        Fecha        Autor           Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        27/01/2015  JAMF             Creacióión procedure

******************************************************************************/
/***************************************************************************

    Se añade una comprobación inicial para ver si ya hay algún job ejecutándose
****************************************************************************/

   -- cierre programado: Por las diferentes horas de ejecución segñun cliente asegurarnos que lo lance cuando toca.
   -- previo programado
   -- BUG 0020701 - 12/01/2012 - JMF: formato fcierre
   CURSOR c_vjob_run IS
      SELECT v.job, v.this_date
        FROM user_jobs v
       WHERE UPPER(v.what) LIKE UPPER('%Ejecutar_cierres%');

   cadena         VARCHAR2(1000);
   s              VARCHAR2(2000);
   error          NUMBER := 0;
--   psproces       NUMBER;
   pfproces       DATE;
   v_numlin       NUMBER;
   v_modo         NUMBER;
   v_depen        NUMBER;   -- 0: Dependencia correcte; 1: Dependencia erronea.
   empresa        VARCHAR2(10);
   verror         NUMBER;
   vmensajes      t_iax_mensajes;
BEGIN
   --Inicialització del context
   BEGIN
      --BUG 7352 - 10/06/2009    - DCT - Desarrollo PL Cierres
      empresa := f_parinstalacion_n('EMPRESADEF');
      verror := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(empresa,
                                                                            'USER_BBDD'));

      --FI BUG 7352 - 10/06/2009    - DCT - Desarrollo PL Cierres
      IF verror > 0 THEN
         p_tab_error(f_sysdate, f_user, 'p_ejecutar_cobros_masivos', 1, 'INICIALIZA CONTEXT ',
                     verror);
         p_int_error(' p_ejecutar_cobros_masivos', ' inicializar contexto error ', 1, 0);
         error := 1;
      END IF;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'p_ejecutar_cobros_masivos', 2, 'INICIALIZA CONTEXT ',
                     SQLERRM);
         p_int_error(' p_ejecutar_cobros_masivos', ' inicializar contexto error ', 1, 0);
         error := 1;
   END;

   verror := pac_md_caja.f_upd_pagos_masivo(pcadena, pcadforpag, pcempres, pcusuari, psperson,
                                            pctipmov, pimovimi, piautliq, pipagsin,
                                            --pac_eco_monedas.f_obtener_cmoneda(pcmoneop),
                                            pcmoneop, piautliqp, pidifcambio, vmensajes);

   IF verror <> 0 THEN
      verror := f_proceslin(psproces,
                            SUBSTR('p_ejecutar_cobros_masivos; error=' || SQLERRM, 1, 120), 0,
                            v_numlin, 2);
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      IF psproces IS NOT NULL THEN
         error := f_proceslin(psproces,
                              SUBSTR('p_ejecutar_cobros_masivos; error incontrolado='
                                     || SQLERRM,
                                     1, 120),
                              0, v_numlin, 2);
      ELSE
         p_tab_error(f_sysdate, f_user, 'PROCESO =' || psproces, NULL,
                     SUBSTR('p_ejecutar_cobros_masivos; error incontrolado', 1, 500), SQLERRM);
      END IF;
END p_ejecutar_cobros_masivos;

/

  GRANT EXECUTE ON "AXIS"."P_EJECUTAR_COBROS_MASIVOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_EJECUTAR_COBROS_MASIVOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_EJECUTAR_COBROS_MASIVOS" TO "PROGRAMADORESCSI";
