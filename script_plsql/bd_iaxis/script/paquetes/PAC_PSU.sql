--------------------------------------------------------
--  DDL for Package PAC_PSU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_PSU" IS
/******************************************************************************
   NOMBRE    : PAC_PSU
   ARCHIVO   : PAC_PSU.PKS
   PROP�SITO : Package con funciones propias de la funcionalidad de
               Pol�tica de Subscripci�n.

   REVISIONES:
   Ver    Fecha      Autor     Descripci�n
   ------ ---------- --------- ------------------------------------------------
   1.0    28-05-2009 M.Redondo Creaci�n del package.
   1.1    05-06-2009 M.Redondo Adapataci� a rebre nom�s resultats num�rics de
                               les f�rmules.
   1.2    10-06-2009 M.Redondo Actualitzaci� Controls Autoritzats/Rebutjats i
                               ref_cursor amb els controls existents.
   1.3    11-06-2009 M.Redondo S'incorpora CGARANT a CONTROLSEG i ESTCONTROLSEG
                               Es treu CTIPCONT de CODCONROL_PSU
                               Es crea la funci� f_polizas_con_control
   1.4    22-06-2009 acc       Afegir funci� f_grabaobservaciones
   1.5    01-07-2009 M.Redondo A la funci� F_LEE_CONTROLES, s'afegeix el llegir
                               de les taules EST, segons el par�metre P_TABLAS.
   1.6    18-01-2010 M.R.B.    Adaptaci� a la nova definici� de les taules i
                               opcions (Nova Producci�, Suplements i Renovaci�).
   2.0    22-10-2012 DRA       0023717: LCOL - Revisar y continuar con la parametrizaci�n de PSUs - Vida Grupo - Fase 2
   3.0    13/03/2013 ECP       0026092: LCOL_T031-LCOL - Fase 3 - (176-11) - Parametrizaci?n PSU's. Nota 140055
   4.0    11/03/2014 APD       0030448/169258: LCOL_T010-Revision incidencias qtracker (2014/03)
   5.0    02/07/2015 IGIL      0036596/208749 AIS_MANUAL_UNDERWRITING
******************************************************************************//*****************************************************************************
    Trata todas las reglas de Pol�tica de Subscripci�n del producto al cual
    pertenece la p�liza.

    param in      : P_TABLAS  Determina tablas EST o SEG
    param in      : P_SSEGURO N�mero identificativo interno de SEGUROS
    param in      : P_AREA    Area a revisar de la Pol�tica de Subscripci�n
                              (1 = Emisi�n ; 2 = Siniestros)
    param in      : P_ACCION  Codi de l'acci� que estem fent:
                              1 = Nova Producci�
                              2 = Suplement
                              3 = Renovaci�
                              4 = Cotizaci�n
    param in      : P_CIDIOMA Codigo del idioma del Usuario
    param in out  : P_CRETENI 0 => No retener; 2 => Retener;
                    S�lo devolveremos 0 => No retener, si todos los controles
                    PSU, hayan quedado autorizados y el valor que nos ha llegado
                    en CRETENI tambi�n es cero. (Se respetan los otros controles
                    existentes).

    Devuelve      : 0 => Correcto � 1 => Error.

   *****************************************************************************/
   FUNCTION f_inicia_psu(
      p_tablas IN VARCHAR2,
      p_sseguro IN NUMBER,
      --p_area IN NUMBER,
      p_accion IN NUMBER,
      p_cidioma IN NUMBER,
      p_creteni IN OUT NUMBER)
      RETURN NUMBER;

----------------------------------------------------------------------------

   /***************************************************************************
    Ejecuta las reglas de Pol�tica de Subscripci�n del producto al cual
    pertenece la p�liza.

    param in      : P_SSEGURO  N�mero identificativo interno de SEGUROS
    param in      : P_FEFECTO  Fecha del efecto de la p�liza/suplemento
    param in      : P_SPRODUC  C�digo del producto
    param in      : P_CACTIVI  C�digo de la actividad
    param in      : P_NRIESGO  N�mero de riesgo
    param in      : P_CGARANT  C�digo de la garant�a
    param in      : P_CCONTROL C�digo del Control que estamos tratando
    param in      : P_CFORMULA Codigo de la f�rmula a ejecutar
    param out     : P_RESULTAT Resultado obtenido por la f�rmula

    Devuelve      : 0 => Correcto � 1 => Error.
   ***************************************************************************/
   FUNCTION f_trata_formulas_psu(
      p_sseguro IN NUMBER,
      p_fefecto IN DATE,
      p_sproduc IN NUMBER,
      p_cactivi IN NUMBER,
      p_nriesgo IN NUMBER,
      p_cgarant IN NUMBER,
      p_ccontrol IN NUMBER,
      p_cformula IN NUMBER,
      p_nmovimi IN NUMBER,   -- M.R.B. 2/12/2011 S'AFEGEIX BUTG 19684
      p_resultat OUT NUMBER,
      p_tablas IN VARCHAR2 DEFAULT 'EST',
      -- Ini Bug 26092 --ECP-- 13/03/2013
      origenpsu IN NUMBER DEFAULT NULL,
      pccambio  IN NUMBER DEFAULT NULL)
      -- Fin Bug 26092 --ECP-- 13/03/2013
   RETURN NUMBER;

----------------------------------------------------------------------------

   /***************************************************************************
    Busca en la tabla NIVEL_CONTROL_PSU, el nivel requerido para el control que
    estamos tratando, seg�n el valor calculado por la f�rmula asociada al control.
    Este valor siempre es un varchar2, pero en funci�n del campo CTIPCONT de la
    tabla CODCONTROL_PSU, lo trataremos como Num(1), Varchar(2) o Fecha(3).

    param in      : P_CCONTROL C�digo del Control que estamos tratando
    param in      : P_AREA    Area a revisar de la Pol�tica de Subscripci�n
                              (1 = Emisi�n ; 2 = Siniestros)
    param in      : P_SPRODUC  Identificador del producto
    param in      : P_NVALOR   Valor que nos llega de ehjecutar la f�rmula del control
    param out     : P_NIVREQ   C�digo del nivel requerido para el control
    param out     : P_INCIDEN  Texto que se grabar� en obseraciones de las tabla CONTROLSEG

    Devuelve      : 0 => Correcto � 1 => error.

   ***************************************************************************/
   FUNCTION f_nivel_requerido_psu(
      p_control IN NUMBER,
      --p_area IN NUMBER,
      p_sproduc IN NUMBER,
      p_valor IN NUMBER,
      p_nivreq OUT NUMBER,
      p_nivinf OUT NUMBER,
      p_nivsup OUT NUMBER,
      p_inciden OUT VARCHAR)
      RETURN NUMBER;

----------------------------------------------------------------------------

   /***************************************************************************
    Busca en la tabla USUAGRU_NIVEL_PSU, el nivel que tiene el usuario para el
    producto al que pertenece la p�liza y dentro del �rea que estemos validando.

    La no existencia del Grupo al que pertenece el usuario, o el nivel para este
    producto, no provocar� ning�n error, sino que se devolver� el valor 0 (Cero)
    que corresponde al m�nimo nivel. De esta manera, los usuarios que tengan el
    nivel m�nimo, no har� falta introducirlos en el sistema PSU.

    param in      : P_USUARIO Identificador del usuario
    param in      : P_AREA    Area a revisar de la Pol�tica de Subscripci�n
                              (1 = Emisi�n ; 2 = Siniestros)
    param in      : P_SPRODUC Identificador del producto

    Devuelve      : Nivel del usuario para esta AREA y este PRODUCTO.

   ***************************************************************************/
   FUNCTION f_nivel_usuari_psu(p_usuario IN VARCHAR2, p_sproduc IN NUMBER)
      RETURN NUMBER;

----------------------------------------------------------------------------

   /***************************************************************************
    Ejecuta las f�rmula de Pol�tica de Subscripci�n del producto al cual
    pertenece la p�liza y prepara la grabaci�n de las tablas CONTROLSEG y
    ESTCONTROLSEG.

    param in      : P_TABLAS   Indica si tratamos tablas EST o SEG
    param in      : P_SSEGURO  N�mero identificativo interno de SEGUROS
    param in      : P_AREA     Area a revisar de la Pol�tica de Subscripci�n
                               (1 = Emisi�n ; 2 = Siniestros)
    param in      : P_CIDIOMA  C�digo del idioma
    param in      : P_FEFECTO  Fecha del efecto de la p�liza/suplemento
    param in      : P_SPRODUC  C�digo del producto
    param in      : P_CACTIVI  C�digo de la actividad
    param in      : P_NRIESGO  N�mero de riesgo
    param in      : P_CGARANT  C�digo de la garant�a
    param in      : P_CFORMULA Codigo de la f�rmula a ejecutar
    param in      : P_CCONTROL C�digo del Control que estamos tratando
    param in      : P_NIVELUSU C�digo del Nivel del usuario para el producto

   ***************************************************************************/
   PROCEDURE prepara_graba_controles(
      p_tablas IN VARCHAR2,
      p_sseguro IN NUMBER,
      --p_area IN NUMBER,
      p_cidioma IN NUMBER,
      p_fefecto IN DATE,
      p_sproduc IN NUMBER,
      p_cactivi IN NUMBER,
      p_nriesgo IN NUMBER,
      p_cgarant IN NUMBER,
      p_cformula IN NUMBER,
      p_ccontrol IN NUMBER,
      p_nivelusu IN NUMBER,
      p_cautmanual IN VARCHAR2,
      p_nocurre IN NUMBER,
      p_nmovimi IN NUMBER,
      -- Ini Bug 26092 --ECP-- 13/03/2013
      origenpsu IN NUMBER DEFAULT NULL,
      pccambio  IN NUMBER DEFAULT NULL
                                      -- Fin Bug 26092 --ECP-- 13/03/2013
   );   -- M.R.B. 2/12/2011 S'AFEGEIX BUG 19684

   FUNCTION f_grabar_retenidas(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pcusuret IN VARCHAR2,
      pffecret IN DATE,
      pcusuaut IN VARCHAR2,
      pffecaut IN DATE,
      pobserv IN VARCHAR2,
      pcidioma IN NUMBER)
      RETURN NUMBER;

----------------------------------------------------------------------------

   /***************************************************************************
    Graba la tablas de Pol�tica de Subscripci�n CONTROLSEG o ESTCONTROLSEG para
    cada Control efectuado para la p�liza que se esta tratando.

    param in      : P_TABLAS   Determina tablas EST o SEG
    param in      : P_CIDIOMA  C�digo del Idioma
    param in      : P_SSEGURO  N�mero identificativo interno de SEGUROS
    param in      : P_NRIESGO  N�mero de riesgo
    param in      : P_CGARANT  C�di de garantia
    param in      : P_CCONTROL C�digo del CONTROL
    param in      : P_AREA     Codi del �rea que tractem
    param in      : P_CNIVELR  Nivel requerido para superar el Control
    param in      : P_NVALOR   Valor(Num�rico) devuelto por las f�rmulas del Control
    param in      : P_CNIVELU  Nivel del Usuario
    param in      : P_OBSERV   Observaciones que se grabar�n en CONTROLSEG/ESTCONTROLSEG
    param in      : P_SOLOMANUAL Si el control NO se autoriza autom�ticamente
    param in      : P_ESTABLOQUEA Si el control es Bloqueante
    param in      : P_ORDENBLOQUEA Orden del control dentro de los Bloqueantes
    param in      : P_AUTORIPREV Si se acepta en base a una autorizaci�n previa

   ***************************************************************************/
   PROCEDURE graba_tabla_controles_psu(
      p_tablas IN VARCHAR2,
      p_cidioma IN NUMBER,
      p_sseguro IN NUMBER,
      p_nriesgo IN NUMBER,
      p_cgarant IN NUMBER,
      p_ccontrol IN NUMBER,
      --p_area IN NUMBER,
      p_cnivelr IN NUMBER,
      p_nvalor IN NUMBER,
      p_cnivelu IN NUMBER,
      p_observ IN VARCHAR,
      p_solomanual IN VARCHAR,
      p_establoquea IN VARCHAR,
      p_ordenbloquea IN NUMBER,
      p_autoriprev IN VARCHAR,
      p_nivinf IN NUMBER,
      p_nivsup IN NUMBER,
      p_cautmanual IN VARCHAR2,
      p_nocurre IN NUMBER);

   PROCEDURE p_control_anterior(
      p_tablas IN VARCHAR2,
      p_sseguro IN NUMBER,
      p_nmovimi IN NUMBER,
      p_nocurre IN NUMBER,
      p_ccontrol IN NUMBER,
      p_cgarant IN NUMBER,
      p_nriesgo IN NUMBER);

----------------------------------------------------------------------------

   /***************************************************************************
    Recupera los datos del detalle del control tratado en la tabla CONTROLPRO

    param in      : P_CCONTROL     C�digo del CONTROL
    param in      : P_AREA         Codi del �rea que tractem
    param in      : P_SPRODUC      Codi del producte que tractem
    param out     : P_SOLOMANUAL Si el control NO se autoriza autom�ticamente
    param out     : P_ESTABLOQUEA  Control bloqueante
    param out     : P_ORDENBLOQUEA Orden dentro de los bloqueantes
    param out     : P_AUTORIPREV   Autorizamos seg�n autorizaci�n previa (S-N)

    DEVUELVE      : 0 = O.K.;  1 => Error

   ***************************************************************************/
   FUNCTION f_detalle_control(
      p_ccontrol IN NUMBER,
      p_sproduc IN NUMBER,
      p_cgarant IN NUMBER,
      p_solomanual OUT VARCHAR,
      p_establoquea OUT VARCHAR,
      p_ordenbloquea OUT NUMBER,
      p_autoriprev OUT VARCHAR)
      RETURN NUMBER;

----------------------------------------------------------------------------

   /***************************************************************************
    Comprueba si el control ya hab�a sido autorizado con anterioridad en otri
    movimiento de la p�liza.

    param in      : P_SSEGURO  N�mero identificativo interno de SEGUROS
    param in      : P_NRIESGO  N�mero de riesgo
    param in      : P_CCONTROL C�digo del CONTROL
    param in      : P_CNIVELR  Nivel requerido para superar el Control
    param in      : P_NVALOR   Valor(Num�rico) devuelto por las f�rmulas del Control
    param out     : P_USUANTES Usuario que autoriz� en su momento
    param out     : P_AUTMANUAL  Si el control NO se autoriza autom�ticamente

    Devuelve:     'S' => El control YA habia sido autorizado con anterioridad
                  'N' => El control NO se habia autorizado con anterioridad
   ***************************************************************************/
   FUNCTION f_autorizado_antes(
      p_sseguro IN NUMBER,
      p_nriesgo IN NUMBER,
      p_ccontrol IN NUMBER,
      p_cnivelr IN NUMBER,
      p_nvalor IN NUMBER,
      p_cgarant IN NUMBER,
      p_nocurre IN NUMBER,
      p_nmovimi IN NUMBER,
      p_tablas IN VARCHAR2,
      p_usuantes OUT VARCHAR2,
      p_autmanual OUT VARCHAR2,
      p_cautrec OUT NUMBER,
      p_nvalortope OUT NUMBER,
      p_observ OUT VARCHAR2,
      p_iguales OUT NUMBER,
      p_nvalorant OUT NUMBER,
      p_cgarant_out OUT NUMBER,
      p_nvalorinf OUT NUMBER,
      p_fautrecant OUT DATE)
      RETURN VARCHAR2;

----------------------------------------------------------------------------

   /***************************************************************************
    Funci� que actualitza l'estat del control, ja sigui autoritzat com rebutjat

    param in      : P_SSEGURO  N�mero identificativo interno de SEGUROS
    param in      : P_NRIESGO  N�mero de riesgo
    param in      : P_CGARANT  Codi de la garantia.
    param in      : P_CCONTROL C�digo del CONTROL
    param in      : P_CNIVELU  Nivel del Usuario que trata el control
    param in      : P_ACCIO    1 = Autorizar, 2 = Rechazar.
    param in      : P_OBSEV    Observaciones que se grabr�n en ESTCONTROLSEG

    Devuelve:     : 0 => O.K. 1 => Error

   ***************************************************************************/
   FUNCTION f_actualiza(
      p_sseguro IN NUMBER,
      p_nriesgo IN NUMBER,
      p_nmovimi IN NUMBER,
      p_cgarant IN NUMBER,
      p_ccontrol IN NUMBER,
      p_cnivelu IN NUMBER,
      p_accio IN VARCHAR2,
      p_observ IN VARCHAR2,
      p_nvalortope IN NUMBER,
      p_nocurre IN NUMBER,
      p_nvalor IN NUMBER,
      p_nvalorinf IN NUMBER,
      p_nvalorsuper IN NUMBER,
      p_nivelr IN NUMBER,
      p_establoquea IN NUMBER,
      p_autmanual IN NUMBER,
      p_tablas IN VARCHAR2,
      p_modo IN NUMBER,
      p_numriesgo IN VARCHAR2,
      pcidioma IN NUMBER)
      RETURN NUMBER;

----------------------------------------------------------------------------

   /***************************************************************************
    Funci� que torna el nivell d'autoritzaci�, que determina els usuaris que
    poden autoritzar o rebutjar la proposta/p�lissa.

    T� en compte el tema dels controls bloquejants i el seu ordre.

    param in      : P_SSEGURO  N�mero identificativo interno de SEGUROS

    Devuelve:     : Nivel que tienen que tener los usarios que quieran
                    interactura con la propuesta/p�liza con referencia a
                    la autorizaci�n o rechazo de los controles.

   ***************************************************************************/
   FUNCTION f_nivel_bpm(p_tablas IN VARCHAR, p_sseguro IN NUMBER)
      RETURN NUMBER;

----------------------------------------------------------------------------

   /***************************************************************************
    Funci� que llegix la cap�alera dels controls d'una p�lissa retornan
    un sys_refcursor

    param in      : P_TABLAS   Determina tablas EST o SEG
    param in      : P_SSEGURO  N�mero identificativo interno de SEGUROS
    param in      : P_NMOVIMI  N�mero de Movimiento
                    (Si el n�mero de movimiento es nulo, devolver� todos los
                     controles del �ltimo movimiento en que exista un control,
                     de lo contrario, s�lo devolver� los controles del movimiento
                     en particular).
    param in      : P_CIDIOMA  C�digo del idioma

    Devuelve      Literal a mostrar en la cabecera.
                  Nivel requerido global (NIVEL_BPM)

   ***************************************************************************/
   FUNCTION f_lee_retenidas(
      p_tablas IN VARCHAR2,
      p_sseguro IN NUMBER,
      p_nmovimi IN NUMBER,
      p_cidioma IN NUMBER)
      RETURN sys_refcursor;

----------------------------------------------------------------------------

   /***************************************************************************
    Funci� que llegix tots els controls d'una p�lissa retornan un sys_refcursor

    param in      : P_TABLAS   Determina tablas EST o SEG
    param in      : P_SSEGURO  N�mero identificativo interno de SEGUROS
    param in      : P_NRIESGO  N�mero de riesgo
                    (Si el n�mero de riesgo es nulo, devolver� todos los
                     controles de todos los riesgos, de lo contrario, s�lo
                     devolver� los controles del riesgo en particular).
    param in      : P_NMOVIMI  N�mero de Movimiento
                    (Si el n�mero de movimiento es nulo, devolver� todos los
                     controles del �ltimo movimiento en que exista un control,
                     de lo contrario, s�lo devolver� los controles del movimiento
                     en particular).
    param in      : CUSUARI    Usuario autorizador

    param in      : P_CIDIOMA  C�digo del idioma

    Devuelve      SYS_REFCURSOR Lista de los controles.

   ***************************************************************************/
   FUNCTION f_lee_controles(
      p_tablas IN VARCHAR2,
      p_sseguro IN NUMBER,
      p_nriesgo IN NUMBER,
      p_nmovimi IN NUMBER,
      p_cusuari IN VARCHAR2,
      p_cidioma IN NUMBER)
      RETURN sys_refcursor;

----------------------------------------------------------------------------

   /***************************************************************************
    param in      : P_SPRODUC    Codi del Producte
    param in      : P_NSOLICI    Nombre de la sol.licitut
    param in      : P_NPOLIZA    Nombre de la p�lissa
    param in      : P_AUTREC     0 => Pendent
                                 1 => Autoritzat
                                 2 => Rebutjat
    param in      : P_CIDIOMA    C�di del idioma

    Devuelve      : SYS_REFCURSOR amb les p�lisses i els seus controls i amb
                    un indicador de si el usuari pot autoritzar cada control.
   ***************************************************************************/
   FUNCTION f_polizas_con_control(
      p_sproduc IN NUMBER,
      p_nsolici IN NUMBER,
      p_npoliza IN NUMBER,
      p_cautrec IN NUMBER,
      p_cidioma IN NUMBER)
      RETURN sys_refcursor;

----------------------------------------------------------------------------

   /***************************************************************************
    Funci� que torna la situaci� de les p�lisses (CSITUAC - DETVALORES = 61)

    param in      : P_CSITUAC    Codi de CSITUAC de SEGUROS
    param in      : P_CIDIOMA    Codi del Idioma

    Devuelve      : Descripci� de la situaci� de la p�lissa
   ****************************************************************************/
   FUNCTION f_tcsituac(p_csituac IN NUMBER, p_cidioma IN NUMBER)
      RETURN VARCHAR2;

----------------------------------------------------------------------------

   /***************************************************************************
    Funci� que torna la descripci� del resultat dels CONTROLS (CCONTROL -
    DESCONTROL_PSU)

    param in :  p_ccontrol   Codi del control
    param in :  p_cidioma    Codi del idioma
    param in :  p_sseguro    Codi del seguro
    param in :  p_nmovimi    numero de movimiento
    param in :  p_nriesgo    numero de riesgo
    param in :  p_tablas     Clasificacion de tablas EST y reales
    Devuelve      : Descripci� del control
   ****************************************************************************/
   FUNCTION f_tccontrol(
      p_ccontrol IN NUMBER,
      p_cidioma IN NUMBER,
      p_sseguro IN seguros.sseguro%TYPE,
      p_nmovimi IN movseguro.nmovimi%TYPE,
      p_nriesgo IN riesgos.nriesgo%TYPE,
      p_tablas IN VARCHAR2 DEFAULT 'EST',
      p_cgarant IN NUMBER)
      RETURN VARCHAR2;

----------------------------------------------------------------------------

   /***************************************************************************
    Funci� que torna la descripci� del dels RESULTATS del CONTROLS
   (PSU_DESRESULTADO)

    param in :  p_ccontrol   Codi del control
    param in :  p_sproduc    Codi del producte
    param in :  p_cidioma    Codi del idioma

    Devuelve      : Descripci� del control
   ****************************************************************************/
   FUNCTION f_tdesresultado(
      p_ccontrol IN NUMBER,
      p_sproduc IN NUMBER,
      p_cnivel IN NUMBER,
      p_cidioma IN NUMBER)
      RETURN VARCHAR2;

----------------------------------------------------------------------------

   /***************************************************************************
    Funci� que torna l'estat dels CONTROLS (CAUTREC - DETVALORES = 1001)

    param in      : P_CCONTROL   Codi de CAUTREC de CONTROLSEG
    param in      : P_CIDIOMA    Codi del Idioma

    Devuelve      : Descripci� de la situaci� de la p�lissa
   ****************************************************************************/
   FUNCTION f_tcautrec(
      p_ccontrol IN NUMBER,
      p_sproduc IN NUMBER,
      p_cautrec IN NUMBER,
      p_cidioma IN NUMBER,
      p_cgarant IN NUMBER)
      RETURN VARCHAR2;

----------------------------------------------------------------------------

   /***************************************************************************
    Funci� que torna la descripci� dels NIVELLS (CNIVEL - DESNIVEL_PSU)

    param in      : P_CNIVEL    Codi de CNIVEL de usuario o de control
    param in      : P_CIDIOMA   Codi del Idioma

    Devuelve      : Descripci� del nivell
   ****************************************************************************/
   FUNCTION f_tcnivel(p_cnivel IN NUMBER, p_cidioma IN NUMBER)
      RETURN VARCHAR2;

----------------------------------------------------------------------------

   /***************************************************************************
    Funci� que torna la descripci� del PRODUCTE

    param in      : P_SPRODUC   Codi del Producte
    param in      : P_CIDIOMA   Codi del Idioma

    Devuelve      : Descripci� del nivell
   ****************************************************************************/
   FUNCTION f_tproducte(p_sproduc IN NUMBER, p_cidioma IN NUMBER)
      RETURN VARCHAR2;

----------------------------------------------------------------------------

   /***************************************************************************
    Funci� que torna la descripci� de la garant�a

    param in      : P_CGARANT   Codi de la Garant�a
    param in      : P_CIDIOMA   Codi del Idioma

    Devuelve      : Descripci� del nivell
   ****************************************************************************/
   FUNCTION f_tcgarant(p_cgarant IN NUMBER, p_cidioma IN NUMBER)
      RETURN VARCHAR2;

----------------------------------------------------------------------------

   /***************************************************************************
    Funci�n que devuelve la descripci�n del riesgo.

    param in      : P_TABLAS   EST o SEGUROS
    param in      : P_SSEGURO  N�mero identificativo interno de SEGUROS
    param in      : P_NRIESGO  N�mero de riesgo
    param in      : C_IDIOMA   C�digo de Idioma

    Devuelve la descripci�n del riesgo.
   ***************************************************************************/
   FUNCTION f_descrisc(
      p_tablas IN VARCHAR2,
      p_sseguro IN NUMBER,
      p_nriesgo IN NUMBER,
      p_cidioma IN NUMBER)
      RETURN VARCHAR2;

----------------------------------------------------------------------------

   /***************************************************************************
    Funci� que actualitza les observacions del control

    param in      : P_SSEGURO  N�mero identificativo interno de SEGUROS
    param in      : P_NRIESGO  N�mero de riesgo
    param in      : P_CGARANT  Codi de la garantia.
    param in      : P_CCONTROL C�digo del CONTROL
    param in      : P_OBSERV   Observaciones que se grabar�n en ESTCONTROLSEG

    Devuelve:     : 0 = O.K.
   ***************************************************************************/
   FUNCTION f_grabaobservaciones(
      p_sseguro IN NUMBER,
      p_nriesgo IN NUMBER,
      p_cgarant IN NUMBER,
      p_ccontrol IN NUMBER,
      p_observ IN VARCHAR2)
      RETURN NUMBER;

----------------------------------------------------------------------------
/***************************************************************************
 Funci�n para el per�odo de pruebas.
 Se llama desde una f�rmula. En concreto de la 500002 asociada a la garant�a
 5103 (28-05-2009).

 param in      : PSESION   Sesi�n que estamos ejecutando
 param in      : SSEGURO  N�mero identificativo interno de SEGUROS
 param in      : ORIGEN      0 => Tablas SOL; 1 => Tabla EST; 2 => SEG
 param in      : CCONTROLPSU C�digo del CONTROL que estamos ejecutando.

 DEVUELVE      : Resultado de la f�rmula
***************************************************************************/
   FUNCTION f_prova(
      psession IN NUMBER,
      sseguro IN NUMBER,
      origen IN NUMBER,
      ccontrolpsu IN NUMBER)
      RETURN NUMBER;

----------------------------------------------------------------------------
   FUNCTION f_get_colec_psu(
      p_sseguro IN seguros.sseguro%TYPE,
      p_nmovimi IN movseguro.nmovimi%TYPE,
      p_nriesgo IN riesgos.nriesgo%TYPE,
      p_idioma IN idiomas.cidioma%TYPE,
      p_tablas IN VARCHAR2 DEFAULT NULL,
      p_vquery OUT VARCHAR2,
      p_testpol OUT VARCHAR2,
      p_cestpol OUT NUMBER,
      p_cnivelbpm OUT NUMBER,
      p_tnivelbpm OUT VARCHAR2)
      RETURN NUMBER;

   FUNCTION f_detcontrol(
      p_ccontrol IN NUMBER,
      psproduc IN NUMBER,
      pcnivel IN NUMBER,
      p_cidioma IN NUMBER)
      RETURN VARCHAR2;

   FUNCTION f_get_lstniveles(pcidioma IN NUMBER, pquery OUT VARCHAR2)
      RETURN NUMBER;

           /*Miraremos si hay controles manuales pendientes de autorizar,
   en caso de que hay devolveremos mensaje diciendo que no podemos autorizar/rechazar y se deberan
   tratar individualmente manualmente*/
   FUNCTION f_hay_controles_manuales(p_sseguro IN NUMBER, p_tablas IN VARCHAR2)
      RETURN NUMBER;

   FUNCTION f_hay_controles_pendientes(p_sseguro IN NUMBER, p_tablas IN VARCHAR2)
      RETURN NUMBER;

   FUNCTION f_inicia_psu_postcartera(
      psproces IN NUMBER,
      psseguro IN NUMBER,
      pnpoliza IN VARCHAR2,
      pncertif IN NUMBER,
      pcaccion IN NUMBER,
      pidioma IN NUMBER,
      pmes IN NUMBER,
      panyo IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_esta_control_pendiente(
      p_sseguro IN NUMBER,
      p_tablas IN VARCHAR2,
      pccontrol IN NUMBER,
      pnriesgo IN NUMBER,
      pcgarant IN NUMBER DEFAULT 0)
      RETURN NUMBER;
   FUNCTION F_LEE_HIS_PSU_RETENIDAS(p_sseguro IN NUMBER, --ramiro
		p_nversion IN NUMBER,
		p_nriesgo IN NUMBER,
		p_nmovimi IN NUMBER,
		p_cidioma IN NUMBER,
		p_this_psu_retenidas OUT T_IAX_PSU_RETENIDAS,
		mensajes IN OUT t_iax_mensajes
)

    RETURN NUMBER;      --ramiro

 FUNCTION F_LEE_HIS_PSUCONTROLSEG( --ramiro
    p_sseguro IN NUMBER,
		p_nversion IN NUMBER,
		p_nriesgo IN NUMBER,
		p_nmovimi IN NUMBER,
		p_ccontrol IN NUMBER,
		p_cidioma IN NUMBER,
		p_this_psucontrolseg OUT T_IAX_PSU,
		mensajes IN OUT t_iax_mensajes

)
    RETURN NUMBER;    --ramiro


 FUNCTION F_LEE_PSU_SUBESTADOSPROP( --ramiro
    p_sseguro IN NUMBER,
		p_nversion IN NUMBER,
		p_nversionsubest IN NUMBER,
		p_nmovimi IN NUMBER,
		p_cidioma IN NUMBER,
		p_tpsu_subestadosprop OUT T_IAX_PSU_SUBESTADOSPROP,
		p_mensajes IN OUT t_iax_mensajes

)
    RETURN NUMBER;      --ramiro

 FUNCTION F_INS_PSU_SUBESTADOSPROP( --ramiro
   p_sseguro IN NUMBER,
   p_nversion IN NUMBER,
	 p_nmovimi IN NUMBER,
	 p_csubestado IN NUMBER,
	 p_cobservaciones IN VARCHAR2
)
    RETURN NUMBER; --ramiro

FUNCTION f_get_subestadoprop( --ramiro
    p_sseguro IN NUMBER,
		p_csubestadoprop OUT VARCHAR2
)
    RETURN NUMBER;       --ramiro
END pac_psu;
--/

/

  GRANT EXECUTE ON "AXIS"."PAC_PSU" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_PSU" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_PSU" TO "PROGRAMADORESCSI";
