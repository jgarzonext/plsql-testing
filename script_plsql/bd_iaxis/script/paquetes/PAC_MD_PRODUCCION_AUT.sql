--------------------------------------------------------
--  DDL for Package PAC_MD_PRODUCCION_AUT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_MD_PRODUCCION_AUT" IS
/******************************************************************************
   NOMBRE:       PAC_MD_PRODUCCION_AUT
   PROP�SITO: Funcions per gestionar autos

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        03/03/2009   XVM                1. Creaci�n del package.
   2.0        04/10/2010   JTS                2. 16163: CRT - Modificar tabla descripcion riesgo (autriesgo)
   3.0        14/02/2013   JDS                3. 0025964: LCOL - AUT - Experiencia
******************************************************************************/

   /*************************************************************************
      FUNCTION f_get_caccesorio
         Funci� que retorna un nou codi d'accesori
         param in  paccesorio  : col�lecci� d'accesoris
         param out pcacc       : codi accesori
         param in out mensajes : col�lecci� de missatges
         return                : 0 -> Tot correcte
                                 1 -> S'ha produit un error
   *************************************************************************/

   /*************************************************************************
   GLOBALS
*************************************************************************/
   poliza         ob_iax_poliza;   --Objecte p�lisa
   asegurado      ob_iax_asegurados;   --Objecte assegurat
   accesorios     ob_iax_autaccesorios;   --Objecte accesori
   taccesorios    t_iax_autaccesorios;   --Objecte col�lecci� accesoris
   gidioma        NUMBER := pac_md_common.f_get_cxtidioma();   --C�digo idioma

   FUNCTION f_get_caccesorio(
      paccesorio IN t_iax_autaccesorios,
      pcacc OUT VARCHAR2,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_set_version
         Funci� que valida i inserta en AUT_VERSIONES
         param in pcmarca      : Codi de la marca
         param in pcmodelo     : Codi del modelo
         param in pctipveh     : Codi tipo veh�cle
         param in pcclaveh     : Codi classe veh�cle
         param in pcversion    : Codi de la versi�
         param in ptversion    : Descripci� versi�
         param in ptvarian     : Complement a la versi� (en 2� categoria)
         param in pnpuerta     : N�mero de portes totals en turismes
         param in pnpuertl     : N�mero de portes laterals dels furgons
         param in pnpuertt     : N�mero de portes del darrera dels furgons
         param in pflanzam     : Data del llan�ament. Format mes/any (mm/aaaa)
         param in pntara       : Pes en buit
         param in pnpma        : Pes M�xim Adm�s
         param in pnvolcar     : Volum de carga en els furgons
         param in pnlongit     : Longitud del veh�cle
         param in pnvia        : Via davantera
         param in pnneumat     : Amplada de pneum�tic davanter
         param in pcvehcha     : Descripci� xassis
         param in pcvehlog     : Descripci� longitud
         param in pcvehacr     : Descripci� tacament
         param in pcvehcaj     : Descripci� de caixa
         param in pcvehtec     : Descripci� de sostre
         param in pcmotor      : Tipus de motor (Gasolina, Diesel,  El�ctric, etc)
         param in pncilind     : Cilindrada del motor
         param in pnpotecv     : Pot�ncia del veh�cle
         param in pnpotekw     : Pot�ncia del veh�cle
         param in pnplazas     : N�mero m�xim de places
         param in pnace100     : Temps d'acceleraci� de 0 a 100 Km/h.
         param in pnace400     : Temps d'acceleraci� de 0 a 400 metres
         param in pnveloc      : Velocitat m�xima
         param in pcvehb7      : Indica si ve de base set o no
         param in out mensajes : col�lecci� de missatges
         return                : 0 -> Tot correcte
                                 1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_set_version(
      pcmarca IN VARCHAR2,
      pcmodelo IN VARCHAR2,
      pctipveh IN VARCHAR2,
      pcclaveh IN VARCHAR2,
      pcversion IN VARCHAR2,
      ptversion IN VARCHAR2,
      pnpuerta IN NUMBER,
      pflanzam IN DATE,
      pntara IN NUMBER,
      pnpma IN NUMBER,
      pcmotor IN VARCHAR2,
      pncilind IN NUMBER,
      pnpotecv IN NUMBER,
      pnpotekw IN NUMBER,
      pnplazas IN NUMBER,
      pcvehb7 IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   -- Bug 9247 - APD - 30/03/2009 -- Se crea la funcion f_set_riesauto
   /*************************************************************************
      FUNCTION f_set_riesauto
         Funci�n que carga el objeto de memoria con los cambios que se realizan en pantalla para el objeto de tipo auto.
         param in  psseguro : C�digo identificativo del seguro
         param in  pnriesgo : Numero De Riesgo
         param in  pcversion : En Este Campo Tiene La Siguiente Estructura:
         param in  pcmodelo : C�digo Del Modelo Del Auto.( Se Corresponde Con El Campo Autmodelos.Smodelo)
         param in  pcmarca : Los Cinco Primeros Caracteres Del Campo Cversion.
         param in  pctipveh : C�digo Del Tipo De Veh�culo
         param in  pcclaveh : C�digo De La Clase De Vehiculo.
         param in  pcmatric : Matricula Vehiculo. No Se Informa Si  Ctipmat = 2, Sin Matricula
         param in  pctipmat : Tipo De Matricula. Tipo De Patente
         param in  pcuso : Codigo Uso Del Vehiculo
         param in  pcsubuso : Codigo Subuso Del Vehiculo
         param in  pfmatric : Fecha de primera matriculaci�n
         param in  pnkilometros : N�mero de kil�metros anuales. Valor fijo = 295
         param in  pivehicu : Importe Vehiculo
         param in  pnpma : Peso M�ximo Autorizado
         param in  pntara : Tara
         param in  pnpuertas : Numero de puertas del vehiculo
         param in  pnplazas : Numero de plazas del vehiculo
         param in  pcmotor : C�digo del motor
         param in  pcgaraje : Utiliza garaje. Valor fijo = 296
         param in  pcvehb7 : Indica si procede de base siete o no. Valor fijo = 108
         param in  pcusorem : Utiliza remolque . Valor fijo =108 ( si o no )
         param in  pcremolque : Descripci�n del remolque. Valor fijo =297
         param in  pccolor : C�digo color veh�culo. Valor fijo = 440
         param in  pcvehnue : Indica si el veh�culo es nuevo o no.
         param in  pnbastid : N�mero de bastido( chasis)
         param in  pffinciant : Fecha de antig�edad en la compa��a anterior
         param in  pciaant : Compa��a de la cual procede
         param out  pnriesgo_out : Numero De Riesgo calculado
         param out mensajes : col�lecci� de missatges
       param in  pcpeso : Peso del vehiculo
         param in  pctransmision : Transmision del vehiculo
         return             : 0 -> Si todo OK
                              1 -> Si ha habido un error
   *************************************************************************/
   FUNCTION f_set_riesauto(
      psseguro IN NUMBER,   -- C�digo identificativo del seguro
      pnriesgo IN NUMBER,   --  Numero De Riesgo
      pcversion IN VARCHAR2,   -- En Este Campo Tiene La Siguiente Estructura:
      -- 5 Primeras Posiciones = Marca Del Auto.
      -- Posici�n 6-7-8 = Modelo Del Auto.
      -- Posici�n 9-10-11 = Versi�n Del Auto.
      pcmodelo IN VARCHAR2,   -- C�digo Del Modelo Del Auto.( Se Corresponde Con El Campo Autmodelos.Smodelo)
      pcmarca IN VARCHAR2,   -- Los Cinco Primeros Caracteres Del Campo Cversion.
      pctipveh IN VARCHAR2,   -- C�digo Del Tipo De Veh�culo
      pcclaveh IN VARCHAR2,   -- C�digo De La Clase De Vehiculo.
      pcmatric IN VARCHAR2,   -- Matricula Vehiculo. No Se Informa Si  Ctipmat = 2, Sin Matricula
      pctipmat IN NUMBER,   -- Tipo De Matricula. Tipo De Patente
      pcuso IN VARCHAR2,   -- Codigo Uso Del Vehiculo
      pcsubuso IN VARCHAR2,   -- Codigo Subuso Del Vehiculo
      pfmatric IN DATE,   -- Fecha de primera matriculaci�n
      pnkilometros IN NUMBER,   -- N�mero de kil�metros anuales. Valor fijo = 295
      pivehicu IN NUMBER,   --  Importe Vehiculo
      pnpma IN NUMBER,   --  Peso M�ximo Autorizado
      pntara IN NUMBER,   --  Tara
      pnpuertas IN NUMBER,   --  Numero de puertas del vehiculo
      pnplazas IN NUMBER,   --  Numero de plazas del vehiculo
      pcmotor IN NUMBER,   -- C�digo del motor
      pcgaraje IN NUMBER,   -- Utiliza garaje. Valor fijo = 296
      pcvehb7 IN NUMBER,   -- Indica si procede de base siete o no. Valor fijo = 108
      pcusorem IN NUMBER,   --Utiliza remolque . Valor fijo =108 ( si o no )
      pcremolque IN NUMBER,   -- Descripci�n del remolque. Valor fijo =297
      pccolor IN NUMBER,   --  C�digo color veh�culo. Valor fijo = 440
      pcvehnue IN NUMBER,   -- Indica si el veh�culo es nuevo o no.
      pnbastid IN VARCHAR2,   -- N�mero de bastido( chasis)
      ptriesgo IN VARCHAR2,
      pcpaisorigen IN NUMBER,
      pcodmotor IN VARCHAR2,
      pcchasis IN VARCHAR2,
      pivehinue IN NUMBER,
      pnkilometraje IN NUMBER,
      pccilindraje IN VARCHAR2,
      pcpintura IN NUMBER,
      pccaja IN NUMBER,
      pccampero IN NUMBER,
      pctipcarroceria IN NUMBER,
      pcservicio IN NUMBER,
      pcorigen IN NUMBER,
      pctransporte IN NUMBER,
      pivehicufasecolda IN NUMBER,
      pivehicufasecoldanue IN NUMBER,
      panyo IN NUMBER,
      pnriesgo_out IN OUT NUMBER,
      mensajes IN OUT t_iax_mensajes,
      pffinciant IN DATE DEFAULT NULL,
      pciaant IN NUMBER DEFAULT NULL,
      pcpeso IN NUMBER DEFAULT NULL,
      pctransmision IN NUMBER DEFAULT NULL)
      RETURN NUMBER;

   -- Bug 9247 - APD - 30/03/2009 - Fin Se crea la funcion f_set_riesauto

   -- Bug 9247 - APD - 09/03/2009 -- Se crea la funcion f_set_conductor
   /*************************************************************************
      FUNCTION f_set_conductor
         Funci�n que carga el objeto de memoria con los cambios que se realizan en pantalla.
         param in  pnriesgo : n�mero riesgo
         param in  pnorden : Numero orden de conductor. El n�mero 1 se corresponde al conductor principal
         param in  psperson : C�digo de persona (conductor identificado, nominal)
         param in  pnedad : Edad conductor innominado
         param in  pnpuntos : N�mero de puntos en el permiso
         param in  pfcarnet : Fecha de expedici�n del permiso de conducci�n
         param in  pcsexo : Sexo conductor innominado
         param in  pexper_manual : Numero de a�os de experiencia del conductor.
         param in  pexper_cexper : Numero de a�os de experiencia que viene por interfaz.
         param out mensajes : col�lecci� de missatges
         return             : 0 -> Si todo OK
                              1 -> Si ha habido un error

         -- Bug 25368/133447 - 08/01/2013 - AMC  Se a�ade el pcdomici
         -- Bug 25368/135191 - 15/01/2013 - AMC  Se a�ade el pcprincipal
   *************************************************************************/
   FUNCTION f_set_conductor(
      pnriesgo IN NUMBER,
      pnorden IN NUMBER,
      psperson IN NUMBER,
      pfnacimi IN DATE,
      pnpuntos IN NUMBER,
      pfcarnet IN DATE,
      pcsexo IN NUMBER,
      pcdomici IN NUMBER,
      pcprincipal IN NUMBER,
      pexper_manual IN NUMBER,
      pexper_cexper IN NUMBER,
      pexper_sinie IN NUMBER,
      pexper_sinie_manual IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

-- Bug 9247 - APD - 09/03/2009 -- Se crea la funcion f_set_conductor

   -- Bug 9247 - APD - 06/03/2009 -- Se crea la funcion f_set_AccesoriosNoSerie
   /*************************************************************************
      FUNCTION f_set_AccesoriosNoSerie
         Funci�n que carga el objeto de memoria con los cambios que se realizan en pantalla.
         param in  pnriesgo : n�mero riesgo
         param in  pcversion : n�mero de version
         param in  pcaccesorio : n�mero de accesorio
         param in  ptdescripcion : descripcion del accesorio
         param in  pivalacc : valor del accesorio
         param in  ptipacc : tipo de accesorio
         param out mensajes : col�lecci� de missatges
         return             : 0 -> Si todo OK
                              1 -> Si ha habido un error
   *************************************************************************/
   FUNCTION f_set_accesoriosnoserie(
      pnriesgo IN NUMBER,
      pcversion IN VARCHAR2,   --Obligatiro
      pcaccesorio IN VARCHAR2,   -- No obligatorio
      ptdescripcion IN VARCHAR2,
      pivalacc IN NUMBER,
      pctipacc IN NUMBER,
      pcaccesorio_out IN OUT NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

-- Bug 9247 - APD - 06/03/2009 -- Fin Se crea la funcion f_set_AccesoriosNoSerie

   -- Bug 9247 - APD - 06/03/2009 -- Se crea la funcion f_set_detautriesgos
   /*************************************************************************
      FUNCTION f_set_detautriesgos
         Funci�n que insertar� en objeto ob_iax_autaccesorios del objeto p�liza
         param in pnriesgo: numero de riesgo
         param in pnmovimi: numero de movimiento
         param in pcversion: codigo de version
         param in pcaccesorio: codigo del accesorio
         param in pctipacc: codigo del tipo de accesorio
         param in pfini: fecha de inicio o alta
         param in pivalacc: valor del accesorio
         param in ptdesacc: descripcion del accesorio
         param out mensajes : col�lecci� de missatges
         return             : 0 -> Si todo OK
                              1 -> Si ha habido un error
   *************************************************************************/
   FUNCTION f_set_detautriesgos(
      pnriesgo IN NUMBER,
      pnmovimi IN NUMBER,
      pcversion IN VARCHAR2,
      pcaccesorio IN VARCHAR2,
      pctipacc IN VARCHAR2,
      pfini IN DATE,
      pivalacc IN NUMBER,
      ptdesacc IN VARCHAR2,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

-- Bug 9247 - APD - 06/03/2009 -- Fin Se crea la funcion f_set_detautriesgos

   -- Bug 9247 - APD - 23/03/2009 -- Se crea la funcion f_set_garanmodalidad
   /*************************************************************************
    Recupera las garant�as que contiene una modalidad.
    param in p_nriesgo: identificador del riesgo
    param in p_cmodalidad: codigo de la modalidad
    param in p_solicit: c�digo de solicitut
    param in p_nmovimi: n�mero de movimiento
    param in p_pmode: modo
    param out garantaias: coleccion de garantias
    param out mensajes: mensajes de error
    return : ref cursor
    *************************************************************************/
   FUNCTION f_set_garanmodalidad(
      p_nriesgo IN NUMBER,
      p_cmodalidad IN NUMBER,
      p_solicit IN NUMBER,
      p_nmovimi IN NUMBER,
      p_pmode IN VARCHAR2,
      garantias OUT t_iax_garantias,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

-- Bug 9247 - APD - 23/03/2009 -- Se crea la funcion f_set_garanmodalidad
   FUNCTION f_get_auto_matric(
      pctipmat IN NUMBER,
      pcmatric IN VARCHAR2,
      psproduc IN NUMBER,   -- Bug 26435/142193 - 03/05/2013 - AMC
      pcactivi IN NUMBER,   -- Bug 26435/142193 - 03/05/2013 - AMC
      pcmodo IN VARCHAR2,
      mensajes IN OUT t_iax_mensajes)
      RETURN ob_iax_autriesgos;

   FUNCTION f_hay_homologacion(
      pcversion IN VARCHAR2,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pvalorcomercial OUT NUMBER,
      pvalorcomercial_nuevo OUT NUMBER,
      phomologado OUT NUMBER,
      pmensajemostrar OUT VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

      -- BUG: 0027953/0151258 - JSV 21/08/2013
/*************************************************************************
    Recupera las garant�as que contiene una modalidad.
    param in p_nriesgo: identificador del riesgo
    param in p_cmodalidad: codigo de la modalidad
    param in p_solicit: c�digo de solicitut
    param in p_nmovimi: n�mero de movimiento
    param in p_pmode: modo
    param out garantaias: coleccion de garantias
    param out mensajes: mensajes de error
    return : ref cursor
    *************************************************************************/
   FUNCTION f_get_garanmodalidad(
      p_nriesgo IN NUMBER,
      p_cmodalidad IN NUMBER,
      p_solicit IN NUMBER,
      p_nmovimi IN NUMBER,
      p_pmode IN VARCHAR2,
      garantias OUT t_iax_garantias,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;
END pac_md_produccion_aut;

/

  GRANT EXECUTE ON "AXIS"."PAC_MD_PRODUCCION_AUT" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MD_PRODUCCION_AUT" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MD_PRODUCCION_AUT" TO "PROGRAMADORESCSI";
