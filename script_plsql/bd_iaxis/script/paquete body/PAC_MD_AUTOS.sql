--------------------------------------------------------
--  DDL for Package Body PAC_MD_AUTOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "AXIS"."PAC_MD_AUTOS" AS
/******************************************************************************
   NOMBRE:       pac_md_autos
   PROP�SITO:  Funciones para realizar una conexi�n
               a base de datos de la capa de negocio

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/03/2009   XVM               1. Creaci�n del package.
   2.0        07/01/2013   MDS               2. 0025458: LCOL_T031-LCOL - AUT - (ID 279) Tipos de placa (matr?cula)
   3.0        31/01/2013   DCT               3. 0025628: LCOL_T031-LCOL - AUT - (ID 278 id 85) Control duplicidad matriculas
   4.0        18/12/2013   JDS               4. 0026923: LCOL - TEC - Revisi�n Q-Trackers Fase 3A
******************************************************************************/
   e_object_error EXCEPTION;
   e_param_error  EXCEPTION;
   v_idioma       NUMBER := pac_md_common.f_get_cxtidioma();

   --pmode          VARCHAR2(20);

   /*************************************************************************
      FUNCTION f_valida_version
         Funci� que valida determinats conceptes de la versi�
         param in pcmarca   : Codi de la marca
         param in pcmodelo  : Codi del modelo
         param in pctipveh  : Codi tipo veh�cle
         param in pcclaveh  : Codi classe veh�cle
         param in pcversion : Codi de la versi�
         param in ptversion : Descripci� versi�
         param in ptvarian  : Complement a la versi� (en 2� categoria)
         param in pnpuerta  : N�mero de portes totals en turismes
         param in pnpuertl  : N�mero de portes laterals dels furgons
         param in pnpuertt  : N�mero de portes del darrera dels furgons
         param in pflanzam  : Data del llan�ament. Format mes/any (mm/aaaa)
         param in pntara    : Pes en buit
         param in pnpma     : Pes M�xim Adm�s
         param in pnvolcar  : Volum de carga en els furgons
         param in pnlongit  : Longitud del veh�cle
         param in pnvia     : Via davantera
         param in pnneumat  : Amplada de pneum�tic davanter
         param in pcvehcha  : Descripci� xassis
         param in pcvehlog  : Descripci� longitud
         param in pcvehacr  : Descripci� tacament
         param in pcvehcaj  : Descripci� de caixa
         param in pcvehtec  : Descripci� de sostre
         param in pcmotor   : Tipus de motor (Gasolina, Diesel,  El�ctric, etc)
         param in pncilind  : Cilindrada del motor
         param in pnpotecv  : Pot�ncia del veh�cle
         param in pnpotekw  : Pot�ncia del veh�cle
         param in pnplazas  : N�mero m�xim de places
         param in pnace100  : Temps d'acceleraci� de 0 a 100 Km/h.
         param in pnace400  : Temps d'acceleraci� de 0 a 400 metres
         param in pnveloc   : Velocitat m�xima
         param in pcvehb7   : Indica si ve de base set o no
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_valida_version(
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
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER := 0;
      vobject        VARCHAR2(500) := 'pac_md_autos.f_valida_version';
      vparam         VARCHAR2(500)
         := 'par�metros - pcmarca  	' || pcmarca || ' pcmodelo 	' || pcmodelo || ' pctipveh 	'
            || pctipveh || ' pcclaveh 	' || pcclaveh || ' pcversion	' || pcversion
            || ' ptversion	' || ptversion || ' pnpuerta 	' || pnpuerta || ' pflanzam 	'
            || pflanzam || ' pntara		' || pntara || ' pnpma 		' || pnpma || ' pcmotor 	'
            || pcmotor || ' pncilind 	' || pncilind || ' pnpotecv 	' || pnpotecv
            || ' pnpotekw 	' || pnpotekw || ' pnplazas 	' || pnplazas || ' pcvehb7		'
            || pcvehb7;
      vpasexec       NUMBER(5) := 1;
   BEGIN
      vnumerr := pac_autos.f_valida_version(pcmarca, pcmodelo, pctipveh, pcclaveh, pcversion,
                                            ptversion, pnpuerta, pflanzam, pntara, pnpma,
                                            pcmotor, pncilind, pnpotecv, pnpotekw, pnplazas,
                                            pcvehb7);

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RETURN vnumerr;
      END IF;

      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_valida_version;

   FUNCTION f_valida_rieauto(
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
      pcmotor IN VARCHAR2,   -- Tipo combustible(Tipo de motor (Gasolina, Diesel,etc))
      pcgaraje IN NUMBER,   -- Utiliza garaje. Valor fijo = 296
      pcvehb7 IN NUMBER,   -- Indica si procede de base siete o no. Valor fijo = 108
      pcusorem IN NUMBER,   --Utiliza remolque . Valor fijo =108 ( si o no )
      pcremolque IN NUMBER,   -- Descripci�n del remolque. Valor fijo =297
      pccolor IN NUMBER,   --  C�digo color veh�culo. Valor fijo = 440
      pcvehnue IN VARCHAR2,   -- Indica si el veh�culo es nuevo o no.
      pnbastid IN VARCHAR2,
      pcchasis IN VARCHAR2,   -- C�digo de chasis
      pcodmotor IN VARCHAR2,   -- C�digo del motor
      panyo IN NUMBER,   --  Anyo del vehiculo
      mensajes OUT t_iax_mensajes)   -- N�mero de bastido( chasis))
      RETURN NUMBER IS
      vobdetpoliza   ob_iax_detpoliza;
      vreemplazos    t_iax_reemplazos;
      nerror         NUMBER;
      v_cvalpar      NUMBER;
      vtrobat_reemplazo NUMBER := 0;
      vnumerr        NUMBER := 0;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(4000)
         := 'par�metros - psseguro: ' || psseguro || ' pnriesgo: ' || pnriesgo
            || ' pcversion: ' || pcversion || ' pcmarca: ' || pcmarca || ' pctipveh: '
            || pctipveh || ' pcclaveh: ' || pcclaveh || ' pcmatric: ' || pcmatric
            || ' pctipmat: ' || pctipmat || ' pcuso: ' || pcuso || ' pcsubuso: ' || pcsubuso
            || ' pfmatric: ' || pfmatric || ' pnkilometros: ' || pnkilometros || ' pivehicu: '
            || pivehicu || ' pnpma: ' || pnpma || ' pntara: ' || pntara || ' pnpuertas: '
            || pnpuertas || ' pnplazas: ' || pnplazas || ' pcmotor: ' || pcmotor
            || ' pcgaraje: ' || pcgaraje || ' pcvehb7: ' || pcvehb7 || ' pcusorem: '
            || pcusorem || ' pcremolque: ' || pcremolque || ' pccolor: ' || pccolor
            || ' pcvehnue: ' || pcvehnue || ' pnbastid: ' || pnbastid || ' pcchasis: '
            || pcchasis || ' pcodmotor: ' || pcodmotor || ' panyo: ' || panyo;
      vobject        VARCHAR2(200) := 'pac_md_autos.f_valida_rieauto';
   BEGIN
      vnumerr :=
         pac_autos.f_valida_rieauto(psseguro, pnriesgo, pcversion, pcmodelo, pcmarca,
                                    pctipveh, pcclaveh, pcmatric, pctipmat, pcuso, pcsubuso,
                                    pfmatric, pnkilometros, pivehicu, pnpma, pntara,
                                    pnpuertas, pnplazas, pcmotor, pcgaraje, pcvehb7, pcusorem,
                                    pcremolque, pccolor, pcvehnue, pnbastid, pcchasis,
                                    pcodmotor, pac_iax_produccion.poliza.det_poliza.sproduc,
                                    pac_iax_produccion.poliza.det_poliza.gestion.fefecto,
                                    panyo);

      IF vnumerr <> 0 THEN
         --pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RETURN vnumerr;
      END IF;

      IF pac_iax_produccion.issimul = FALSE THEN
         nerror := f_parproductos(pac_iax_produccion.poliza.det_poliza.sproduc,
                                  'POLIZA_UNICA', v_cvalpar);

         IF nerror <> 0 THEN
            RETURN nerror;
         END IF;

         IF NVL(v_cvalpar, 0) = 5 THEN   --Bug 26435/165053 - 03/02/2014 - AMC
            -- Miramos si la p�liza viene de un reemplazo.
            -- Si viene de un reemplazo no miramos la duplicidad.
            vobdetpoliza := pac_iobj_prod.f_getpoliza(mensajes);

            IF mensajes IS NOT NULL THEN
               vpasexec := 2;
               RAISE e_object_error;
            END IF;

            vreemplazos := pac_iobj_prod.f_partpolreemplazos(vobdetpoliza, mensajes);

            IF mensajes IS NOT NULL THEN
               vpasexec := 2;
               RAISE e_object_error;
            END IF;

            IF vreemplazos IS NOT NULL THEN
               IF vreemplazos.COUNT > 0 THEN
                  FOR i IN 1 .. vreemplazos.LAST LOOP
                     IF vreemplazos(i).sseguro = vobdetpoliza.sseguro THEN
                        -- poliza que viene de un reemplazo
                        vtrobat_reemplazo := 1;
                     END IF;
                  END LOOP;
               END IF;
            END IF;

            --por cumulo
            --BUG 26435 - INICIO - DCT - 15/03/2013 - A�adir pcchasis
            IF vtrobat_reemplazo = 0 THEN
               vnumerr :=
                  pac_md_autos.f_controlduplicidad
                                                (NVL(psseguro, vobdetpoliza.sseguro),
                                                 pcmatric, pnbastid, pcchasis, pcodmotor,
                                                 pac_iax_produccion.poliza.det_poliza.sproduc,
                                                 pac_iax_produccion.vfefecto, mensajes);
            END IF;
         END IF;
      END IF;

      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_valida_rieauto;

   /*************************************************************************
      FUNCTION f_set_version
         Funci� que inserta en AUT_VERSIONES
         param in pcmarca   : Codi de la marca
         param in pcmodelo  : Codi del modelo
         param in pctipveh  : Codi tipo veh�cle
         param in pcclaveh  : Codi classe veh�cle
         param in pcversion : Codi de la versi�
         param in ptversion : Descripci� versi�
         param in ptvarian  : Complement a la versi� (en 2� categoria)
         param in pnpuerta  : N�mero de portes totals en turismes
         param in pnpuertl  : N�mero de portes laterals dels furgons
         param in pnpuertt  : N�mero de portes del darrera dels furgons
         param in pflanzam  : Data del llan�ament. Format mes/any (mm/aaaa)
         param in pntara    : Pes en buit
         param in pnpma     : Pes M�xim Adm�s
         param in pnvolcar  : Volum de carga en els furgons
         param in pnlongit  : Longitud del veh�cle
         param in pnvia     : Via davantera
         param in pnneumat  : Amplada de pneum�tic davanter
         param in pcvehcha  : Descripci� xassis
         param in pcvehlog  : Descripci� longitud
         param in pcvehacr  : Descripci� tacament
         param in pcvehcaj  : Descripci� de caixa
         param in pcvehtec  : Descripci� de sostre
         param in pcmotor   : Tipus de motor (Gasolina, Diesel,  El�ctric, etc)
         param in pncilind  : Cilindrada del motor
         param in pnpotecv  : Pot�ncia del veh�cle
         param in pnpotekw  : Pot�ncia del veh�cle
         param in pnplazas  : N�mero m�xim de places
         param in pnace100  : Temps d'acceleraci� de 0 a 100 Km/h.
         param in pnace400  : Temps d'acceleraci� de 0 a 400 metres
         param in pnveloc   : Velocitat m�xima
         param in pcvehb7   : Indica si ve de base set o no
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_set_version(
      pcmarca IN VARCHAR2,
      pcmodelo IN VARCHAR2,
      pctipveh IN VARCHAR2,
      pcclaveh IN VARCHAR2,
      pcversion IN VARCHAR2,
      ptversion IN VARCHAR2,
      ptvarian IN VARCHAR2,
      pnpuerta IN NUMBER,
      pnpuertl IN NUMBER,
      pnpuertt IN NUMBER,
      pflanzam IN DATE,
      pntara IN NUMBER,
      pnpma IN NUMBER,
      pnvolcar IN NUMBER,
      pnlongit IN NUMBER,
      pnvia IN NUMBER,
      pnneumat IN NUMBER,
      pcvehcha IN VARCHAR2,
      pcvehlog IN VARCHAR2,
      pcvehacr IN VARCHAR2,
      pcvehcaj IN VARCHAR2,
      pcvehtec IN VARCHAR2,
      pcmotor IN VARCHAR2,
      pncilind IN NUMBER,
      pnpotecv IN NUMBER,
      pnpotekw IN NUMBER,
      pnplazas IN NUMBER,
      pnace100 IN NUMBER,
      pnace400 IN NUMBER,
      pnveloc IN NUMBER,
      pcvehb7 IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER := 0;
      vobject        VARCHAR2(500) := 'pac_md_autos.f_set_version';
      vparam         VARCHAR2(500)
         := 'par�metros - pcmarca: ' || pcmarca || ' pcmodelo:' || pcmodelo || ' pctipveh:'
            || pctipveh || ' pcclaveh:' || pcclaveh || ' pcversion:' || pcversion
            || ' ptversion:' || ptversion || ' ptvarian:' || ptvarian || ' pnpuerta:'
            || pnpuerta || ' pnpuertl:' || pnpuertl || ' pnpuertt:' || pnpuertt
            || ' pflanzam:' || pflanzam || ' pntara:' || pntara || ' pnpma:' || pnpma
            || ' pnvolcar:' || pnvolcar || ' pnlongit:' || pnlongit || ' pnvia:' || pnvia
            || ' pnneumat:' || pnneumat || ' pnvia:' || pnvia || ' pnneumat:' || pnneumat
            || ' pcvehcha:' || pcvehcha || ' pcvehlog:' || pcvehlog || ' pcvehacr:'
            || pcvehacr || ' pcvehcaj:' || pcvehcaj || ' pcvehtec:' || pcvehtec || ' pcmotor:'
            || pcmotor || ' pncilind:' || pncilind || ' pnpotecv:' || pnpotecv || ' pnpotekw:'
            || pnpotekw || ' pnplazas:' || pnplazas || ' pnace100:' || pnace100
            || ' pnace400:' || pnace400 || ' pnveloc:' || pnveloc || ' pcvehb7:' || pcvehb7;
      vpasexec       NUMBER(5) := 1;
      vseqversion    VARCHAR2(11);
   BEGIN
      vnumerr := pac_autos.f_set_version(pcmarca, pcmodelo, pctipveh, pcclaveh, pcversion,
                                         ptversion, pnpuerta, pflanzam, pntara, pnpma,
                                         pcmotor, pncilind, pnpotecv, pnpotekw, pnplazas,
                                         pcvehb7);

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RETURN vnumerr;
      END IF;

      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_set_version;

-- Bug 9247 - APD - 12/03/2009 -- Se crea la funcion f_desversion
   /*************************************************************************
      FUNCTION f_desversion
         Funcion que busca la descripcion de la version de un vehiculo
         param in pcversion : Codi de la versi�
         return             : descripcion de la version
   *************************************************************************/
   FUNCTION f_desversion(pcversion IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN VARCHAR2 IS
      vnumerr        NUMBER := 0;
      vparam         VARCHAR2(500) := ' --';
      vpasexec       NUMBER(5) := 1;
      vobject        VARCHAR2(500) := 'pac_md_autos.f_desversion';
   BEGIN
      vnumerr := pac_autos.f_desversion(pcversion);

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RETURN vnumerr;
      END IF;

      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_desversion;

-- Bug 9247 - APD - 12/03/2009 -- Se crea la funcion f_desversion

   -- Bug 9247 - APD - 12/03/2009 -- Se crea la funcion f_desmodelo
   /*************************************************************************
      FUNCTION f_desmodelo
         Funcion que busca la descripcion del modelo de un vehiculo
         param in pcmodelo : Codigo del modelo
         param in pcmarca : Codigo de la marca
         return            : descripcion del modelo
   *************************************************************************/
   FUNCTION f_desmodelo(pcmodelo IN VARCHAR2, pcmarca IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN VARCHAR2 IS
      vnumerr        NUMBER := 0;
      vparam         VARCHAR2(500) := ' --';
      vpasexec       NUMBER(5) := 1;
      vobject        VARCHAR2(500) := 'pac_md_autos.f_desmodelo';
   BEGIN
      vnumerr := pac_autos.f_desmodelo(pcmodelo, pcmarca);

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RETURN vnumerr;
      END IF;

      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_desmodelo;

-- Bug 9247 - APD - 12/03/2009 -- Se crea la funcion f_desmodelo

   -- Bug 9247 - APD - 12/03/2009 -- Se crea la funcion f_desmarca
   /*************************************************************************
      FUNCTION f_desmarca
         Funcion que busca la descripcion de la marca de un vehiculo
         param in pcmarca : Codigo de la marca
         return            : descripcion de la marca
   *************************************************************************/
   FUNCTION f_desmarca(pcmarca IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN VARCHAR2 IS
      vnumerr        NUMBER := 0;
      vparam         VARCHAR2(500) := ' --';
      vpasexec       NUMBER(5) := 1;
      vobject        VARCHAR2(500) := 'pac_md_autos.f_desmarca';
   BEGIN
      vnumerr := pac_autos.f_desmarca(pcmarca);

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RETURN vnumerr;
      END IF;

      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_desmarca;

-- Bug 9247 - APD - 12/03/2009 -- Se crea la funcion f_desmarca

   -- Bug 9247 - APD - 12/03/2009 -- Se crea la funcion f_destipveh
   /*************************************************************************
      FUNCTION f_destipveh
         Funcion que busca la descripcion del tipo de un vehiculo
         param in pctipveh : Codigo del tipo de vehiculo
         param in v_idioma : Idioma de la descripcion
         return            : descripcion del tipo
   *************************************************************************/
   FUNCTION f_destipveh(pctipveh IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN VARCHAR2 IS
      vnumerr        NUMBER := 0;
      vparam         VARCHAR2(500) := ' --';
      vpasexec       NUMBER(5) := 1;
      vobject        VARCHAR2(500) := 'pac_md_autos.f_destipveh';
   BEGIN
      vnumerr := pac_autos.f_destipveh(pctipveh, v_idioma);

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RETURN vnumerr;
      END IF;

      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_destipveh;

-- Bug 9247 - APD - 12/03/2009 -- Se crea la funcion f_destipveh

   -- Bug 9247 - APD - 12/03/2009 -- Se crea la funcion f_desclaveh
   /*************************************************************************
      FUNCTION f_desclaveh
         Funcion que busca la descripcion de la clase de un vehiculo
         param in pcclaveh : Codigo de la clase de vehiculo
         param in v_idioma : Idioma de la descripcion
         return            : descripcion del tipo
   *************************************************************************/
   FUNCTION f_desclaveh(pcclaveh IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN VARCHAR2 IS
      vnumerr        NUMBER := 0;
      vparam         VARCHAR2(500) := ' --';
      vpasexec       NUMBER(5) := 1;
      vobject        VARCHAR2(500) := 'pac_md_autos.f_desclaveh';
   BEGIN
      vnumerr := pac_autos.f_desclaveh(pcclaveh, v_idioma);

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RETURN vnumerr;
      END IF;

      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_desclaveh;

-- Bug 9247 - APD - 12/03/2009 -- Se crea la funcion f_desclaveh

   -- Bug 9247 - APD - 12/03/2009 -- Se crea la funcion f_desuso
   /*************************************************************************
      FUNCTION f_desuso
         Funcion que busca la descripcion del uso de un vehiculo
         param in pcuso : Codigo del uso de vehiculo
         param in v_idioma : Idioma de la descripcion
         return            : descripcion del uso
   *************************************************************************/
   FUNCTION f_desuso(pcuso IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN VARCHAR2 IS
      vnumerr        NUMBER := 0;
      vparam         VARCHAR2(500) := ' --';
      vpasexec       NUMBER(5) := 1;
      vobject        VARCHAR2(500) := 'pac_md_autos.f_desuso';
   BEGIN
      vnumerr := pac_autos.f_desuso(pcuso, v_idioma);

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RETURN vnumerr;
      END IF;

      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_desuso;

-- Bug 9247 - APD - 12/03/2009 -- Se crea la funcion f_desuso

   -- Bug 9247 - APD - 12/03/2009 -- Se crea la funcion f_dessubuso
   /*************************************************************************
      FUNCTION f_dessubuso
         Funcion que busca la descripcion del subuso de un vehiculo
         param in pcuso : Codigo del subuso de vehiculo
         param in v_idioma : Idioma de la descripcion
         return            : descripcion del subuso
   *************************************************************************/
   FUNCTION f_dessubuso(pcsubuso IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN VARCHAR2 IS
      vnumerr        NUMBER := 0;
      vparam         VARCHAR2(500) := ' --';
      vpasexec       NUMBER(5) := 1;
      vobject        VARCHAR2(500) := 'pac_md_autos.f_dessubuso';
   BEGIN
      vnumerr := pac_autos.f_dessubuso(pcsubuso, v_idioma);

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RETURN vnumerr;
      END IF;

      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_dessubuso;

-- Bug 9247 - APD - 12/03/2009 -- Se crea la funcion f_dessubuso

   --BUG: 26635  LCOL - AUT - Cotnrol de duplicidad de Autos.
   FUNCTION f_controlduplicidad(
      psseguro IN NUMBER,   -- C�digo identificativo del seguro
      pcmatric IN VARCHAR2,   -- Matricula Vehiculo. No Se Informa Si  Ctipmat = 2, Sin Matricula
      pnbastid IN VARCHAR2,
      pcchasis IN VARCHAR2,   -- C�digo de chasis
      pcodmotor IN VARCHAR2,   -- C�digo del motor
      psproduc IN NUMBER,
      pfefecto IN DATE,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vnumerr        NUMBER := 0;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(4000)
         := 'par�metros - psseguro: ' || psseguro || ' pcmatric: ' || pcmatric
            || ' pnbastid: ' || pnbastid || ' pcchasis: ' || pcchasis || ' pcodmotor: '
            || pcodmotor || ' psproduc: ' || psproduc || ' pfefecto: ' || pfefecto;
      vobject        VARCHAR2(200) := 'pac_md_autos.f_controlduplicidad';
      nerror         NUMBER;
      v_cvalpar      NUMBER;
   BEGIN
      nerror := f_parproductos(psproduc, 'POLIZA_UNICA_SIMUL', v_cvalpar);

      IF nerror <> 0 THEN
         RETURN nerror;
      END IF;

      vpasexec := 10;

      --Validamos que no haya duplicidad de matr�culas, vin o c�digo del motor.
      IF pac_iax_produccion.issimul = FALSE
         OR(v_cvalpar = 1
            AND pac_iax_produccion.issimul = TRUE) THEN
         vpasexec := 20;
         nerror := f_parproductos(psproduc, 'POLIZA_UNICA', v_cvalpar);

         IF nerror <> 0 THEN
            RETURN nerror;
         END IF;

         IF NVL(v_cvalpar, 0) = 5 THEN   --por cumulo --Bug 26435/165053 - 03/02/2014 - AMC
            --BUG 26435 - INICIO - DCT - 15/03/2013 - A�adir pcchasis
            vpasexec := 30;
            vnumerr := pac_autos.f_controlduplicidad(psseguro, pcmatric, pnbastid, pcodmotor,
                                                     psproduc, pfefecto, pcchasis);
         END IF;
      END IF;

      vpasexec := 40;

      IF vnumerr <> 0 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, vnumerr);
         RETURN vnumerr;
      END IF;

      vpasexec := 50;
      RETURN vnumerr;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN 1;
   END f_controlduplicidad;
END pac_md_autos;

/

  GRANT EXECUTE ON "AXIS"."PAC_MD_AUTOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MD_AUTOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MD_AUTOS" TO "PROGRAMADORESCSI";
