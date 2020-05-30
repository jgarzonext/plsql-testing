--------------------------------------------------------
--  DDL for Package Body PAC_ACTIVIDADES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "AXIS"."PAC_ACTIVIDADES" AS
/******************************************************************************
   NOMBRE:       PAC_ACTIVIDADES
   PROP�SITO:  Mantenimiento actividades. gesti�n

   REVISIONES:
   Ver   Fecha        Autor            Descripci�n
   ----  ----------  ---------------  ------------------------------------
   1.0   29/12/2008   XCG              1. Creaci�n del package. con una �nica funci�n: F_GET_ACTIVIRAMO (BUG 8510)
 ******************************************************************************/
/**************************************************************************
        Funci�n que se retorna las actividades definidas de un ramo
        PARAM IN PCRAMO      : C�digo del Ramo
        PARAM IN PCACTIVI    : C�digo de la Actividad
        PARAM OUT PRETCURSOR :SYS_REFCURSOR
        PARAM OUT NERROR     : C�digo de error
        PARAM OUT mensaje    : C�digo de error (0: operaci�n correcta sino 1)
   *************************************************************************/
   FUNCTION f_get_activiramo(pcramo IN NUMBER, nerror OUT NUMBER)
      RETURN sys_refcursor IS
      v_cursor       sys_refcursor;
      vobjectname    VARCHAR2(500) := 'pac_actividades.f_get_activiramo';
      vparam         VARCHAR2(500) := 'par�metros - pcramo: ' || pcramo;
      vpasexec       NUMBER := 1;
   BEGIN
      OPEN v_cursor FOR
         SELECT   tactivi, cactivi
             FROM activisegu
            WHERE cramo = pcramo
              AND cidioma = pac_md_common.f_get_cxtidioma
         ORDER BY cactivi;

      nerror := 0;
      RETURN v_cursor;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, USER, vobjectname, 0, 'OTHERS cursor',
                     SQLERRM || ' ' || SQLCODE);

         IF v_cursor%ISOPEN THEN
            CLOSE v_cursor;
         END IF;

         nerror := 101144;   /*Error al modificar en la taula ACTIVISEGU*/
         RETURN v_cursor;
   END f_get_activiramo;
END pac_actividades;

/

  GRANT EXECUTE ON "AXIS"."PAC_ACTIVIDADES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_ACTIVIDADES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_ACTIVIDADES" TO "PROGRAMADORESCSI";
