--------------------------------------------------------
--  DDL for Package Body PAC_IAX_ACTIVIDADES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "AXIS"."PAC_IAX_ACTIVIDADES" AS
/******************************************************************************
   NOMBRE:       PAC_IAX_ACTIVIDADES
   PROP�SITO:  Mantenimiento actividades. gesti�n

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        13/01/2009   XCG                1. Creaci�n del package. con una �nica funci�n: F_GET_ACTIVIRAMO (BUG 8510)
 ******************************************************************************/
/**************************************************************************
        Funci�n que se retorna las actividades definidas de un ramo
        PARAM IN PCRAMO      : C�digo del Ramo
        PARAM OUT PRETCURSOR :SYS_REFCURSOR
        PARAM OUT mensajes    : Tratamiento del mensaje
   *************************************************************************/
   FUNCTION f_get_activiramo(pcramo IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      v_cursor       sys_refcursor;
   BEGIN
      --LLAMADA A LA  FUNCI�N
      v_cursor := pac_md_actividades.f_get_activiramo(pcramo, mensajes);
      RETURN v_cursor;
   END f_get_activiramo;
END pac_iax_actividades;

/

  GRANT EXECUTE ON "AXIS"."PAC_IAX_ACTIVIDADES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_ACTIVIDADES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_ACTIVIDADES" TO "PROGRAMADORESCSI";
