--------------------------------------------------------
--  DDL for Package PAC_CONTROL_EMISION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_CONTROL_EMISION" AUTHID CURRENT_USER IS
   /******************************************************************************
      NOMBRE:     PAC_CONTROL_EMISION
      PROP�SITO:  Package que contiene las funciones propias de cada instalaci�n.

      REVISIONES:
      Ver        Fecha        Autor             Descripci�n
      ---------  ----------  ---------------  ------------------------------------
      1.0        17/09/2009   RSC              Creci�n del package
      2.0        16/03/2011   DRA              0018011: CRE998 - Canvi en sistema de retenci� productes PIAM i CREDIT SALUT
   ******************************************************************************/

   /*************************************************************************
      FUNCTION que evalua si debe o no debe ejecutar el control de riesgo.
      param in psseguro  : Identificador de seguro.
      param in pnmovimi  : Numero de movimiento
      param in pfecha    : Fecha
      return             : NUMBER (1 --> Si que debe / 0 --> No debe)
   *************************************************************************/
   -- Bug 10828 - 09/09/2009 - RSC - CRE - Revisi�n de los productos PPJ din�mico y Pla Estudiant (ajustes)
   FUNCTION f_control_risc(psseguro IN NUMBER, pnmovimi IN NUMBER, pfecha IN DATE)
      RETURN NUMBER;

-- Fin Bug 10828

   -- BUG18011:DRA:17/03/2011:Inici
   /*************************************************************************
      FUNCTION que Analiza si queda retenida por aumento de capital con preguntas afirmativas
      param in psseguro  : Identificador de seguro.
      param in pnmovimi  : Numero de movimiento
      param in pfecha    : Fecha
      return             : NUMBER (1 --> Si que debe / 0 --> No debe)
   *************************************************************************/
   FUNCTION f_control_capital_respuesta(psseguro IN NUMBER, pnmovimi IN NUMBER, pfecha IN DATE)
      RETURN NUMBER;
-- BUG18011:DRA:17/03/2011:Fi
END pac_control_emision;
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_CONTROL_EMISION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_CONTROL_EMISION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_CONTROL_EMISION" TO "PROGRAMADORESCSI";
