--------------------------------------------------------
--  DDL for Package PAC_MD_AGENSEGU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_MD_AGENSEGU" AS
/******************************************************************************
   NOMBRE:       pac_md_agensegu
   PROP�SITO:  Gesti�n de los apuntes de la agenda de una p�liza

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        05/03/2009   JSP                1. Creaci�n del package.
   2.0        09/07/2009   DCT                2. Modificacion funciones. A�adir nuevo parametro pncertif
******************************************************************************/

   /*************************************************************************
   Funci�n F_GET_ConsultaApuntes
   Obtiene la informaci�n sobre apuntes de la agenda dependiendo de los par�metros de entrada
   param in Pctipreg : concepto de apunte
   param in Pnpoliza : n� de p�liza relacionada al apunte
   param in pncertif: n� de certificado de la p�liza
   param in pnlinea : n� de apunte relacionado a la p�liza
   param in Pcestado: estado del apunte (0:Autom�tico, 1:Manual)
   param in Pfapunte: fecha alta del apunte
   param in Pcusuari: usuario que realiza el alta del apunte
   param in Psseguro: id. del seguro relacionado al apunte
   param out mensajes   : mensajes de error
          return              : sys_Refcursor
   *************************************************************************/
   FUNCTION f_get_consultaapuntes(
      pctipreg IN NUMBER,
      pnpoliza IN NUMBER,
      pncertif IN NUMBER,
      pnlinea IN NUMBER,
      pcestado IN NUMBER,
      pfapunte IN DATE,
      pcusuari IN VARCHAR2,
      psseguro IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor;

    /*************************************************************************
   Funci�n F_GET_DatosApunte
   Recupera la informaci�n de un apunte de la agenda en concreto en funci�n de los par�metros de entrada psseguro y pnlinea
   param in Psseguro: id. del seguro relacionado al apunte
   param in Pnlinea: n� de apunte relacionado a la p�liza
   param out mensajes   : mensajes de error
          return              : ob_iax_agensegu
    *************************************************************************/
   FUNCTION f_get_datosapunte(
      psseguro IN NUMBER,
      pnlinea IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN ob_iax_agensegu;

    /*************************************************************************
   Funci�n F_GET_ApuntesPendientes
   Valida si existen apuntes pendientes en la agenda para el usuario a d�a de hoy.
      param out mensajes   : mensajes de error
          return              : Numero de apuntes pendientes
    *************************************************************************/
   FUNCTION f_get_apuntespendientes(mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
   Funci�n F_SET_DatosApunte
   Inserta o modifica la informaci�n de un apunte manual en la agenda de p�lizas en funci�n del par�metro de entrada pmodo
   param in Pnpoliza: n� de p�liza relacionada al apunte
   param in pncertif: n� de certificado de la p�liza
   param in Psseguro: id. del seguro relacionado al apunte
   param in Pnlinea: n� de apunte relacionado a la p�liza
   param in Pttitulo: T�tulo del apunte en la agenda
   param in Pttextos: Texto del apunte en la agenda
   param in Pctipreg: concepto del apunte
   param in Pcestado: estado del apunte (0:Pendiente, 1:Finalizado, 2:Anulado). Por defecto 0.
   param in Pfapunte: fecha alta del apunte. Por defecto f_sysdate.
   param in Pffinali: fecha finalizaci�n del apunte. Por defecto NULL
   param in Pmodo in NUMBER: modo de acceso a la funci�n (0:Alta, 1:Modificaci�n)
   param out mensajes   : mensajes de error
          return              : 0 si ha ido bien
                                numero error si ha ido mal
   *************************************************************************/
   FUNCTION f_set_datosapunte(
      pnpoliza IN NUMBER,
      psseguro IN NUMBER,
      pnlinea IN NUMBER,
      pttitulo IN VARCHAR2,
      pttextos IN VARCHAR2,
      pctipreg IN NUMBER,
      pcestado IN NUMBER,
      pfapunte IN DATE,
      pffinali IN DATE,
      pmodo IN NUMBER,
      pmode IN VARCHAR2 DEFAULT 'POL',
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
   Funci�n F_Anula_Apunte
   Realiza la baja l�gica de un apunte manual en la agenda de p�lizas en funci�n de los par�metros de entrada psseguro y pnlinea
   param in Psseguro: id. del seguro relacionado al apunte
   param in pnlinea : n� de apunte relacionado a la p�liza
      param out mensajes   : mensajes de error
          return              : 0 si ha ido bien
                                numero error si ha ido mal
   *************************************************************************/
   FUNCTION f_anula_apunte(
      psseguro IN NUMBER,
      pnlinea IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;
END pac_md_agensegu;

/

  GRANT EXECUTE ON "AXIS"."PAC_MD_AGENSEGU" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MD_AGENSEGU" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MD_AGENSEGU" TO "PROGRAMADORESCSI";
