--------------------------------------------------------
--  DDL for Package PAC_IAX_CBANCAR_SEG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_IAX_CBANCAR_SEG" AS
/******************************************************************************
   NOMBRE:    PAC_IAX_CBANCAR_SEG
   PROP�SITO: Contiene el m�dulo de Cuentas bancarias de la capa IAX

   REVISIONES:
   Ver        Fecha       Autor            Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/01/2009  MCC              1. Creaci�n del package.
******************************************************************************/

   /*************************************************************************
      Retorna un cursor con el histirico de cuentas asociadas a una p�liza
      param in PSSEGURO : c�digo seguro
      param out PRESULT  : cursor de resultados
      param out MENSAJES : mensajes de error
   *************************************************************************/
   FUNCTION f_get_cbancar_seghis(psseguro IN NUMBER, presult OUT sys_refcursor,
   mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
        Retorna la �ltima cuenta de cargo asociada a la p�liza
        param in PSSEGURO  : c�digo seguro
        param in DATE      : fecha
        param out PCBANCAR : cuenta bancaria
        param out PCBANCOB : cuenta de cobro
     *************************************************************************/
   FUNCTION f_get_cbancar_seg(psseguro IN NUMBER, pfecha IN DATE, pcbancar OUT VARCHAR2,
   pcbancob OUT VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
       La funci�n se encarga de grabar los datos de la cuenta de cargo
       param in PSSEGURO : c�digo seguro
       param in PCBANCOB : cuenta de cobro
    *************************************************************************/
   FUNCTION f_set_cbancar_seg(psseguro IN NUMBER, pcbancob IN VARCHAR2,
   mensajes OUT t_iax_mensajes)
      RETURN NUMBER;
END pac_iax_cbancar_seg;
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_IAX_CBANCAR_SEG" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_CBANCAR_SEG" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_CBANCAR_SEG" TO "PROGRAMADORESCSI";
