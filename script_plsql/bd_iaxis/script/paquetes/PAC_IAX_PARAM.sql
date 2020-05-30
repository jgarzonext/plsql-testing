--------------------------------------------------------
--  DDL for Package PAC_IAX_PARAM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_IAX_PARAM" AUTHID CURRENT_USER AS
/******************************************************************************
   NOMBRE:      PAC_IAX_PARAM
   PROP�SITO:   Parametros

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/03/2009    FAL               1. Creaci�n del package. Bug 7657
   2.0        23/02/2012    DRA               2. 0021378: CALI701-Comunicacion BONSAI (iAXIS-Bonsai-iAXIS)
******************************************************************************/

   /*******************************************************************************
   FUNCION f_parinstalacion_nn
    Devuelve el valor num�rico de un par�metro de instalaci�n

      param in p_cparam : c�digo del par�metro
      param out mensajes: mensajes de error
      return : valor num�rico del par�metro de instalaci�n p_cparam
   ********************************************************************************/
   FUNCTION f_parinstalacion_nn(p_cparam IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*******************************************************************************
   FUNCION f_parinstalacion_tt
    Devuelve el valor cadena de un par�metro de instalaci�n

      param in p_cparam : c�digo del par�metro
      param out mensajes: mensajes de error
      return : valor cadena del par�metro de instalaci�n p_cparam
   ********************************************************************************/
   FUNCTION f_parinstalacion_tt(p_cparam IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN VARCHAR2;

   /*******************************************************************************
   FUNCION f_parinstalacion_ff
    Devuelve el valor fecha de un par�metro de instalaci�n

      param in p_cparam : c�digo del par�metro
      param out mensajes: mensajes de error
      return : valor fecha del par�metro de instalaci�n p_cparam
   ********************************************************************************/
   FUNCTION f_parinstalacion_ff(p_cparam IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN DATE;

   /*******************************************************************************
    FUNCION f_parempresa_n
    Devuelve el valor num�rico de un par�metro de empresa

      param in p_cparam : c�digo del par�metro
      param in p_cempres : codigo de la empresa
      param out mensajes: mensajes de error
      return : valor num�rico del par�metro de instalaci�n p_cparam

      Bug 19049/89656- 15/07/2011 - AMC
   ********************************************************************************/
   FUNCTION f_parempresa_n(
      p_cparam IN VARCHAR2,
      p_cempres IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   FUNCTION f_parempresa_t(
      p_cparam IN VARCHAR2,
      p_cempres IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN VARCHAR2;

   FUNCTION f_parempresa_f(
      p_cparam IN VARCHAR2,
      p_cempres IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN DATE;

   FUNCTION f_pargaranpro_n(
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      pcgarant IN NUMBER,
      pcparam IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;
END pac_iax_param;

/

  GRANT EXECUTE ON "AXIS"."PAC_IAX_PARAM" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_PARAM" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_PARAM" TO "PROGRAMADORESCSI";
