--------------------------------------------------------
--  DDL for Package PAC_PROVIMAT_PBEX
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_PROVIMAT_PBEX" AUTHID CURRENT_USER IS
/******************************************************************************
   NOMBRE:     pac_provimat_pbex
   PROP�SITO:  Agrupa las funciones que calculan las provisiones mat�maticas y las
               provisiones pbex

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        XX/XX/XXXX   XXX                1. Creaci�n del package.
   2.0        15/09/2010   JRH                2. 0012278: Proceso de PB para el producto PEA.
   3.0        25/03/2014   AGG                3. 0029943: POSRA200 - Gaps 27,28 Anexos de PU en VI
******************************************************************************/

   -- BUG 12278 -  09/2010 - JRH  - 0012278: Proceso de PB para el producto PEA. Se eleimina todo menos la funci�n f_commit_pbex
-- para que funcione igual que el resto de las provisones (mediante f�rmulas en lugar de c�lculos en el package)

   /************************************************************************
      f_commit_pbex
         Proceso de inserci�n de la PB en PBEX/PBEX_PREVIO (Participaci�n de Beneficios)

       Par�metros Entrada:

           pcidioma: Idioma
           pfcalcul : Fecha C�lculo
           psproces: Proceso
           pcidioma: Idioma
           pcmoneda: Divisa/Moneda
           pmodo: Modo ('P'revio y 'R'eal)

       retorna 0 si ha ido todo bien o c�digo de error en caso contrario
   *************************************************************************/
   FUNCTION f_commit_pbex(
      pcempres IN NUMBER,
      pfcalcul IN DATE,
      psproces IN NUMBER,
      pcidioma IN NUMBER,
      pcmoneda IN NUMBER,
      pmodo IN VARCHAR2 DEFAULT 'R')
      RETURN NUMBER;

   /************************************************************************
       proceso_batch_cierre
          Proceso batch de inserci�n de la PB en CTASEGURO.

        Par�metros Entrada:

            psmodo : Modo (1-->Previo y '2 --> Real)
            pcempres: Empresa
            pmoneda: Divisa
            pcidioma: Idioma
            pfperini: Fecha Inicio
            pfperfin: Fecha Fin
            pfcierre: Fecha Cierre

        Par�metros Salida:

            pcerror : <>0 si ha habido alg�n error
            psproces : Proceso
            pfproces : Fecha en que se realiza el proceso

    *************************************************************************/
   PROCEDURE proceso_batch_cierre(
      pmodo IN NUMBER,
      pcempres IN NUMBER,
      pmoneda IN NUMBER,
      pcidioma IN NUMBER,
      pfperini IN DATE,
      pfperfin IN DATE,
      pfcierre IN DATE,
      pcerror OUT NUMBER,
      psproces OUT NUMBER,
      pfproces OUT DATE);

-- Fi BUG 12278 -  09/2010 - JRH

   /************************************************************************
      f_procesar_pu
         Proceso de inserci�n de la PB en PBEX/PBEX_PREVIO (Participaci�n de Beneficios)

       Par�metros Entrada:

           pcempres: Empresa
           pfecha: Fecha Calculo
           psproduc: Producto
           psseguro: Id. Seguro
           psproces: Id. del proceso
           pcidioma: Codigo de idioma

       retorna 0 si ha ido todo bien o c�digo de error en caso contrario
   *************************************************************************/
   FUNCTION f_procesar_pu(
      pcempres IN NUMBER,
      pfecha IN DATE,
      psproduc IN NUMBER,
      psseguro IN NUMBER,
      psproces IN NUMBER,
      pcidioma IN NUMBER)
      RETURN NUMBER;
END;

/

  GRANT EXECUTE ON "AXIS"."PAC_PROVIMAT_PBEX" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_PROVIMAT_PBEX" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_PROVIMAT_PBEX" TO "PROGRAMADORESCSI";
