--------------------------------------------------------
--  DDL for Package PAC_IAX_PARPERSONA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_IAX_PARPERSONA" AS
   /******************************************************************************
        NOMBRE:       PAC_IAX_PARPERSONA
        PROP�SITO:  Funciones para gestionar los parametros de personas

        REVISIONES:
        Ver        Fecha        Autor             Descripci�n
        ---------  ----------  ---------------  ------------------------------------
        1.0        30/01/2013   AMC                1. Creaci�n del package.
        ******************************************************************************/
   FUNCTION f_get_detparam(
      pcodigo IN VARCHAR2,
      pcondicion IN VARCHAR2,
      pcidioma IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;
END pac_iax_parpersona;

/

  GRANT EXECUTE ON "AXIS"."PAC_IAX_PARPERSONA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_PARPERSONA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_PARPERSONA" TO "PROGRAMADORESCSI";
