
CREATE OR REPLACE PACKAGE "PAC_VALIDACIONES_SIN" IS
   /******************************************************************************
      NOMBRE:      PAC_IAX_VALIDACIONES_SIN
      PROP�SITO: Funciones para la validaci�n de siniestros

      REVISIONES:
      Ver        Fecha        Autor             Descripci�n
      ---------  ----------  ---------------  ------------------------------------
      1.0        17/02/2009   XPL / XVM        1. Creaci�n del package.
      2.0        02/02/2010   AMC              2. Bug 12207. Se a�ade la funci�n f_calcimporteres
      3.0        27/05/2010   AMC              3. Bug 14608 .Se a�aden nuevos parametros  a f_detpago
      4.0        07/06/2010   AMC              4. Bug 15260 .Se a�aden los campos pccompani y pcpolcia a f_trasini
      5.0        10/08/2010   JRH              5. BUG 0015669 : Campos nuevos
      6.0        26/10/2010   ICV              6. 0016280: GRC - Gesti�n de siniestro. Modificaci�n de pago II
      7.0        11/01/2011   SMF              7.16683: AGA003 - destinatario automatico en siniestros de rentas y bajas
      8.0        06/06/2011   SRA              8. 0018554: LCOL701 - Desarrollo de Modificaci�n de datos cabecera siniestro y ver hist�rico (BBDD).
      9.0        04/08/2011   ICV              9. 0019172: SIN - Transiciones de estados de pagos permitidas
     10.0        29/08/2011   JMC             10. 0019601: LCOL_S001-SIN - Subestado del pago
     11.0        22/11/2011   MDS             11. 0019821: LCOL_S001-SIN - Tramitaci�n judicial
     12.0        16/01/2012   JMP             12. 0018423: LCOL705 - Multimoneda
     13.0        24/01/2012   JMP             13. 0020014: LCOL_S001-SIN - Reservas y pagos en tramitaciones cerradas
     14.0        19/06/2012   ASN             0022108: MDP_S001-SIN - Movimiento de tr�mites
     15.0        31/10/2012   ASN             0024491: MDP_S001-SIN - Control siniestros duplicados
     16.0        13/08/2013   ASN             0025537: RSA000 - Gesti�n de incidencias (0150927/0150917)
     17.0        12/09/2013   JMF             0025651: RSA003 - Incidencias detectadas en el m�dulo de siniestros
     18.0        28/01/2014   JTT             18. 28830: Afegim la funcio F_get_cartera_pendiente
     19.0        24/03/2014   NSS             19. 0024637/0147756: (POSAN500-AN-Sin) Analisis Desarrollo: Siniestros
     20.0        09/04/2014   NSS             20. 0030935: POSPG500-Control de alta de siniestros duplicados seg�n garant�a
     21.0        22/04/2014   NSS             21. 0029989/165377: LCOL_S001-SIN - Rechazo de tramitaci�n �nica
     22.0        25/02/2015   JTT             22. 0034909/198897: Nueva validacion sobre el limite de documentos permitidos
     23.0        02/03/2015   JTT             23. 0034622/0197860: Fecha de formalizaci�n de siniestros
     24.0        23/06/2016    AP             23. CONF-85 Fecha real de ocurrencia
   ******************************************************************************/

   /*************************************************************************
      FUNCTION f_cabecerasini
         Valida la cap�alera del sinistre
         param in pfsinies     : data sinistre
         param in pfnotifi     : data notificaci�
         param in pccausin     : codi causa sinistre
         param in pcmotsin     : codi motiu sinistre
         param in psseguro     : secuencia seguro
         param IN pcnivel  : Nivel
         param IN psperson2 : Persona relacionada
         param IN pnsinies : Numero siniestro -- Bug 0022243 - 22/05/2012 - JMF
         param IN pmodo    : modo antalla
         param IN piperit  : coste aproximado
         return                : 0 -> Tot correcte
                                 1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_cabecerasini(pfsinies    IN DATE,
                           pfnotifi    IN DATE,
                           pccausin    IN NUMBER,
                           pcmotsin    IN NUMBER,
                           psseguro    IN NUMBER,
                           pcnivel     IN NUMBER DEFAULT NULL,
                           psperson2   IN NUMBER DEFAULT NULL,
                           pnsinies    IN NUMBER DEFAULT NULL,
                           pmodo       IN VARCHAR2, -- 24434:ASN:05/11/2012
                           piperit     IN NUMBER, -- 24434:ASN:05/11/2012
                           ptemaildec  IN VARCHAR2, -- 24869:NSS:11/12/2012
                           picapital   IN NUMBER, -- BUG 0024869 - 14/12/2012 - NSS
                           pctipdec    IN NUMBER, -- 0025537:ASN:13/08/2013
                           ptgarantias IN t_iax_garansini, -- BUG 30935 - 09/04/2014 - NSS
                           pfechapp    IN DATE DEFAULT NULL, -- CONF-85 AP
                           pterror     OUT tab_error.terror%TYPE)
      RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_movsini
         Valida el moviment del sinistre
         param in pcestsin     : codi estat sinistre
         param in pfestsin     : data estat sinistre
         param in pcunitra     : codi unitat tramitadora
         param in pctramitad   : codi tramitador
         return                : 0 -> Tot correcte
                                 1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_movsini(pcestsin   IN NUMBER,
                      pfestsin   IN DATE,
                      pcunitra   IN VARCHAR2,
                      pctramitad IN VARCHAR2) RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_trasini
         Valida la tramitaci� del sinistre
         param in pctiptra  : Tipo tramitaci�n
         param in pctcausin : Tipus dany
         param in pcinform  : Indicador tramitaci� informativa
         param in pttramita : Descripci�n tramtiaci�n
         param in pmarca    : Marca veh�culo
         param in pmodel    : Modelo veh�culo
         param in psperson  : Codi persona
         param in ptnomvia  : Nom via
         param in pcsiglas  : Siglas
         param in pcpoblac  : Codi poblaci�
         param in pcprovin  : Codi provincia
         param in pcpais    : Codi pais
         param in ptdirec   : Descripci� direcci�
         param in pccompani : C�digo de la compa�ia contraria
         param in pcpolcia  : Numero de p�lizza contraria
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error

         Bug 15260 - 07/06/2010 - AMC - Se a�aden los campos pccompani y pcpolcia
   *************************************************************************/
   FUNCTION f_trasini(pctiptra  IN NUMBER,
                      pctcausin IN NUMBER,
                      pcinform  IN NUMBER,
                      pttramita IN VARCHAR2,
                      psperson  IN NUMBER,
                      pmarca    IN VARCHAR2,
                      pmodel    IN VARCHAR2,
                      ptnomvia  IN VARCHAR2,
                      pcsiglas  IN NUMBER,
                      pcpoblac  IN NUMBER,
                      pcprovin  IN NUMBER,
                      pcpais    IN NUMBER,
                      ptdirec   IN VARCHAR2,
                      pccompani IN NUMBER,
                      pcpolcia  IN VARCHAR2) RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_movtrami
         Valida el moviment de tramitaci�
         param in pnsinies  : n�mero de sinistre
         param in pntramit  : n�mero de tramitaci�
         param in pcesttra  : estat tramitaci�
         param in ppagos    : Tamany de l'objecte de pagaments (>0 hi han pagaments)
         param in pcesttra  : Subestat tramitaci� --19172
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_movtrami(pnsinies IN VARCHAR2,
                       pntramit IN NUMBER,
                       pcesttra IN NUMBER,
                       ppagos   IN NUMBER,
                       pcsubtra IN NUMBER DEFAULT NULL) RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_loctrami
         Valida les dades de la direcci� del sinistre
         param in ptnomvia   : Nom via
         param in pcsiglas   : Siglas
         param in pcpoblac   : Codi poblaci�
         param in pcprovin   : Codi provincia
         param in pcpais     : Codi pais
         param in ptdirec    : Descripci� direcci�
         return              : 0 -> Tot correcte
                               1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_loctrami(ptnomvia IN VARCHAR2,
                       pcsiglas IN NUMBER,
                       pcpoblac IN NUMBER,
                       pcprovin IN NUMBER,
                       pcpais   IN NUMBER,
                       ptdirec  IN VARCHAR2) RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_dantrami
         Valida les dades dels danys d'un sinistre
         param in pnsinies   : n�mero de sinistre
         param in pntramit   : n�mero de tramitaci�
         param in ptdano     : Descripci� dany
         return              : 0 -> Tot correcte
                               1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_dantrami(pnsinies IN VARCHAR2,
                       pntramit IN NUMBER,
                       ptdano   IN VARCHAR2) RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_dandettrami
         Valida les dades dels danys d'un sinistre
         param in pnsinies   : n�mero de sinistre
         param in pntramit   : n�mero de tramitaci�
         param in pndano     : N�mero de da�o
         param in pndetdano  : Tipus de dany (valor fixe: 0: Sin da�os, 1: Secci�n Delantera, etc)
         return              : 0 -> Tot correcte
                               1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_dandettrami(pnsinies  IN VARCHAR2,
                          pntramit  IN NUMBER,
                          pndano    IN NUMBER,
                          pndetdano IN NUMBER) RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_restrami
         Valida les dades de les reserves d'una tramitaci�
         param in pnsinies  : N�mero de sinistre
         param in pntramit  : N�mero de tramitaci�
         param in pccausa   : Codi causa
         param in pctipres  : Tipus de reserva
         param in pcgarant  : Codi garantia
         param in pccalres  : C�lcul reserva
         param in pireserva : Import reserva
         param in picaprie  : Capital en risc
         param in pipenali  : Import penalitzaci�
         param in pdinici   : Data inici
         param in pdfi      : Data fi
         param in pcmonres  : Moneda de la reserva
         param in ptorigen  : Pantalla que llama al alta de reservas
         param out presult  : error d'avis -- bug 16683
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_restrami(pnsinies  IN VARCHAR2,
                       pntramit  IN NUMBER,
                       pccausa   IN NUMBER,
                       pctipres  IN NUMBER,
                       pcgarant  IN NUMBER,
                       pccalres  IN NUMBER,
                       pireserva IN NUMBER,
                       picaprie  IN NUMBER,
                       pipenali  IN NUMBER,
                       pdinici   IN DATE,
                       pdfi      IN DATE,
                       pcmonres  IN VARCHAR2,
                       ptorigen  IN VARCHAR2,
                       -- BUG 20014 - 24/01/2012 - JMP - LCOL_S001-SIN - Reservas y pagos en tramitaciones cerradas
                       presult OUT NUMBER,
                       pndias  IN NUMBER) -- 24708/162026 - 03/01/2014 - NSS - Validaciones garantia
    RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_dest
         Valida les dades del destinatari
         param in pnsinies  : N�mero de sinistre
         param in pntramit  : N�mero de tramitaci�
         param in pccausa   : Codi causa
         param in pctipdes  : Tipus destinatari
         param in pcactpro  : Activitat professional
         param in psperson  : Codi persona
         param in ppasigna  : Percentatge assignaci�
         param in pcpaisre  : Codi pa�s resident
         param in pcbancar  : Codi Bancari
         -- BUG 0015669 - 08/2010 - JRH  -  Alta prestacions en forma de renda (PL)
         param IN  pctipcap : Tipo prestacion
         param IN  pcrelase : Relaci�n con asegurado.
      -- Fi BUG 0015669 - 08/2010 - JRH
         param OUT  presult  : Missatges d'avis -- bug 16683
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_dest(pnsinies IN VARCHAR2,
                   pntramit IN NUMBER,
                   pccausa  IN NUMBER,
                   pctipdes IN NUMBER,
                   pcactpro IN NUMBER,
                   psperson IN NUMBER,
                   ppasigna IN NUMBER,
                   pcpaisre IN NUMBER,
                   pcbancar IN VARCHAR2,
                   -- BUG 0015669 - 08/2010 - JRH  -  Alta prestacions en forma de renda (PL)
                   pctipcap IN NUMBER DEFAULT NULL,
                   pcrelase IN NUMBER DEFAULT NULL
                   -- Fi BUG 0015669 - 08/2010 - JRH
                   ) RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_cabecerapago
         Valida les dades de la cap�alera del pagament
         param in pnsinies  : N�mero de sinistre
         param in pntramit  : N�mero de tramitaci�
         param in pctippag  : Codi tipus pagament
         param in pctipdes  : Tipus destinatari
         param in pcconpag  : Concepte pagament
         param in pccauind  : Causa indemnitzaci�
         param in pcforpag  : Codi forma pagament
         param in pcbancar  : Codi Bancari
         param in pforden   : Data ordre
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_cabecerapago(pnsinies        IN VARCHAR2,
                           pntramit        IN NUMBER,
                           pctippag        IN NUMBER,
                           pctipdes        IN NUMBER,
                           pcconpag        IN NUMBER,
                           pccauind        IN NUMBER,
                           pcforpag        IN NUMBER,
                           pcbancar        IN VARCHAR2,
                           pforden         IN DATE,
                           psidepag        IN NUMBER DEFAULT NULL,
                           pnombreoutfacta OUT VARCHAR2) --Bug.: 16280
    RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_movpago
         Valida els moviments d'un pagament
         param in psidepag  : Codi seq��ncia pagament
         param in pcestpag  : Codi estat pagament
         param in pcestval  : Codi estat validaci�
         param in pcsubpag  : C�digo subestado del pago
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_movpago(psidepag IN NUMBER,
                      pcestpag IN NUMBER,
                      pcestval IN NUMBER,
                      pcsubpag IN NUMBER) -- Bug:19601 - 29/09/2011 - JMC
    RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_detpago
         Valida els detalls d'un pagament
         param in pnsinies  : N�mero sinistre
         param in pireserva : Importe reserva
         param in pisinret  : Importe sin retenci�n
         param in piiva     : Importe IVA
         param in piretenc  : Importe brut
         param in pfperini  : Fecha inicio
         param in pfperfin  : Fecha fin
         param in piresrcm  : Import Rendiment obligatori
         param in piresred  : Import Rendiment Redu�t obligatori
         param in pctipres  : Tipo de reserva
         param in pcgarant  : Codigo de la garantia
         param in pctippag  : Tipo de pago
         param in pcmonres  : Moneda de la reserva contra la que va el pago
         param in psidepag  : Id. del pago
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error

         Bug 14608 - 27/05/2010 - AMC - Se a�aden nuevos parametros
   *************************************************************************/
   FUNCTION f_detpago(pnsinies  IN VARCHAR2,
                      pireserva IN NUMBER,
                      pisinret  IN NUMBER,
                      piiva     IN NUMBER,
                      piretenc  IN NUMBER,
                      pfperini  IN DATE,
                      pfperfin  IN DATE,
                      piresrcm  IN NUMBER,
                      piresred  IN NUMBER,
                      pctipres  IN NUMBER,
                      pcgarant  IN NUMBER,
                      pctippag  IN NUMBER,
                      pcmonres  IN VARCHAR2,
                      -- BUG 18423 - 16/01/2012 - JMP - Multimoneda
                      psidepag  IN NUMBER, -- BUG 18423 - 16/01/2012 - JMP - Multimoneda
                      pctipgas  IN NUMBER, --27909:NSS:03/09/2013
                      pcconpag  IN NUMBER,
                      pnmovres  IN NUMBER, --BUG 31294/174788:NSS:29/05/2014
                      pnorden   IN NUMBER, --BUG 31294/174788:NSS:29/05/2014
                      pireteiva IN NUMBER, --BUG 24637/147756:NSS:29/05/2014
                      pireteica IN NUMBER, --BUG 24637/147756:NSS:29/05/2014
                      pitotimp  IN NUMBER DEFAULT NULL, --bug 24637/147756:NSS:14/03/2014
                      pitotret  IN NUMBER DEFAULT NULL, --bug 24637/147756:NSS:21/03/2014
                      piotrosgas IN NUMBER DEFAULT NULL,
                      pibaseipoc IN NUMBER DEFAULT NULL,
                      piipoconsumo IN NUMBER DEFAULT NULL
                      ) RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_agenda
         Valida l'agenda
         param in pctipreg  : Codi tipo registro
         param in pcmanual  : Codi manual
         param in pcestage  : Codi estat agenda
         param in pffinage  : Data finalitzaci�
         param in pcestage  : T�tol
         param in ptlinage  : Descripci�
         param in psidepag  : Seq��ncia pagament
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_agenda(pctipreg IN NUMBER,
                     pcmanual IN NUMBER,
                     pcestage IN NUMBER,
                     pffinage IN DATE,
                     pttitage IN VARCHAR2,
                     ptlinage IN VARCHAR2,
                     psidepag IN NUMBER) RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_calcimporteres
         Valida los parametros para poder calcular el importe de la reserva
         param in pctipres  : Codi tipo reserva
         param in pcgarang  : Codigo de la garantia
         param in pfresini  : Fecha de inicio reserva
         param in pfresfin  : Fecha fin de reserva
         param in psproduc  : Codigo del producto
         mensajes           : Mensajes de error
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error

       Bug 12207 - 02/02/2010 - AMC
   *************************************************************************/
   FUNCTION f_calcimporteres(pctipres IN NUMBER,
                             pcgarant IN NUMBER,
                             pfresini IN DATE,
                             pfresfin IN DATE,
                             psproduc IN NUMBER) RETURN NUMBER;

   -- BUG 0015669 - 08/2010 - JRH  -  Alta prestacions en forma de renda (PL)
   /*************************************************************************
      FUNCTION f_prest
         Valida les dades de la prestaci� en forma de renda
         param in pnsinies  : N�mero de sinistre
         param in pntramit  : N�mero de tramitaci�
         param in psperson  : Codi persona
         param in pctipdes  : Tipus destinatari
         param in psseguro  : Sseguro
                  param in F1PAREN  : Fecha primera renta
        param in FUPAREN   : Fecha ultima renta
        param in CFORPAG : Forma pago renta
        param in IBRUREN   :Importe renta
        param in CREVALI   : Tipo revalorizaci�n
        param in PREVALI   : % revalorizaci�n
        param in IREVALI   : Importe revalorizaci�n
        param in CTIPDUR   : Tipo duraci�n
        param in NPARTOT : Participaciones inciales
        param in CTIPBAN   : Tipo Banc
        param in CBANCAR   :Cuenta

         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_prest(pnsinies IN VARCHAR2,
                    pntramit IN NUMBER,
                    psperson IN NUMBER,
                    pctipdes IN NUMBER,
                    psseguro IN NUMBER,
                    pf1paren IN DATE,
                    pfuparen IN DATE,
                    pcforpag IN NUMBER,
                    pibruren IN NUMBER,
                    pcrevali IN NUMBER,
                    pprevali IN NUMBER,
                    pirevali IN NUMBER,
                    pctipdur IN NUMBER,
                    pnpartot IN NUMBER,
                    pctipban IN NUMBER,
                    pcbancar IN VARCHAR2,
                    pcestado IN NUMBER,
                    pcmotivo IN NUMBER,
                    pcblopag IN NUMBER,
                    pnpresta IN NUMBER) RETURN NUMBER;

   -- Fi BUG 0015669 - 08/2010 - JRH

   -- Ini bug 18554 - 06/06/2011 - SRA

   /*************************************************************************
     Funci�n que valida si el cambio en la fecha de ocurrencia del siniestro y comprueba la afectaci�n que tiene
     sobre las garant�as.
         param in pnsinies  : n�mero de siniestro
         param in pfsinant  : fecha de ocurrencia del siniestro (antes del cambio)
         param in pfsinact  : nueva fecha de ocurrencia del siniestro (propuesta)
         return             : 0 -> Tot correcte
                            !=0 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_cabecerasini2(pnsinies IN sin_siniestro.nsinies%TYPE,
                            pfsinact IN sin_siniestro.fsinies%TYPE,
                            terror   OUT tab_error.terror%TYPE
                            -- BUG 21546_108727- 23/02/2012 - JLTS - Se quita la utilizacion del objeto mensajes
                            -- mensajes IN OUT t_iax_mensajes)
                            ) RETURN NUMBER;

   -- Fin bug 18554 - 06/06/2011 - SRA

   /*************************************************************************
      FUNCTION f_valida_juzgado
         Valida datos de un juicio
         param in pnsinies  : N�mero siniestro
         param in pfnotiase : Fecha notificaci�n o emplazamiento al asegurado
         param in pfrecpdem : Fecha recepci�n demanda
         param in pfnoticia : Fecha notificaci�n o emplazamiento a la CIA
         param in pfcontase : Fecha contestaci�n demanda asegurado
         param in pfcontcia : Fecha contestaci�n demanda CIA
         param in pfaudprev : Fecha audiencia previa
         param in pfjuicio  : Fecha del juicio
         param in pntipopro : Tipo de procedimiento (VF=800065)
         param in pcresplei : Resultado del pleito (VF=800062)
         param in pnclasede : Clase de demanda (VF=800066)
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error

         Bug 19821 - 24/11/2011 - MDS - Validaci�n Tramitaci�n judicial (se a�aden campos nuevos)
   *************************************************************************/
   FUNCTION f_valida_juzgado(pnsinies  IN NUMBER,
                             pfnotiase IN DATE,
                             pfrecpdem IN DATE,
                             pfnoticia IN DATE,
                             pfcontase IN DATE,
                             pfcontcia IN DATE,
                             pfaudprev IN DATE,
                             pfjuicio  IN DATE,
                             pntipopro IN NUMBER,
                             pcresplei IN NUMBER,
                             pnclasede IN NUMBER) RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_movtramte
         Valida el moviment de tramitaci�
         param in pnsinies  : n�mero de sinistre
         param in pNTRAMTE  : n�mero de tramitaci�
         param in pCESTTTE  : estat tramitaci�
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
        -- Bug 0022108 - 19/06/2012 - JMF
   *************************************************************************/
   FUNCTION f_movtramte(pnsinies IN VARCHAR2,
                        pntramte IN NUMBER,
                        pcesttte IN NUMBER) RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_repetido
         Comprueba si hay otro siniestro con la misma causa y fecha
         param in psseguro  : clave seguros
         param in pfsinies  : fecha ourrencia
         param in pccausa   : causa siniestro
         param in pnsinies  : n�mero de siniestro
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
        0024491: MDP_S001-SIN - Control siniestros duplicados : ASN:31/10/2012
   *************************************************************************/
   FUNCTION f_repetido(psseguro IN NUMBER,
                       pfsinies IN DATE,
                       pccausin IN NUMBER,
                       pnsinies IN VARCHAR2) RETURN NUMBER;

   -- Bug 0025651 - 12/09/2013 - JMF
   /*************************************************************************
      FUNCTION f_repetido_ctipsin
         Comprueba si hay otro siniestro con el mismo tipo de causa
         param in psseguro  : clave seguros
         param in pfsinies  : fecha ourrencia
         param in pccausa   : causa siniestro
         param in pnsinies  : n�mero de siniestro
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
        0024491: MDP_S001-SIN - Control siniestros duplicados : ASN:31/10/2012
   *************************************************************************/
   FUNCTION f_repetido_ctipsin(psseguro IN NUMBER,
                               pfsinies IN DATE,
                               pccausin IN NUMBER,
                               pnsinies IN VARCHAR2) RETURN NUMBER;

   -- Bug 0027487 - 25/11/2013 - NSS
   /*************************************************************************
      FUNCTION f_valida_declarante
         Comprueba si el declarante del siniestro es el adecuado para el tipo de garant�a
         param in psseguro  : clave seguros
         param in pctipdec : tipo de declarante
         param in pcgarant   : c�digo garantia seleccionada
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_valida_declarante(psseguro IN NUMBER,
                                pctipdec IN NUMBER,
                                pcgarant IN NUMBER) RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_valida_garantia
         Comprueba validaciones propias de la garantia seleccionada
         param in psseguro  : clave seguros
         param in pcgarant   : c�digo garantia seleccionada
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
      -- Bug 0024708/162026- 31/12/2013 - NSS
   *************************************************************************/
   FUNCTION f_valida_garantia(psseguro IN NUMBER,
                              pnriesgo IN NUMBER,
                              pcgarant IN NUMBER,
                              pndias   IN NUMBER,
                              pfsinies IN DATE,
                              pfresini IN DATE,
                              pfresfin IN DATE,
                              porigen  IN VARCHAR2,
                              pterror  OUT tab_error.terror%TYPE)
      RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_get_cartera_pendiente
         Consulta si hay recibos pendientes de un seguro / riesgo
         param in psseguro  : clave seguros
         param in pnriesgo  : clave riesto
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
      -- Bug 028830 - 28/01/2014 - JTT
   *************************************************************************/
   FUNCTION f_get_cartera_pendiente(psseguro IN seguros.sseguro%TYPE,
                                    pnriesgo IN sin_siniestro.nriesgo%TYPE)
      RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_valida_ult_tra
         Comprueba si es la �ltima tramitacion abierta del siniestro
         param in pnsinies  : c�di sinistre
         param in pntramit   : N�mero de tramitaci�
         param in pcidioma   : Idioma
         param out pntramit   : Literal validacion
       return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
      -- Bug 0029989/165377- 13/02/2014 - NSS
   *************************************************************************/
   FUNCTION f_valida_ult_tra(pnsinies IN VARCHAR2,
                             pntramit IN NUMBER,
                             pcidioma IN NUMBER,
                             ptlitera OUT VARCHAR2) RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_val_aseg_innominado
         Comprueba validaciones propias del asegurado innominado
         param in psperson  : numero persona asegurado innominado
         param out pmensaje : mensaje de validacion
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
      -- Bug 0030882/171926- 04/04/2014 - NSS
   *************************************************************************/
   FUNCTION f_val_aseg_innominado(psperson IN NUMBER,
                                  pmensaje OUT VARCHAR2) RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_repetido_garantia
         Comprueba validaciones propias del asegurado innominado
         param in psseguro  : codigo seguro
         param in pcgarant  : codigo garantia
         param out pmensaje : mensaje de validacion
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
      -- Bug 30935- 09/04/2014 - NSS
   *************************************************************************/
   FUNCTION f_repetido_garantia(psseguro IN NUMBER,
                                pcgarant IN NUMBER,
                                ptgarant IN VARCHAR2,
                                pterror  OUT tab_error.terror%TYPE)
      RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_validar_documento_cierre
         Validamos que solo hay un documento de Cierre por siniestro
         param in nsinies  : numero de siniestro
         param in ntramit  : numero de tramitacion
         param in pcdocume : codigo de documento
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_validar_documento_cierre(pnsinies IN sin_siniestro.nsinies%TYPE,
                                       pntramit IN sin_tramitacion.ntramit%TYPE,
                                       pcdocume IN sin_tramita_documento.cdocume%TYPE)
      RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_validar_fecha_formalizacion
         Validamos que la fecha de recepcion ha sido informada en el documento de Cierre (521)
         param in nsinies  : numero de siniestro
         return             : 0 -> Tot correcte
                              1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_validar_fecha_formalizacion(pnsinies IN sin_siniestro.nsinies%TYPE)
      RETURN NUMBER;
   /*************************************************************************
   FUNCTION f_pago_sol_sini
        Valida pagos de solidaridad en siniestros ingresando tabla con los valores 
        respectivos
        param in psseguro  : codigo seguro
        param in psidepag  : codigo sidepag
        param in pnsinies  : codigo nsinies
        param out pmensaje : mensaje de validacion
        return             : 0 -> Tot correcte
                             1 -> S'ha produit un error
       -- Bug  IAXIS - 4727 - 09/04/2014 - AABC
   *************************************************************************/
   FUNCTION f_pago_sol_sini(psseguro  IN  seguros.sseguro%TYPE,
                            psidepag  IN  sin_tramita_pago.sidepag%TYPE,
                            pnsinies  IN  sin_tramita_pago.nsinies%TYPE,
                            pnpagtot  IN  sin_tramita_pago.isinretpag%TYPE, 
                            pnmensaje OUT VARCHAR2) 
   RETURN NUMBER;      
   /*************************************************************************
   FUNCTION f_sin_val_reexpr
        Estrae valor de reexpresion si es aumento o disminucion 
        param in pnsinies  : codigo siniestro
        param in pnmovres  : codigo numero de siniestro
        param in pidres    : codigo identificacion reserva 
        return             : Valor de rexpresion 
       -- Bug  IAXIS - 5454 - 08/11/2019 - AABC
   *************************************************************************/
   FUNCTION f_sin_val_reexpr(pnsinies  IN  sin_tramita_reservadet.nsinies%TYPE,
                             pnmovres  IN  sin_tramita_reservadet.nmovres%TYPE,
                             pidres    IN  sin_tramita_reservadet.idres%TYPE ) 
   RETURN NUMBER;
   /*************************************************************************
   FUNCTION f_sin_val_trans
        Estrae valor de reexpresion si es aumento o disminucion 
        param in pnsinies  : codigo siniestro
        param in pnmovres  : codigo numero de siniestro
        param in pidres    : codigo identificacion reserva 
        return             : Valor de rexpresion 
       -- Bug  IAXIS - 5454 - 08/11/2019 - AABC
   *************************************************************************/
   FUNCTION f_sin_val_trans(pnsinies  IN  sin_tramita_reservadet.nsinies%TYPE,
                             pnmovres  IN  sin_tramita_reservadet.nmovres%TYPE,
                             pidres    IN  sin_tramita_reservadet.idres%TYPE ) 
   RETURN NUMBER;   
   --
   /*************************************************************************
   FUNCTION f_sin_val_reser
        Estrae valor de reexpresion si es aumento o disminucion 
        param in pnsinies  : codigo siniestro
        param in pnmovres  : codigo numero de siniestro
        param in pidres    : codigo identificacion reserva 
        return             : Valor de rexpresion 
       -- Bug  IAXIS - 5454 - 08/11/2019 - AABC
   *************************************************************************/
   FUNCTION f_sin_val_reser(pnsinies  IN  sin_tramita_reservadet.nsinies%TYPE,
                             pnmovres  IN  sin_tramita_reservadet.nmovres%TYPE,
                             pidres    IN  sin_tramita_reservadet.idres%TYPE ) 
   RETURN NUMBER;
   --   
   
   /*************************************************************************
      FUNCTION f_val_res
         Obtenemos el valor de Reserva Actual, Contituci�n, Liberaci�n, Disminuci�n
         
         param in p_nsinies  : N�mero de siniestro
         param in p_nmovres  : N�mero de movimiento de Reserva
         param in p_idres    : N�mero de Identificaci�n de Reserva
         param in p_idcol    : N�mero de idetificador de la columna (1)Reserva  (2)Constituci�n   (3)Liberaci�n  (4)Disminuci�n 
        --IAXIS 6242 Validadores Indemnizaci�n - Reservas brutas - IRDR - 08/01/2020

*************************************************************************/

FUNCTION f_val_res(p_nsinies IN NUMBER,
                   p_nmovres IN NUMBER,
                   p_idres   IN NUMBER,
                   p_idcol   IN NUMBER,
                   p_fdesde  IN DATE,
                   p_fhast   IN DATE
                   )
  RETURN NUMBER; 
  --
END pac_validaciones_sin;

/

  GRANT EXECUTE ON "AXIS"."PAC_VALIDACIONES_SIN" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_VALIDACIONES_SIN" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_VALIDACIONES_SIN" TO "PROGRAMADORESCSI";
