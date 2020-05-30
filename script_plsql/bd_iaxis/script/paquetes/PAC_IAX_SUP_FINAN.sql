--------------------------------------------------------
--  DDL for Package PAC_IAX_SUP_FINAN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_IAX_SUP_FINAN" AS
/******************************************************************************
   NOMBRE:       PAC_IAX_SUP_FINAN
   PROP�SITO:  Funciones de supolementos para productos financieros

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        25/03/2008   JRH                1. Creaci�n del package.
   2.0        11/11/2009   JRB                2. Se a�ade ctipban a la aportaci�n
   3.0        07/06/2011   ICV                3. 0018632: ENSA102-Aportaciones a nivel diferente de tomador
******************************************************************************/
   FUNCTION iniciarsuple
      RETURN NUMBER;

--JRH 03/2008
    /*************************************************************************
       Valida y realiza una aportaci�n extraordinaria
       param in psseguro  : p�liza
       param in pnriesgo  : riesgo
       param in fecha     : fecha de la aportaci�n
       pimporte           : Importe de la aportaci�n
       pctipban           : Tipo de cuenta.
       pcbancar           : Cuenta bancaria.
       param out mensajes : mensajes de error
       pctipapor in       : Tipo de aportaci�n
       psperapor in       : Persona aportante
       ptipoaportante in  : Tipo de aportante
       return             : El objeto simulaci�n si todo hay ido bien
                            Nulo ha habido un error
    *************************************************************************/
   FUNCTION f_aportacion_extraordinaria(
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfecha IN DATE,
      pimporte IN NUMBER,
      pctipban IN NUMBER,
      pcbancar IN VARCHAR2,
      pcgarant IN NUMBER,
      pnmovimi OUT NUMBER,
      mensajes OUT t_iax_mensajes,
      pctipapor IN NUMBER DEFAULT NULL,
      psperapor IN NUMBER DEFAULT NULL,
      pcobrorec IN NUMBER DEFAULT 1,
      pccobban IN NUMBER DEFAULT NULL,
      ptipoaportante IN NUMBER DEFAULT NULL)
      RETURN NUMBER;

   /*************************************************************************
         Inicializa el objeto con los datos de simulaci�n
         param in psseguro  : p�liza
         param in pnriesgo  : riesgo
         param in fecha     : fecha del rescate
         param out mensajes : mensajes de error
         return             : El objeto simulaci�n si todo hay ido bien
                              Nulo ha habido un error
      *************************************************************************/--  FUNCTION f_Inicializar(psseguro in NUMBER,
     --                             pnriesgo in NUMBER,--                     pfecha in DATE,--                    mensajes  OUT T_IAX_MENSAJES) RETURN OB_IAX_SIMRESCATE;

   --JRH 03/2008
    /*************************************************************************
       Valida y tarifica una aportaci�n extraordinaria
       param in psseguro  : p�liza
       param in pnriesgo  : riesgo
       param in fecha     : fecha de la aportaci�n
       pimporte           : Importe de la aportaci�n
       capitalGaran out number           : Valor del capital garantizado
       param out mensajes : mensajes de error
       return             : 0 si todo ha ido bien 1 en caso contrario
    *************************************************************************/
   FUNCTION f_tarif_aport_extraordinaria(
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfecha IN DATE,
      pimporte IN NUMBER,
      pcgarant IN NUMBER,
      capitalgaran OUT NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   --Bug.: 18632 - ICV - 06/06/2011

   /*************************************************************************
   param in psseguro  : p�liza
   param out mensajes : mensajes de error
   return             : sys_refcursor
   *************************************************************************/
   FUNCTION f_get_aportantes(psseguro IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /*************************************************************************
   param in pctipapor  : Tipo Aportante
   param in psseguro : Identificador del seguro
   param out psperapor  : Sperson del aportante
   param out pcagente  : Cagente del aportante
   param out mensajes : mensajes de error
   return             : 0 correcto 1 error
   *************************************************************************/
   FUNCTION f_get_infoaportante(
      pctipapor IN NUMBER,
      psseguro IN NUMBER,
      psperapor OUT NUMBER,
      pcagente OUT NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;
--Fi Bug.: 18632
END pac_iax_sup_finan;
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_IAX_SUP_FINAN" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_SUP_FINAN" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_SUP_FINAN" TO "PROGRAMADORESCSI";
