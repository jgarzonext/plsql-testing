--------------------------------------------------------
--  DDL for Package PAC_MD_PARAM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_MD_PARAM" AS
/******************************************************************************
 NOMBRE: PAC_MD_PARAM
   PROP�SITO:   Parametros

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/03/2009    FAL               1. Creaci�n del package. Bug 7657
   2.0        11/03/2010    AMC               2. Bug 12124 Se a�ade la funci�n f_parempresa_nn
   3.0        11/01/2011    SMF               3. Se modifica los parametros para  hacerslo de entrada / salida (16683)
   4.0        23/02/2012    DRA               4. 0021378: CALI701-Comunicacion BONSAI (iAXIS-Bonsai-iAXIS)
******************************************************************************/

   /*******************************************************************************
   FUNCION f_parinstalacion_nn
    Devuelve el valor num�rico de un par�metro de instalaci�n

      param in p_cparam : c�digo del par�metro
      param out mensajes: mensajes de error
      return : valor num�rico del par�metro de instalaci�n p_cparam
   ********************************************************************************/
   FUNCTION f_parinstalacion_nn(p_cparam IN VARCHAR2, mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /*******************************************************************************
   FUNCION f_parinstalacion_tt
    Devuelve el valor cadena de un par�metro de instalaci�n

      param in p_cparam : c�digo del par�metro
      param out mensajes: mensajes de error
      return : valor cadena del par�metro de instalaci�n p_cparam
   ********************************************************************************/
   FUNCTION f_parinstalacion_tt(p_cparam IN VARCHAR2, mensajes IN OUT t_iax_mensajes)
      RETURN VARCHAR2;

   /*******************************************************************************
   FUNCION f_parinstalacion_ff
    Devuelve el valor fecha de un par�metro de instalaci�n

      param in p_cparam : c�digo del par�metro
      param out mensajes: mensajes de error
      return : valor fecha del par�metro de instalaci�n p_cparam
   ********************************************************************************/
   FUNCTION f_parinstalacion_ff(p_cparam IN VARCHAR2, mensajes IN OUT t_iax_mensajes)
      RETURN DATE;

   /*******************************************************************************
   FUNCION f_get_parproducto_n
    Devuelve el valor num�rico de un par�metro de instalaci�n
      param in psproduc  : c�digo producte
      param in pcparam   : c�digo del par�metro
      param out mensajes : mensajes de error
      return : valor fecha del par�metro de instalaci�n p_cparam
   ********************************************************************************/
   FUNCTION f_get_parproducto_n(
      psproduc IN NUMBER,
      pcparam IN VARCHAR2,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /*******************************************************************************
    FUNCION f_parempresa_nn
    Devuelve el valor num�rico de un par�metro de empresa

      param in p_cparam : c�digo del par�metro
      param out mensajes: mensajes de error
      return : valor num�rico del par�metro de instalaci�n p_cparam

      Bug 12124 - 11/03/2010 - AMC
   ********************************************************************************/
   FUNCTION f_parempresa_nn(p_cparam IN VARCHAR2, mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

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
END pac_md_param;

/

  GRANT EXECUTE ON "AXIS"."PAC_MD_PARAM" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MD_PARAM" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MD_PARAM" TO "PROGRAMADORESCSI";
