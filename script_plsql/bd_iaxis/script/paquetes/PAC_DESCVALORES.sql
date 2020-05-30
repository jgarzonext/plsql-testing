--------------------------------------------------------
--  DDL for Package PAC_DESCVALORES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_DESCVALORES" AUTHID CURRENT_USER IS
/******************************************************************************
   NOMBRE:       PAC_DESCVALORES
   PROP�SITO:    Funciones para retornar descripciones
   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        30/04/2009   DCT             1.Creaci�n paquete
   2.0        27/04/2010   AMC             2. Bug 14284 Se a�ade la funci�n f_desgarant
   3.0        29/12/2010   JMP             3. Bug 16092: Se a�ade la funci�n ff_desactivi
   4.0        24/01/2011   DRA             4. 0016576: AGA602 - Parametritzaci� de reemborsaments per veterinaris
   5.0        06/06/2012   ETM             5.0021404: MDP - PER - Validaci�n de documentos en funci�n del tipo de sociedad
******************************************************************************/
   FUNCTION f_desctipocuenta(
      pctipban IN NUMBER,
      pcidioma IN NUMBER,
      pttipo OUT tipos_cuentades.ttipo%TYPE)
      RETURN NUMBER;

   /*******************************************************
      Funci�n que devuelve la descripci�n de una garant�a
      PARAM IN pcgarant : codigo de la garant�a
      PARAM IN pcidioma : c�digo de idioma
      PARAM OUT ptgarant : descripci�n de la garant�a
      RETURN NUMBER

      Bug 14284 - 27/04/2010 - AMC
   *******************************************************/
   FUNCTION f_descgarant(pcgarant IN NUMBER, pcidioma IN NUMBER, ptgarant OUT VARCHAR2)
      RETURN NUMBER;

/*************************************************************************
   FUNCTION FF_DESACTIVI
   Devuelve la descripci�n de una actividad de un ramo
     param in p_cactivi : c�digo de la actividad
     param in p_cramo   : c�digo del ramo
     param in p_cidioma : c�digo del idioma
     return             : la descripci�n de la actividad
*************************************************************************/
   FUNCTION ff_desactivi(p_cactivi IN NUMBER, p_cramo IN NUMBER, p_cidioma IN NUMBER)
      RETURN VARCHAR2;

   -- BUG16576:DRA:24/01/2011:Inici
   /*********************************************************************************
        F_DESACTO: Funci�n que devuelve la descripci�n del acto.
   ********************************************************************************/
   FUNCTION ff_desacto(
      pcacto IN VARCHAR2,
      pcgarant IN NUMBER,
      pagr_salud IN VARCHAR2,
      pcidioma IN NUMBER)
      RETURN VARCHAR2;

-- BUG16576:DRA:24/01/2011:Inici
  --bug 21404--ETM-- 06/06/2012
   /*************************************************************************
       Recupera la descripci�n del tipo de sociedad
       param in pnnumide     : nubero de nif/cif
            return              : descripci�n del tipo de sociedad
    *************************************************************************/
   FUNCTION f_get_descsociedad(pnnumide IN VARCHAR2)
      RETURN VARCHAR2;
END pac_descvalores;

/

  GRANT EXECUTE ON "AXIS"."PAC_DESCVALORES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_DESCVALORES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_DESCVALORES" TO "PROGRAMADORESCSI";
