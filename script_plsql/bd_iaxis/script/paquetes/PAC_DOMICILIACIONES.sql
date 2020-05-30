--------------------------------------------------------
--  DDL for Package PAC_DOMICILIACIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_DOMICILIACIONES" AS
/******************************************************************************
   NOMBRE:       PAC_DOMICILIACIONES
   PROP�SITO:  Mantenimiento domiciliaciones capa l�gica

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        26/02/2009   XCG                1. Creaci�n del package.
   2.0        27/08/2010   FAL                2. 0015750: CRE998 - Modificacions m�dul domiciliacions
   3.0        19/07/2011   JMP                3. 0018825: LCOL_A001- Modificacion de la pantalla de domiciliaciones
   4.0        03/04/2012   JGR                4. 0021718: MDP_A001-Domiciliaciones: modificaciones generales - 0111176
   5.0        17/07/2012   JGR                5. 0022753: MDP_A001-Cierre de remesa

 ******************************************************************************/
/**************************************************************************
        Funci�n que inserta las domiciliaciones
        PARAM IN PSPROCES   : n� proceso de domiciliaci�n
        PARAM IN PCEMPRES   : n� empresa
        PARAM IN PEFECTO    : fecha efecto l�mite de recibos
        PARAM IN PFFECCOB   : fecha de remesea de la domiciliaci�n
        PARAM IN PCRAMO     : n� ramo
        PARAM IN PSPRODUC   : n� producto
        PARAM IN PSPRODOM   : n� proceso selecci�n productos a domiciliar
        PARAM IN PIDIOMA    : idioma
        PARAM OUT PNOK      : n� recibos domiciliados correctamente
        PARAM OUT PNKO      : n� recibos domiciliados incorrectamente
        PARAM OUT PPATH     : Direcci�n donde se guardan los ficheros generados
            NomMap1 OUT VARCHAR2, --Path Completo Fichero de map 312,
            NomMap2 OUT VARCHAR2, --Path Completo Fichero de map 312,
            NomDR OUT VARCHAR2,   --Path Completo Fichero de DR,
        PARAM OUT NERROR    : C�digo de error (0: opraci�n correcta sino error)

   *************************************************************************/
   FUNCTION f_domiciliar(
      psproces IN NUMBER,
      pcempres IN NUMBER,
      pfefecto IN DATE,
      pffeccob IN DATE,
      pcramo IN NUMBER,
      psproduc IN NUMBER,
      -- Bug 15750 - FAL - 27/08/2010 - Permitir seleccionar varios productos en el proceso domiciliaci�n
      psprodom IN NUMBER,
      -- FI Bug 15750 - FAL - 27/08/2010 - Permitir seleccionar varios productos en el proceso domiciliaci�n
      -- BUG 18825 - 19/07/2011 - JMP
      pccobban IN NUMBER,
      pcbanco IN NUMBER,
      pctipcta IN NUMBER,
      pfvtotar IN VARCHAR2,
      pcreferen IN VARCHAR2,
      pdfefecto IN DATE,
      -- FIN BUG 18825 - 19/07/2011 - JMP

      --BUG 23645 - 07/09/2012 - JTS
      pcagente IN NUMBER,
      ptagente IN VARCHAR2,
      pnnumide IN VARCHAR2,
      pttomador IN VARCHAR2,
      pnrecibo IN NUMBER,
      --FI BUG 23645
      pidioma IN NUMBER,
      pnok OUT NUMBER,
      pnko OUT NUMBER,
      ppath OUT VARCHAR2,
      nommap1 OUT VARCHAR2,   --Path Completo Fichero de map 312,
      nommap2 OUT VARCHAR2,   --Path Completo Fichero de map 312,
      nomdr OUT VARCHAR2,   --Path Completo Fichero de DR,
      vsproces OUT NUMBER)
      RETURN NUMBER;

/**************************************************************************
        Funci�n que se retorna la informaci�n de domiciliaciones
        PARAM IN PSPROCES   : n� proceso de domiciliaci�n
        PARAM IN PCEMPRES   : n� empresa
        PARAM IN PCRAMO     : n� ramo
        PARAM IN PSPRODUC   : n� producto
        PARAM IN PEFECTO    : fecha efecto l�mite de recibos
        PARAM IN PIDIOMA    : idioma
        PARAM OUT PSQUERY   : consulta a realizar construida en funci�n de los parametros
        PARAM IN PCCOBBAN   : C�digo de cobrador bancario
        PARAM IN PCBANCO    : C�digo de banco
        PARAM IN PCTIPCTA   : Tipo de cuenta
        PARAM IN PFVTOTAR   : Fecha de vencimiento tarjeta
        PARAM IN PCREFEREN  : C�digo de referencia
        RETURN              : C�digo de error (0: opraci�n correcta sino error)

   *************************************************************************/
   FUNCTION f_get_domiciliacion(
      psproces IN NUMBER,
      pcempres IN NUMBER,
      pcramo IN NUMBER,
      psproduc IN NUMBER,
      pfefecto IN DATE,
      pidioma IN NUMBER,
      psquery OUT VARCHAR2,
      psprodom IN NUMBER DEFAULT NULL,
      -- BUG 18825 - 19/07/2011 - JMP
      pccobban IN NUMBER DEFAULT NULL,
      pcbanco IN NUMBER DEFAULT NULL,
      pctipcta IN NUMBER DEFAULT NULL,
      pfvtotar IN VARCHAR2 DEFAULT NULL,
      pcreferen IN VARCHAR2 DEFAULT NULL,
      pdfefecto IN DATE DEFAULT NULL,
      pcagente IN NUMBER DEFAULT NULL,   -- C�digo Mediador -- 8. 0021718 / 0111176 - Inicio
      ptagente IN VARCHAR2 DEFAULT NULL,   -- Nombre Mediador
      pnnumide IN VARCHAR2 DEFAULT NULL,   -- Nif Tomador
      pttomador IN VARCHAR2 DEFAULT NULL,   -- Nombre Tomador
      pnrecibo IN NUMBER DEFAULT NULL   -- Recibo           -- 8. 0021718 / 0111176 - Fin
                                     )
      -- FIN BUG 18825 - 19/07/2011 - JMP
   RETURN NUMBER;

   FUNCTION ff_nombre_entidad(pcbancar VARCHAR2, pctipban NUMBER)
      RETURN VARCHAR;

/*************************************************************************
 --8. 0021718: MDP_A001-Domiciliaciones: modificaciones generales - 0111176

       Funcion para obtener los datos de la cabecera de domiciliaciones
       param in psproces   : C�digo de proceso (n�mero de remesa)
       param in pcempres   : C�digo de empresa
       param in pccobban   : C�digo de cobrador bancario
       param in pidioma    : C�digo de idioma
       param in pfinirem   : Fecha inicio remesa
       param in pffinrem   : Fecha fin remesa
       param out psquery   : Query
       return           : 0 indica cambio realizado correctamente
                          <> 0 indica error
*************************************************************************/
   FUNCTION f_get_domiciliacion_cab(
      pcempres IN NUMBER,
      psproces IN NUMBER,
      pccobban IN NUMBER,
      pidioma IN NUMBER,
      pfinirem IN DATE,
      pffinrem IN DATE,
      psquery OUT VARCHAR2)
      RETURN NUMBER;

/*************************************************************************
 --8. 0021718: MDP_A001-Domiciliaciones: modificaciones generales - 0111176

       Funcion para modificar el cabecera de domiciliaciones
       param in pcempres   : C�digo de empresa
       param in psproces   : C�digo de proceso (n�mero de remesa)
       param in pccobban   : C�digo de cobrador bancario
       param in pfefecto   : Fecha de efecto de la remesa
       param in ptfileenv  : Nombre del fichero de env�o
       param in ptfiledev  : Nombre del fichero de devoluci�n
       param in pcestdom   : Estado de la remesa
       param in pcremban   : N�mero de remesa interna de la entidad bancaria
       param in pidioma    : C�digo de idioma
       return              : 0 indica cambio realizado correctamente
                          <> 0 indica error
*************************************************************************/
   FUNCTION f_set_domiciliacion_cab(
      pcempres IN NUMBER,
      psproces IN NUMBER,
      pccobban IN NUMBER,
      pfefecto IN DATE,
      ptfileenv IN VARCHAR2,
      ptfiledev IN VARCHAR2,
      pcestdom IN NUMBER,
      pcremban IN VARCHAR2,
      psdevolu IN NUMBER,
      psprocie IN NUMBER,   -- 5. 0022753: MDP_A001-Cierre de remesa (+)
      pcidioma IN NUMBER DEFAULT NULL)
      RETURN NUMBER;

/*************************************************************************
 --8. 0021718: MDP_A001-Domiciliaciones: modificaciones generales - 0111176

       Funcion para retroceder una domiciliaci�n
       param in pcempres   : C�digo de empresa
       param in psproces   : C�digo de proceso (n�mero de remesa)
       param in pfecha     : Fecha de la retrocesi�n
       param in pidioma    : C�digo de idioma
       return              : 0 indica cambio realizado correctamente
                          <> 0 indica error
*************************************************************************/
   FUNCTION f_retro_domiciliacion(
      pcempres IN NUMBER,
      psproces IN NUMBER,
      pfecha IN DATE DEFAULT NULL,
      pcidioma IN NUMBER DEFAULT NULL)
      RETURN NUMBER;

     /*******************************************************************************
   FUNCION f_cierre_remesa
   Funci�n que cierra las remesa y el estado de los sus recibos.
   Par�metros:
    Entrada :
       Psproces NUMBER

    Retorna: un NUMBER con el id del error.
   ********************************************************************************/
   FUNCTION f_cierre_remesa(
      pcempres IN NUMBER DEFAULT pac_md_common.f_get_cxtempresa,
      psproces IN NUMBER,   --> DOMICILIACIONES.SPROCES
      psproces2 IN NUMBER,   --> LIQUIDACAB.SPROCES
      pnum_ok OUT NUMBER,
      pnum_ko OUT NUMBER,
      psmovagr IN OUT NUMBER,
      pfdebito IN DATE DEFAULT NULL,
      pfproces IN DATE DEFAULT NULL)
      RETURN NUMBER;

   /*******************************************************************************
   FUNCION f_cierre_automatico_remesas
   Funci�n que busca las remesas que se han de cerrar autom�ticamente.
   Existen dos par�metros por empresa
     DIASGEST_DIRECTO = 0; -- (0-No, 1-S�)
     DIASGEST := N� tramo creado en el punto anterior.

   S� DIASGEST_DIRECTO = 1 (S�), los d�as son los que hay directamente en DIASGEST,
   Sino DIASGEST contiene el tramo donde se guardan los d�as de gesti�n por meses

   Par�metros:
    Entrada :
       Pcempres
       Psproces
       Pnmes
       Pfproces

    Retorna: un NUMBER con el id del error.
   ********************************************************************************/
   FUNCTION f_cierre_automatico_remesas(
      pcempres IN NUMBER,
      pfcierre IN DATE,
      pfdebito IN DATE DEFAULT NULL,
      pfproces IN DATE DEFAULT NULL)
      RETURN NUMBER;

   /*************************************************************************
   Funci�n que se encargar� gde generar el listado de acciones de los recibos
   de una remesa por cierre

   Este listado se generar� autom�ticamente al cerrar la remesa y mostrar� las
   acciones relacionadas con los recibos que cambian de estado de �remesado� a �cobrado�.
   Quedar� en el directorio parametrizado para este listado.

        param in psproces     : n� proceso de devoluci�n
        param out mensajes    : mensajes de error
        return                : NUMBER 0 / 1

     *************************************************************************/
   FUNCTION f_get_listado_cierre_remesa(
      psproces IN NUMBER,
      pidioma IN NUMBER,
      pnomfichero OUT VARCHAR2)
      RETURN NUMBER;
END pac_domiciliaciones;

/

  GRANT EXECUTE ON "AXIS"."PAC_DOMICILIACIONES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_DOMICILIACIONES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_DOMICILIACIONES" TO "PROGRAMADORESCSI";
