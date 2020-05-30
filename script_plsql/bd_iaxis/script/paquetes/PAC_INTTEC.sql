--------------------------------------------------------
--  DDL for Package PAC_INTTEC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_INTTEC" AUTHID CURRENT_USER IS
/******************************************************************************
   NOMBRE:     PAC_INTTEC
   PROP�SITO:

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        ??/??/????   ???                1. Creaci�n del package.
   2.0        04/02/2010   DRA                2. 0012546: CEM002 - Select para informar FICHA CLIENTE
   3.0        07/02/2012   APD                3. 0020107: LCOL898 - Interfaces - Regulatorio - Reporte Reservas Superfinanciera
******************************************************************************/
   FUNCTION f_existe_intertecprod(psproduc IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_get_ncodintprod(psproduc IN NUMBER, pcodint OUT NUMBER)
      RETURN NUMBER;

   FUNCTION f_int_producto(
      psproduc IN NUMBER,
      pctipo IN NUMBER,
      pfecha IN DATE,
      pvtramo IN NUMBER,
      pinttec OUT NUMBER)
      RETURN NUMBER;

   --JRH 01/2008
   FUNCTION f_int_prodcercano(
      psproduc IN NUMBER,
      pctipo IN NUMBER,
      pfecha IN DATE,
      pvtramo IN NUMBER,
      pinttec OUT NUMBER)
      RETURN NUMBER;

   --JRH 01/2008
   FUNCTION ff_int_prodcercano(
      psproduc IN NUMBER,
      pctipo IN NUMBER,
      pfecha IN DATE,
      pvtramo IN NUMBER)
      RETURN NUMBER;

   FUNCTION ff_int_producto(
      psproduc IN NUMBER,
      pctipo IN NUMBER,
      pfecha IN DATE,
      pvtramo IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_int_seguro(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pfecha IN DATE DEFAULT f_sysdate,
      pinttec OUT NUMBER,
      pninttec OUT NUMBER,
      pvtramo IN NUMBER DEFAULT 0,   --JRH 09/2007 Tarea 2674: Intereses para LRC
      plog_error IN NUMBER DEFAULT 1)   -- BUG12546:DRA:04/02/2010
      RETURN NUMBER;

   FUNCTION ff_int_seguro(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pfecha IN DATE DEFAULT f_sysdate,
      pvtramo IN NUMBER DEFAULT 0,   --JRH 09/2007 Tarea 2674: Intereses para LRC
      plog_error IN NUMBER DEFAULT 1)   -- BUG12546:DRA:04/02/2010
      RETURN NUMBER;

   FUNCTION f_int_seguro_alta_renova(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pmodo IN NUMBER,
      pfecha IN DATE DEFAULT f_sysdate,
      pinttec OUT NUMBER,
      pninttec OUT NUMBER,
      p_tramo IN NUMBER
            DEFAULT NULL   ----JRH 09/2007 Tarea 2674 Por si queremos saber el inter�s de un tramo especificamente en una p�liza LRC
                        )
      RETURN NUMBER;

   FUNCTION ff_int_seguro_alta_renova(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pmodo IN NUMBER,
      pfecha IN DATE DEFAULT f_sysdate,
      p_tramo IN NUMBER DEFAULT NULL)
      RETURN NUMBER;

   -- bug 0007886: APR - Funci�n que devuelva el inter�s a nivel de garant�a
   --Descripci�n  El inter�s t�cnico se puede definir a nivel de garant�a.
   --Se deben hacer funciones nuevas dentro del PAC_INTTEC que nos devuelva el inter�s definido a nivel de garant�a:
   -- f_int_gar_prod y ff_int_gar_prod: devolver� el inter�s definido en una garant�a de un producto
   -- f_int_gar_seg y ff_int_gar_seg: devolver� el inter�s que tiene una garant�a de una p�liza.
   FUNCTION f_int_gar_prod(
      psproduc IN productos.sproduc%TYPE,
      pcactivi IN seguros.cactivi%TYPE,
      pcgarant IN garanpro.cgarant%TYPE,
      pctipo IN NUMBER,
      pfecha IN DATE,
      pvtramo IN NUMBER,
      pinttec OUT NUMBER)
      RETURN NUMBER;

   FUNCTION ff_int_gar_prod(
      psproduc IN productos.sproduc%TYPE,
      pcactivi IN seguros.cactivi%TYPE,
      pcgarant IN garanpro.cgarant%TYPE,
      pctipo IN NUMBER,
      pfecha IN DATE,
      pvtramo IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_int_gar_seg(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pfecha IN DATE DEFAULT f_sysdate,
      pcgarant IN garanpro.cgarant%TYPE,
      pinttec OUT NUMBER,
      pninttec OUT NUMBER,
      pvtramo IN NUMBER DEFAULT 0)
      RETURN NUMBER;

   FUNCTION ff_int_gar_seg(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pcgarant IN garanpro.cgarant%TYPE,
      pfecha IN DATE DEFAULT f_sysdate,
      pvtramo IN NUMBER DEFAULT 0)
      RETURN NUMBER;

   -- Bug 20107 - APD - 07/02/2012 - se crea la funcion
   FUNCTION f_es_renova_interes(psseguro IN NUMBER, pfecha IN DATE)
      RETURN NUMBER;
END pac_inttec;

/

  GRANT EXECUTE ON "AXIS"."PAC_INTTEC" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_INTTEC" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_INTTEC" TO "PROGRAMADORESCSI";
