--------------------------------------------------------
--  DDL for Package PAC_MD_VALIDACIONES_AUT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_MD_VALIDACIONES_AUT" AS
/******************************************************************************
   NOMBRE:       PAC_MD_VALIDACIONES_AUTS
   PROP�SITO:  Funciones para validar autos

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        24/02/2009   XVM               1. Creaci�n del package.
   2.0        07/01/2013   MDS               2. 0025458: LCOL_T031-LCOL - AUT - (ID 279) Tipos de placa (matr?cula)
   3.0        14/02/2013   JDS               3. 0025964: LCOL - AUT - Experiencia
   BUG 9247-24022009-XVM
******************************************************************************/
   gidioma        NUMBER := pac_md_common.f_get_cxtidioma();   --C�digo idioma

   /*************************************************************************
   FUNCTION F_valida_RieAuto
      Funci� que valida una s�rie d'aspectes d'un risc.
      param in pauto        : objecte d'autos
      param in out mensajes : missatges d'error
      return                : 1 -> Tot correcte
                              0 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_valida_rieauto(pauto IN ob_iax_autriesgos, mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
   FUNCTION f_validaconductores
      Funci� que valida un conductor.
      param in pauto        : objecte d'autos
      param in out mensajes : missatges d'error
      return                : 1 -> Tot correcte
                              0 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_validaconductores(pautos IN ob_iax_autriesgos, mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
   FUNCTION f_validaConductorInnominado
      Funci� que valida els camps perque sigui un conductor innominat correcte
      param in pnriesgo : n�mero risc
      param in pnorden  : n�mero ordre
      param in pnedad   : edat
      param in pfcarnet : data carnet
      param in pcsexo   : sexe
      param in pnpuntos : n�mero de punts
      param in pexper_manual : Numero de a�os de experiencia del conductor.
      param in pexper_cexper : Numero de a�os de experiencia que viene por interfaz.
      param in out mensajes : missatges d'error
      return                : 1 -> Tot correcte
                              0 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_validaconductorinnominado(
      pnriesgo IN NUMBER,
      pnorden IN NUMBER,
      pfnacimi IN DATE,
      pfcarnet IN DATE,
      pcsexo IN NUMBER,
      pnpuntos IN NUMBER,
      pexper_manual IN NUMBER,
      pexper_cexper IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
   FUNCTION f_validaConductorNominado
      Funci� que valida els camps perque sigui un conductor nominat correcte
      param in pnriesgo : n�mero risc
      param in pnorden  : n�mero ordre
      param in pnedad   : edat
      param in pfcarnet : data carnet
      param in pcsexo   : sexe
      param in pnpuntos : n�mero de punts
      param in pexper_manual : Numero de a�os de experiencia del conductor.
      param in pexper_cexper : Numero de a�os de experiencia que viene por interfaz.
      param in pcond        : objecte d'conductor
      return                : 1 -> Tot correcte
                              0 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_validaconductornominado(
      pnriesgo IN NUMBER,
      pnorden IN NUMBER,
      pctipper IN NUMBER,
      pfnacimi IN DATE,
      pfcarnet IN DATE,
      pcsexo IN NUMBER,
      pnpuntos IN NUMBER,
      pexper_manual IN NUMBER,
      pexper_cexper IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;
END pac_md_validaciones_aut;

/

  GRANT EXECUTE ON "AXIS"."PAC_MD_VALIDACIONES_AUT" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MD_VALIDACIONES_AUT" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MD_VALIDACIONES_AUT" TO "PROGRAMADORESCSI";
