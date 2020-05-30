--------------------------------------------------------
--  DDL for Package PAC_MD_ACTIVIDADES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_MD_ACTIVIDADES" AS
/******************************************************************************
   NOMBRE:       PAC_MD_ACTIVIDADES
   PROP�SITO:  Mantenimiento actividades. gesti�n

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        13/01/2009   XCG                1. Creaci�n del package. con una �nica funci�n: F_GET_ACTIVIRAMO
 ******************************************************************************/
   e_object_error EXCEPTION;
   e_param_error  EXCEPTION;

/**************************************************************************
        Funci�n que se retorna las actividades definidas de un ramo
        PARAM IN PCRAMO      : C�digo del Ramo
        PARAM OUT PRETCURSOR :SYS_REFCURSOR
        PARAM OUT mensajes    : Tratamiento del mensaje
   *************************************************************************/
   FUNCTION f_get_activiramo(pcramo IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;
END pac_md_actividades;
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_MD_ACTIVIDADES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MD_ACTIVIDADES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MD_ACTIVIDADES" TO "PROGRAMADORESCSI";
