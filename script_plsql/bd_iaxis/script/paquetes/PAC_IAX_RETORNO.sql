--------------------------------------------------------
--  DDL for Package PAC_IAX_RETORNO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_IAX_RETORNO" AS
   /******************************************************************************
     NOMBRE:     PAC_IAX_RETORNO
     PROP�SITO:  Package para gestionar los retornos de convenios beneficiarios

     REVISIONES:
     Ver        Fecha        Autor             Descripci�n
     ---------  ----------  ---------------  ------------------------------------
     1.0        03/09/2012   JMF             0022701: LCOL: Implementaci�n de Retorno
     2.0        28/11/2012   JMF             0024892 LCOL_C003-LCOL Q-trackers de Retornos
     3.0        22/01/2013   JMF             0025815: LCOL: Cambios para Retorno seg?n reuni?n con Comercial
   ******************************************************************************/
   e_object_error EXCEPTION;
   e_param_error  EXCEPTION;

   -- Esta funci�n nos devuelve un VARCHAR2 con la lista de los convenios en funci�n de una s�rie de valores que recibe por par�metros.
   -- BUG 0025691 - 15/01/2013 - JMF: afegir sucursal i adn
   FUNCTION f_get_lstconvenios(
      pccodconv IN VARCHAR2,
      ptdesconv IN VARCHAR2,
      pfinivig IN DATE,
      pffinvig IN DATE,
      pcramo IN NUMBER,
      psproduc IN NUMBER,
      pcagente IN NUMBER,
      ptnombnf IN VARCHAR2,
      psucursal IN NUMBER DEFAULT NULL,
      padnsuc IN NUMBER DEFAULT NULL,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

   -- Esta funci�n nos devuelve un VARCHAR2 con los datos del convenio que se ha seleccionado en pantalla
   FUNCTION f_get_datconvenio(pidconvenio IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

   -- Esta funci�n nos devuelve un VARCHAR2 con los datos del producto del convenio que se ha seleccionado en pantalla
   FUNCTION f_get_prodconvenio(
      pidconvenio IN NUMBER,
      pcramo OUT NUMBER,
      ptramo OUT VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

   -- Esta funci�n nos devuelve un VARCHAR2 con los datos del agente del convenio que se ha seleccionado en pantalla
   FUNCTION f_get_ageconvenio(pidconvenio IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

   -- Esta funci�n nos devuelve un VARCHAR2 con los datos del beneficiario del convenio que se ha seleccionado en pantalla
   FUNCTION f_get_benefconvenio(pidconvenio IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

   -- Esta funci�n borra datos del agente del convenio
   FUNCTION f_del_ageconvenio(
      pidconvenio IN NUMBER,
      pcagente IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   -- Esta funci�n borra datos del beneficiario del convenio
   FUNCTION f_del_benefconvenio(
      pidconvenio IN NUMBER,
      psperson IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   -- Esta funci�n actualiza datos convenio
   -- BUG 0025815 - 22/01/2013 - JMF: afegir sperson
   FUNCTION f_set_datconvenio(
      pidconvenio IN NUMBER,
      pccodconv IN VARCHAR2,
      ptdesconv IN VARCHAR2,
      pfinivig IN DATE,
      pffinvig IN DATE,
      psperson IN NUMBER,
      pidconvenio_out OUT NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   -- Borra la lista actual de productos asociados a un convenio,
   -- y a�ade los productos de la lista que le llegan de la pantalla.
   FUNCTION f_set_prodconvenio(
      pidconvenio IN NUMBER,
      plistaconve IN t_iax_info,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   -- Esta funci�n actualiza datos agente convenio
   FUNCTION f_set_ageconvenio(
      pidconvenio IN NUMBER,
      pcagente IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   -- Esta funci�n actualiza datos beneficiario convenio
   -- BUG 0025580 - 08/01/2013 - JMF
   FUNCTION f_set_benefconvenio(
      pidconvenio IN NUMBER,
      psperson IN NUMBER,
      ppretorno IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   -- Esta funci�n nos devuelve cursor con los convenios
   FUNCTION f_get_rtnconvenios(
      psseguro IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'EST',
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

   -- ini BUG 0024892 - 28/11/2012 - JMF
   -- Esta funci�n realiza acciones sobre los campos obligatorios
   -- accion 0 = Validar si falta informacion obligatoria
   -- accion 1 = Borrar estructura del convenio.
   FUNCTION f_oblig_convenio(
      pidconvenio IN NUMBER,
      paccion IN NUMBER,
      presult OUT VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   -- Bug 29324/161283 - 12/12/2013 - AMC
   FUNCTION f_busca_convenioretorno(pidconvenio OUT NUMBER, mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   --Bug 29324/166247 - 18/02/2014 - AMC
   FUNCTION f_busca_convenioretorno_pol(
      pidconvenio OUT NUMBER,
      pdonde OUT NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;
END pac_iax_retorno;

/

  GRANT EXECUTE ON "AXIS"."PAC_IAX_RETORNO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_RETORNO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_RETORNO" TO "PROGRAMADORESCSI";
