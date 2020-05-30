--------------------------------------------------------
--  DDL for Package PAC_ACTIVIDADES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_ACTIVIDADES" AS
/******************************************************************************
   NOMBRE:       PAC_ACTIVIDADES
   PROP�SITO:  Mantenimiento actividades. gesti�n

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        29/12/2008   XCG                1. Creaci�n del package. con una �nica funci�n: F_GET_ACTIVIRAMO (BUG 8510)
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
      RETURN sys_refcursor;
END pac_actividades;
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_ACTIVIDADES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_ACTIVIDADES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_ACTIVIDADES" TO "PROGRAMADORESCSI";
