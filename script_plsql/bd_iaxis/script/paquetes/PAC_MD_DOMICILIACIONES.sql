--------------------------------------------------------
--  DDL for Package PAC_MD_DOMICILIACIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_MD_DOMICILIACIONES" AS
/******************************************************************************
   NOMBRE:       PAC_MD_DOMICILIACIONES
   PROP�SITO:  Mantenimiento domiciliaciones. gesti�n

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        27/02/2009   XCG                1. Creaci�n del package.
   2.0        27/08/2010   FAL                2. 0015750: CRE998 - Modificacions m�dul domiciliacions
   3.0        19/07/2011   JMP                3. 0018825: LCOL_A001- Modificacion de la pantalla de domiciliaciones
   4.0        03/04/2012   JGR                4. 0021718: MDP_A001-Domiciliaciones: modificaciones generales - 0111176

 ******************************************************************************/
   e_object_error EXCEPTION;
   e_param_error  EXCEPTION;
   e_error_controlat EXCEPTION;

/**************************************************************************
        Funci�n que inserta las domiciliaciones
        PARAM IN PSPROCES   : n� proceso de domiciliaci�n
        PARAM IN PCEMPRES   : n� empresa
        PARAM IN PEFECTO    : fecha efecto l�mite de recibos
        PARAM IN PFFECCOB   : fecha de remesea de la domiciliaci�n
        PARAM IN PCRAMO     : n� ramo
        PARAM IN PSPRODUC   : n� producto
        PARAM IN PSPRODOM   : n� proceso selecci�n productos a domiciliar
        PARAM IN PIDIOMA   : idioma
        PARAM OUT PNOK      : n� recibos domiciliados correctamente
        PARAM OUT PNKO      : n� recibos domiciliados incorrectamente
            NomMap1 OUT VARCHAR2, --Path Completo Fichero de map 312,
            NomMap2 OUT VARCHAR2, --Path Completo Fichero de map 312,
            NomDR OUT VARCHAR2,   --Path Completo Fichero de DR,
        PARAM OUT mensaje    : Tratamiento del mensaje
        PARAM OUT NERROR     : C�digo de error (0: opraci�n correcta sino error)
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
      pnok OUT NUMBER,
      pnko OUT NUMBER,
      sproces OUT NUMBER,
      nommap1 OUT VARCHAR2,   --Path Completo Fichero de map 312,
      nommap2 OUT VARCHAR2,   --Path Completo Fichero de map 312,
      nomdr OUT VARCHAR2,   --Path Completo Fichero de DR,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

/**************************************************************************
        Funci�n que se retorna la informaci�n de domiciliaciones
        PARAM IN PSPROCES   : n� proceso de domiciliaci�n
        PARAM IN PCEMPRES   : n� empresa
        PARAM IN PCRAMO     : n� ramo
        PARAM IN PSPRODUC   : n� producto
        PARAM IN PEFECTO    : fecha efecto l�mite de recibos
        PARAM IN PSPRODOM   : n� proceso selecci�n productos a domiciliar
        PARAM IN PCCOBBAN   : C�digo de cobrador bancario
        PARAM IN PCBANCO    : C�digo de banco
        PARAM IN PCTIPCTA   : Tipo de cuenta
        PARAM IN PFVTOTAR   : Fecha de vencimiento tarjeta
        PARAM IN PCREFEREN  : C�digo de referencia
        PARAM OUT mensaje    : Tratamiento del mensaje
   *************************************************************************/
   FUNCTION f_get_domiciliacion(
      psproces IN NUMBER,
      pcempres IN NUMBER,
      pcramo IN NUMBER,
      psproduc IN NUMBER,
      pfefecto IN DATE,
      -- Bug 15750 - FAL - 27/08/2010 - Permitir seleccionar varios productos en el proceso domiciliaci�n
      psprodom IN NUMBER,
      -- FI Bug 15750 - FAL - 27/08/2010
      -- BUG 18825 - 19/07/2011 - JMP
      pccobban IN NUMBER DEFAULT NULL,
      pcbanco IN NUMBER DEFAULT NULL,
      pctipcta IN NUMBER DEFAULT NULL,
      pfvtotar IN VARCHAR2 DEFAULT NULL,
      pcreferen IN VARCHAR2 DEFAULT NULL,
      pdfefecto IN DATE DEFAULT NULL,
      -- FIN BUG 18825 - 19/07/2011 - JMP
      pcagente IN NUMBER DEFAULT NULL,   -- C�digo Mediador -- 4. 0021718 / 0111176 - Inicio
      ptagente IN VARCHAR2 DEFAULT NULL,   -- Nombre Mediador
      pnnumide IN VARCHAR2 DEFAULT NULL,   -- Nif Tomador
      pttomador IN VARCHAR2 DEFAULT NULL,   -- Nombre Tomador
      pnrecibo IN NUMBER DEFAULT NULL,   -- Recibo -- 4. 0021718 / 0111176 - Fin
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

   -- Bug 15750 - FAL - 27/08/2010 - Permitir seleccionar productos en el proceso domiciliaci�n
   /*******************************************************************************
   FUNCION F_SET_PRODDOMIS
   Funci�n que inserta los productos seleccionados para realizar la domiciliaci�n en el proceso.
    Par�metros:
     Pcempres  NUMBER : Id. empresa
     Psproces  NUMBER : ID.
     Psproduc  NUMBER : Id. producto
     Pseleccio NUMBER : Valor seleccionado
    Salida :
     Mensajes  T_IAX_MENSAJES

    Retorna: un NUMBER con el id de error.
   ********************************************************************************/
   FUNCTION f_set_proddomis(
      pcempres IN NUMBER,
      psproces IN NUMBER,
      psproduc IN NUMBER,
      pseleccio IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

-- FI Bug 15750 - FAL - 27/08/2010 - Permitir seleccionar productos en el proceso domiciliaci�n

   /*************************************************************************
    --4. 0021718: MDP_A001-Domiciliaciones: modificaciones generales - 0111176

          Funcion en capa MD para obtener los datos de la cabecera de domiciliaciones
          param in pcempres   : C�digo de empresa
          param in psproces   : C�digo de proceso (n�mero de remesa)
          param in pccobban   : C�digo de cobrador bancario
          param in pfinirem   : Fecha inicio remesa
          param in pffinrem   : Fecha fin remesa
          param out mensaje   : Tratamiento del mensaje
          return           : 0 indica cambio realizado correctamente
                             <> 0 indica error
   *************************************************************************/
   FUNCTION f_get_domiciliacion_cab(
      pcempres IN NUMBER,
      psproces IN NUMBER,
      pccobban IN NUMBER,
      pfinirem IN DATE,
      pffinrem IN DATE,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

/*************************************************************************
 --4. 0021718: MDP_A001-Domiciliaciones: modificaciones generales - 0111176

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
       param out psquery   : Query
       return           : 0 indica cambio realizado correctamente
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
      psprocie IN NUMBER,   -- 9. 0022753: MDP_A001-Cierre de remesa (+)
      pcidioma IN NUMBER DEFAULT NULL,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

/*************************************************************************
 --4. 0021718: MDP_A001-Domiciliaciones: modificaciones generales - 0111176

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
      pfecha IN DATE,
      pcidioma IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;
END pac_md_domiciliaciones;

/

  GRANT EXECUTE ON "AXIS"."PAC_MD_DOMICILIACIONES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MD_DOMICILIACIONES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MD_DOMICILIACIONES" TO "PROGRAMADORESCSI";
