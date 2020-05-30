--------------------------------------------------------
--  DDL for Package PAC_SIN_FORMULA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_SIN_FORMULA" AUTHID CURRENT_USER IS
/****************************************************************************
   NOMBRE:       PAC_SIN_FORMULA
   PROP�SITO:  Funciones para el c�lculo de los siniestros

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ----------------------------------
   1.0        30/04/2009  XVM               1. Creaci�n del package.
   2.0        20/05/2010  RSC               2. 0013829: APRB78 - Parametrizacion y adapatacion de rescastes
   3.0        28/05/2010  AMC               3. 0014752: AGA014 - Cambios en alta r�pida de siniestros (axissin032). Se crea la funci�n f_cal_fechas_sini.
   4.0        06/10/2010  FAL               4. 0016219: GRC - Pagos de siniestros de dos garant�as
   5.0        16/12/2010  DRA               5. 0016506: CRE - Pantallas de siniestros nuevo m�dulo
   6.0        26/01/2012  JMP               6. 0018423/104212: LCOL705 - Multimoneda
   7.0        03/07/2012  ASN               7. 0022674: MDP_S001-SIN - Reserva global (calculo)
   8.0        15/03/2013  ASN               8. 0026108: LCOL_S010-SIN - Tipo de gasto en reservas
   9.0        26/02/2014  JTT               9. 0024708: Nueva funcion EsAmparoDeMuerte
  10.0        04/07/2014  JTT              10. 0031294/178338: Revision pagos automaticos de baja diaria.
  11.0        29/09/2014  JTT              11. 0032428/188259: Cambio tipo PREGUNSINI.nsinies
****************************************************************************/
   TYPE t_valores IS RECORD(
      ttipo          NUMBER(1),
      ssegu          seguros.sseguro%TYPE,
      perso          per_personas.sperson%TYPE,
      desti          NUMBER(2),
      ffecefe        NUMBER(8),
      cactivi        activisegu.cactivi%TYPE,   -- Actividad
      ctipres        sin_tramita_reserva.ctipres%TYPE,   -- C�digo Tipo Reserva
      nmovres        sin_tramita_reserva.nmovres%TYPE,   -- Movimiento Reserva
      cgarant        sin_tramita_reserva.cgarant%TYPE,   -- Garant�a
      ivalsin        sin_tramita_reserva.ireserva%TYPE,   -- Valoraci�n siniestro
      isinret        sin_tramita_pago.isinret%TYPE,   -- Bruto pago
      iresrcm        sin_tramita_pago.iresrcm%TYPE,   -- Rendimientos
      iresred        sin_tramita_pago.iresred%TYPE,   -- Reducci�n
      iconret        NUMBER,   -- Base de Retenci�n
      pretenc        NUMBER,   -- % de Retenci�n
      iretenc        NUMBER,   -- Importe de Retenci�n
      iimpsin        NUMBER,   -- Importe neto
      icapris        NUMBER,   -- K EN RIESGO
      ipenali        NUMBER,   -- Importe penalizacion
      iiva           NUMBER,   -- Importe IVA
      isuplid        NUMBER,   -- Importe Suplido
      iprimas        NUMBER,
      fperini        NUMBER(8),   -- Fecha Inicio Pago
      fperfin        NUMBER(8),   -- Fecha Fin Pago
      ifranq         sin_tramita_reserva.ifranq%TYPE,   -- Importe franquicia Bug 27059:NSS;05/06/2013
      ndias          sin_tramita_reserva.ndias%TYPE   -- D�as de duraci�n de reserva diaria Bug 27487/159742:NSS;28/11/2013
   );

   TYPE t_val IS TABLE OF t_valores
      INDEX BY BINARY_INTEGER;

   valores        t_val;
-- Variables Globales
   gnvalor        NUMBER := 0;   -- Contador de recibos generados

   /*************************************************************************
      PROCEDURE p_carga_preguntas
         Funci� que carega les preguntes per poder executar la f�rmula indicada
         param in psseguro : N�mero segur
         param in pfecha   : Data efecte segur
         param in pcgarant : Codi garantia
         param in psesion  : Codi sessi�
         param in pnriesgo : N�mero riesgo
   *************************************************************************/
   PROCEDURE p_carga_preguntas(
      psseguro IN NUMBER,
      pfecha IN DATE,
      pcgarant IN NUMBER,
      psesion IN NUMBER,
      pnriesgo IN NUMBER DEFAULT 1,
      pnsinies IN sin_siniestro.nsinies%TYPE DEFAULT NULL   -- Bug 32428 - 30/09/2014 - JTT
                                                         );

   /*************************************************************************
      FUNCTION f_cal_valora
         Funci� que carega les preguntes per poder executar la f�rmula indicada
         param in pfsinies  : Data del sinistre
         param in psseguro  : Codi seguro
         param in pnsinies  : N�mero de sinistre
         param in psproduc  : Codi Producte
         param in pcactivi  : Codi Activitat
         param in pcgarant  : Codi Garant�a
         param in pccausin  : Codi Causa sinistre
         param in pcmotsin  : Codi Subcausa
         param in pfnotifi  : Data notificaci�
         param in pctramit  : Codi tramitaci�
         param in pntramit  : N�mero tramitaci�
         param out pivalora : Valoritzaci�
         param out pipenali : Penalitzaci�
         param out picapris : Capital de risc
         param in pnriesgo  : N�mero risc
         param in pfecval   :
         param in pfperini  : Data inici pagament
         param in pfperfin  : Data fi pagament
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_cal_valora(
      pfsinies IN sin_siniestro.fsinies%TYPE,
      psseguro IN seguros.sseguro%TYPE,
      pnriesgo IN sin_siniestro.nriesgo%TYPE,
      pnsinies IN sin_siniestro.nsinies%TYPE,
      pntramit IN sin_tramitacion.ntramit%TYPE,
      pctramit IN sin_tramitacion.ctramit%TYPE,
      psproduc IN productos.sproduc%TYPE,
      pcactivi IN activisegu.cactivi%TYPE DEFAULT 0,
      pcgarant IN codigaran.cgarant%TYPE,
      pccausin IN sin_siniestro.ccausin%TYPE,
      pcmotsin IN sin_siniestro.cmotsin%TYPE,
      pfnotifi IN sin_siniestro.fnotifi%TYPE,
      pfecval IN sin_tramita_reserva.fmovres%TYPE DEFAULT f_sysdate,
      pfperini IN sin_tramita_reserva.fresini%TYPE,
      pfperfin IN sin_tramita_reserva.fresfin%TYPE,
      pivalora OUT sin_tramita_reserva.ireserva%TYPE,
      pipenali OUT sin_tramita_reserva.ipenali%TYPE,
      picapris OUT sin_tramita_reserva.icaprie%TYPE,
      pifranq OUT sin_tramita_reserva.ifranq%TYPE,   --Bug 27059:NSS:05/06/2013
      pndias IN sin_tramita_reserva.ndias%TYPE DEFAULT NULL   --Bug 27487/159742:NSS;28/11/2013
                                                           )
      RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_insertar_mensajes
         Funci� que inserta missatges
         param in ptipo     : Tipus 0-Valoraritzaci� 1-Pagament
         param in pseguro   : N�mero segur
         param in psperson  : N�mero persona
         param in pctipdes  : Tipus destinatari
         param in pffecha   : Data efecto
         param in pcactivi  : Codi Activitat
         param in pcgarant  : Codi Garantia
         param in pvalsin   : Valoraritzaci� del sinistre
         param in pisinret  : Brut
         param in piresrcm  : Rendiments
         param in piresred  : Rendiments Redu�ts
         param in piconret  : Import Base
         param in ppretenc  : % de Retenci�
         param in piretenc  : Import de Retenci�
         param in piimpsin  : Import Net
         param in picapris  : Capital en risc de la valoraritzaci�
         param in pipenali  : import penalizaci�
         param in piprimas  : primes satisfetes
         param in pfperini  : Data inici pagament
         param in pfperfin  : Data fi pagament
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_insertar_mensajes(
      ptipo IN NUMBER,
      pseguro IN seguros.sseguro%TYPE,
      psperson IN sin_tramita_destinatario.sperson%TYPE,
      pctipdes IN sin_tramita_destinatario.ctipdes%TYPE,
      pffecha IN NUMBER,
      pcactivi IN activisegu.cactivi%TYPE,
      pnmovres IN sin_tramita_reserva.nmovres%TYPE,
      pctipres IN sin_tramita_reserva.ctipres%TYPE,
      pcgarant IN sin_tramita_reserva.cgarant%TYPE,
      pivalsin IN sin_tramita_reserva.ireserva%TYPE,
      pisinret IN NUMBER,
      piresrcm IN NUMBER,
      piresred IN NUMBER,
      piconret IN NUMBER,
      ppretenc IN NUMBER,
      piretenc IN NUMBER,
      piimpsin IN NUMBER,
      picapris IN NUMBER,
      pipenali IN NUMBER,
      piprimas IN NUMBER,
      pfperini IN NUMBER,
      pfperfin IN NUMBER,
      pifranq IN sin_tramita_reserva.ifranq%TYPE DEFAULT NULL,   --Bug 27059:NSS:05/06/2013
      pndias IN sin_tramita_reserva.ndias%TYPE DEFAULT NULL   --Bug 27487/159742:NSS;28/11/2013
                                                           )
      RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_graba_param
         Funci� que graba en la taula de par�metres transitoris par�metres de c�lcul
         param in pnsesion : Codi sessi�
         param in pparam   : Par�metre
         param in pvalor   : Valor
         return            : 0 -> Tot correcte
                             1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_graba_param(pnsesion IN NUMBER, pparam IN VARCHAR2, pvalor IN NUMBER)
      RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_borra_param
         Funci� que borra par�metres grabats en la sessi�
         param in pnsesion : Codi sessi�
         return            : 0 -> Tot correcte
                             1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_borra_param(pnsesion IN NUMBER)
      RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_calcula_pago
         Funci� que calcula un pagament a partir d'una reserva
         param in pnsinies  : N�mero Sinistre
         param in pntramit  : N�mero Tramitaci�
         param in psproduc  : Seq�encial Producte
         param in pcactivi  : Codi Activitat
         param in pcgarant  : Codi Garantia
         param in psseguro  : Seq�encial Seguro
         param in pfsinies  : Data Sinistre
         param in pccausin  : Codi Causa
         param in pcmotsin  : Codi Motiu
         param in pfnotifi  : Data Notificaci�
         param in psperdes  : Seq�encial Persona Destinatari
         param in pctipdes  : Codi Tipus Destinatari
         param in pidres    : Identificador de reserva
         param in pnriesgo  : N�mero Risc
         param in pfperini  : Data Periode Inici
         param in pfperfin  : Data Periode Fi
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error

         Bug 31294 - 04/07/2014 - JTT: Se a�ade el parametro pidres
   *************************************************************************/
   FUNCTION f_calcula_pago(
      pnsinies IN sin_siniestro.nsinies%TYPE,   -- Nro. de Siniestro
      pntramit IN sin_tramitacion.ntramit%TYPE,   -- Nro. Tramitacion
      psproduc IN productos.sproduc%TYPE,   -- SPRODUC
      pcactivi IN activisegu.cactivi%TYPE,   -- Actividad
      pcgarant IN garangen.cgarant%TYPE,   -- Garant�a
      psseguro IN sin_siniestro.sseguro%TYPE,   -- SSEGURO
      pfsinies IN sin_siniestro.fsinies%TYPE,   -- Fecha
      pccausin IN sin_siniestro.ccausin%TYPE,   -- Causa del Siniestro
      pcmotsin IN sin_siniestro.cmotsin%TYPE,   -- Subcausa
      pfnotifi IN sin_siniestro.fnotifi%TYPE,   -- Fecha de Notificacion
      psperdes IN sin_tramita_destinatario.sperson%TYPE,   -- sperson del destinatario
      pctipdes IN sin_tramita_destinatario.ctipdes%TYPE,   -- tipo de destinatario
      pidres IN sin_tramita_reserva.idres%TYPE,   -- Identificador de reserva
      pnriesgo IN sin_siniestro.nriesgo%TYPE DEFAULT NULL,   -- Riesgo
      pfperini IN sin_tramita_reserva.fresini%TYPE DEFAULT NULL,   -- Fecha Inicio Pago
      pfperfin IN sin_tramita_reserva.fresfin%TYPE DEFAULT NULL,   -- Fecha Fin Pago
      pimprcm IN NUMBER DEFAULT NULL,   -- Bug 13829 - RSC - 20/05/2010 - APRB78 - Parametrizacion y adapatacion de rescastes
      ppctreten IN NUMBER DEFAULT NULL)   -- Bug 13829 - RSC - 20/05/2010 - APRB78 - Parametrizacion y adapatacion de rescastes
      RETURN NUMBER;

      /*************************************************************************
         FUNCTION f_genera_pago
            Funci� que genera un pagament a partir d'una reserva
            param in psseguro  : Seq�encial Seguro
            param in pnriesgo  : N�mero Risc
   -- Bug 16219. FAL. 06/10/2010. Parametrizar que la generaci�n del pago sea por garantia
            param in pcgarant  : codi garantia
   -- Fi Bug 16219
            param in psproduc  : Seq�encial Producte
            param in pcactivi  : Codi Activitat
            param in pnsinies  : N�mero Sinistre
            param in pntramit  : N�mero Tramitaci�
            param in pccausin  : Codi Causa
            param in pcmotsin  : Codi Motiu
            param in pfsinies  : Data Sinistre
            param in pfnotifi  : Data Notificaci�
            param in pfperini  : Data Periode Inici
            param in pfperfin  : Data Periode Fi
            param in pimprcm   : Parametrizacion y adaptacion de rescates
            param in ppctreten : Parametrizacion y adaptacion de rescates
            param in pidres    : Identificador de reserva
            return             : 0 -> Tot correcte
                                 1 -> S'ha produit un error

            Bug 31294 - 04/07/2014 - JTT: A�adimos el parametro idres
      *************************************************************************/
   FUNCTION f_genera_pago(
      psseguro IN sin_siniestro.sseguro%TYPE,
      pnriesgo IN sin_siniestro.nriesgo%TYPE,
-- Bug 16219. FAL. 06/10/2010. Parametrizar que la generaci�n del pago sea por garantia
      pcgarant IN sin_tramita_reserva.cgarant%TYPE,
-- Fi Bug 16219
      psproduc IN productos.sproduc%TYPE,
      pcactivi IN activisegu.cactivi%TYPE DEFAULT 0,
      pnsinies IN sin_siniestro.nsinies%TYPE,
      pntramit IN sin_tramitacion.ntramit%TYPE,
      pccausin IN sin_siniestro.ccausin%TYPE,   -- Causa del Siniestro
      pcmotsin IN sin_siniestro.cmotsin%TYPE,   -- Motivo
      pfsinies IN sin_siniestro.fsinies%TYPE,
      pfnotifi IN sin_siniestro.fnotifi%TYPE,   -- Fecha de Notificacion
      pfperini IN sin_tramita_reserva.fresini%TYPE DEFAULT NULL,   -- Fecha Inicio
      pfperfin IN sin_tramita_reserva.fresfin%TYPE DEFAULT NULL,   -- Fecha Fin
      pimprcm IN NUMBER DEFAULT NULL,   -- Bug 13829 - RSC - 20/05/2010 - APRB78 - Parametrizacion y adapatacion de rescastes
      ppctreten IN NUMBER DEFAULT NULL,   -- Bug 13829 - RSC - 20/05/2010 - APRB78 - Parametrizacion y adapatacion de rescastes
      pidres IN sin_tramita_reserva.idres%TYPE DEFAULT NULL)   -- Identificador de reserva
      RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_inserta_pago
         Funci� que inserta un pagament de manera autom�tica
         param in pnsinies  : N�mero Sinistre
         param in pntramit  : N�mero Tramitaci�
         param in psidepag  : Identificador pagament
         param in pipago    : Import pagament
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_inserta_pago(
      pnsinies IN sin_tramita_pago.nsinies%TYPE,
      pntramit IN sin_tramita_pago.ntramit%TYPE,
      pctipres IN sin_tramita_reserva.ctipres%TYPE,
      pcgarant IN sin_tramita_reserva.cgarant%TYPE,
      psidepag OUT sin_tramita_pago.sidepag%TYPE,
      pipago OUT sin_tramita_pago.isinret%TYPE,
      pctipban IN NUMBER DEFAULT NULL,   --JGM: bug 13108 - se a�ade para que no grabe esto a NULL
      pcbancar IN VARCHAR2 DEFAULT NULL,   --JGM: bug 13108 - se a�ade para que no grabe esto a NULL
      pfresini IN sin_tramita_reserva.fresini%TYPE DEFAULT NULL,   -- BUG16506:DRA:16/12/2010
      pfresfin IN sin_tramita_reserva.fresfin%TYPE DEFAULT NULL,   -- BUG16506:DRA:16/12/2010
      pcmonres IN sin_tramita_reserva.cmonres%TYPE DEFAULT NULL,
      pctipgas IN sin_tramita_reserva.ctipgas%TYPE DEFAULT NULL)   -- 26108
      RETURN NUMBER;

   /*************************************************************************
      PROCEDURE p_borra_mensajes
         Procedimiento que borra la variable valores.
   *************************************************************************/
   PROCEDURE p_borra_mensajes;

   /*************************************************************************
      FUNCTION f_actualiza_reserva
         Funci� que actualitza la reserva amb un pagament
         param in pnsinies  : N�mero Sinistre
         param in pntramit  : N�mero Tramitaci�
         param in pctipres  : Tipus de reserva
         param in pcgarant  : Codi garantia
         param in pipago    : Import pagament
         param in piingreso : Import ingr�s
         param in pirecobro : Import recobrament
         param in picaprie  : Import capital risc
         param in pipenali  : Import penalitzaci�
         param in pfresini  : Data inici reserva
         param in pfresfin  : Data fi reserva
         param in psidepag  : Seq�encial pagament

         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_actualiza_reserva(
      pnsinies IN sin_tramita_reserva.nsinies%TYPE,
      pntramit IN sin_tramita_reserva.ntramit%TYPE,
      pctipres IN sin_tramita_reserva.ctipres%TYPE,
      pcgarant IN sin_tramita_reserva.cgarant%TYPE,
      pipago IN sin_tramita_reserva.ipago%TYPE,
      piingreso IN sin_tramita_reserva.iingreso%TYPE,
      pirecobro IN sin_tramita_reserva.irecobro%TYPE,
      picaprie IN sin_tramita_reserva.icaprie%TYPE,
      pipenali IN sin_tramita_reserva.ipenali%TYPE,
      pfresini IN sin_tramita_reserva.fresini%TYPE,
      pfresfin IN sin_tramita_reserva.fresfin%TYPE,
      psidepag IN sin_tramita_reserva.sidepag%TYPE)
      RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_simu_calc_sin
         Funci� que simula un rescat
         param in psseguro  : Seq��ncia asseguran�a
         param in pnriesgo  : N�mero risc
         param in pactivi   : Codi activitat
         param in pcgarant  : Codi garantia
         param in psproduc  : Seq��ncia producte
         param in pfsinies  : Data sinistre
         param in pfnotifi  : Data notificaci� sinistre
         param in pccausin  : Causa sinistre
         param in cmotsin   : Motiu sinistre
         param in picapital : Capital rescatat
         param in pfecval   : Data rescat
         param in pctipdes  : Tipus destinatari

         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_simu_calc_sin(
      psseguro IN seguros.sseguro%TYPE,
      pnriesgo IN riesgos.nriesgo%TYPE,
      pcactivi IN activisegu.cactivi%TYPE,
      pcgarant IN codigaran.cgarant%TYPE,
      psproduc IN productos.sproduc%TYPE,
      pfsinies IN sin_siniestro.fsinies%TYPE,
      pfnotifi IN sin_siniestro.fnotifi%TYPE,
      pccausin IN sin_siniestro.ccausin%TYPE,
      pcmotsin IN sin_siniestro.cmotsin%TYPE,
      picapital IN NUMBER DEFAULT NULL,
      pfecval IN DATE DEFAULT NULL,
      pctipdes IN NUMBER DEFAULT NULL,
      pimppenali IN NUMBER DEFAULT NULL,
      pimprcm IN NUMBER DEFAULT NULL,   -- Bug 13829 - RSC - 20/05/2010 - APRB78 - Parametrizacion y adapatacion de rescastes
      ppctreten IN NUMBER DEFAULT NULL)   -- Bug 13829 - RSC - 20/05/2010 - APRB78 - Parametrizacion y adapatacion de rescastes
      RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_retorna_valores
         Funci� que retorna valors.

         return             : valores
   *************************************************************************/
   FUNCTION f_retorna_valores
      RETURN t_val;

   /*************************************************************************
      FUNCTION f_imaximo_rescatep
         Funci� que simula un rescat
         param in psseguro  : Seq��ncia asseguran�a
         param in pfsinies  : Data sinistre
         param in pccausin  : Causa sinistre
         param out pimporte : Capital

         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_imaximo_rescatep(
      psseguro IN seguros.sseguro%TYPE,
      pfsinies IN sin_siniestro.fsinies%TYPE,
      pccausin IN sin_siniestro.ccausin%TYPE,
      pimporte OUT NUMBER)
      RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_tramo
         Funci� que retorna valor tram
         param in pnsesion  : Sesio
         param in pfecha  : Data
         param in pntramo  : Tram
         param in pbuscar : Valor a trobar

         return             : 0 -> Tot correcte
   *************************************************************************/
   FUNCTION f_tramo(pnsesion IN NUMBER, pfecha IN NUMBER, pntramo IN NUMBER, pbuscar IN NUMBER)
      RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_cal_fechas_sini
         Funci� que carrega les dates de inici i fi del sinistre
         param in pfsinies  : Data del sinistre
         param in psseguro  : Codi seguro
         param in pnsinies  : N�mero de sinistre
         param in psproduc  : Codi Producte
         param in pcactivi  : Codi Activitat
         param in pcgarant  : Codi Garant�a
         param in pccausin  : Codi Causa sinistre
         param in pcmotsin  : Codi Subcausa
         param in pfnotifi  : Data notificaci�
         param in pctramit  : Codi tramitaci�
         param in pntramit  : N�mero tramitaci�
         param in pnriesgo  : N�mero risc
         param in pfecval   :
         param out pfperini  : Data inici pagament
         param out pfperfin  : Data fi pagament
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error

         Bug 14752 - 28/05/2010 - AMC
   *************************************************************************/
   FUNCTION f_cal_fechas_sini(
      pfsinies IN sin_siniestro.fsinies%TYPE,
      psseguro IN seguros.sseguro%TYPE,
      pnriesgo IN sin_siniestro.nriesgo%TYPE,
      pnsinies IN sin_siniestro.nsinies%TYPE,
      pntramit IN sin_tramitacion.ntramit%TYPE,
      pctramit IN sin_tramitacion.ctramit%TYPE,
      psproduc IN productos.sproduc%TYPE,
      pcactivi IN activisegu.cactivi%TYPE DEFAULT 0,
      pcgarant IN codigaran.cgarant%TYPE,
      pccausin IN sin_siniestro.ccausin%TYPE,
      pcmotsin IN sin_siniestro.cmotsin%TYPE,
      pfnotifi IN sin_siniestro.fnotifi%TYPE,
      pfecval IN sin_tramita_reserva.fmovres%TYPE DEFAULT f_sysdate,
      pfperini OUT sin_tramita_reserva.fresini%TYPE,
      pfperfin OUT sin_tramita_reserva.fresfin%TYPE)
      RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_cal_penali
        Funci� que devuelve el importe de penalizaci�n
        param in pcgarant
        param in pctramit
        param in pnsinies
        param in pireserva
        param in pfini
        param in pffin
        param out pivalora : Valoritzaci�
        param out pipenali : Penalitzaci�
        param out picapris : Capital de risc
        return             : 0 -> Tot correcte
                             1 -> S'ha produit un error

        Bug 20655/101537 - 22/12/2011 - AMC
   *************************************************************************/
   FUNCTION f_cal_penali(
      pcgarant IN codigaran.cgarant%TYPE,
      pctramit IN sin_tramitacion.ctramit%TYPE,
      pnsinies IN sin_siniestro.nsinies%TYPE,
      pireserva IN sin_tramita_reserva.ireserva%TYPE,
      pfini IN sin_tramita_reserva.fresini%TYPE,
      pffin IN sin_tramita_reserva.fresfin%TYPE,
      pipenali OUT sin_tramita_reserva.ipenali%TYPE)
      RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_cal_coste
        Funci� que devuelve el importe del coste medio
        param in pfsinies
        param in pccausin
        param in pcmotsin
        param in psproduc
        param out pireserva
        return             : 0 -> Tot correcte
                             1 -> S'ha produit un error

        Bug 22674:ASN:03/07/2012
   *************************************************************************/
   FUNCTION f_cal_coste(
      pfsinies IN sin_siniestro.fsinies%TYPE,
      pccausin IN sin_siniestro.ccausin%TYPE,
      pcmotsin IN sin_siniestro.cmotsin%TYPE,
      psproduc IN productos.sproduc%TYPE,
      picoste OUT sin_tramita_reserva.ireserva%TYPE)
      RETURN NUMBER;

   /*****************************************************************************************
      Descripcion: Devuelve si es un Amparao de muerte
   *****************************************************************************************/
   FUNCTION f_esamparodemuerte(psproduc IN NUMBER, pcgarant IN NUMBER)
      RETURN NUMBER;

   /*****************************************************************************************
      Descripcion: Devuelve el valor NUMERICO de la respuesta de SEGUROS
   *****************************************************************************************/
   FUNCTION f_respseg(
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pcpregun IN NUMBER,
      pfsinies IN DATE)
      RETURN NUMBER;

    /*****************************************************************************************
      Descripcion: Devuelve el valor NUMERICO de la respuesta de las GARANTIAS
   *****************************************************************************************/
   FUNCTION f_respgaranseg(
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pcgarant IN NUMBER,
      pcpregun IN NUMBER,
      pfsinies IN DATE)
      RETURN NUMBER;

   /*****************************************************************************************
      Descripcion: Devuelve que RESERVA debe aplicarse a las polizas de Exequia
         1: El importe de la garantia (CAPITAL)
         0: Reserva sera 0
   *****************************************************************************************/
   FUNCTION f_reserva_exequias(
      psproduc IN NUMBER,
      pcgarant IN NUMBER,
      pccausin IN NUMBER,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pfsinies IN DATE)
      RETURN NUMBER;

   /*****************************************************************************************
      Descripcion: Devuelve si la garantia tiene activado el parametro RES_IPERIT
         return             : 0 -> Tot correcte
                             1 -> S'ha produit un error
   *****************************************************************************************/
   FUNCTION f_considera_pretension(
      psseguro IN NUMBER,
      pcgarant IN NUMBER,
      pcactivi IN NUMBER,
      pconsidera_pretension OUT NUMBER)
      RETURN NUMBER;
END pac_sin_formula;

/

  GRANT EXECUTE ON "AXIS"."PAC_SIN_FORMULA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_SIN_FORMULA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_SIN_FORMULA" TO "PROGRAMADORESCSI";
