--------------------------------------------------------
--  DDL for Package PAC_REF_CONTRATA_RENTAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_REF_CONTRATA_RENTAS" AUTHID CURRENT_USER IS
/******************************************************************************
      NOMBRE:      Pac_Ref_Contrata_Rentas
      PROP�SITO: Funciones para contraci�n

      REVISIONES:
      Ver        Fecha        Autor             Descripci�n
      ---------  ----------  ---------------  ------------------------------------
      1.0       27/04/2010   JRH                1. 0014285: CEM Se a�ade interes y fppren
   ******************************************************************************/
/******************************************************************************
  Package p�blico para contrataci�n de p�lizas de ahorro

******************************************************************************/
   FUNCTION f_valida_garantias_rentas(
      psproduc IN NUMBER,
      psperson1 IN NUMBER,
      psperson2 IN NUMBER,
      pfefecto IN DATE,
      prima_per IN NUMBER,
      pcforpag IN NUMBER,
      pfallaseg IN NUMBER,
      pcagente IN NUMBER,
      pcidioma_user IN NUMBER DEFAULT f_idiomauser,
      fecoperhi IN DATE,   --JRH IMP Que hago con estas dos
      ccrnhi IN VARCHAR2,
      tasinmuebhi IN NUMBER,
      pcttasinmuebhi IN NUMBER,
      capitaldisphi IN NUMBER,
      pctrevrt IN NUMBER,
      ocoderror OUT NUMBER,
      omsgerror OUT VARCHAR2)
      RETURN NUMBER;

/*
LA FUNCION f_valida_primas_rentas QUEDA SUSTITUIDA POR LA FUNCIO f_valida_garantias_rentas
 FUNCTION f_valida_primas_rentas(psproduc IN NUMBER, psperson IN NUMBER, pfefecto IN DATE, prima_inicial IN NUMBER, prima_per IN NUMBER,
           prevali IN NUMBER,  pcforpag IN NUMBER, pcfallaseg1 IN NUMBER, pcfallaseg2 IN NUMBER, pcaccaseg1 IN NUMBER,
           pcaccaseg2 IN NUMBER, pcagente IN NUMBER, pcidioma_user IN NUMBER DEFAULT F_IdiomaUser, oCODERROR OUT NUMBER, oMSGERROR OUT VARCHAR2) RETURN NUMBER ;
*/
   FUNCTION f_suplemento_interes(
      pnpoliza IN NUMBER,
      pncertif IN NUMBER,
      pndurper IN NUMBER,
      ppinttec IN NUMBER,
      poficina IN VARCHAR2,
      pterminal IN VARCHAR2,
      pcidioma_user IN NUMBER DEFAULT f_idiomauser,
      ocoderror OUT NUMBER,
      omsgerror OUT VARCHAR2)
      RETURN NUMBER;

--JRH IMP Este no existe
-- FUNCTION f_suplemento_forpag_prestacion(psseguro IN NUMBER,pfefecto IN DATE, pcfprest IN NUMBER, poficina IN VARCHAR2, pterminal IN VARCHAR2, pcidioma_user IN NUMBER DEFAULT F_IdiomaUser, oCODERROR OUT NUMBER, oMSGERROR OUT VARCHAR2)
--    RETURN NUMBER;

   -- FUNCTION f_suplemento_aportacion_revali(psseguro IN NUMBER,pfefecto IN DATE, pcforpag IN NUMBER, pprima IN NUMBER, prevali IN NUMBER, poficina IN VARCHAR2, pterminal IN VARCHAR2, pcidioma_user IN NUMBER DEFAULT F_IdiomaUser, oCODERROR OUT NUMBER, oMSGERROR OUT VARCHAR2)
--    RETURN NUMBER;

   /* FUNCTION f_suplemento_modif_gar(psseguro IN NUMBER,pfefecto IN DATE, pcfallaseg1 IN NUMBER, pcfallaseg2 IN NUMBER, pcaccaseg1 IN NUMBER, pcaccaseg2 IN NUMBER, poficina IN VARCHAR2, pterminal IN VARCHAR2, pcidioma_user IN NUMBER DEFAULT F_IdiomaUser, oCODERROR OUT NUMBER, oMSGERROR OUT VARCHAR2)
    RETURN NUMBER;*/

   --JRH IMP Este no existe FUNCTION f_aportacion_extraordinaria(psseguro IN NUMBER, pfefecto IN DATE, pprima IN NUMBER, pcbancar_recibo IN VARCHAR2, poficina IN VARCHAR2, pterminal IN VARCHAR2, pcidioma_user IN NUMBER DEFAULT F_IdiomaUser, oCODERROR OUT NUMBER, oMSGERROR OUT VARCHAR2)
--    RETURN NUMBER;
   FUNCTION f_revision_renovacion(
      pnpoliza IN NUMBER,
      pncertif IN NUMBER,
      pndurper IN NUMBER,
      ppinttec IN NUMBER,
      pcapital IN NUMBER,
      pcidioma_user IN NUMBER DEFAULT f_idiomauser,
      ocoderror OUT NUMBER,
      omsgerror OUT VARCHAR2)
      RETURN NUMBER;

/*

JRH 10/2007
f_genera_poliza_rentas : Crea la p�liza a partir de los datos entrados por el usuario.

Par�metros:

psproduc : Producto
psperson1 : C�digo Persona 1er titular
pcdomici1 : C�digo Direcci�n 1er titular
psperson2 : C�digo Persona 2o titular
pcdomici2: C�digo Direcci�n 2o titular
pcagente : Agente
pcidioma : Idioma 1er titular
pfefecto : Fecha efeto de la p�liza
pnduraci : Duraci�n de la p�liza (si es renta temporal) o duraci�n del periodo (caso de rentas que usen per�odo de revisi�n)
pfvencim : Fecha de vencimiento si existiese. (Opcional)
pcforpag : Forma de pago de la prima.
pcbancar : Cuenta bancaria cobro de la prima
psclaben : Cl�usulas del beneficiario
ptclaben : Cl�usulas del beneficiario
prima_inicial : Prima primera aportaci�n (No se usa de momento).
prima_per : Prima del periodo.
prevali : Revalorizaci�n (No se usa de momento).
pcfallaseg1 : Pct capital de fallecimiento titular 1.
pcfallaseg2 : Pct capital de fallecimiento titular 2 (No se usa de momento).
tasinmuebHI : Tasaci�n inmueble (Hipoteca Inversa)
pcttasinmuebHI : % sobre Tasaci�n inmueble (Hipoteca Inversa)
capitaldispHI : % Capital disponible inmueble (Hipoteca Inversa)
pctrevRT : Pct reversi�n (LRC y RVD)
pctRevaliRVD : Pct revalor. (RVD)
ppinttec : Inter�s (RVD)
pcbancar_recibo : Cuenta del recibo (ingreso de la renta)
forpagorenta : Forma de pago de la renta.
pterminal : terminal
pcidioma_user : Idioma usuario
psseguro : C�digo seguro obtenido.
pnpoliza : N�mero de p�liza obtenido.
pncertif : N�mero de certificado obtenido.
pnsolici : N�mero de solicitud obtenido.
pcsituac : Situaci�n de la p�liza.
rentabruta : Renta bruta inicial.
rentamin : Renta m�nima inicial.
capfall : Capital de fallecimiento inicial.
intgarant : Inter�s garantizado inicial.
oCODERROR : C�digo de error.
oMSGERROR : Mensaje c�digo de error.)



*/
   FUNCTION f_genera_poliza_rentas(
      psproduc IN NUMBER,
      psperson1 IN NUMBER,
      pcdomici1 IN NUMBER,
      psperson2 IN NUMBER,
      pcdomici2 IN NUMBER,
      pcagente IN NUMBER,
      pcidioma IN NUMBER,
      pfefecto IN DATE,
      pnduraci IN NUMBER,
      pfvencim IN DATE,
      pcforpag IN NUMBER,
      pcbancar IN VARCHAR2,
      psclaben IN NUMBER,
      ptclaben IN VARCHAR2,
      prima_per IN NUMBER,
      pfallaseg IN NUMBER,
      tasinmuebhi IN NUMBER,
      pcttasinmuebhi IN NUMBER,
      capitaldisphi IN NUMBER,
      pctrevrt IN NUMBER,
      fecoperhi IN DATE,
      ccrnhi IN VARCHAR2,
      pcbancar_recibo IN VARCHAR2,
      pforpagorenta IN NUMBER,
      pterminal IN NUMBER,
      pcidioma_user IN NUMBER DEFAULT f_idiomauser,
      psseguro IN OUT NUMBER,
      pnpoliza OUT NUMBER,
      pncertif OUT NUMBER,
      pnsolici OUT NUMBER,
      pcsituac OUT NUMBER,
      ocoderror OUT NUMBER,
      omsgerror OUT VARCHAR2)
      RETURN NUMBER;

   PROCEDURE f_actualizar_segurosren(
      psproduc IN NUMBER,
      pfefecto IN DATE,
      pnduraci IN NUMBER,
      pfvencim IN DATE,
      pcforpag IN NUMBER,
      prima_per IN NUMBER,
      pfallaseg IN NUMBER,
      ptasinmuebhi IN NUMBER,
      ppcttasinmuebhi IN NUMBER,
      pcapitaldisphi IN NUMBER,
      pctrevrt IN NUMBER,
      forpagorenta IN NUMBER,
      psseguro IN NUMBER,
      ocoderror OUT NUMBER,
      tablas VARCHAR2 DEFAULT 'EST',
      -- Bug 14285 - 26/04/2010 - JRH - 0014285: CEM303 - Informar fecha de primer pago de renta en la contrataci�n e inter�s
      ppfpren IN DATE DEFAULT NULL
                                  -- Fi Bug 14285 - 26/04/2010 - JRH
   );
END pac_ref_contrata_rentas;
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_REF_CONTRATA_RENTAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_REF_CONTRATA_RENTAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_REF_CONTRATA_RENTAS" TO "PROGRAMADORESCSI";
