--------------------------------------------------------
--  DDL for Package PAC_IAX_ACTIVIDADES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_IAX_ACTIVIDADES" AS
/******************************************************************************
   NOMBRE:       PAC_IAX_ACTIVIDADES
   PROP�SITO:  Mantenimiento actividades. gesti�n

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        13/01/2009   XCG                1. Creaci�n del package. con una �nica funci�n: F_GET_ACTIVIRAMO (BUG 8510)
 ******************************************************************************/
   e_object_error EXCEPTION;
   e_param_error  EXCEPTION;

/**************************************************************************
        Funci�n que se retorna las actividades definidas de un ramo
        PARAM IN PCRAMO      : C�digo del Ramo
        PARAM OUT PRETCURSOR :SYS_REFCURSOR
        PARAM OUT mensaje    : Tratamiento del mensaje
   *************************************************************************/
   FUNCTION f_get_activiramo(pcramo IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;
END pac_iax_actividades;
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_IAX_ACTIVIDADES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_ACTIVIDADES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_ACTIVIDADES" TO "PROGRAMADORESCSI";
