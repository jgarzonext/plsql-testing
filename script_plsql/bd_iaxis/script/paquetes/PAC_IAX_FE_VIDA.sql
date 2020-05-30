--------------------------------------------------------
--  DDL for Package PAC_IAX_FE_VIDA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_IAX_FE_VIDA" AS
/******************************************************************************
   NOMBRE:       PAC_MD_SUPLEMENTOS
   PROP�SITO:  Permite crear suplementos

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        07/09/2010   ETM              1. Creaci�n del package.--0015884: CEM - Fe de Vida. Nuevos paquetes PLSQL
   2.0        19/01/2011   APD              2. Bug 15289 : Cartas Fe de Vida
   ******************************************************************************/
-- Bug 15289 - APD - 21/01/2011 - se crea la funcion
   /*************************************************************************
   Funci�n  F_PERCEPTORES_RENTA
   Devuelve las personas que reciben la renta.
   Solo se mostraran aquellas personas a las cuales se les ha enviado la carta de
   fe de vida previamente y que aun no han confirmado su fe de vida
      param in psseguro: identificador del seguro
      param out mensajes : mesajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_perceptores_renta(psseguro IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /*******************************************************************************
   FUNCION  F_GET_DATOS_FE_VIDA
   -funci�n qdevolver� un REF CURSOR con las p�lizas que deben enviar la carta de fe de vida.
   Par�metros:
    Entrada :
    1.   psproces. Identificador del proceso.
    2.   pcempres. Identificador de la empresa. Obligatorio.
    3.   pcramo. Identificador del ramo.
    4.   psproduc. Identificador del producto.
    5.   pcagente. Identificador del agente.
    6.   pnpoliza. N�mero de p�liza.
    7.   pncertif. N�mero de certificado.
    8.   pfhasta. Fecha hasta la cual se realiza la solicitud de fe de vida. Obligatorio.
    9.   pngenerar. Identificador de generaci�n de cartas. 0.-Se generan las cartas por primera vez;1.-Se vuelve a reimprimir el listado (map). Obligatorio (valor por defecto 0)
    10.  pnpantalla. Identificador de visualizaci�n o no del resultado de la select por pantalla. 0.-No se visualiza el resultado de la select por pantalla (el resultado de la select se utiliza en el map);1.-S� se visualiza el resultado de la select por pantalla. Obligatorio (valor por defecto 0)
    pngenerar. Identificador de generaci�n de cartas. 0.-Se generan las cartas por primera vez;1.-Se vuelve a reimprimir el listado (map). Obligatorio (valor por defecto 0)

    Salida :
      Mensajes T_IAX_MENSAJES

   Retorna : REF CURSOR.
   ********************************************************************************/
   FUNCTION f_get_datos_fe_vida(
      psproces IN NUMBER,
      pcempres IN NUMBER,
      pcramo IN NUMBER,
      psproduc IN NUMBER,
      pcagente IN NUMBER,
      pnpoliza IN NUMBER,
      pncertif IN NUMBER,
      pfhasta IN DATE,
      pngenerar IN NUMBER DEFAULT 0,
      pnpantalla IN NUMBER DEFAULT 0,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /*******************************************************************************
   FUNCION  F_GENERAR_FE_VIDA
   -funci�n que genera el fichero con las p�lizas a las cuales se les debe enviar la carta de fe de vida
       y crea un apunte en la Agenda de dichas p�lizas indicando que se ha enviado la carta.
   -Llamar� a la funci�n PAC_MD_FE_DE_VIDA.F_GENERAR_FE_VIDA.
   Par�metros:
    Entrada :
        1.    psproces IN. Identificador del proceso. Obligatorio si pngenerar = 1.
        2.    pcempres IN. Identificador de la empresa. Obligatorio.
        3.    pcramo IN. Identificador del ramo.
        4.    psproduc IN. Identificador del producto.
        5.    pcagente IN. Identificador del agente.
        6.    pnpoliza IN. N�mero de p�liza.
        7.    pncertif IN. N�mero de certificado.
        8.    pfhasta. IN Fecha hasta la cual se realiza la solicitud de fe de vida. Obligatorio.
        9.    pngenerar IN. Identificador de generaci�n de cartas. 0.-Se generan las cartas por primera vez;1.-Se vuelve a reimprimir el listado (map). Obligatorio (valor por defecto 0)
   Salida :
     10.    sproces OUT. Identificador del proceso.
      Mensajes T_IAX_MENSAJES

   Retorna : number 0 ok, 1 error
   ********************************************************************************/
   FUNCTION f_generar_fe_vida(
      psproces IN NUMBER,
      pcempres IN NUMBER,
      pcramo IN NUMBER,
      psproduc IN NUMBER,
      pcagente IN NUMBER,
      pnpoliza IN NUMBER,
      pncertif IN NUMBER,
      pfhasta IN DATE,
      pngenerar IN NUMBER DEFAULT 0,
      sproces OUT NUMBER,
      pnomfich OUT VARCHAR2,
      vtimp OUT t_iax_impresion,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

/*******************************************************************************
   FUNCION  F_GET_CONSULTA_FE_VIDA
   -funci�n que devolver� un REF CURSOR con las p�lizas que tienen un apunte en la Agenda de tipo 31
   -Llamar� a la funci�n PAC_MD_FE_DE_VIDA.F_GET_CONSULTA_FE_VIDA
   Par�metros:
    Entrada :
    1.   pcidioma. Identificador del idioma.
    2.   pcempres. Identificador de la empresa. Obligatorio.
    3.   psproduc. Identificador del producto.
    4.   pfinicial. Fecha inicio.
    5.   pffinal. Fecha final
    6.   pcramo. Identificador del ramo.
    7.   pcagente. Identificador del agente.
    8.   pcagrpro. Identificador de la agrupaci�n de la p�liza.

    Salida :
      Mensajes T_IAX_MENSAJES

   Retorna : REF CURSOR.
   ********************************************************************************/
   FUNCTION f_get_consulta_fe_vida(
      pcidioma IN NUMBER,
      pcempres IN NUMBER,
      psproduc IN NUMBER,
      pfinicial IN DATE,
      pffinal IN DATE,
      pcramo IN NUMBER,
      pcagente IN NUMBER,
      pcagrpro IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /*******************************************************************************
     FUNCION   F_GET_RENTAS_BLOQUEADAS
     -funci�n que devuelve las p�lizas con rentas bloqueadas debido a que no se ha certificado todav�a la fe de vida de los titulares del contrat
     -Llamar� a la funci�n PAC_MD_FE_DE_VIDA.F_GET_RENTAS_BLOQUEADAS
     Par�metros:
      Entrada :

          1.  pcidioma. Identificador del idioma.
          2.  pcempres. Identificador de la empresa. Obligatorio.
          3.  psproduc. Identificador del producto.
          4.  pfinicial. Fecha inicio.
          5.  pffinal. Fecha final
          6.  pcramo. Identificador del ramo.
          7.  pcagente. Identificador del agente.
          8.  pcagrpro. Identificador de la agrupaci�n de la p�liza.

      Salida :
        Mensajes T_IAX_MENSAJES

     Retorna : REF CURSOR.
     ********************************************************************************/
   FUNCTION f_get_rentas_bloqueadas(
      pcidioma IN NUMBER,
      pcempres IN NUMBER,
      psproduc IN NUMBER,
      pfinicial IN DATE,
      pffinal IN DATE,
      pcramo IN NUMBER,
      pcagente IN NUMBER,
      pcagrpro IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /*******************************************************************************
     FUNCION  F_CONFIRMAR_FE_VIDA
     -funci�n que se encargar� de validar y confirmar la certificaci�n de fe de vida de los titulares de una p�liza
         y crea un apunte en la Agenda de dichas p�lizas indicando que se ha enviado la carta.
     -Llamar� a la funci�n funci�n PAC_MD_FE_DE_VIDA.F_CONFIRMAR_FE_VIDA.
     Par�metros:
      Entrada :

          1.  pnpoliza : number N�mero de p�liza.
          2.  pncertif : number N�mero de certificado.
          3.  ptlista : sperson de los perceptores que han presentado su fe de vida
      Salida :
        Mensajes T_IAX_MENSAJES

     Retorna : number 0 ok, 1 error
     ********************************************************************************/
   FUNCTION f_confirmar_fe_vida(
      pnpoliza IN NUMBER,
      pncertif IN NUMBER,
      ptlista IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;
END pac_iax_fe_vida;
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_IAX_FE_VIDA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_FE_VIDA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_FE_VIDA" TO "PROGRAMADORESCSI";
