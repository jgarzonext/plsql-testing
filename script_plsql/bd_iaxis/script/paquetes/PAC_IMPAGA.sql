--------------------------------------------------------
--  DDL for Package PAC_IMPAGA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_IMPAGA" AUTHID CURRENT_USER IS
   /******************************************************************************
      NOMBRE:     PAC_IMPAGA
      PROP�SITO:  Funciones para la gesti�n de impagados

      REVISIONES:
      Ver        Fecha        Autor             Descripci�n
      ---------  ----------  ---------------  ------------------------------------
      1.0        28/01/2010   NCC                1. BUG11425 : Creaci�n del package.
      2.0        13/06/2012   APD                2. 0022342: MDP_A001-Devoluciones
   ******************************************************************************/
   -- Bug 22342 - APD - 13/06/2012 - se a�ade el parametro pcagente
   FUNCTION f_get_prodreprec(
      psidprodp IN NUMBER,
      psproduc IN NUMBER,
      pcramo IN NUMBER,
      pctipoimp IN NUMBER,
      pidioma IN NUMBER,
      pfiltroprod IN VARCHAR2,
      pcagente IN NUMBER,
      psquery OUT VARCHAR2)
      RETURN NUMBER;

   FUNCTION f_elimina_prodreprec(psidprodp IN NUMBER)
      RETURN NUMBER;

   -- Bug 22342 - APD - 13/06/2012 - se a�ade el parametro pcagente
   FUNCTION f_set_prodreprec(
      psidprodp IN NUMBER,
      psproduc IN NUMBER,
      pfiniefe IN DATE,
      pctipoimp IN NUMBER,
      pctipnimp IN NUMBER,
      pcagente IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_get_detprodreprec(
      psidprodp IN NUMBER,
      pcmotivo IN NUMBER,
      pnimpagad IN NUMBER,
      pidioma IN NUMBER,
      psquery OUT VARCHAR2)
      RETURN NUMBER;

   FUNCTION f_get_lstcartas(pidioma IN NUMBER, psquery OUT VARCHAR2)
      RETURN NUMBER;

   FUNCTION f_get_desctipcarta(pctipcar IN NUMBER, pcidioma IN NUMBER)
      RETURN VARCHAR2;

   FUNCTION f_elimina_detprodreprec(
      psidprodp IN NUMBER,
      pcmotivo IN NUMBER,
      pnimpagad IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_set_detprodreprec(
      psidprodp IN NUMBER,
      pcmotivo IN NUMBER,
      pcmodimm IN NUMBER,
      pcactimm IN NUMBER,
      pcdiaavis IN NUMBER,
      pcmodelo IN NUMBER,
      pcactimp IN NUMBER,
      pndiaavis IN NUMBER,
      pnimpagad IN NUMBER,
      pmodo IN VARCHAR2)
      RETURN NUMBER;

   -- Bug 22342 - APD - 13/06/2012 - se modifican los parametros de entrada
   FUNCTION f_get_impagados(
      psseguro IN NUMBER,
      pcramo IN NUMBER,
      psproduc IN NUMBER,
      pctiprec IN NUMBER,
      pfaccini IN DATE,
      pfaccfin IN DATE,
      pnpoliza IN NUMBER,
      pncertif IN NUMBER,
      pnrecibo IN NUMBER,
      pnimpagad IN NUMBER,
      pcoficina IN NUMBER,
      pcagente IN NUMBER,
      pcmotivo IN NUMBER,
      pccarta IN NUMBER,
      pcactimp IN NUMBER,
      pcidioma IN NUMBER,
      psquery OUT VARCHAR2)
      RETURN NUMBER;

   FUNCTION f_set_impagado(
      psseguro IN NUMBER,
      pnrecibo IN NUMBER,
      pfaccion IN DATE,
      pfalta IN DATE,
      pcmotdev IN NUMBER,
      pcaccion IN NUMBER,
      pcsituac IN NUMBER,
      pttexto IN VARCHAR2,
      pterror IN VARCHAR2)
      RETURN NUMBER;

   FUNCTION f_get_detimpagado(
      psseguro IN NUMBER,
      pnrecibo IN NUMBER,
      pfaccion IN DATE,
      psquery OUT VARCHAR2)
      RETURN NUMBER;

   FUNCTION f_elimina_impagado(psseguro IN NUMBER, pnrecibo IN NUMBER, pfaccion IN DATE)
      RETURN NUMBER;

   -- Funcion para modificar la acci�n o la carta de un impagado
   -- Bug 22342 - APD - 13/06/2012 - se crea la funcion
   FUNCTION f_set_acccarta(
      psseguro IN NUMBER,
      pnrecibo IN NUMBER,
      pcactimp IN NUMBER,
      pffejecu IN DATE,
      pcactact IN NUMBER,
      pccarta IN NUMBER)
      RETURN NUMBER;
END pac_impaga;

/

  GRANT EXECUTE ON "AXIS"."PAC_IMPAGA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_IMPAGA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_IMPAGA" TO "PROGRAMADORESCSI";
