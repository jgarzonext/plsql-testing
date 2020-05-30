--------------------------------------------------------
--  DDL for Package PAC_IAX_PRODUCCION_AUT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_IAX_PRODUCCION_AUT" IS
/******************************************************************************
   NOMBRE:       PAC_MD_PERSONA
   PROP�SITO: Funcions per gestionar autos

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        03/03/2009   XVM                1. Creaci�n del package.
   2.0        04/10/2010   JTS                2. 16163: CRT - Modificar tabla descripcion riesgo (autriesgo)
   3.0        14/02/2013   JDS                3. 0025964: LCOL - AUT - Experiencia
   4.0        22/08/2013   JSV                4  0027953: LCOL - Autos Garantias por Modalidad
   5.0        13/09/2013   JDS                5  0027923: LCOL_F3BTEC-MTF3B - LCOL_TEC23 - Definicion de condiciones en Certificado 0
   6.0        16/10/2013   SHA                6  00026923: LCOL - TEC - Revisi�n Q-Trackers Fase 3A
******************************************************************************/

   /*************************************************************************
   GLOBALS
*************************************************************************/
   poliza         ob_iax_poliza;   --Objecte p�lisa
   asegurado      ob_iax_asegurados;   --Objecte assegurat
   accesorios     ob_iax_autaccesorios;   --Objecte accesori
   taccesorios    t_iax_autaccesorios;   --Objecte col�lecci� accesoris
   tdispositivos  t_iax_autdispositivos;   --Objecte col�lecci� accesoris
   gidioma        NUMBER := pac_iax_common.f_get_cxtidioma();   --C�digo idioma

   /*************************************************************************
      FUNCTION f_lee_riesauto
         Funci� que retorna un auto per un risc en concret
         param in  pnriesgo : n�mero risc
         param out pcacc    : codi accesori
         param out mensajes : col�lecci� de missatges
         return             : objecte d'autos (ob_iax_autriesgo)
   *************************************************************************/
   FUNCTION f_lee_riesauto(pnriesgo IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN ob_iax_autriesgos;

   /*************************************************************************
      FUNCTION f_lee_conductor
         Funci� que retorna un conductor per un risc i ordre en concret
         param in  pnriesgo : n�mero risc
         param out mensajes : col�lecci� de missatges
         param in  pnorden  : n�mero ordre (default 1)
         return             : objecte conductor (ob_iax_autconductores)
   *************************************************************************/
   FUNCTION f_lee_conductor(
      pnriesgo IN NUMBER,
      mensajes OUT t_iax_mensajes,
      pnorden IN NUMBER DEFAULT 1)
      RETURN ob_iax_autconductores;

   /*************************************************************************
      FUNCTION f_lee_conductores
         Funci� que retorna la col�lecci� de conductors per un risc en concret
         param in  pnriesgo : n�mero risc
         param out mensajes : col�lecci� de missatges
         return             : colecci� de conductors (t_iax_autconductores)
   *************************************************************************/
   FUNCTION f_lee_conductores(pnriesgo IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN t_iax_autconductores;

   /*************************************************************************
      FUNCTION f_exist_propietarioconductor
         Funci� que valida si la persona passada per par�metre es el conductor principal
         param in  pnriesgo : n�mero risc
         param out mensajes : col�lecci� de missatges
         param in  pnorden  : n�mero ordre (default 1)
         return             : 0 -> Persona NO conductor principal
                              1 -> Persona conductor principal
   *************************************************************************/
   FUNCTION f_exist_propietarioconductor(
      pnriesgo IN NUMBER,
      mensajes OUT t_iax_mensajes,
      pnorden IN NUMBER DEFAULT 1)
      RETURN NUMBER;

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
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

-- Bug 9247 - APD - 06/03/2009 -- Se crea la funcion f_set_detautriesgos

   -- Bug 9247 - APD - 06/03/2009 -- Se crea la funcion f_elimina_conductor
   /*************************************************************************
      FUNCTION f_elimina_conductor
         Funci�n que elimina del objeto ob_iax_conductores el conductor indicado
         param in  pnriesgo : n�mero risc
         param in  psperson : n�mero de persona
         param in  pnorden : n�mero de asegurado
         param out mensajes : col�lecci� de missatges
         return             : 0 -> Si todo OK
                              1 -> Si ha habido un error
   *************************************************************************/
   FUNCTION f_elimina_conductor(
      pnriesgo IN NUMBER,
      psperson IN NUMBER,
      pnorden IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

-- Bug 9247 - APD - 06/03/2009 -- Se crea la funcion f_elimina_conductor

   -- Bug 9247 - APD - 06/03/2009 -- Se crea la funcion f_set_version
   /*************************************************************************
      FUNCTION f_set_version
         Funci�n que inserta en AUT_VERSIONES
         param in  pcversion : C�digo de la versi�n
         param in  pcmodelo : C�digo del modelo.
         param in  pcmarca : C�digo de la marca.
         param in  pcclaveh : C�digo clase veh�culo.
         param in  pctipveh : C�digo tipo veh�culo
         param in  ptversion : Descripci�n versi�n
         param in  ptvarian : Complemento a la versi�n (en 2� categor�a)
         param in  pnpuerta : N�mero de puertas totales en turismos.
         param in  pnpuertl : N�mero de puertas laterales de los furgones
         param in  pnpuertt : N�mero de puertas traseras de los furgones
         param in  pflanzam : Fecha de lanzamiento. Formato mes/a�o (mm/aaaa)
         param in  pntara : Peso en vac�o
         param in  pnpma : Peso M�ximo Admitido
         param in  pnvolcar : Volumen de carga en los furgones
         param in  pnlongit : Longitud del veh�culo
         param in  pnvia : V�a delantera
         param in  pnneumat : Anchura de neum�tico delantero
         param in  pcvehcha : Descriptivo de chasis
         param in  pcvehlog : Descriptivo de longitud
         param in  pcvehacr : Descriptivo de cerramiento
         param in  pcvehcaj : Descriptivo de caja
         param in  pcvehtec : Descriptivo de techo
         param in  pcmotor : Tipo de motor (Gasolina, Diesel,  El�ctrico, etc). Valor fijo 291
         param in  pncilind : Cilindrada del motor
         param in  pnpotecv : Potencia del veh�culo
         param in  pnpotekw : Potencia del veh�culo
         param in  pnplazas : N�mero  M�ximo de plazas
         param in  pnace100 : Tiempo de aceleraci�n de 0 a 100 Km/h.
         param in  pnace400 : Tiempo de aceleraci�n de 0 a 400 metros
         param in  pnveloc : Velocidad m�xima
         param in  pcvehb7 : Indica si viene de base siete o no. Si procede de base siete no se puede modificar los valores. Valor fijo=108
         param out pcversion_out : C�digo de la versi�n
         param out mensajes : col�lecci� de missatges
         return             : 0 -> Si todo OK
                              1 -> Si ha habido un error
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
      pcversion_out OUT VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

-- Bug 9247 - APD - 06/03/2009 -- Se crea la funcion f_set_version

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
      pcvehb7 IN NUMBER,
      pcmarcado IN NUMBER,
      pcasegurable IN NUMBER,
      pcaccesorio_out OUT VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   FUNCTION f_set_dispositivonoserie(
      pnriesgo IN NUMBER,
      pcversion IN VARCHAR2,   --Obligatiro
      pcdispositivo IN VARCHAR2,   -- No obligatorio
      pcpropdisp IN VARCHAR2,
      pivaldisp IN NUMBER,
      pfinicontrato IN DATE,
      pffincontrato IN DATE,
      pcmarcado IN NUMBER,
      pncontrato IN NUMBER,
      ptdescdisp IN VARCHAR2,
      pcdispositivo_out OUT VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

-- Bug 9247 - APD - 06/03/2009 -- Fin Se crea la funcion f_set_AccesoriosNoSerie

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
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

-- Bug 9247 - APD - 09/03/2009 -- Fin Se crea la funcion f_set_conductor

   -- Bug 9247 - APD - 09/03/2009 -- Se crea la funcion f_set_riesauto
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
      pnriesgo_out OUT NUMBER,
      mensajes OUT t_iax_mensajes,
      pffinciant IN DATE DEFAULT NULL,
      pciaant IN NUMBER DEFAULT NULL,
      pcpeso IN NUMBER DEFAULT NULL,
      pctransmision IN NUMBER DEFAULT NULL)
      RETURN NUMBER;

-- Bug 9247 - APD - 09/03/2009 -- Fin Se crea la funcion f_set_riesauto

   -- Bug 9247 - APD - 10/03/2009 -- Se crea la funcion f_grabaconductores
   -- Bug 25368/133447 - 08/01/2013 - AMC  Se a�ade el pcdomici
   -- Bug 25368/135191 - 15/01/2013 - AMC  Se a�ade el pcprincipal
   FUNCTION f_grabaconductores(
      pnriesgo IN NUMBER,   -- Numero de riesgo
      psperson IN NUMBER,   -- Identificador de la persona
      pnpuntos IN NUMBER,   -- Numero de puntos
      pfcarnet IN DATE,   -- Fecha carnet
      pcdomici IN NUMBER,   -- C�digo de domicilio
      pcprincipal IN NUMBER,   -- Conductor principal
      pexper_manual IN NUMBER,   --Numero de a�os de experiencia del conductor
      pexper_cexper IN NUMBER,   --Numero de a�os de experiencia que viene por interfaz.
      pexper_sinie IN NUMBER,
      pexper_sinie_manual IN NUMBER,
      pnorden IN NUMBER DEFAULT 0,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

-- Bug 9247 - APD - 10/03/2009 -- Fin Se crea la funcion f_grabaconductores

   -- Bug 9247 - APD - 23/03/2009 -- Se crea la funcion f_set_garanmodalidad
   /*************************************************************************
    Recupera las garant�as que contiene una modalidad.
    param in p_nriesgo: identificador del riesgo
    param in p_cmodalidad: codigo de la modalidad
    param out garantaias: coleccion de garantias
    param out mensajes: mensajes de error
    return : ref cursor
    *************************************************************************/
   FUNCTION f_set_garanmodalidad(
      p_nriesgo IN NUMBER,
      p_cmodalidad IN NUMBER,
      garantias OUT t_iax_garantias,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

-- Bug 9247 - APD - 23/03/2009 -- Se crea la funcion f_set_garanmodalidad

   /*************************************************************************
      FUNCTION f_lee_accesorios
         Funci� que retorna los accesorios no serie del riesgo,si esta vacio lo rellena con los de base7
         param in pnriesgo : n�mero risc
         param out mensajes : col�lecci� de missatges
         return             : col�lecci� d'accesoris (t_iax_autaccesorios)
   *************************************************************************/
   FUNCTION f_lee_accesorios(pnriesgo IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN t_iax_autaccesorios;

   /*************************************************************************
        FUNCTION f_lee_accesoriosnoserie
           Funci� que retorna los accesorios no serie de la version
           param in pcversion : c�digo de versi�n
           param out mensajes : col�lecci� de missatges
           return             : col�lecci� d'accesoris (t_iax_autaccesorios)
     *************************************************************************/
   FUNCTION f_lee_accesoriosnoserie(pcversion IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN t_iax_autaccesorios;

   FUNCTION f_lee_dispositivosnoserie(pcversion IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN t_iax_autdispositivos;

   FUNCTION f_lee_dispositivos(pnriesgo IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN t_iax_autdispositivos;

   FUNCTION f_del_accesoriosnoserie(
      pnriesgo IN NUMBER,
      pcversion IN VARCHAR2,
      pcaccesorio IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   FUNCTION f_del_dispositivosnoserie(
      pnriesgo IN NUMBER,
      pcversion IN VARCHAR2,
      pcdispositivo IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   FUNCTION f_get_auto_matric(
      pctipmat IN NUMBER,
      pcmatric IN VARCHAR2,
      psproduc IN NUMBER,   -- Bug 26435/142193 - 03/05/2013 - AMC
      pcactivi IN NUMBER,   -- Bug 26435/142193 - 03/05/2013 - AMC
      pcmodo IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
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

   --BUG: 26635  LCOL - AUT - Cotnrol de duplicidad de Autos.
   FUNCTION f_controlduplicidad(
      psseguro IN NUMBER,   -- C�digo identificativo del seguro
      pcmatric IN VARCHAR2,   -- Matricula Vehiculo. No Se Informa Si  Ctipmat = 2, Sin Matricula
      pnbastid IN VARCHAR2,
      pcchasis IN VARCHAR2,   -- C�digo de chasis
      pcodmotor IN VARCHAR2,   -- C�digo del motor
      psproduc IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   --BUG: 0027953/0151258 - JSV 21/08/2013 - INI
   FUNCTION f_get_garanmodalidad(
      p_nriesgo IN NUMBER,
      p_cmodalidad IN NUMBER,
      garantias OUT t_iax_garantias,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   FUNCTION f_set_conductor_tomador(
      pnriesgo IN NUMBER,
      pnorden IN NUMBER,
      psperson IN NUMBER,
      psproduc IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   FUNCTION f_leeaseguradonotomador(
      mensajes OUT t_iax_mensajes,
      pnriesgo IN NUMBER DEFAULT 1,
      pntomador IN NUMBER)
      RETURN ob_iax_asegurados;

   FUNCTION f_leeasegurados(mensajes OUT t_iax_mensajes, pnriesgo IN NUMBER DEFAULT 1)
      RETURN t_iax_asegurados;
END pac_iax_produccion_aut;

/

  GRANT EXECUTE ON "AXIS"."PAC_IAX_PRODUCCION_AUT" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_PRODUCCION_AUT" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_PRODUCCION_AUT" TO "PROGRAMADORESCSI";
