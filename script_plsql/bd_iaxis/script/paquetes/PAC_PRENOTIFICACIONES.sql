--------------------------------------------------------
--  DDL for Package PAC_PRENOTIFICACIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_PRENOTIFICACIONES" AS
/******************************************************************************
   NOMBRE:       pac_prenotificaciones
   PROP�SITO:  Mantenimiento NOTIFICACIONES capa l�gica

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        18/11/2011   JMF                1. 0020000: LCOL_A001-Prenotificaciones
   2.0        12/01/2012   JMF                2. 0019894: LCOL898 - 12 - Interface Respuesta Cobros D�bito autom�tico Banco ACH
   3.0        20/06/2013   JGR                0027411: Error al generar m�s de un n�mero de matr�cula para un mismo cliente en procesos de prenotificaci�n diferentes - QT-8145
 ******************************************************************************/

   --------------------------------------------------------------
   FUNCTION f_domiciliar_notifica(
      psproces IN NUMBER,
      pcempres IN NUMBER,
      pfefecto IN DATE,
      pfcobro IN DATE,
      pcramo IN NUMBER,
      pcmodali IN NUMBER,
      pctipseg IN NUMBER,
      pccolect IN NUMBER,
      -- BUG 18825 - 19/07/2011 - JMP
      pccobban IN NUMBER,
      pcbanco IN NUMBER,
      pctipcta IN NUMBER,
      pfvtotar IN VARCHAR2,
      pcreferen IN VARCHAR2,
      pdfefecto IN DATE,
      -- FIN BUG 18825 - 19/07/2011 - JMP
      pcidioma IN NUMBER,
      pfitxer OUT VARCHAR2,
      pnum_ok OUT NUMBER,
      pnum_ko OUT NUMBER)
      RETURN NUMBER;

---------------------------------------------------------------------------------
   FUNCTION f_cobrament(
      psproces IN NUMBER,
      pcempres IN NUMBER,
      pmincobdom DATE,
      pfefecto IN DATE,
      pfcobro IN DATE,
      pcidioma IN NUMBER,
      pcramo IN NUMBER,
      pcmodali IN NUMBER,
      pctipseg IN NUMBER,
      pccolect IN NUMBER,
      -- BUG 18825 - 19/07/2011 - JMP
      pccobban IN NUMBER,
      pcbanco IN NUMBER,
      pctipcta IN NUMBER,
      pfvtotar IN VARCHAR2,
      pcreferen IN VARCHAR2,
      pdfefecto IN DATE,
      -- FIN BUG 18825 - 19/07/2011 - JMP
      pnum_ok OUT NUMBER,
      pnum_ko OUT NUMBER)
      RETURN NUMBER;

---------------------------------------------------------------------------------
   FUNCTION f_domrecibos(
      pctipemp IN NUMBER,
      pcidioma IN NUMBER,
      psproces IN NUMBER,
      pruta OUT VARCHAR2,
      pfcobro IN DATE DEFAULT NULL   --> -- Bug.: 13498 - JGR - 04/03/2010
                                  )
      RETURN NUMBER;

---------------------------------------------------------------------------------
   FUNCTION f_fitxer_buit(psproces IN NUMBER, pcempres IN NUMBER)
      RETURN NUMBER;

---------------------------------------------------------------------------------
-- bug 11339 - 08/10/2009 - JGM -
   /*************************************************************************
       FUNCTION f_retorna_select
       Funci�n que retornar� la select de PREVIO_DOMICILIACIONES
       Ejemplo: 01/01/2009, null,null,null,2

       param in fefecto: VARCHAR2 - Obligatoria - Fecha Efecto (formato DD/MM/YYYY)
       param in cramo:   NUMBER - Opcional - Codigo Ramo
       param in sproduc: NUMBER - Opcional - Codigo Producto
       param in cempres: NUMBER - Opcional - Codigo Empresa
       param in FiltradoMaximo: BOOLEAN (defecto FALSE)- Ser� TRUE si se llama por pantalla para filtrar el numero de resultados.
       param in pccobban  : C�digo de cobrador bancario
       param in pcbanco   : C�digo de banco
       param in pctipcta  : Tipo de cuenta
       param in pfvtotar  : Fecha de vencimiento tarjeta
       param in pcreferen : C�digo de referencia
       return             : Devolver� un VARCHAR2 con la SELECT usada en Map, pantalla y proceso.
   *************************************************************************/
   FUNCTION f_retorna_query(
      fefecto IN VARCHAR2,
      cramo IN NUMBER,
      psproduc IN NUMBER,
      cempres IN NUMBER,
      psprodom IN NUMBER DEFAULT NULL,
      filtradomaximo IN BOOLEAN DEFAULT FALSE,
      -- BUG 18825 - 19/07/2011 - JMP
      pccobban IN NUMBER DEFAULT NULL,
      pcbanco IN NUMBER DEFAULT NULL,
      pctipcta IN NUMBER DEFAULT NULL,
      pfvtotar IN VARCHAR2 DEFAULT NULL,
      pcreferen IN VARCHAR2 DEFAULT NULL,
      pdfefecto IN VARCHAR2 DEFAULT NULL)
      -- FIN BUG 18825 - 19/07/2011 - JMP
   RETURN VARCHAR2;

   FUNCTION f_retorna_query_detalle(sproces IN NUMBER, cempres IN NUMBER, ccobban IN NUMBER)
      RETURN VARCHAR2;

   -- Bug 15750 - FAL - 20/08/2010 - Permitir seleccionar productos en el proceso domiciliaci�n
   /*******************************************************************************
   FUNCION F_INSERT_TMP_DOMISAUX
   Funci�n que insertar� en la tabla temporal los productos seleccionados para el
   proceso de domiciliaci�n de recibos.
   Par�metros:
    Entrada :
       Pcempres  NUMBER
       Psproces  NUMBER
       Psproduc  NUMBER
       Pseleccio NUMBER

    Retorna: un NUMBER con el id del error.
   ********************************************************************************/
   FUNCTION f_insert_tmp_domisaux(
      pcempres IN NUMBER,
      psproces IN NUMBER,
      psproduc IN NUMBER,
      pseleccio IN NUMBER)
      RETURN NUMBER;

-- FI Bug 15750 - FAL - 20/08/2010 - Permitir seleccionar productos en el proceso domiciliaci�n

   -- Bug 19999 - APD - 07/11/2011 - se crea la funcion
   /*******************************************************************************
   FUNCION f_estado_domiciliacion
   Funci�n que modifica el estado de los recibos domiciliados.
   Par�metros:
    Entrada :
       Psproces  NUMBER

    Retorna: un NUMBER con el id del error.
   ********************************************************************************/
   FUNCTION f_estado_domiciliacion(
      pcempres IN NUMBER DEFAULT pac_md_common.f_get_cxtempresa,
      psproces IN NUMBER,
      pnrecibo IN NUMBER,
      pcestrec IN NUMBER,
      pnum_ok OUT NUMBER,
      pnum_ko OUT NUMBER)
      RETURN NUMBER;

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
      pdfefecto IN DATE DEFAULT NULL)
      -- FIN BUG 18825 - 19/07/2011 - JMP
   RETURN NUMBER;

   FUNCTION ff_nombre_entidad(pcbancar VARCHAR2, pctipban NUMBER)
      RETURN VARCHAR;

   /*************************************************************************
      Actualiza los recibos despues de la confirmaci�n/rechazo de las notificaciones
      param in p_sproces   : Id. del proceso
      return               : 0.-OK, otro.- error
   -- BUG 0019894 - 12/01/2012 - JMF
   *************************************************************************/
   FUNCTION f_actrecibos_notificados(p_sproces IN NUMBER)
      RETURN NUMBER;

   -- Bug 21116 - APD - 27/01/2012 - se crea la funcion
   /*******************************************************************************
   FUNCION f_valida_prenoti_cobban
   Funci�n que valida que si existe una pre notificaci�n en curso para un cobrador bancario,
   no permita realizar una nueva pre notificacion de este cobrador bancario
   Par�metros:
    Entrada :
       pcempres NUMBER
       pccobban  NUMBER
       psseguro IN NUMBER

    Retorna: un NUMBER con el id del error.
   ********************************************************************************/
   FUNCTION f_valida_prenoti_cobban(
      pcempres IN NUMBER,
      pccobban IN NUMBER DEFAULT NULL,   -- 12. 0021120/0108895 + DEFAULT NULL
      psseguro IN NUMBER DEFAULT NULL,
      psproces IN NUMBER DEFAULT NULL   -- 12. 0021120/0108895
                                     )
      RETURN NUMBER;

   -- 11. 21/02/2012  JGR  0021120/0108092 - Inicio
   -- Bug 21116 - APD - 27/01/2012 - se crea la funcion
   /*******************************************************************************
   FUNCION f_agd_observaciones
   Graba apuntes en la agenda del recibo, para los movimiento de prenotificaciones.

   Par�metros:
    Entrada :
       pcempres IN NUMBER
       pnrecibo IN NUMBER
       ptextobs IN VARCHAR2

    Retorna: un NUMBER con el id del error.
   ********************************************************************************/
   FUNCTION f_agd_observaciones(pcempres IN NUMBER, pnrecibo IN NUMBER, ptextobs IN VARCHAR2)
      RETURN NUMBER;

-- 11. 21/02/2012  JGR  0021120/0108092 - Fi

   /*******************************************************************************
   FUNCION f_estimprec
   Retorna el estat d'impressi� del rebut.

   Par�metros:
    Entrada :
       pnrecibo IN NUMBER
       pfecha IN DATE

    Retorna: un NUMBER con estat impressi� rebut.
   ********************************************************************************/
   FUNCTION f_estimprec(pnrecibo IN NUMBER, pfecha IN DATE)
      RETURN NUMBER;

   -- 3.0 0027411: Error al generar m�s de un n�mero de matr�cula - QT-8145 - Inicio
   /*******************************************************************************
   FUNCION F_PAGADOR_SPERSON
   Retorna tomador o pagador del recibo.

   Par�metros:
    Entrada :
       psseguro IN NUMBER

    Retorna: el SPERSON del tomador o pagador.
   ********************************************************************************/
   FUNCTION f_pagador_sperson(psseguro IN NUMBER)
      RETURN NUMBER;

   /*******************************************************************************
   PROCEDIMIENTO P_ACTRECIBOS_X_MATRICULA
   Actualiza el subestado (CRESTIMP) de un recibo y de todos los que tengan o
   le corresponda la misma matr�cula. Porque puede ser que a�n no tengan matr�cula.

   Par�metros:
    Entrada :
       psseguro IN NUMBER

    Retorna: 0 OK ... sino c�digo de ERROR
   ********************************************************************************/
   PROCEDURE p_actrecibos_x_matricula(pnrecibo IN NUMBER, pcestimp IN NUMBER);

   /*******************************************************************************
   FUNCION F_CESTIMP_PRENOTIF
   DEvuelve el subestado (CRESTIMP) que corresponder�a a un recibo seg�n el estado
   de la matr�cula matr�cula en PER_CCC.CVALIDA.

   Par�metros:
    Entrada :
       psseguro IN NUMBER
       pcempres IN NUMBER,
       pcbancar IN VARCHAR2,
       pctipban IN NUMBER,
       psperson IN NUMBER,
       pccobban IN NUMBER,
       pcestimp IN OUT NUMBER

    Retorna: 0 OK ... sino c�digo de ERROR
   ********************************************************************************/
   FUNCTION f_cestimp_prenotif(
      psseguro IN NUMBER,
      pcbancar IN VARCHAR2,
      pctipban IN NUMBER,
      pccobban IN NUMBER,
      pcestimp IN OUT NUMBER)
      RETURN NUMBER;
-- 3.0 0027411: Error al generar m�s de un n�mero de matr�cula - QT-8145 - Final
END pac_prenotificaciones;

/

  GRANT EXECUTE ON "AXIS"."PAC_PRENOTIFICACIONES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_PRENOTIFICACIONES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_PRENOTIFICACIONES" TO "PROGRAMADORESCSI";
