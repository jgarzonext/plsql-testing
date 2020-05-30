create or replace PACKAGE BODY PAC_IAX_LISTVALORES AS
      /******************************************************************************
         NOMBRE:       PAC_IAX_LISTVALORES
         PROPÃ“SITO:  Funciones para recuperar valores

         REVISIONES:
         Ver        Fecha        Autor   Descripción
        ---------  ----------  ------   ------------------------------------
         1.0        16/11/2007   ACC     1. Creación del package.
                    11/02/2009   FAL     Cobradores, delegaciones. Bug: 0007657
                    11/02/2009   FAL     Tipos de apunte, Estado apunte, en/de la agenda. Bug: 0008748
                    12/02/2009   AMC     Siniestros de baja. Bug: 9025
                    06/03/2009   JSP     Agenda de poliza. Bug: 0009208
         2.0        27/02/2009   RSC     Adaptación iAxis a productos colectivos con certificados
         3.0        11/03/2009   RSC     Análisis adaptación productos indexados
         4.0        11/03/2009   SBG     Nou parÃ m. p_tmode funció p_ompledadesdireccions (Bug 7624)
         5.0        24/04/2009   AMC     Bug 9585 Se añade el pcempres a la función f_get_ramos
         6.0        06/05/2009   ICV     009940: IAX - Pantalla para lanzar maps
         7.0        23/04/2009   FAL     Parametrizar tipos de anulación de poliza en función de la configuración de acciones del usuario y del producto. Bug 9686.
         8.0        01/10/2009   JRB     0011196: CRE - Gestión de propuestas retenidas
         9.0        07/10/2009   ICV     0010487: IAX - REA: Desarrollo PL del mantenimiento de Facultativo
        10.0        15/12/2009   JTS/NMM 10831: CRE - Estado de pólizas vigentes con fecha de efecto futura
        11.0        18/02/2010   JMF     0012679 CEM - Treure la taula MOVRECIBOI
        12.0        22/03/2010   JTS     0013477: CRE205 - Nueva pantalla de Gestión Pagos Rentas
        13.0        10/05/2010   RSC     0011735: APR - suplemento de modificación de capital /prima
        14.0        04/06/2010   PFA     14588: CRT001 - Añadir campo compañia productos
        15.0        18/06/2010   AMC     Bug 15148 - Se añaden nuevas funciones
        16.0        21/06/2010   AMC     Bug 15149 - Se añaden nuevas funciones
        17.0        09/08/2010   AVT     15638: CRE998 - Multiregistre cercador de pÃ²lisses (Asegurat)
        18.0        20/09/2010   JRH     18. 0015869: CIV401 - Renta vitalÃ­cia: incidencias 12/08/2010
        19.0        06/10/2010   ICV     0015106: AGA003 - mantenimiento para la gestión de cobradores
        20.0        17/08/2010   PFA     Bug 15006: MDP003 - Incluir nuevos campos en búsqueda siniestros
        21.0        25/08/2011   DRA     0019169: LCOL_C001 - Campos nuevos a añadir para Agentes.
        22.0        30/06/2011   LCF     Bug 18855: LCOL003 - Permitir seleccionar el código de agente en simulaciones
        23.0        02/09/2011   DRA     0018752: LCOL_P001 - PER - Análisis. Mostrar los tipos de documento en función del tipo de persona.
        24.0        20/09/2011   JMP     0019130: LCOL_T002-Agrupacion productos - Productos Brechas 01
        25.0        03/10/2011   APD     0018319: LCOL_A002- Pantalla de mantenimiento del contrato de reaseguro
        26.0        03/10/2011   ETM    BUG 0017383: ENSA101 - Prestacions i altes.Cobrador bancari
        27.0        26/09/2011   DRA     0019069: LCOL_C001 - Co-corretaje
        28.0        08/11/2011   JGR     0019985  LCOL_A001-Control de las matriculas (prenotificaciones)
        29.0        11/11/2011   APD     0019169: LCOL_C001 - Campos nuevos a añadir para Agentes.
        30.0        10/02/2012   JGR     0020735: LCOL_A001-ADM - Introduccion de cuenta bancaria. Nota:0103205 f_get_lsttipcc
        31.0        17/01/2012   JGR    0020735 - Introduccion de cuenta bancaria, indicando tipo de cuenta y banco
        32.0        20/04/2012   ETM    0021924: MDP - TEC - Nuevos campos en pantalla de Gestión (Tipo de retribución, Domiciliar 1Âº recibo, Revalorización franquicia)
        33.0        29/05/2012   APD    0021682: MDP - COM - Transiciones de estado de agente.
        34.0        04/06/2012   JRH    21924: Corregir tipo retribución
        35.0        25/07/2012   JGR    0022082: LCOL_A003-Mantenimiento de matriculas
        36.0        14/08/2012   DCG    0023183: LCOL_T020-COA-Circuit d'alta de propostes amb coasseguran
        37.0        30/10/2012   XVM    0024058: LCOL_T010-LCOL - Parametrizaci?n de productos Vida Grupo
        38.0        20/12/2012   MDS    0024717: (POSPG600)-Parametrizacion-Tecnico-Descripcion en listas Tipos Beneficiarios RV - Cambiar descripcion en listas Tipos Beneficiar
        39.0        18/02/2013   MMS    0025584: POSDE600-(POSDE600)-Desarrollo-GAPS Tecnico-Id 6 - Tipo de duracion de poliza â€˜hasta edadâ€™ y edades permitidas por producto. Añadir f_get_lstedadesprod
        40.0        04/03/2013   AEG    0024685: (POSDE600)-Desarrollo-GAPS Tecnico-Id 5 -- N?mero de p?liza manual
        41.0        22/08/2013   DEV    0026443: (POSDE400)-Desarrollo-GAPS Reaseguro, Coaseguro -Id 76 -XL capacidad prioridad dependiente del producto (Fase3)
        42.0        19/12/2013   DCT    0023830: LCOL_A004 Ajustar el Manteniment dels Comptes de Reasseguranca (Nota: 22076/0123753)
        43.0        07/02/2014   AGG    0030057: POSPG400-Env?o de Indicadores de compa??as a SAP
        44.0        21/05/2014   FAL    0029035: TRQ000 - Mesa CROSS (personas, usuarios, perfiles)
        45.0        22/09/2014   CASANCHEZ  0032668: COLM004-Trapaso entre Bancos (cobrador bancario) manteniendo la nómina
	46.0        08/09/2016   ASDQ   CONF-209-GAP_GTEC50 - Productos multimoneda
	47.0        03/05/2018   VCG    QT-0001704: Listado de Ramos para Convenios
        48.0        14/01/2019   WAJ    Listado de tipos de vinculacion y tipos de compañia
	49.0        27/02/2019   ACL    TCS_827 Se agrega la función f_get_ramo_contrag.
        50.0        22/03/2019   CJMR   50. IAXIS-3195: Ajuste consulta
	51.0 	    19/07/2019   OAS	IAXIS-4764 Se agrega la funcion f_get_agentestipos
        52.0        28/10/2019   SGM    52. IAXIS-6149: Realizar consulta de personas publicas
   ******************************************************************************/
   e_object_error EXCEPTION;
   e_param_error  EXCEPTION;

   /*************************************************************************
      Abre un cursor con la sentencia suministrada
      param in squery    : consulta a executar
      param out mensajes : mesajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_opencursor(squery IN VARCHAR2, mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := SUBSTR(squery, 1, 1900);
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_OpenCursor';
      terror         VARCHAR2(200) := 'No se puede recuperar la información';
                                            --//ACC recuperar desde literales
   --//ACC recuperar desde literales
   --//ACC    PAC_IOBJ_MENSAJES.F_GET_DESCMENSAJE(XXX,PAC_MD_COMMON.F_GET_CXTIDIOMA);
   BEGIN
      OPEN cur FOR squery;

      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           terror, SQLCODE, SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_opencursor;

   /*************************************************************************
      Recupera la información de valores según la clave
      param in clave     : clave a recuperar detalles
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_detvalores(clave IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := 'calve =' || clave;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_OpenCursor';
   BEGIN
      cur := pac_md_listvalores.f_detvalores(clave, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_detvalores;

   /*************************************************************************
      Recupera la información de valores según la clave y la condición
      param in clave     : clave a recuperar detalles
      param in cond      : condición de la consulta (sin where ni and)
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_detvalorescond(clave IN NUMBER, cond IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      wh             VARCHAR2(1000);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := 'clave=' || clave || ' cond=' || cond;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_DetValoresCond';
   BEGIN
      cur := pac_md_listvalores.f_detvalorescond(clave, cond, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_detvalorescond;

   /*************************************************************************
      Recupera la información de valores según la clave y la condición de LST_CONDICIONES
      param in clave     : clave a recuperar detalles
      param in cond      : Codigo de condición de LST_CONDICIONES
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_detvalorescond2(clave IN NUMBER, cond IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      wh             VARCHAR2(1000);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := 'clave=' || clave || ' cond=' || cond;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_DetValoresCond2';
      vcondsql       VARCHAR2(5000);
   BEGIN
      IF cond IS NULL THEN
         cur := pac_md_listvalores.f_detvalores(clave, mensajes);
         RETURN cur;
      END IF;

      vcondsql := pac_md_listvalores.f_get_lstcondiciones(pac_md_common.f_get_cxtempresa,
                                                          f_user, cond, mensajes);

      IF mensajes IS NOT NULL THEN
         IF mensajes.COUNT > 0 THEN
            vcondsql := '';
         END IF;
      END IF;

      cur := pac_md_listvalores.f_detvalorescond(clave, vcondsql, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_detvalorescond2;

   /*************************************************************************
      Recupera descripción de detvalores
      param in clave        : código de la tabla
      param in valor        : código del valor a recuperar
      param in out mensajes : mesajes de error
      return                : descripción del valor
   *************************************************************************/
   FUNCTION f_getdescripvalores(
      clave IN NUMBER,
      valor IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN VARCHAR2 IS
      RESULT         VARCHAR2(100);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := 'clave=' || clave || ' valor=' || valor;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_GetDescripValores';
   BEGIN
      RESULT := pac_md_listvalores.f_getdescripvalores(clave, valor, mensajes);
      RETURN RESULT;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN NULL;
   END f_getdescripvalores;

   /*************************************************************************
      Recupera el campo de la sentencia
      param in squery       : sentencia sql
      param in out mensajes : mesajes de error
      return                : descripción del valor
   *************************************************************************/
   FUNCTION f_getdescripvalor(squery IN VARCHAR2, mensajes IN OUT t_iax_mensajes)
      RETURN VARCHAR2 IS
      RESULT         VARCHAR2(4000) := NULL;
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := squery;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_GetDescripValor';
   BEGIN
      RESULT := pac_md_listvalores.f_getdescripvalor(squery, mensajes);
      RETURN RESULT;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN RESULT;
   END f_getdescripvalor;

   /*************************************************************************
      Recupera la Lista de distintos ramos, devuelve un ref cursor
      param in pcempres : codigo de empresa
      param out : mensajes de error
      return    : ref cursor
   *************************************************************************/
   -- AMC-Bug9585-24/04/2009- Se añade el pcempres
   FUNCTION f_get_ramos(p_tipo IN VARCHAR2, pcempres IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_Ramos';
   BEGIN
      -- AMC-Bug9585-24/04/2009
      IF pcempres IS NULL THEN
         cur := pac_md_listvalores.f_get_ramos(p_tipo, pac_md_common.f_get_cxtempresa(),
                                               mensajes);
      ELSE
         cur := pac_md_listvalores.f_get_ramos(p_tipo, pcempres, mensajes);
      END IF;

      -- Fi - AMC-Bug9585-24/04/2009
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_ramos;

   /*************************************************************************
      Recupera la Lista de distintos ramos, devuelve un ref cursor
      param in pcagente : codigo de agente
      param in pcempres : codigo de empresa
      param out : mensajes de error
      return    : ref cursor
   *************************************************************************/
   -- AMC-Bug9585-24/04/2009- Se añade el pcempres
   -- LCF-Bug18855-30-06-2011 - Se añade parámetro cagente
   FUNCTION f_get_ramosagente(
      pcagente IN NUMBER,
      p_tipo IN VARCHAR2,
      pcempres IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_Ramos';
      vcagente       NUMBER := pcagente;
   BEGIN
      -- LCF-Bug18855-30/06/2011
      IF pcagente IS NULL THEN
         vcagente := pac_md_common.f_get_cxtagente;
      END IF;

      -- AMC-Bug9585-24/04/2009
      IF pcempres IS NULL THEN
         cur := pac_md_listvalores.f_get_ramosagente(vcagente, p_tipo,
                                                     pac_md_common.f_get_cxtempresa(),
                                                     mensajes);
      ELSE
         cur := pac_md_listvalores.f_get_ramosagente(vcagente, p_tipo, pcempres, mensajes);
      END IF;

      -- Fi - AMC-Bug9585-24/04/2009
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_ramosagente;

   /*************************************************************************
        Recupera la lista de productos contractables per l'agent filtrat
        param in p_tipo    : Tipo de productos requeridos:
                             'TF'         ---> Contratables des de Front-Office
                             'REEMB'      ---> Productos de salud
                             'APOR_EXTRA' ---> Con aportaciones extra
                             'SIMUL'      ---> Que puedan tener simulación
                             'RESCA'      ---> Que puedan tener rescates
                             'SINIS'      ---> Que puedan tener siniestros
                             null         ---> Todos los productos
        param in p_cempres : Empresa
        param in p_cramo   : Ramo
        param out mensajes : mensajes de error
        return             : ref cursor
     *************************************************************************/
   FUNCTION f_get_productosagente(
      p_tipo IN VARCHAR2,
      p_cempres IN NUMBER,
      p_cramo IN NUMBER,
      pcagente IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100)
         := 'parámetros - p_tipo: ' || p_tipo || ', p_cempres: ' || p_cempres || ', p_cramo: '
            || p_cramo;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_Productos';
      vcagente       NUMBER := pcagente;
   BEGIN
      -- LCF-Bug18855-30/06/2011
      IF pcagente IS NULL THEN
         vcagente := pac_md_common.f_get_cxtagente;
      END IF;

      -- Bug9585 - 24/04/2009- AMC -- Se comprueba el cempres si es null pasamos el del comtexto
      IF p_cempres IS NULL THEN
         cur := pac_md_listvalores.f_get_productos(p_tipo, pac_md_common.f_get_cxtempresa(),
                                                   p_cramo, mensajes, vcagente);
      ELSE
         cur := pac_md_listvalores.f_get_productos(p_tipo, p_cempres, p_cramo, mensajes,
                                                   vcagente);
      END IF;

      --Fi Bug9585 - 24/04/2009 - AMC
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_productosagente;

   /*************************************************************************
      Recupera los productos pertenecientes al ramo segun el agente filtrado
      param in pcramo    : código de ramo
      param in pctermfin : 1=los productos contratables des Front-Office / 0=todos
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_ramproductosagente(
      p_tipo IN VARCHAR2,
      pcramo NUMBER,
      pctermfin IN NUMBER,
      pcagente IN NUMBER,
      pcmodali IN NUMBER DEFAULT NULL,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'parámetros: ramo=' || pcramo;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_RamProductos';
      vcagente       NUMBER := pcagente;
   BEGIN
      IF pcagente IS NULL THEN
         vcagente := pac_md_common.f_get_cxtagente;
      END IF;

      cur := pac_md_listvalores.f_get_ramproductos(p_tipo, pcramo, pctermfin, mensajes,
                                                   vcagente,pcmodali);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_ramproductosagente;

   /*************************************************************************
      Recupera los productos pertenecientes al ramo
      param in pcramo    : código de ramo
      param in pctermfin : 1=los productos contratables des Front-Office / 0=todos
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_ramproductos(
      p_tipo IN VARCHAR2,
      pcramo NUMBER,
      pctermfin IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'parámetros: ramo=' || pcramo;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_RamProductos';
   BEGIN
      cur := pac_md_listvalores.f_get_ramproductos(p_tipo, pcramo, pctermfin, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_ramproductos;

   /*************************************************************************
      Recupera la lista de domicilios de la persona
      param in sperson   : código de persona
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstdomiperson(sperson IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'sperson= ' || sperson;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstDomiPerson';
   BEGIN
      cur := pac_md_listvalores.f_get_lstdomiperson(sperson, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstdomiperson;

   /*************************************************************************
      Recupera los estados de la persona
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstcestper(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := '';
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lstcestper';
   BEGIN
      cur := pac_md_listvalores.f_get_lstcestper(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstcestper;

   /*************************************************************************
      Recupera los tipos de vinculos
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_tipovinculos(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_TipoVinculos';
   BEGIN
      cur := pac_md_listvalores.f_get_tipovinculos(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_tipovinculos;

   /*************************************************************************
      Recupera los tipos de comisión
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstcomision(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstComision';
   BEGIN
      cur := pac_md_listvalores.f_get_lstcomision(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstcomision;

   /*************************************************************************
      Recupera la lista de idiomas seleccionables
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstidiomas(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstIdiomas';
   BEGIN
      cur := pac_md_listvalores.f_get_lstidiomas(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstidiomas;

   /*************************************************************************
      Recupera lista de comisiones permitidas por póliza
      param out mensajes : mesajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstcomisiones(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstComisiones';
   BEGIN
      cur := pac_md_listvalores.f_get_lstcomisiones(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstcomisiones;

   /*************************************************************************
      Recupera la lista de agentes según los criterios
      param in numide : numero documento persona
      param in nombre : texto que incluye nombre + apellidos
      param in cagente : identificador del agente
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstagentes(
      numide IN VARCHAR2,
      nombre IN VARCHAR2,
      cagente IN NUMBER,
      pformato IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      condicion      VARCHAR2(1000);
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1000)
                   := 'numide= ' || numide || ' nombre= ' || nombre || ' cagente= ' || cagente;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstAgentes';
   BEGIN
      cur := pac_md_listvalores.f_get_lstagentes(numide, nombre, cagente, pformato, NULL,
                                                 mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstagentes;

   /*************************************************************************
      Recupera la lista de valores del desplegable sexo
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_tipsexo(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_TipSexo';
   BEGIN
      cur := pac_md_listvalores.f_get_tipsexo(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_tipsexo;

   /*************************************************************************
      Recupera la lista de productos contractables
      param in p_tipo    : Tipo de productos requeridos:
                           'TF'         ---> Contratables des de Front-Office
                           'REEMB'      ---> Productos de salud
                           'APOR_EXTRA' ---> Con aportaciones extra
                           'SIMUL'      ---> Que puedan tener simulación
                           'RESCA'      ---> Que puedan tener rescates
                           'SINIS'      ---> Que puedan tener siniestros
                           null         ---> Todos los productos
      param in p_cempres : Empresa
      param in p_cramo   : Ramo
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_productos(
      p_tipo IN VARCHAR2,
      p_cempres IN NUMBER,
      p_cramo IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100)
         := 'parámetros - p_tipo: ' || p_tipo || ', p_cempres: ' || p_cempres || ', p_cramo: '
            || p_cramo;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_Productos';
   BEGIN
      -- Bug9585 - 24/04/2009- AMC -- Se comprueba el cempres si es null pasamos el del comtexto
      IF p_cempres IS NULL THEN
         cur := pac_md_listvalores.f_get_productos(p_tipo, pac_md_common.f_get_cxtempresa(),
                                                   p_cramo, mensajes);
      ELSE
         cur := pac_md_listvalores.f_get_productos(p_tipo, p_cempres, p_cramo, mensajes);
      END IF;

      --Fi Bug9585 - 24/04/2009 - AMC
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_productos;

   /*************************************************************************
      Recupera lista de situaciones póliza
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_sitpoliza(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_SitPoliza';
   BEGIN
      cur := pac_md_listvalores.f_get_sitpoliza(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_sitpoliza;

   /*************************************************************************
      Recupera lista tipos cuentas bancarias
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_tipccc(
      mensajes OUT t_iax_mensajes,
      pctipocc NUMBER
            DEFAULT NULL   -- 08/11/2011 0019985 LCOL_A001-Control de las matriculas (prenotificaciones)
                        )
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_TipCCC';
   BEGIN
      cur := pac_md_listvalores.f_get_tipccc(mensajes, pctipocc);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_tipccc;

   --Ini BUG 14588 - PFA -  CRT001 - Añadir campo compañia productos
   /*************************************************************************
      Recupera lista compañias producto
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_ciaproductos(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_ciaproductos';
   BEGIN
      cur := pac_md_listvalores.f_get_ciaproductos(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_ciaproductos;

     --Fin BUG 14588 - PFA -  CRT001 - Añadir campo compañia productos
   -- Bug 15869 - 20/09/2010 - JRH - Rentas CIV 2 cabezas
     /*************************************************************************
        Recupera lista con los motivos de siniestros
        param in ccausa   : código causa de siniestro
        param in cramo   : ramo
        param in psproduc   : Producto
        param in psseguro   : Seguro
        param out mensajes: mensajes de error
        return            : ref cursor
     *************************************************************************/
   FUNCTION f_get_motivossini(
      ccausa IN NUMBER,
      cramo IN NUMBER,
      psproduc IN NUMBER,
      psseguro NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      -- Fi Bug 15869 - 20/09/2010 - JRH
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1000)
         := 'ccausa= ' || ccausa || ' cramo= ' || cramo || 'psproduc= ' || psproduc
            || ' psseguro= ' || psseguro;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_MotivosSini';
   BEGIN
      cur := pac_md_listvalores.f_get_motivossini(ccausa, cramo, psproduc, psseguro, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_motivossini;

   /*************************************************************************
      Recupera la lista con las causas de siniestros
      param out mensajes: mensajes de error
      return            : ref cursor
   *************************************************************************/
   FUNCTION f_get_causassini(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_MotivosSini';
   BEGIN
      cur := pac_md_listvalores.f_get_causassini(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_causassini;

   /*************************************************************************
      Recupera la lista con los motivos de retencion
      param out mensajes: mensajes de error
      return            : ref cursor
   *************************************************************************/
   FUNCTION f_get_gstpolretmot(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_GSTPolRetMot';
   BEGIN
      cur := pac_md_listvalores.f_get_gstpolretmot(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_gstpolretmot;

   /*************************************************************************
      Recupera la lista de responsabilidad de siniestros
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_responsabilidasini(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_ResponsabilidaSini';
   BEGIN
      cur := pac_md_listvalores.f_get_responsabilidasini(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_responsabilidasini;

   /*************************************************************************
      Recupera los tipus de anulación de pólizas (VF 553)
      param out mensajes : mesajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_tipanulpol(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_TipAnulPol';
   BEGIN
      cur := pac_md_listvalores.f_get_tipanulpol(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_tipanulpol;

   -- BUG 9686 - 23/04/2009 - FAL - Añadir parámetro psproduc
      /*************************************************************************
         Recupera los tipus de anulación de pólizas (VF 553)
         param in psproduc  : código de producto
         param out mensajes : mesajes de error
         return             : ref cursor
      *************************************************************************/
   FUNCTION f_get_tipanulpol(psproduc IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'psproduc= ' || psproduc;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_TipAnulPol';
   BEGIN
      cur := pac_md_listvalores.f_get_tipanulpol(psproduc, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_tipanulpol;

   /*************************************************************************
      Recupera las causas de anulacion
      param in psproduc  : código de producto
      param out mensajes : mesajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_causaanulpol(
      psproduc IN NUMBER,
      pctipbaja IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'psproduc: ' || psproduc || 'pctipbaja: ' || pctipbaja;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_causaanulpol';
   BEGIN
      cur := pac_md_listvalores.f_get_causaanulpol(psproduc, pctipbaja, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_causaanulpol;

   /*************************************************************************
      Recupera las causas de anulacion
      param in pcmotmov  : código de causa
      param out mensajes : mesajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_motanulpol(pcmotmov IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'pcmotmov: ' || pcmotmov;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_motanulpol';
   BEGIN
      cur := pac_md_listvalores.f_get_motanulpol(pcmotmov, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_motanulpol;

   -- FI BUG 9686 - 23/04/2009 - FAL
      /*************************************************************************
         Recupera los tipus cobro de la poliza (VF 552)
         param out mensajes : mesajes de error
         return             : ref cursor
      *************************************************************************/
   FUNCTION f_get_tipocobro(mensajes OUT t_iax_mensajes, psproduc IN NUMBER DEFAULT 0)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_TipCobro';
   BEGIN
      --BUG 0024058: XVM :30/10/2012--INI. Añadir psproduc
      cur := pac_md_listvalores.f_get_tipocobro(mensajes,
                                                pac_iax_produccion.poliza.det_poliza.sproduc);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_tipocobro;

   /*************************************************************************
      Recupera los sub agentes del agente de la póliza
      param in cagente   : código agente principal de la póliza
      param out mensajes : mesajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_subagentes(cagente IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(200) := 'cagente= ' || cagente;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_SubAgentes';
   BEGIN
      cur := pac_md_listvalores.f_get_subagentes(cagente, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_subagentes;

   /*************************************************************************
      Recupera el nombre del tomador de la póliza según el orden
      param in sseguro   : código seguro
      param in nordtom   : orden tomador
      param out mensajes : mesajes de error
      return             : nombre tomador
   *************************************************************************/
   FUNCTION f_get_nametomador(sseguro IN NUMBER, nordtom IN NUMBER)
      RETURN VARCHAR2 IS
      vf             VARCHAR2(200) := NULL;
      nerr           NUMBER;
      cidioma        NUMBER := pac_md_common.f_get_cxtidioma;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'sseguro= ' || sseguro;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_NameTomador';
      msj            t_iax_mensajes := NULL;
   BEGIN
      vf := pac_md_listvalores.f_get_nametomador(sseguro, nordtom);
      RETURN vf;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(msj, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN vf;
   END f_get_nametomador;

   /*************************************************************************
      Recupera el nnumide del tomador de la póliza según el orden
      param in psseguro   : código seguro
      param in pnordtom   : orden tomador
      return             : nombre tomador
   *************************************************************************/
   -- 15638 AVT 09-08-2010
   FUNCTION f_get_nameasegurado(sseguro IN NUMBER, nordtom IN NUMBER)
      RETURN VARCHAR2 IS
      vf             VARCHAR2(200) := NULL;
      nerr           NUMBER;
      cidioma        NUMBER := pac_md_common.f_get_cxtidioma;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'sseguro= ' || sseguro;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_NamesAsegurado';
      msj            t_iax_mensajes := NULL;
   BEGIN
      vf := pac_md_listvalores.f_get_nameasegurado(sseguro, nordtom);
      RETURN vf;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(msj, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN vf;
   END f_get_nameasegurado;

   /*************************************************************************
      Recupera el nnumide del tomador de la póliza según el orden
      param in psseguro   : código seguro
      param in pnordtom   : orden tomador
      return             : nombre tomador
   *************************************************************************/
   FUNCTION f_get_numidetomador(psseguro IN NUMBER, pnordtom IN NUMBER)
      RETURN VARCHAR2 IS
      vf             VARCHAR2(100) := NULL;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(200) := 'psseguro= ' || psseguro;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_NumIdeTomador';
      msj            t_iax_mensajes := NULL;
   BEGIN
      vf := pac_md_listvalores.f_get_numidetomador(psseguro, pnordtom);
      RETURN vf;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(msj, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN vf;
   END f_get_numidetomador;

   /*************************************************************************
      Recupera la situación de la póliza
      param in sseguro   : código seguro
      return             : situación
   *************************************************************************/
   FUNCTION f_get_situacionpoliza(psseguro IN NUMBER)
      RETURN VARCHAR2 IS
      vf             VARCHAR2(200) := NULL;
      nf             NUMBER;
      msj            t_iax_mensajes;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'psseguro= ' || psseguro;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_SituacionPoliza';
   BEGIN
      vf := pac_md_listvalores.f_get_situacionpoliza(psseguro);
      RETURN vf;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(msj, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN vf;
   END f_get_situacionpoliza;

   /*************************************************************************
      Recupera la estado de la póliza (retenida)
      param in creteni   : código de retención
      return             : situación
   *************************************************************************/
   FUNCTION f_get_retencionpoliza(creteni IN NUMBER)
      RETURN VARCHAR2 IS
      vf             VARCHAR2(200) := NULL;
      nf             NUMBER;
      msj            t_iax_mensajes;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'creteni= ' || creteni;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_RetencionPoliza';
   BEGIN
      vf := pac_md_listvalores.f_get_retencionpoliza(creteni);
      RETURN vf;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(msj, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN vf;
   END f_get_retencionpoliza;

   /*************************************************************************
      Motivos de rechazo de la póliza
      param in mensajes : mensajes de error
      return            : ref cursor
   *************************************************************************/
   FUNCTION f_get_motivosrechazopol
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_MotivosRechazoPol';
      msj            t_iax_mensajes := NULL;
   BEGIN
      cur := pac_md_listvalores.f_get_motivosrechazopol;
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(msj, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_motivosrechazopol;

   /*************************************************************************
      Recuperar tipos de documentos VF 672
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_tipdocum(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_TipDocum';
   BEGIN
      cur := pac_md_listvalores.f_get_tipdocum(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_tipdocum;

   /*************************************************************************
      Recuperar tipos de personas VF 85
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_tipperson(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_TipPerson';
   BEGIN
      cur := pac_md_listvalores.f_get_tipperson(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_tipperson;

   /*************************************************************************
      Recuperar estados de un siniestro (VF. 6)
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_estadossini(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_EstadosSini';
   BEGIN
      cur := pac_md_listvalores.f_get_estadossini(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_estadossini;

   /*************************************************************************
         Recuperar subestados de un siniestro (VF. 665)
         param in mensajes : mensajes de error
         return      : ref cursor
      *************************************************************************/
   FUNCTION f_get_subestadossini(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_SubEstadosSini';
   BEGIN
      cur := pac_md_listvalores.f_get_subestadossini(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_subestadossini;

   /*************************************************************************
      Recuperar estados de un reembolso (VF. 6)
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_estadosreemb(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_EstadosReemb';
   BEGIN
      cur := pac_md_listvalores.f_get_estadosreemb(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_estadosreemb;

   -- BUG 7624 - 20/04/2009 - SBG - S'afegeix parÃ m. p_tmode
   /***********************************************************************
      Dado un identificativo de domicilio llena el objeto direcciones
      param in sperson       : código de persona
      param in cdomici       : código de domicilio
      param in p_tmode       : modo (EST/POL)
      param in out obdirecc  : objeto direcciones
      param in out mensajes  : mensajes de error
   ***********************************************************************/
   PROCEDURE p_ompledadesdireccions(
      sperson IN NUMBER,
      cdomici IN NUMBER,
      p_tmode IN VARCHAR2 DEFAULT 'POL',
      obdirecc IN OUT ob_iax_direcciones,
      mensajes IN OUT t_iax_mensajes) IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100)
               := 'sperson= ' || sperson || ' cdomici= ' || cdomici || ' p_tmode= ' || p_tmode;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_OmpleDadesDireccions';
   BEGIN
      IF sperson IS NULL THEN
         RAISE e_param_error;
      END IF;

      IF cdomici IS NULL THEN
         RAISE e_param_error;
      END IF;

      pac_md_listvalores.p_ompledadesdireccions(sperson, cdomici, p_tmode, obdirecc, mensajes);
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
   END p_ompledadesdireccions;

   -- FINAL BUG 7624 - 20/04/2009 - SBG

   /***********************************************************************
      Devuelve la descripción del vinculo
      param in pcvincle      : código vinculo
      param in out mensajes  : mensajes de error
   ***********************************************************************/
   FUNCTION f_getdescvincle(pcvincle IN NUMBER, mensajes IN OUT t_iax_mensajes)
      RETURN VARCHAR2 IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'pcvincle= ' || pcvincle;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_GetDescVincle';
   BEGIN
      RETURN pac_md_listvalores.f_getdescvincle(pcvincle, mensajes);
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
   END f_getdescvincle;

   /***********************************************************************
      Devuelve la descripción del tipo de cuenta bancaria
      param in psperson      : código persona
      param in pcbancar      : cuenta bancaria
      param in out mensajes  : mensajes de error
   ***********************************************************************/
   FUNCTION f_gettipban(
      psperson IN NUMBER,
      pcbancar IN VARCHAR2,
      mensajes IN OUT t_iax_mensajes)
      RETURN VARCHAR2 IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'psperson= ' || psperson || ' pcbancar=' || pcbancar;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_GetTipBan';
   BEGIN
      RETURN pac_md_listvalores.f_gettipban(psperson, pcbancar, mensajes);
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
   END f_gettipban;

   /*************************************************************************
      Recuperar la lista de empresas
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstempresas(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstEmpresas';
   BEGIN
      cur := pac_md_listvalores.f_get_lstempresas(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstempresas;

   /*************************************************************************
      Recuperar la lista de agrupaciones de productos
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstagrupprod(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstAgrupProd';
   BEGIN
      cur := pac_md_listvalores.f_get_lstagrupprod(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstagrupprod;

   /*************************************************************************
      Recuperar la lista de posibles valores del campo productos.cactivo
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstactivo(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstActivo';
   BEGIN
      cur := pac_md_listvalores.f_get_lstactivo(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstactivo;

   /*************************************************************************
      Recuperar la lista de posibles valores del campo productos.ctermfin
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstterfinanciero(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstTerFinanciero';
   BEGIN
      cur := pac_md_listvalores.f_get_lstterfinanciero(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstterfinanciero;

   /*************************************************************************
      Recuperar la lista de posibles valores del campo productos.ctiprie
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lsttipriesgo(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstTipRiesgo';
   BEGIN
      cur := pac_md_listvalores.f_get_lsttipriesgo(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lsttipriesgo;

   -- Bug 15006 - PFA - 16/08/2010 - nuevos campos en búsqueda siniestros
   /*************************************************************************
      Recuperar la lista de posibles valores del campo tiporiesgo
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_tiporiesgo(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_TipoRiesgo';
   BEGIN
      cur := pac_md_listvalores.f_get_tiporiesgo(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_tiporiesgo;

   --Fi Bug 15006 - PFA - 16/08/2010 - nuevos campos en búsqueda siniestros
   /*************************************************************************
      Recuperar la lista de posibles valores del campo productos.ctiprie
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstcobjase(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstCobjase';
   BEGIN
      cur := pac_md_listvalores.f_get_lstcobjase(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstcobjase;

   /*************************************************************************
      Recuperar la lista de posibles valores del campo productos.csubpro
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstcsubpro(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstCsubpro';
   BEGIN
      cur := pac_md_listvalores.f_get_lstcsubpro(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstcsubpro;

   /*************************************************************************
      Recuperar la lista de posibles valores del campo productos.cprprod
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstcprprod(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstCprProd';
   BEGIN
      cur := pac_md_listvalores.f_get_lstcprprod(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstcprprod;

   /*************************************************************************
      Recuperar la lista de posibles valores del campo productos.cdivisa
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstdivisa(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstDivisa';
   BEGIN
      cur := pac_md_listvalores.f_get_lstdivisa(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstdivisa;

    /*************************************************************************
      Recuperar la lista de posibles valores del campo productos.cduraci
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstcduraci(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstCduraci';
   BEGIN
      cur := pac_md_listvalores.f_get_lstcduraci(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstcduraci;

   /*************************************************************************
      Recuperar la lista de posibles valores del campo productos.ctempor
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstctempor(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstCTempor';
   BEGIN
      cur := pac_md_listvalores.f_get_lstctempor(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstctempor;

   /*************************************************************************
      Recuperar la lista de posibles valores del campo productos.ctempor
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstcdurmin(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstCdurmin';
   BEGIN
      cur := pac_md_listvalores.f_get_lstcdurmin(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstcdurmin;

   /*************************************************************************
      Recuperar la lista de posibles valores
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstcdurmax(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_Lstcdurmax';
   BEGIN
      cur := pac_md_listvalores.f_get_lstcdurmax(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstcdurmax;

   /*************************************************************************
      Recuperar la lista de posibles valores
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstctipefe(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstCtipefe';
   BEGIN
      cur := pac_md_listvalores.f_get_lstctipefe(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstctipefe;

   /*************************************************************************
      Recuperar la lista de posibles valores
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstcrevali(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstCrevali';
   BEGIN
      cur := pac_md_listvalores.f_get_lstcrevali(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstcrevali;

   /*************************************************************************
      Recuperar la lista de posibles valores
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstctarman(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstCtarman';
   BEGIN
      cur := pac_md_listvalores.f_get_lstctarman(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstctarman;

   /*************************************************************************
      Recuperar la lista de posibles valores
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstsino(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstSiNo';
   BEGIN
      cur := pac_md_listvalores.f_get_lstsino(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstsino;

   /*************************************************************************
      Recuperar la lista de posibles valores
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstcreteni(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstCreteni';
   BEGIN
      cur := pac_md_listvalores.f_get_lstcreteni(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstcreteni;

   /*************************************************************************
      Recuperar la lista de posibles valores
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstcprorra(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstCProrra';
   BEGIN
      cur := pac_md_listvalores.f_get_lstcprorra(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstcprorra;

   /*************************************************************************
      Recuperar la lista de posibles valores
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstcprimin(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstCprimin';
   BEGIN
      cur := pac_md_listvalores.f_get_lstcprimin(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstcprimin;

   /*************************************************************************
      Recuperar la lista de posibles valores
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstformulas(psproduc IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstFormulas';
   BEGIN
      cur := pac_md_listvalores.f_get_lstformulas(psproduc, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstformulas;

   /*************************************************************************
      Recuperar la lista de posibles valores de campo productos ctipges
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstctipges(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_Lstctipges';
   BEGIN
      cur := pac_md_listvalores.f_get_lstctipges(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstctipges;

   /*************************************************************************
      Recuperar la lista de posibles valores de campo productos creccob
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstcreccob(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_Lstcreccob';
   BEGIN
      cur := pac_md_listvalores.f_get_lstcreccob(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstcreccob;

   /*************************************************************************
      Recuperar la lista de posibles valores de campo productos ctipreb
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstctipreb(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstCtipreb';
   BEGIN
      cur := pac_md_listvalores.f_get_lstctipreb(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstctipreb;

   /*************************************************************************
      Recuperar la lista de posibles valores de campo productos ccalcom
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstccalcom(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_Lstccalcom';
   BEGIN
      cur := pac_md_listvalores.f_get_lstccalcom(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstccalcom;

   /*************************************************************************
      Recuperar la lista de posibles valores de campo productos ctippag
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstctippag(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_Lstctippag';
   BEGIN
      cur := pac_md_listvalores.f_get_lstctippag(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstctippag;

   /*************************************************************************
      Recuperar la lista de posibles valores de tipos de garantÃ­a
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lsttipgar(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstTipGar';
   BEGIN
      cur := pac_md_listvalores.f_get_lsttipgar(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lsttipgar;

   /*************************************************************************
      Recuperar la lista de posibles valores de tipos de capital garantÃ­a
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lsttipcapgar(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstTipCapGar';
   BEGIN
      cur := pac_md_listvalores.f_get_lsttipcapgar(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lsttipcapgar;

   /*************************************************************************
      Recuperar la lista de posibles valores de tipos de capital máximo garantÃ­a
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstcapmaxgar(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstCapMaxGar';
   BEGIN
      cur := pac_md_listvalores.f_get_lstcapmaxgar(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstcapmaxgar;

   /*************************************************************************
      Recuperar la lista de posibles valores de tipos de tarifas garantÃ­a
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lsttiptargar(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstTipTarGar';
   BEGIN
      cur := pac_md_listvalores.f_get_lsttiptargar(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lsttiptargar;

   /*************************************************************************
      Recuperar la lista de posibles valores de reaseguro de garantÃ­a
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstreagar(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstReaGar';
   BEGIN
      cur := pac_md_listvalores.f_get_lstreagar(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstreagar;

   /*************************************************************************
      Recuperar la lista de posibles valores de revalorizaciones de garantÃ­a
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstrevalgar(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstRevalGar';
   BEGIN
      cur := pac_md_listvalores.f_get_lstrevalgar(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstrevalgar;

   --JRH 04/2008 Tarea ESTPERSONAS
   /*************************************************************************
      Recupera la lista de paÃ­ses seleccionables
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstpaises(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstPaises';
   BEGIN
      cur := pac_md_listvalores.f_get_lstpaises(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstpaises;

   --JRH 04/2008 Tarea ESTPERSONAS
   /*************************************************************************
      Recupera la lista de Profesiones seleccionables
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstprofesiones(mensajes OUT t_iax_mensajes, cocupacion IN  NUMBER DEFAULT 0 )
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstProfesiones';
   BEGIN
      cur := pac_md_listvalores.f_get_lstprofesiones(mensajes, cocupacion);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstprofesiones;

   --JRH 04/2008 Tarea ESTPERSONAS
   /*************************************************************************
      Recupera la lista de Tipos de cuentas seleccionables
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lsttipocuenta(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstTipoCuenta';
   BEGIN
      cur := pac_md_listvalores.f_get_lsttipocuenta(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lsttipocuenta;

    --JRH 04/2008 Tarea ESTPERSONAS
   /*************************************************************************
      Recupera la lista de Tipos de dirección
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lsttipodireccion(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstTipoDireccion';
   BEGIN
      cur := pac_md_listvalores.f_get_lsttipodireccion(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lsttipodireccion;

   --JRH 04/2008 Tarea ESTPERSONAS
      /*************************************************************************
         Recupera la lista de Tipos de VÃ­as
         param out mensajes : mensajes de error
         return             : ref cursor
      *************************************************************************/
   FUNCTION f_get_lsttipovia(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstTipoVia';
   BEGIN
      cur := pac_md_listvalores.f_get_lsttipovia(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lsttipovia;

   --JRH 04/2008 Tarea ESTPERSONAS
      /*************************************************************************
         Recupera la lista de ppoblaciones , provincias
         param out mensajes : mensajes de error
         return             : ref cursor
      *************************************************************************/
   FUNCTION f_get_consulta(
      codigo IN VARCHAR2,
      condicion IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_Consulta';
   BEGIN
      cur := pac_md_listvalores.f_get_consulta(codigo, condicion, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_consulta;

   --SGM IAXIS-6149 28/10/2019
      /*************************************************************************
         Recupera la lista de personas publicas
         param out mensajes : mensajes de error
         return             : ref cursor
      *************************************************************************/
   FUNCTION f_get_publicinfo(
      codigo IN VARCHAR2,
      condicion IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_publicinfo';
   BEGIN
      cur := pac_md_listvalores.f_get_publicinfo(codigo, condicion, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_publicinfo;
    /*************************************************************************
      Recupera los diferentes niveles que hay de intereses o gastos
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstnivel(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lstNivel';
   BEGIN
      cur := pac_md_listvalores.f_get_lstnivel(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstnivel;

   /*************************************************************************
      Recupera los diferentes cuadros que existen a dÃ­a de hoy
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstncodint(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lstncodint';
   BEGIN
      cur := pac_md_listvalores.f_get_lstncodint(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstncodint;

   /*************************************************************************
      Recupera los diferentes tipos de interes que puede tener un cuadro de interÃ©s
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_tipinteres(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_get_TipInteres';
   BEGIN
      cur := pac_md_listvalores.f_get_tipinteres(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_tipinteres;

   /*************************************************************************
      Recupera los diferentes conceptos del tramo
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_ctramtip(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_Ctramtip';
   BEGIN
      cur := pac_md_listvalores.f_get_ctramtip(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_ctramtip;

   /*************************************************************************
      Recupera los LITERALES pasándole el IDIOMA
      param in pcidioma    : código del idioma
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_literales(pcidioma NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'parámetros: cidioma=' || pcidioma;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_Literales';
   BEGIN
      cur := pac_md_listvalores.f_get_literales(pcidioma, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_literales;

   /*************************************************************************
          Recupera los Tipos de recibo
          (Detvalores.cvalor=8)
          param out mensajes : mensajes de error
          return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstctiprec(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_LstCTIPREC';
   BEGIN
      cur := pac_md_listvalores.f_get_lstctiprec(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END;

   /*************************************************************************
          Recupera los Estados de recibo
          (Detvalores.cvalor=1)
          param out mensajes : mensajes de error
          return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstestadorecibo(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_LstEstadoRecibo';
   BEGIN
      cur := pac_md_listvalores.f_get_lstestadorecibo(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END;

   /*************************************************************************
          Recupera los códigos y la descripciones de los tipos de IVA definidos.
          param out MSJ : mensajes de error
          return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lsttipoiva(mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_get_LstTipoIva';
   BEGIN
      cur := pac_md_listvalores.f_get_lsttipoiva(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lsttipoiva;

   /*************************************************************************
          Recupera código y la descripción de los tipos de retención definidos
          param out MSJ : mensajes de error
          return : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstretencion(mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_get_LstRetencion';
   BEGIN
      cur := pac_md_listvalores.f_get_lstretencion(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstretencion;

   /*************************************************************************
          Recupera código de estado de agente y descripción.
          param out MSJ : mensajes de error
          return : ref cursor
   *************************************************************************/
   -- Bug 19169 - APD - 15/09/2011 - se añade al parametro pcempres, pcvalor, pcatribu
   -- Bug 21682 - APD - 24/04/2012 - se añade al parametro pctipage (sustituye a pcatribu), pcactivo
   FUNCTION f_get_lstestadoagente(
      pcempres IN NUMBER,
      pcvalor IN NUMBER,
--      pcatribu IN NUMBER,
      pctipage IN NUMBER,
      pcactivo IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_get_LstEstadoAgente';
   BEGIN
      cur := pac_md_listvalores.f_get_lstestadoagente(pcempres, pcvalor, /*pcatribu,*/ pctipage,
                                                      pcactivo, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstestadoagente;

   /*************************************************************************
          Recupera código de tipo de agente y descripción.
          param out MSJ : mensajes de error
          return : ref cursor
   *************************************************************************/
   FUNCTION f_get_lsttipoagente(mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_get_LstTipoAgente';
   BEGIN
      cur := pac_md_listvalores.f_get_lsttipoagente(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lsttipoagente;

   /*************************************************************************
          Recupera código y descripción de las diferentes comisiones definidas para los agentes.
          param out MSJ : mensajes de error
          return : ref cursor
   *************************************************************************/
   -- Bug 19169 - APD - 15/09/2011 - se añade al parametro pctipo
   FUNCTION f_get_lstagecomision(pctipo IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_get_LstAgeComision';
   BEGIN
      cur := pac_md_listvalores.f_get_lstagecomision(pctipo, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstagecomision;

   /*************************************************************************
      Recupera la Lista de los meses del año, devuelve un ref cursor
      param out : mensajes de error
      return    : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstmeses(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstMeses';
   BEGIN
      cur := pac_md_listvalores.f_get_lstmeses(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstmeses;

   /************************nuevas JGM 27-08.2008 ********************/
   /*Esta función tendrá un parámetro de salida t_iax_mensajes con los posibles mensajes de error y
     nos devolverá un sys_refcursor con el código del tipo de cierre activo y su descripción.
          param IN pcempres : Filtrado por empresa
          param OUT msj : mensajes de error
          return             : ref cursor
     */
   FUNCTION f_get_lsttipocierre(pcempres IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'parámetros: pcempres=' || pcempres;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_Get_LstTipoCierre';
   BEGIN
      cur := pac_md_listvalores.f_get_lsttipocierre(pcempres, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lsttipocierre;

   /*Esta función tendrá un parámetro de entrada PPREVIO y un parámetro de salida t_iax_mensajes con los posibles
   mensajes de error y nos devolverá un sys_refcursor con los diferentes código de estado de cierre activo y su descripción.
      param IN previo : parámetro para mostrar o no el estado PREVIO PROGRAMADO
      param OUT msj : mensajes de error
      return             : ref cursor
   */
   FUNCTION f_get_lstestadocierre(pprevio IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'parámetros: pprevio=' || pprevio;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_Get_LstEstadoCierre';
   BEGIN
      cur := pac_md_listvalores.f_get_lstestadocierre(pprevio, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstestadocierre;

   /*Esta función tendrá un parámetro de entrada PPREVIO y un parámetro de salida t_iax_mensajes con los posibles
   mensajes de error y nos devolverá un sys_refcursor con los diferentes código de estado de cierre activo y su descripción.
   no sacará los estados CERRADO y PENDIENTE
      param IN previo : parámetro para mostrar o no el estado PREVIO PROGRAMADO
      param OUT msj : mensajes de error
      return             : ref cursor
   */
   FUNCTION f_get_lstestadocierre_nuevo(pprevio IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'parámetros: pprevio=' || pprevio;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_Get_LstEstadoCierre_nuevo';
   BEGIN
      cur := pac_md_listvalores.f_get_lstestadocierre_nuevo(pprevio, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstestadocierre_nuevo;

   -- ini t.7661
   /*************************************************************************
      Recupera la Lista de compañÃ­as de reaseguro
      param out : mensajes de error
      return    : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstcia_rea(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstCia_Rea';
   BEGIN
      cur := pac_md_listvalores.f_get_lstcia_rea(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstcia_rea;

   /*************************************************************************
      Recupera la Lista de los tipos de reaseguro
      param out : mensajes de error
      return    : ref cursor
   *************************************************************************/
   FUNCTION f_get_lsttipo_rea(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstTipo_Rea';
   BEGIN
      cur := pac_md_listvalores.f_get_lsttipo_rea(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lsttipo_rea;

   /*************************************************************************
      Recupera la Lista de las agrupaciones de reaseguro
      param out : mensajes de error
      return    : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstagr_rea(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstAgr_Rea';
   BEGIN
      cur := pac_md_listvalores.f_get_lstagr_rea(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstagr_rea;

   -- fin t.7661

   -- Bug 0023183 - DCG - 14/08/2012 - LCOL_T020-COA-Circuit d'alta de propostes amb coasseguran
   /*************************************************************************
      Recupera la Lista de compañÃ­as de coaseguro
      param out : mensajes de error
      return    : ref cursor
   *************************************************************************/
   FUNCTION f_get_coaseguradoras(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_coaseguradoras';
   BEGIN
      cur := pac_md_listvalores.f_get_coaseguradoras(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_coaseguradoras;

-- Fin Bug 0023183

   /*************************************************************************
      Recupera los ramos con su descripcion por empresa
      param in pcempres  : empresa
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_cramo_emp(pcempres IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(10) := pcempres;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_Cramo_Emp';
      vsquery        VARCHAR2(200);
   BEGIN
      cur := pac_md_listvalores.f_get_cramo_emp(pcempres, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_cramo_emp;

   /*************************************************************************
      Recupera los productos con su descripcion por ramo
      param in pcramo    : ramo
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_productos_cramo(pcramo IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(10) := pcramo;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_Productos_Cramo';
      vsquery        VARCHAR2(200);
   BEGIN
      cur := pac_md_listvalores.f_get_productos_cramo(pcramo, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END;

   /*************************************************************************
      Recupera las actividades con su descripcion por producto
      param in psproduc  : id. interno de producto
      param in pcramo    : ramo
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_cactivi(psproduc IN NUMBER, pcramo IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := ' pcramo: ' || pcramo || ' psproduc: ' || psproduc;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_Cactivi';
      vsquery        VARCHAR2(200);
   BEGIN
      cur := pac_md_listvalores.f_get_cactivi(psproduc, pcramo, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_cactivi;

   /*************************************************************************
      Recupera las garantias con su descripcion por producto y actividad
      param in psproduc  : id. interno de producto
      param in pcramo    : ramo
      param in pcactivi  : actividad
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_cgarant(
      psproduc IN NUMBER,
      pcramo IN NUMBER,
      pcactivi IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100)
            := ' pcramo: ' || pcramo || ' psproduc: ' || psproduc || ' pcactivi: ' || pcactivi;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_Cgarant';
      vsquery        VARCHAR2(200);
   BEGIN
      cur := pac_md_listvalores.f_get_cgarant(psproduc, pcramo, pcactivi, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_cgarant;

   /*************************************************************************
      Recupera las garantias con su descripcion por poliza
      param in p_npoliza : numero de poliza
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_cgarant_pol(p_npoliza IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_Cgarant_Pol';
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := ' p_npoliza: ' || p_npoliza;
      cur            sys_refcursor;
   BEGIN
      cur := pac_md_listvalores.f_get_cgarant_pol(p_npoliza, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_cgarant_pol;

   /*************************************************************************
      Recupera las garantias con su descripcion por sinietro
      param in p_nsinies : numero de siniestro
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_cgarant_sin(p_nsinies IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_Cgarant_Sin';
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := ' p_nsinies: ' || p_nsinies;
      cur            sys_refcursor;
   BEGIN
      cur := pac_md_listvalores.f_get_cgarant_sin(p_nsinies, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_cgarant_sin;

   /*************************************************************************
      Recupera la descripción de una empresa
      param in pcempres  : empresa
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_desempresa(pcempres IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN VARCHAR2 IS
      vret           VARCHAR2(50);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(10) := pcempres;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_Desempresa';
   BEGIN
      vret := pac_md_listvalores.f_get_desempresa(pcempres, mensajes);
      RETURN vret;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN NULL;
   END f_get_desempresa;

   /*************************************************************************
      Recupera lista de código+descripción cuenta contable.
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstcuentacontable(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100);
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstCuentaContable';
   BEGIN
      cur := pac_md_listvalores.f_get_lstcuentacontable(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstcuentacontable;

   /*************************************************************************
      Recupera la lista de tipo de concepto contable y su descripción.
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstconceptocontable(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100);
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstConceptoContable';
   BEGIN
      cur := pac_md_listvalores.f_get_lstconceptocontable(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstconceptocontable;

   /*************************************************************************
      Recupera lista de código+descripción asiento contable.
      param in p_empresa : código de empresa
      param out msj      : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstasiento(p_empresa IN NUMBER, msj OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'Param.: P_EMPRESA = ' || p_empresa;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstAsiento';
   BEGIN
      cur := pac_md_listvalores.f_get_lstasiento(p_empresa, msj);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(msj, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstasiento;

   /*************************************************************************
      Recupera los cobradores y cuentas de domiciliación vigentes para una empresa
      param in pcempres  : empresa
      param out mensajes : mensajes de error
      return             : ref cursor

      11/02/2009   FAL                Cobradores, delegaciones. Bug: 0007657
   *************************************************************************/
   FUNCTION f_get_lstcobradores(pcempres IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(10) := pcempres;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lstcobradores';
   BEGIN
      cur := pac_md_listvalores.f_get_lstcobradores(pcempres, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstcobradores;

   --
   -- Bug 0032668 Inicio - Se crea la nueva funcion f_get_lstdesccobradores_all
   --
   /*************************************************************************
      Recupera los cobradores y descripcion para una empresa
      param in pcempres  : empresa
      param out mensajes : mensajes de error
      return             : ref cursor

         03/10/2011   ETM          DESCRIPCION   Cobradores bancarios. Bug: 17383
   *************************************************************************/
   FUNCTION f_get_lstdesccobradores_all(pcempres IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(10) := pcempres;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lstdesccobradores_all';
   BEGIN
      cur := pac_md_listvalores.f_get_lstdesccobradores_all(pcempres, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstdesccobradores_all;

   --
   -- Bug 0032668 Fin
   --
   /*************************************************************************
      Recupera las delegaciones de una empresa
      param in pcempres  : empresa
      param out mensajes : mensajes de error
      return             : ref cursor

      11/02/2009   FAL                Cobradores, delegaciones. Bug: 0007657
   *************************************************************************/
   FUNCTION f_get_lstdelegaciones(pcempres IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(10) := pcempres;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lstdelegaciones';
   BEGIN
      cur := pac_md_listvalores.f_get_lstdelegaciones(pcempres, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstdelegaciones;

   /*************************************************************************
          Recupera código de tipo de apunte en la agenda y descripción.
          param out mensajes : mensajes de error
          return : ref cursor

             11/02/2009   FAL                Tipos de apunte en agenda. Bug: 0008748
   *************************************************************************/
   FUNCTION f_get_lsttipoapuntesagenda(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(10) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lstTipoapuntesagenda';
   BEGIN
      cur := pac_md_listvalores.f_get_lsttipoapuntesagenda(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lsttipoapuntesagenda;

   /*************************************************************************
          Recupera estados de apunte en la agenda y descripción.
          param out mensajes : mensajes de error
          return : ref cursor

             11/02/2009   FAL                Tipos de apunte en agenda. Bug: 0008748
   *************************************************************************/
   FUNCTION f_get_lstestadosapunteagenda(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(10) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lstEstadosApunteAgenda';
   BEGIN
      cur := pac_md_listvalores.f_get_lstestadosapunteagenda(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstestadosapunteagenda;

   /*************************************************************************
          Recupera los conceptos de apunte en la agenda y descripción.
          param out mensajes : mensajes de error
          return : ref cursor

             06/03/2009   JSP                Conceptos de apunte en agenda. Bug: 0009208
   *************************************************************************/
   FUNCTION f_get_lstconceptosapunteagenda(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(10) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lstconceptosapunteagenda';
   BEGIN
      cur := pac_md_listvalores.f_get_lstconceptosapunteagenda(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstconceptosapunteagenda;

   /*************************************************************************
          Recupera els graus de minusvalia
          param out mensajes : mensajes de error
          return : ref cursor

             16/03/2009   XPL                Mant. Pers. IRPF. Bug: 0007730
   *************************************************************************/
   FUNCTION f_get_lstgradominusvalia(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(10) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_LSTGRADOMINUSVALIA';
   BEGIN
      cur := pac_md_listvalores.f_get_lstgradominusvalia(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstgradominusvalia;

   /*************************************************************************
          Recupera les situacions familiars
          param out mensajes : mensajes de error
          return : ref cursor

             16/03/2009   XPL                Mant. Pers. IRPF. Bug: 0007730
   *************************************************************************/
   FUNCTION f_get_lstsitfam(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(10) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_LSTGRADOMINUSVALIA';
   BEGIN
      cur := pac_md_listvalores.f_get_lstsitfam(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstsitfam;

   /*************************************************************************
          Recupera usuarios de la agenda y descripción.
          param out mensajes : mensajes de error
          return : ref cursor

             06/03/2009   JSP                Conceptos de apunte en agenda. Bug: 0009208
   *************************************************************************/
   FUNCTION f_get_lstusuariosagenda(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(10) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lstusuariosagenda';
   BEGIN
      cur := pac_md_listvalores.f_get_lstusuariosagenda(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstusuariosagenda;

   /*************************************************************************
      Recupera el nombre del tomador de la póliza según el orden
      param in sseguro   : código seguro
      param in nordtom   : orden tomador
      param out mensajes : mesajes de error
      return             : nombre tomador
   *************************************************************************/
   -- Bug 8745 - 27/02/2009 - RSC - Adaptación iAxis a productos colectivos con certificados
   FUNCTION f_get_nametomadorcero(sseguro IN NUMBER, nordtom IN NUMBER)
      RETURN VARCHAR2 IS
      vf             VARCHAR2(200) := NULL;
      nerr           NUMBER;
      cidioma        NUMBER := pac_md_common.f_get_cxtidioma;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'sseguro= ' || sseguro;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_nametomadorcero';
      msj            t_iax_mensajes := NULL;
   BEGIN
      vf := pac_md_listvalores.f_get_nametomadorcero(sseguro, nordtom);
      RETURN vf;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(msj, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN vf;
   END f_get_nametomadorcero;

   /*************************************************************************
      Recupera los perfiles asociados a un producto
      param in sproduc   : producto
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   -- Bug 9031 - 11/03/2009 - RSC - Análisis adaptación productos indexados
   FUNCTION f_get_perfiles(psproduc IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'psproduc= ' || psproduc;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_perfiles';
      vsquery        VARCHAR2(200);
   BEGIN
      cur := pac_md_listvalores.f_get_perfiles(psproduc, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_perfiles;

   /*************************************************************************
      Recupera los fondos de inversión asociados a una empresa.
      param in pcempres  : Empresa
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   -- Bug 9031 - 11/03/2009 - RSC - Análisis adaptación productos indexados
   FUNCTION f_get_fondosinversion(pcempres IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'pcempres= ' || pcempres;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_fondosinversion';
      vsquery        VARCHAR2(200);
   BEGIN
      cur := pac_md_listvalores.f_get_fondosinversion(pcempres, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_fondosinversion;

   /*************************************************************************
        Recupera las actividades profesionales
        param out mensajes : mensajes de error
        return : ref cursor

           30/03/2009   XPL                 Sinistres.  Bug: 9020
   *************************************************************************/
   FUNCTION f_get_lstcactprof(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(10) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lstcactprof';
   BEGIN
      cur := pac_md_listvalores.f_get_lstcactprof(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstcactprof;

   /*************************************************************************
         Recupera código del map y su descripción
         param out mensajes : mensajes de error
         return             : ref cursor

             06/05/2009   ICV                 Maps.  Bug: 9940
   *************************************************************************/
   FUNCTION f_get_ficheros(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(10) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_ficheros';
   BEGIN
      cur := pac_md_listvalores.f_get_ficheros(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_ficheros;

   /*************************************************************************
         Recupera código del motivo de rehabilitación y la descripción del motivo.
         param in  psproduc : Identificador del producto.
         param out mensajes : mensajes de error
         return             : ref cursor

             11/05/2009   ICV                 Maps.  Bug: 9784
   *************************************************************************/
   FUNCTION f_get_motivosrehab(psproduc IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(10) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_motivosrehab';
   BEGIN
      cur := pac_md_listvalores.f_get_motivosrehab(psproduc, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_motivosrehab;

   /*************************************************************************
      Recupera la Lista de distintas agrupacions por producto pasandole la empresa, devuelve un ref cursor
      param in pcempres : codigo de empresa
      param out : mensajes de error
      return    : ref cursor
   *************************************************************************/
   -- XPL -Bug10317-29/06/2009- Se añade función
   FUNCTION f_get_agrupaciones(pcempres IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_iax_LISTVALORES.F_Get_agrupaciones';
      terror         VARCHAR2(200) := 'Error recuperar agrupacions';
   BEGIN
      cur := pac_md_listvalores.f_get_agrupaciones(pcempres, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           terror, SQLCODE, SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_agrupaciones;

   /*************************************************************************
      Recupera la Lista de distintos ramos filtrado por agrupacion, devuelve un ref cursor
      param in pcempres : codigo de empresa
      param in pcagrupacion : codigo de agrupacion
      param out : mensajes de error
      return    : ref cursor
   *************************************************************************/
   -- XPL -Bug10317-29/06/2009- Se añade función
   FUNCTION f_get_ramosagrupacion(
      pcempres IN NUMBER,
      pcagrupacion IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_iax_LISTVALORES.F_Get_ramosagrupacion';
      terror         VARCHAR2(200) := 'Error recuperar ramosagrupacion';
   BEGIN
      cur := pac_md_listvalores.f_get_ramosagrupacion(pcempres, pcagrupacion, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           terror, SQLCODE, SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_ramosagrupacion;

   /*************************************************************************
      Recupera la Lista del codigo de concepto y descripción de las cuentas tecnicas
      param out : mensajes de error
      return    : ref cursor
       -- XPL -Bug10671-09/07/2009- Se añade función
   *************************************************************************/
   FUNCTION f_get_lstconcep_cta(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_iax_LISTVALORES.f_get_lstconcep_cta';
      terror         VARCHAR2(200) := 'Error recuperar conceptes';
   BEGIN
      cur := pac_md_listvalores.f_get_lstconcep_cta(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           terror, SQLCODE, SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstconcep_cta;

   /*************************************************************************
      Recupera las posibles ubicaciones (debe/haber) dónde imputar el importe del asiento
      del concepto recibido por parámetro de la cuenta y su descripción.
      param in pcconcepto: concepto
      param out mensajes : mensajes de error
      return    : ref cursor
       -- XPL -Bug10671-09/07/2009- Se añade función
   *************************************************************************/
   FUNCTION f_get_lsttipo_cta(pcconcepto IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_iax_LISTVALORES.f_get_lstconcep_cta';
      terror         VARCHAR2(200) := 'Error recuperar debe / haber';
   BEGIN
      cur := pac_md_listvalores.f_get_lsttipo_cta(pcconcepto, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           terror, SQLCODE, SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lsttipo_cta;

   /*************************************************************************
      Recupera los procesos de liquidación pendientes de cerrar según la empresa seleccionada
      param in pcempres: codi empresa
      param out mensajes : mensajes de error
      return    : ref cursor
       -- XPL -Bug10672-15/07/2009- Se añade función
   *************************************************************************/
   FUNCTION f_get_liqspendientes(pcempres IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_iax_LISTVALORES.f_get_liqspendientes';
      terror         VARCHAR2(200) := 'Error recuperar debe / haber';
   BEGIN
      cur := pac_md_listvalores.f_get_liqspendientes(pcempres, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           terror, SQLCODE, SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_liqspendientes;

     /*BUG 10487 - 03/07/2009 - ETM - IAX : REA: Desarrollo PL del mantenimiento de Facultativo */
   /*************************************************************************
        Obtine los posibles estados del cuadro facultativo
         param out mensajes: mensajes de error
        return            : ref cursor
     *************************************************************************/
   FUNCTION f_get_lstestado_fac(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(10) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lstestado_fac';
   BEGIN
      cur := pac_md_listvalores.f_get_lstestado_fac(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstestado_fac;

   /*FIN BUG 10487 - 03/07/2009 - ETM */

   /*************************************************************************
    FUNCTION f_get_lstccobban_rec
        Obtine los posibles cobradores bancarios del recibo
        param in pnrecibo : N. recibo
        param out mensajes: mensajes de error
        return            : ref cursor
    --BUG 10529 - 04/09/2009 - JTS
   *************************************************************************/
   FUNCTION f_get_lstccobban_rec(pnrecibo IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(200) := 'pnrecibo: ' || pnrecibo;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lstccobban_rec';
   BEGIN
      IF pnrecibo IS NULL THEN
         RAISE e_param_error;
      END IF;

      cur := pac_md_listvalores.f_get_lstccobban_rec(pnrecibo, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstccobban_rec;

   /*************************************************************************
      Recupera los procesos de cierres de tipo 17 según la empresa seleccionada
      param in pcempres: codi empresa
      param out mensajes : mensajes de error
      return    : ref cursor
       -- JGM -Bug10684-14/08/2009- Se añade función
   *************************************************************************/
   FUNCTION f_get_cieres_tipo17(
      pcempres IN NUMBER,
      pagente IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_iax_LISTVALORES.f_get_cieres_tipo17';
      terror         VARCHAR2(200);
   BEGIN
      cur := pac_md_listvalores.f_get_cieres_tipo17(pcempres, pagente, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           terror, SQLCODE, SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_cieres_tipo17;

   /*************************************************************************
       Recupera la lista con los estados de gestión
       param out mensajes: mensajes de error
       return            : ref cursor
    *************************************************************************/
   FUNCTION f_get_gstcestgest(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_GstCestgest';
   BEGIN
      cur := pac_md_listvalores.f_get_gstcestgest(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_gstcestgest;

   /*BUG 10487 - 07/10/2009 - ICV - IAX : REA: Desarrollo PL del mantenimiento de Facultativo */
   /*************************************************************************
        Obtine las diferentes descripciones de comsisiones de contratos
         param out mensajes: mensajes de error
        return            : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstcomis_rea(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(10) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lstcomis_rea';
   BEGIN
      cur := pac_md_listvalores.f_get_lstcomis_rea(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstcomis_rea;

   /*************************************************************************
        Obtine las diferentes descripciones de los intereses
         param out mensajes: mensajes de error
        return            : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstinteres_rea(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(10) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lstinteres_rea';
   BEGIN
      cur := pac_md_listvalores.f_get_lstinteres_rea(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstinteres_rea;

   /*FIN BUG 10487 - 07/10/2009 - ICV */

   /*************************************************************************
      Recupera la situación de la póliza (con estado e incidencias)
      param in sseguro   : código seguro
      return             : situación
      --BUG 10831
   *************************************************************************/
   FUNCTION f_get_sit_pol_detalle(psseguro IN NUMBER)
      RETURN VARCHAR2 IS
      vf             VARCHAR2(200) := NULL;
      nf             NUMBER;
      msj            t_iax_mensajes;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'psseguro= ' || psseguro;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_Sit_Pol_detalle';
   BEGIN
      vf := pac_md_listvalores.f_get_sit_pol_detalle(psseguro);
      RETURN vf;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(msj, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN vf;
   END f_get_sit_pol_detalle;

   -- ini Bug 0012679 - 18/02/2010 - JMF
   /*************************************************************************
          Recupera los Estados de recibo mv
          (Detvalores.cvalor=1)
          param out mensajes : mensajes de error
          return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstestadorecibo_mv(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_LstEstadoRecibo_mv';
   BEGIN
      cur := pac_md_listvalores.f_get_lstestadorecibo_mv(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstestadorecibo_mv;

-- fin Bug 0012679 - 18/02/2010 - JMF

   /*************************************************************************
    FUNCTION F_GET_AGRPRODUCTOS
        param in pagrupacion
        param in pcempres
        param out mensajes: mensajes de error
        return            : ref cursor
    --BUG 13477 - 22/03/2010 - JTS
   *************************************************************************/
   FUNCTION f_get_agrproductos(
      pagrupacion IN NUMBER,
      pcempres IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(200)
                                := 'pagrupacion: ' || pagrupacion || ' pcempres: ' || pcempres;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_GET_AGRPRODUCTOs';
   BEGIN
      IF pagrupacion IS NULL
         OR pcempres IS NULL THEN
         RAISE e_param_error;
      END IF;

      vpasexec := 2;
      cur := pac_md_listvalores.f_get_agrproductos(pagrupacion, pcempres, mensajes);
      vpasexec := 3;
      RETURN cur;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
   END f_get_agrproductos;

   /*************************************************************************
    FUNCTION F_GET_ESTPAGOREN
        param in pcestado
        param out mensajes: mensajes de error
        return            : ref cursor
    --BUG 13477 - 22/03/2010 - JTS
   *************************************************************************/
   FUNCTION f_get_estpagosren(pcestado IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(200) := 'pcestado: ' || pcestado;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_GET_ESTPAGOSREN';
   BEGIN
      IF pcestado IS NULL THEN
         RAISE e_param_error;
      END IF;

      vpasexec := 2;
      cur := pac_md_listvalores.f_get_estpagosren(pcestado, mensajes);
      vpasexec := 3;
      RETURN cur;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
   END f_get_estpagosren;

   /*************************************************************************
        Obtine las garantÃ­as dependientes
        param out mensajes: mensajes de error
        return            : ref cursor
   *************************************************************************/
   -- Bug 11735 - RSC - 10/05/2010 - APR - suplemento de modificación de capital /prima
   FUNCTION f_get_garanprodep(
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      pcgarant IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_garanprodep';
   BEGIN
      cur := pac_md_listvalores.f_get_garanprodep(psproduc, pcactivi, pcgarant, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_garanprodep;

-- Fin bug 11735

   /*************************************************************************
        Función que devuelve conceptos de una garantia
        param out mensajes: mensajes de error
        return            : ref cursor
   *************************************************************************/
   -- Bug 14607: - XPL - 27/05/2010 -  AGA004 - Conceptos de pago a nivel de detalle del pago de un siniestro
   FUNCTION f_get_concepgaran(pcgarant IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_MD_LISTVALORES.f_get_concepgaran';
   BEGIN
      cur := pac_md_listvalores.f_get_concepgaran(pcgarant, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_concepgaran;

    /*************************************************************************
        Obtine los diferentes ramos de la DGS
         param out mensajes: mensajes de error
        return            : ref cursor

        Bug 15148 - 18/06/2010 - AMC
   *************************************************************************/
   FUNCTION f_get_lstramosdgs(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lstramosdgs';
      terror         VARCHAR2(200) := 'Error recuperar ramos dgs';
   BEGIN
      cur := pac_md_listvalores.f_get_lstramosdgs(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           terror, SQLCODE, SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstramosdgs;

   /*************************************************************************
        Obtine las diferentes tablas de mortalidad
         param out mensajes: mensajes de error
        return            : ref cursor

        Bug 15148 - 18/06/2010 - AMC
   *************************************************************************/
   FUNCTION f_get_lsttmortalidad(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lsttmortalidad';
      terror         VARCHAR2(200) := 'Error recuperar tablas mortalidad';
   BEGIN
      cur := pac_md_listvalores.f_get_lsttmortalidad(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           terror, SQLCODE, SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lsttmortalidad;

   /*************************************************************************
       Recupera los elementos
       param in  pcutili  : tipo de utilidad
       param out mensajes : mensajes de error
       return : ref cursor

       Bug 15149 - 21/06/2010 - AMC
   *************************************************************************/
   FUNCTION f_get_lstcodcampo(pcutili IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'pcutili:' || pcutili;
      vobject        VARCHAR2(200) := 'PAC_MD_LISTVALORES.f_get_lstcodcampo';
      terror         VARCHAR2(200) := 'Error recuperar lstcodcampo';
   BEGIN
      IF pcutili IS NULL THEN
         RAISE e_param_error;
      END IF;

      cur := pac_md_listvalores.f_get_lstcodcampo(pcutili, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           terror, SQLCODE, SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstcodcampo;

   /*************************************************************************
      Recupera la lista de bancos según los criterios
      param in cbanco : Código del banco
      param in tbanco : texto que descripción del banco
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstbancos(pcbanco IN NUMBER, ptbanco IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      condicion      VARCHAR2(1000);
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1000) := 'cbanco= ' || pcbanco || ' tbanco= ' || ptbanco;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstBancos';
   BEGIN
      cur := pac_md_listvalores.f_get_lstbancos(pcbanco, ptbanco, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstbancos;

      /*************************************************************************
      Recupera la lista de bancos según los criterios
      param out mensajes : mensajes de error
      return             : ref cursor
      Autor: JOHN BENITEZ ALEMAN
      FECHA: ABRIL 2015 - FACTORY COLOMBIA
   *************************************************************************/
   FUNCTION f_get_bancos(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      condicion      VARCHAR2(1000);
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1000) := '';
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_Bancos';
   BEGIN
      cur := pac_md_listvalores.f_get_bancos(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_bancos;

   /*************************************************************************
      Recupera la lista de domicilios de la persona
      param in sperson   : código de persona
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   -- Bug 16106 - RSC - 23/09/2010 - APR - Ajustes e implementación para el alta de colectivos
   FUNCTION f_get_codreglas(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100);
      vobject        VARCHAR2(200) := 'PAC_MD_LISTVALORES.f_get_codreglas';
   BEGIN
      cur := pac_md_listvalores.f_get_codreglas(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_codreglas;

   -- Fin Bug 16106

   /*************************************************************************
      Recupera los agentes
      param in pctipage  : tipo de agente
      param in pcidioma  : idioma
      param in pcpadre   : codigo agente padre
      param out mensajes : mensajes de error

      return : ref cursor

      Bug 16529 - 23/11/2010 - AMC
   *************************************************************************/
   FUNCTION f_get_agentestipo(
      pctipage IN NUMBER,
      pcidioma IN NUMBER,
      pcpadre IN NUMBER,   -- BUG 19197 - 22/09/2011 - JMP
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'pctipage:' || pctipage;
      vobject        VARCHAR2(200) := 'PAC_MD_LISTVALORES.f_get_agentestipo';
      terror         VARCHAR2(200) := 'Error recuperar agentes';
   BEGIN
      -- INI CJMR 22/03/2019 IAXIS-3195
      /*IF pctipage IS NULL
         OR pcidioma IS NULL THEN*/
      IF pctipage IS NULL THEN
      -- FIN CJMR 22/03/2019 IAXIS-3195
         RAISE e_param_error;
      END IF;

      -- INI CJMR 22/03/2019 IAXIS-3195
      --cur := pac_md_listvalores.f_get_agentestipo(pctipage, pcidioma, mensajes, pcpadre);
      cur := pac_md_listvalores.f_get_agentestipo(pctipage, pac_md_common.f_get_cxtidioma, mensajes, pcpadre);
      -- FIN CJMR 22/03/2019 IAXIS-3195
      RETURN cur;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           terror, SQLCODE, SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_agentestipo;
   
   /*************************************************************************
      Recupera los agentes de tipo 2 y 3 
      param in pctipage  : tipo de agente
      param in pcidioma  : idioma
      param in pcpadre   : codigo de agente padre
      param out mensajes : mensajes de error

      return : ref cursor

      12/07/2019 - UST
   *************************************************************************/
   FUNCTION f_get_agentestipos(
      pctipage IN NUMBER,
      pcidioma IN NUMBER,
      pcpadre IN NUMBER,   -- BUG 19197 - 22/09/2011 - JMP
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'pctipage:' || pctipage;
      vobject        VARCHAR2(200) := 'PAC_MD_LISTVALORES.f_get_agentestipos';
      terror         VARCHAR2(200) := 'Error recuperar agentes';
   BEGIN
      -- INI CJMR 22/03/2019 IAXIS-3195
      /*IF pctipage IS NULL
         OR pcidioma IS NULL THEN*/
      IF pctipage IS NULL THEN
      -- FIN CJMR 22/03/2019 IAXIS-3195
         RAISE e_param_error;
      END IF;

      -- INI CJMR 22/03/2019 IAXIS-3195
      --cur := pac_md_listvalores.f_get_agentestipo(pctipage, pcidioma, mensajes, pcpadre);
      cur := pac_md_listvalores.f_get_agentestipos(pctipage, pac_md_common.f_get_cxtidioma, mensajes, pcpadre);
      -- FIN CJMR 22/03/2019 IAXIS-3195
      RETURN cur;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           terror, SQLCODE, SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_agentestipos;
    
   /*************************************************************************
      Recupera los negocios
      param in pcnegocio : numero negocio
      param in pcidioma  : idioma
      param in pcempresa : codigo de empresa
      param in psproduc  : codigo de producto
      param out mensajes : mensajes de error

      return : ref cursor

      Bug 16529 - 23/11/2010 - AMC
   *************************************************************************/
   FUNCTION f_get_negocio(
      pcnegocio IN NUMBER,
      pcidioma IN NUMBER,
      pcempresa IN NUMBER,
      psproduc IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(500)
         := 'pcnegocio:' || pcnegocio || ' pcidioma:' || pcidioma || ' pcempresa:'
            || pcempresa || ' psproduc:' || psproduc;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_negocio';
      terror         VARCHAR2(200) := 'Error recuperar negocio';
   BEGIN
      IF pcnegocio IS NULL
         OR pcidioma IS NULL
         OR pcempresa IS NULL THEN
         RAISE e_param_error;
      END IF;

      cur := pac_md_listvalores.f_get_negocio(pcnegocio, pcidioma, pcempresa, psproduc,
                                              mensajes);
      RETURN cur;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           terror, SQLCODE, SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN NULL;
   END f_get_negocio;

   /*************************************************************************
      Recupera la Lista de distintos ramos filtrado por compañia, devuelve un ref cursor
      param in pccompani : codigo de compañia
      param out : mensajes de error
      return    : ref cursor
       -- JBN -bUG16310-20/12/2010- Se añade función
   *************************************************************************/
   FUNCTION f_get_ramoscompania(pccompani IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'parámetros: pccompani=' || pccompani;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_ramoscompania';
   BEGIN
      -- IF pccompani IS NOT NULL THEN
      cur := pac_md_listvalores.f_get_ramoscompania(pccompani, mensajes);
      RETURN cur;
   --ELSE
   --   RETURN NULL;
   --END IF;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_ramoscompania;

   /*************************************************************************
      Recupera la Lista de distintos ramos filtrado por compañia, devuelve un ref cursor
      param in pccompani : codigo de compañia
      param out : mensajes de error
      return    : ref cursor
       -- JBN -bUG16310-20/12/2010- Se añade función
   *************************************************************************/
   FUNCTION f_get_productoscompania(
      pccompani IN NUMBER,
      pcramo IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'parámetros: pccompani=' || pccompani;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_ramoscompania';
   BEGIN
      cur := pac_md_listvalores.f_get_productoscompania(pccompani, pcramo, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_productoscompania;

    /*************************************************************************
      Recupera la Lista de distintos ramos filtrado por compañia, devuelve un ref cursor
      param in pccompani : codigo de compañia
      param out : mensajes de error
      return    : ref cursor
       -- JBN -bUG16310-20/12/2010- Se añade función
   *************************************************************************/
   FUNCTION f_get_ramoscompagrupa(
      pcagrpro IN NUMBER,
      pccompani IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vtermfin       VARCHAR2(100);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'parámtros: pccompani: ' || pccompani;
      vobject        VARCHAR2(200) := 'PAC_MD_LISTVALORES.F_Get_ramoscompagrupa';
      terror         VARCHAR2(200) := 'Error recuperar ramoscompagrupa';
      vselect        VARCHAR2(2000);
      vwhere         VARCHAR2(2000);
   BEGIN
      vselect := 'select distinct r.cramo, r.tramo from ramos r, codiram cr ';
      vwhere := ' where r.cramo = cr.cramo and cr.cempres = '
                || pac_md_common.f_get_cxtempresa || ' and r.cidioma = '
                || pac_md_common.f_get_cxtidioma();

      --BUG 22376 - 11/02/2012 - JRB - Se evita el filtro de compañÃ­a para recuperar los ramos
      IF pccompani IS NOT NULL
         AND NVL(pac_parametros.f_parempresa_n(pac_md_common.f_get_cxtempresa, 'COMPANIA_RAMO'),
                 0) = 0 THEN
         vwhere :=
            vwhere
            || ' and r.cramo in (select distinct cramo from productos ppp where ppp.ccompani = '
            || pccompani || ') ';
      END IF;

      IF pcagrpro IS NOT NULL THEN
         vwhere :=
            vwhere
            || ' and  r.cramo in (select distinct cramo from productos pp where pp.cagrpro = '
            || pcagrpro || ') ';
      END IF;

      vselect := vselect || vwhere || ' order by r.tramo';
      cur := f_opencursor(vselect, mensajes);
      vpasexec := 2;
      RETURN cur;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           terror, SQLCODE, SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_ramoscompagrupa;

      /*************************************************************************
      Recupera la Lista de distintos agrupaciones filtrado por compañia, devuelve un ref cursor
      param in pccompani : codigo de compañia
      param out : mensajes de error
      return    : ref cursor
       -- XPL -bUG17257-19/01/2011- Se añade función
   *************************************************************************/
   FUNCTION f_get_agrupcompania(pccompani IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vtermfin       VARCHAR2(100);
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'parámtros: pccompani: ' || pccompani;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_agrupcompania';
      terror         VARCHAR2(200) := 'Error recuperar agrupcompania';
      vselect        VARCHAR2(2000);
      vwhere         VARCHAR2(2000);
   BEGIN
      vselect := 'select distinct r.cagrpro, r.tagrpro ' || 'from agrupapro r '
                 || 'where  r.cidioma = ' || pac_md_common.f_get_cxtidioma();

      IF pccompani IS NOT NULL THEN
         vwhere :=
            vwhere
            || ' and r.cagrpro in (select cagrpro cramo from productos ppp where ppp.ccompani = '
            || pccompani || ') ';
      END IF;

      vselect := vselect || vwhere || 'order by r.cagrpro';
      cur := f_opencursor(vselect, mensajes);
      vpasexec := 2;
      RETURN cur;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           terror, SQLCODE, SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_agrupcompania;

   /*************************************************************************
      Recupera el tipo de pago manual de recibos
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_recibo_pagmanual(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_recibo_pagmanual';
   BEGIN
      cur := pac_md_listvalores.f_recibo_pagmanual(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, NULL,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_recibo_pagmanual;

   /*************************************************************************
      Recupera el tipo de rÃ©gimen fiscal
      param in ctipper : tipo de persona
      param out mensajes : mensajes de error
      return             : ref cursor
      Bug.: 18942
   *************************************************************************/
   FUNCTION f_get_regimenfiscal(pctipper IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_regimenfiscal';
   BEGIN
      cur := pac_md_listvalores.f_get_regimenfiscal(pctipper, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, NULL,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_regimenfiscal;

    /*************************************************************************
       Recupera la información de los atributos según el valor, en función del
       valor y atributo del cual depende
       param in cempres     : codigo de la empresa
       param in cvalor     : Código del valor del cual existe una dependencia
       param in catribu     : Código del atributo del cual existe una dependencia
       param in cvalordep     : Código del valor dependiente
       param out mensajes : mensajes de error
       return             : ref cursor
    *************************************************************************/
   -- Bug 19169 - APD - 01/08/2011 - se crea la funcion
   FUNCTION f_detvalores_dep(
      pcempres IN NUMBER,
      pcvalor IN NUMBER,
      pcatribu IN NUMBER,
      pcvalordep IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor := NULL;
      vpasexec       NUMBER(8) := 1;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_detvalores_dep';
   BEGIN
      cur := pac_md_listvalores.f_detvalores_dep(pcempres, pcvalor, pcatribu, pcvalordep,
                                                 mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, NULL,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_detvalores_dep;

   -- BUG18752:DRA:02/09/2011:Inici
   /*************************************************************************
      Recuperar tipos de documentos VF 672 según el tipo de persona
      param in ctipper  : tipo de persona (VF-85)
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_tipdocum_tipper(pctipper IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor := NULL;
      vpasexec       NUMBER(8) := 1;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_tipdocum_tipper';
      vparam         VARCHAR2(100) := 'pctipper=' || pctipper;
   BEGIN
      cur := pac_md_listvalores.f_get_tipdocum_tipper(pac_md_common.f_get_cxtempresa,
                                                      pctipper, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_tipdocum_tipper;
   
   --INI IAXIS-5378
   /*************************************************************************
      Recuperar tipos de documentos VF 672 segÃºn el tipo de persona
      param in ctipper  : tipo de persona (VF-85)
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_tipdocum_tipper_rol(pctipper IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor := NULL;
      vpasexec       NUMBER(8) := 1;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_tipdocum_tipper_rol';
      vparam         VARCHAR2(100) := 'pctipper=' || pctipper;
   BEGIN
      cur := pac_md_listvalores.f_get_tipdocum_tipper_rol(pac_md_common.f_get_cxtempresa,
                                                      pctipper, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_tipdocum_tipper_rol;
   --FIN IAXIS-5378
   
-- BUG18752:DRA:02/09/2011:Fi
-- BUG 19130 - 20/09/2011 - JMP
   /*************************************************************************
      FUNCION F_GET_PRODUCTOS

      Recupera la lista de productos contractables
      param in p_tipo    : Tipo de productos requeridos:
                           'TF'         ---> Contratables des de Front-Office
                           'REEMB'      ---> Productos de salud
                           'APOR_EXTRA' ---> Con aportaciones extra
                           'SIMUL'      ---> Que puedan tener simulación
                           'RESCA'      ---> Que puedan tener rescates
                           'SINIS'      ---> Que puedan tener siniestros
                           null         ---> Todos los productos
      param in p_cempres : Empresa
      param in p_cramo   : Ramo
      param in p_cmodali : Modalidad
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_productos(
      p_tipo IN VARCHAR2,
      p_cempres IN NUMBER,
      p_cramo IN NUMBER,
      p_cmodali IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100)
         := 'parámetros - p_tipo: ' || p_tipo || ', p_cempres: ' || p_cempres || ', p_cramo: '
            || p_cramo;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_Productos';
   BEGIN
      -- Bug9585 - 24/04/2009- AMC -- Se comprueba el cempres si es null pasamos el del comtexto
      IF p_cempres IS NULL THEN
         cur := pac_md_listvalores.f_get_productos(p_tipo, pac_md_common.f_get_cxtempresa(),
                                                   p_cramo, mensajes, NULL, p_cmodali);
      ELSE
         cur := pac_md_listvalores.f_get_productos(p_tipo, p_cempres, p_cramo, mensajes, NULL,
                                                   p_cmodali);
      END IF;

      --Fi Bug9585 - 24/04/2009 - AMC
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_productos;

   /*************************************************************************
      FUNCTION F_GET_RAMPRODUCTOS

      Recupera los productos pertenecientes al ramo
      param in pcramo    : código de ramo
      param in pcmodali  : codigo de modalidad
      param in pctermfin : 1=los productos contratables des Front-Office / 0=todos
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_ramproductos(
      p_tipo IN VARCHAR2,
      pcramo NUMBER,
      pcmodali NUMBER,
      pctermfin IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'parámetros: ramo=' || pcramo;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_RamProductos';
   BEGIN
      cur := pac_md_listvalores.f_get_ramproductos(p_tipo, pcramo, pctermfin, mensajes, NULL,
                                                   pcmodali);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_ramproductos;

   /*************************************************************************
        FUNCIÃ“N F_GET_LSTMODALI

        param in pcramo   : Ramo
        param out mensajes : mensajes de error
        return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstmodali(pcramo IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'parámetros - pcramo: ' || pcramo;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_Lstmodali';
   BEGIN
      cur := pac_md_listvalores.f_get_lstmodali(pcramo, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstmodali;

-- FIN BUG 19130 - 20/09/2011 - JMP

   /*************************************************************************
      Recuperar la lista de posibles valores
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   -- Bug 18319 - APD - 20/09/2011 - se crea la funcion
   FUNCTION f_get_lstformulas_utili(pcutili IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstFormulas_utili';
   BEGIN
      cur := pac_md_listvalores.f_get_lstformulas_utili(pcutili, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstformulas_utili;

     /*************************************************************************
      Recupera los cobradores y descripcion que esten vigentes para una empresa
      param in pcempres  : empresa
      param out mensajes : mensajes de error
      return             : ref cursor

         03/10/2011   ETM          DESCRIPCION   Cobradores bancarios. Bug: 17383
   *************************************************************************/
   FUNCTION f_get_lstdesccobradores(pcempres IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(10) := pcempres;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lstdesccobradores';
   BEGIN
      cur := pac_md_listvalores.f_get_lstdesccobradores(pcempres, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstdesccobradores;

   /*************************************************************************
      Recupera la descripción de los cobradores bancarios en función del producto
      param in clave     : clave a recuperar detalles
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_descobradores_ramo(
      psproduc IN NUMBER,
      pcbancar IN VARCHAR2,
      pctipban IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100)
         := 'parámetros - PSPRODUC: ' || psproduc || ' CBANCAR : ' || pcbancar
            || ' pctibpan : ' || pctipban;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_descobradores_ramo';
   BEGIN
      cur := pac_md_listvalores.f_get_descobradores_ramo(psproduc, pcbancar, pctipban,
                                                         mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_descobradores_ramo;

   -- FIN BUG 19130 - 20/09/2011 - JMP
   -- BUG19069:DRA:04/11/2011:Inici
   FUNCTION f_get_lstagentes_cond(
      numide IN VARCHAR2,
      nombre IN VARCHAR2,
      cagente IN NUMBER,
      pformato IN NUMBER,
      pccondicion IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      --
      condicion      VARCHAR2(1000);
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1000)
         := 'numide= ' || numide || ' nombre= ' || nombre || ' cagente= ' || cagente
            || ' pformato= ' || pformato || ' pccondicion = ' || pccondicion;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstAgentesCond';
      cond           VARCHAR2(2000);
      verror         BOOLEAN := FALSE;
   BEGIN
      IF cagente = -999 THEN
         pac_iobj_mensajes.crea_nuevo_mensaje(mensajes, 1, 9905776);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
      END IF;

      cond := pac_md_listvalores.f_get_lstcondiciones(pac_md_common.f_get_cxtempresa, f_user,
                                                      pccondicion, mensajes);

      IF mensajes IS NOT NULL THEN
         IF mensajes.COUNT > 0 THEN
            verror := TRUE;
         END IF;
      END IF;

      IF verror
         OR(pccondicion IS NULL
            AND cond IS NULL) THEN
         cur := pac_md_listvalores.f_get_lstagentes(numide, nombre, cagente, pformato, NULL,
                                                    mensajes);
      ELSE
         cur := pac_md_listvalores.f_get_lstagentes_cond(numide, nombre, cagente, pformato,
                                                         cond, NULL, mensajes);
      END IF;

      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstagentes_cond;

   FUNCTION f_get_monedas_cond(pccondicion IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      --
      condicion      VARCHAR2(1000);
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1000) := ' pccondicion = ' || pccondicion;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_Mondedas_Cond';
      cond           VARCHAR2(2000);
      verror         BOOLEAN := FALSE;
   BEGIN
      cond := pac_md_listvalores.f_get_lstcondiciones(pac_md_common.f_get_cxtempresa, f_user,
                                                      pccondicion, mensajes);

      IF mensajes IS NOT NULL THEN
         IF mensajes.COUNT > 0 THEN
            verror := TRUE;
         END IF;
      END IF;

      IF verror
         OR(pccondicion IS NULL
            AND cond IS NULL) THEN
         cur := pac_md_listvalores.f_monedas_todas(mensajes);
      ELSE
         cur := pac_md_listvalores.f_monedas_todas_cond(cond, mensajes);
      END IF;

      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_monedas_cond;

   FUNCTION f_get_lstagentes_tipage_cond(
      numide IN VARCHAR2,
      nombre IN VARCHAR2,
      cagente IN NUMBER,
      pformato IN NUMBER,
      pccondicion IN VARCHAR2,
      pctipage IN NUMBER,
      mensajes OUT t_iax_mensajes,
      ppartner IN NUMBER DEFAULT NULL)
      RETURN sys_refcursor IS
      --
      condicion      VARCHAR2(1000);
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1000)
         := 'numide= ' || numide || ' nombre= ' || nombre || ' cagente= ' || cagente
            || ' pformato= ' || pformato || ' pccondicion = ' || pccondicion || ' pctipage = '
            || pctipage;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstAgentesCond';
      cond           VARCHAR2(2000);
      verror         BOOLEAN := FALSE;
   BEGIN
      vpasexec := 2;
      p_tab_error(f_sysdate, f_user, vobject, 22, vparam, pccondicion);
      cond := pac_md_listvalores.f_get_lstcondiciones(pac_md_common.f_get_cxtempresa, f_user,
                                                      pccondicion, mensajes);
      p_tab_error(f_sysdate, f_user, vobject, 33, vparam, cond);

      IF mensajes IS NOT NULL THEN
         IF mensajes.COUNT > 0 THEN
            verror := TRUE;
         END IF;
      END IF;

      vpasexec := 3;

      IF verror
         OR(pccondicion IS NULL
            AND cond IS NULL) THEN
         cur := pac_md_listvalores.f_get_lstagentes(numide, nombre, cagente, pformato,
                                                    pctipage, mensajes);
      ELSE
         cur := pac_md_listvalores.f_get_lstagentes_cond(numide, nombre, cagente, pformato,
                                                         cond, pctipage, mensajes, ppartner);
      END IF;

      vpasexec := 4;
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstagentes_tipage_cond;

   /*************************************************************************
      Recupera la lista de agentes según los criterios
      param in numide : numero documento persona
      param in nombre : texto que incluye nombre + apellidos
      param in cagente : identificador del agente
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstagentes_dat(
      numide IN VARCHAR2,
      nombre IN VARCHAR2,
      cagente IN NUMBER,
      pformato IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      condicion      VARCHAR2(1000);
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1000)
                   := 'numide= ' || numide || ' nombre= ' || nombre || ' cagente= ' || cagente;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstAgentes_Dat';
   BEGIN
      cur := pac_md_listvalores.f_get_lstagentes_dat(numide, nombre, cagente, pformato,
                                                     mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstagentes_dat;

-- BUG19069:DRA:04/11/2011:Fi

   -- 41.0 08/11/2011 JGR 19985 LCOL_A001-Control de las matriculas (prenotificaciones) - Inici
   /*************************************************************************
      Recupera los estados de las matrÃ­culas de la cuentas bancarias de
      persona en la tabla per_ccc
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstcvalida(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lstcvalida';
   BEGIN
      cur := pac_md_listvalores.f_get_lstcvalida(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, NULL,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstcvalida;

-- 41.0 08/11/2011 JGR 19985 LCOL_A001-Control de las matriculas (prenotificaciones) - Fi
-- BUG20589:XPL:20/12/2011:Ini
   /*************************************************************************
      Recupera las monedas que se pueden visualizar, devuelve cdigo y descripcin
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_monedas(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'parámetros -  ';
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_monedas';
   BEGIN
      cur := pac_md_listvalores.f_get_monedas(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_monedas;

    /*************************************************************************
      Recupera la descripcion de una moneda
      param in cmoneda : cdigo moneda
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_tmoneda(
      pcmoneda IN NUMBER,
      pcmonint OUT VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN VARCHAR2 IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'parámetros -  pcmoneda : ' || pcmoneda;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_tmoneda';
      vtmoneda       VARCHAR2(1000);
   BEGIN
      vtmoneda := pac_md_listvalores.f_get_tmoneda(pcmoneda, pcmonint, mensajes);
      RETURN vtmoneda;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         RETURN '';
   END f_get_tmoneda;

-- BUG20589:XPL:20/12/2011:FIN

   -- 10/02/2012 JGR 20735/0103205 LCOL_A001-LCOL_A001-ADM - Introduccion de cuenta bancaria - Inici
   /*************************************************************************
      Recupera los tipos de cuenta para TIPOS_CUENTA.CTIPCC (tarjetas, cuentas corrientes, etc.)
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lsttipcc(
      ptipocta NUMBER DEFAULT NULL,   -- 46 20735 - Introduccion de cuenta bancaria, indicando tipo de cuenta y banco
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lsttipcc';
   BEGIN
      cur :=
         pac_md_listvalores.f_get_lsttipcc
            (ptipocta,   -- 46 20735 - Introduccion de cuenta bancaria, indicando tipo de cuenta y banco
             mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, NULL,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lsttipcc;

-- 10/02/2012 JGR 20735/0103205 LCOL_A001-LCOL_A001-ADM - Introduccion de cuenta bancaria - Fi
-- BUG 21924 - 20/04/2012 - ETM
   FUNCTION f_get_lsttipretribu(pcagente IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1);
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lsttipretribu';
      v_ctipmed      NUMBER(3) := 0;
      det_poliza     ob_iax_detpoliza;
      poliza         ob_iax_poliza;
   BEGIN
      BEGIN
         SELECT NVL(a.ctipmed, 0)
           INTO v_ctipmed
           FROM agentes a
          WHERE a.cagente = NVL(pcagente, pac_iax_produccion.poliza.det_poliza.cagente);
      EXCEPTION
         WHEN NO_DATA_FOUND THEN
            v_ctipmed := 0;
         WHEN OTHERS THEN
            v_ctipmed := 0;
      END;

      IF v_ctipmed = 9 THEN
         cur := f_detvalorescond(1063, ' catribu>-1  order by catribu desc ', mensajes);
      ELSE
         cur := f_detvalorescond(1063, ' catribu=3 ', mensajes);
      END IF;

      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lsttipretribu;

   FUNCTION f_get_lstrevalfranq(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lstrevalfranq';
   BEGIN
      cur := f_detvalores(800083, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstrevalfranq;

-- fIN BUG 21924 - 20/04/2012 - ETM
   /*************************************************************************
          Recupera código y descripción de las diferentes descuentos definidas para los agentes.
          param out MSJ : mensajes de error
          return : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstagedescuento(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_get_LstAgeDescuento';
   BEGIN
      cur := pac_md_listvalores.f_get_lstagedescuento(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstagedescuento;

-- bfp bug 21524 ini
/*************************************************************************
         F_GET_TRAMITADORES
      ObtÃ© els tramits d'un ramo
      param in pcramo                : codi del ramo
      param in pctramte                : codi del trÃ mit
      param out t_iax_mensajes         : mensajes de error
      return                           : el cursor
   *************************************************************************/
   FUNCTION f_get_tramitadores(
      pcramo IN NUMBER,
      pctramte IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      v_pasexec      NUMBER(8) := 1;
      v_param        VARCHAR2(500) := 'pcramo:' || pcramo || ' pctramte: ' || pctramte;
      v_object       VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_tramitadores';
      v_cursor       sys_refcursor;
   BEGIN
      v_cursor := pac_md_listvalores.f_get_tramitadores(pcramo, pctramte, mensajes);
      RETURN v_cursor;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, v_object, 1000005, v_pasexec, v_param);
         RETURN v_cursor;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, v_object, 1000006, v_pasexec, v_param);
         RETURN v_cursor;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, v_object, 1000001, v_pasexec, v_param,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF v_cursor%ISOPEN THEN
            CLOSE v_cursor;
         END IF;

         RETURN v_cursor;
   END f_get_tramitadores;

/*************************************************************************
         F_GET_LISTA_TRAMITADORES
      ObtÃ© els tramits d'un ramo
      param in pcramo                : codi del ramo
      param in pctramte                : codi del trÃ mit
      param in pcempres                : codi de l'empresa
      param in pccausin                : codi de la causa del sinistre
      param in pcmotsin                : codi del motiu del sinistre
      param in pcagente                : codi agente
      param out t_iax_mensajes         : mensajes de error
      return                           : el cursor
   *************************************************************************/
   FUNCTION f_get_lista_tramitadores(
      pcramo IN NUMBER,
      pctramte IN NUMBER,
      pcempres IN NUMBER,
      pccausin IN NUMBER,
      pcmotsin IN NUMBER,
      pcagente IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      v_pasexec      NUMBER(8) := 1;
      v_param        VARCHAR2(500)
         := 'pcramo:' || pcramo || ' pctramte: ' || pctramte || ' pcempres: ' || pcempres
            || ' pccausin: ' || pccausin || ' pcmotsin: ' || pcmotsin || ' pcagente: '
            || pcagente;
      v_object       VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lista_tramitadores';
      v_cursor       sys_refcursor;
   BEGIN
      v_cursor := pac_md_listvalores.f_get_lista_tramitadores(pcramo, pctramte, pcempres,
                                                              pccausin, pcmotsin, pcagente,
                                                              mensajes);
      RETURN v_cursor;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, v_object, 1000005, v_pasexec, v_param);
         RETURN v_cursor;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, v_object, 1000006, v_pasexec, v_param);
         RETURN v_cursor;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, v_object, 1000001, v_pasexec, v_param,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF v_cursor%ISOPEN THEN
            CLOSE v_cursor;
         END IF;

         RETURN v_cursor;
   END f_get_lista_tramitadores;

/*************************************************************************
         F_GET_LISTA_PROFESIONALES
      ObtÃ© els tramits d'un ramo
      param in ptipoprof               : codi del tipus de professió
      param out t_iax_mensajes         : mensajes de error
      return                           : el cursor
   *************************************************************************/
   FUNCTION f_get_lista_profesionales(ptipoprof IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      v_pasexec      NUMBER(8) := 1;
      v_param        VARCHAR2(500) := 'ptipoprof:' || ptipoprof;
      v_object       VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lista_profesionales';
      v_cursor       sys_refcursor;
   BEGIN
      v_cursor := pac_md_listvalores.f_get_lista_profesionales(ptipoprof, mensajes);
      RETURN v_cursor;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, v_object, 1000005, v_pasexec, v_param);
         RETURN v_cursor;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, v_object, 1000006, v_pasexec, v_param);
         RETURN v_cursor;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, v_object, 1000001, v_pasexec, v_param,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF v_cursor%ISOPEN THEN
            CLOSE v_cursor;
         END IF;

         RETURN v_cursor;
   END f_get_lista_profesionales;

-- bfp bug 21524 fi

   -- 35.0 25/07/2012 JGR 0022082: LCOL_A003-Mantenimiento de matriculas - Inici
   /*************************************************************************
      Lista de los tipos de negocio, este campo no está en la base de datos
      correponde a producción (nanuali=1) o cartera (nanuali>1).
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstcnegoci(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lsttipcc';
   BEGIN
      cur := pac_md_listvalores.f_get_lstcnegoci(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, NULL,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstcnegoci;

-- 35.0 25/07/2012 JGR 0022082: LCOL_A003-Mantenimiento de matriculas - Inici

   /*************************************************************************
        Recupera lista de cias de un tipo
        param out mensajes : mensajes de error
        return             : ref cursor

        BUG  23830/161685 - 18/12/2013 - DCT
        Bug 23963/125448 - 15/10/2012 - AMC
     *************************************************************************/
   FUNCTION f_get_companias(
      psproduc IN NUMBER,
      pctipcom IN NUMBER,
      mensajes OUT t_iax_mensajes,
      paxisrea037 IN NUMBER DEFAULT NULL)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_companias';
      terror         VARCHAR2(200) := 'Error al recuperar las cias';
   BEGIN
      cur := pac_md_listvalores.f_get_companias(psproduc, pctipcom, mensajes, paxisrea037);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_companias;

   -- Ini Bug 24717 - MDS - 20/12/2012
   /*************************************************************************
      Lista de los tipos de beneficiario
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lst_tipobeneficiario(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lst_tipobeneficiario';
      terror         VARCHAR2(200) := 'Error al recuperar los tipos de beneficiario';
   BEGIN
      cur := pac_md_listvalores.f_get_lst_tipobeneficiario(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lst_tipobeneficiario;

   /*************************************************************************
      Lista de los tipos de parentesco
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lst_tipoparentesco(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lst_tipoparentesco';
      terror         VARCHAR2(200) := 'Error al recuperar los tipos de parentesco';
   BEGIN
      cur := pac_md_listvalores.f_get_lst_tipoparentesco(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lst_tipoparentesco;

-- Fin Bug 24717 - MDS - 20/12/2012

   -- Inicio Bug 0025584 - MMS - 18/02/2013
   /*************************************************************************
      Recupera la lista de Edades por Producto seleccionables
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstedadesprod(psproduc IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1000) := 'psproduc= ' || psproduc;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstEdadesprod';
   BEGIN
      cur := pac_md_listvalores.f_get_lstedadesprod(psproduc, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstedadesprod;

-- Fin Bug 0025584 - MMS - 18/02/2013

   -- Inicio Bug 0024685 - AEG  -04/03/2013-- Desarrollo-GAPS Tecnico-Id 5 -- N?mero de p?liza manual
   /*************************************************************************
      Bug 24685 2013-feb-05 aeg preimpresos
      Recupera los tipos de asignacion preimpresos
      param out mensajes : mesajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstpreimpresos(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_MD_LISTVALORES.f_get_lstpreimpresos';
      terror         VARCHAR2(200) := 'Error recuperar comisiones por p??liza';
   BEGIN
      cur := f_detvalores(893, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstpreimpresos;

-- fin Bug 0024685 - AEG  -04/03/2013
/*************************************************************************
      Recupera la Lista de distintos gestores filtrado por compañia, devuelve un ref cursor
      param in pccompani : codigo de compañia
      param out : mensajes de error
      return    : ref cursor
       -- JBN -bUG27650-01/08/2013- Se añade función
   *************************************************************************/
   FUNCTION f_get_gestorescompania(pccompani IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'parámetros: pccompani=' || pccompani;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_gestorescompania';
   BEGIN
      cur := pac_md_listvalores.f_get_gestorescompania(pccompani, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_gestorescompania;

   /*************************************************************************
      Recupera la Lista de distintos formatos filtrado por gestor, devuelve un ref cursor
      param in pccompani : codigo de compañia
      param out : mensajes de error
      return    : ref cursor
       -- JBN -bUG27650-01/08/2013- Se añade función
   *************************************************************************/
   FUNCTION f_get_formatosgestor(pgestor IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'parámetros: pgestor=' || pgestor;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_formatosgestor';
   BEGIN
      cur := pac_md_listvalores.f_get_formatosgestor(pgestor, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_formatosgestor;

     /*************************************************************************
      Recupera la Listapara visualizar error, devuelve un ref cursor
          param out : mensajes de error
      return    : ref cursor
       -- JBN -bUG27650-01/08/2013- Se añade función
   *************************************************************************/
   FUNCTION f_get_lstprocesoerr(mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_MD_LISTVALORES.f_get_lstprocesoerr';
      terror         VARCHAR2(200) := 'Error recuperar lista proceso error';
   BEGIN
      cur := f_detvalores(829, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstprocesoerr;

   /*************************************************************************
      Recupera la Lista de los dias del mes, devuelve un ref cursor
      param out : mensajes de error
      return    : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstdias(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lstdias';
   BEGIN
      cur := pac_md_listvalores.f_get_lstdias(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstdias;

    /*************************************************************************
      Recupera la lista de los posibles valores donde aplica un indicador de compañia
      param out mensajes: mensajes de error
      return            : ref cursor
   *************************************************************************/
   FUNCTION f_get_caplicaindicadorcia(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lstdias';
   BEGIN
      cur := pac_md_listvalores.f_get_caplicaindicadorcia(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_caplicaindicadorcia;

--Ini Bug 29224/166661:NSS:24-02-2014
   /*************************************************************************
      Recupera la lista de bancos según los criterios
      param in cbanco : Código del banco
      param in tbanco : texto que descripción del banco
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstbancos_pagos(
      pcbanco IN NUMBER,
      ptbanco IN VARCHAR2,
      mensajes OUT t_iax_mensajes,
      pcforpag IN NUMBER DEFAULT NULL   --Bug 29224/166661:NSS:24-02-2014
                                     )
      RETURN sys_refcursor IS
      condicion      VARCHAR2(1000);
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1000)
               := 'cbanco= ' || pcbanco || ' tbanco= ' || ptbanco || ' pcforpag= ' || pcforpag;   --Bug 29224/166661:NSS:24-02-2014
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_LstBancos';
   BEGIN
      cur :=
         pac_md_listvalores.f_get_lstbancos_pagos(pcbanco, ptbanco, mensajes,
                                                  pcforpag   --Bug 29224/166661:NSS:24-02-2014
                                                          );
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstbancos_pagos;

   /*************************************************************************
      Recupera la lista de municipios
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_municipios_pagos(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      condicion      VARCHAR2(1000);
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1000);
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_municipios_pagos';
   BEGIN
      cur := pac_md_listvalores.f_get_municipios_pagos(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_municipios_pagos;

--Fin Bug 29224/166661:NSS:24-02-2014

   -- BUG 0029035 - FAL - 21/05/2014
   /*************************************************************************
      Recupera el tipo de persona relacionada
      param in pctipper : tipo de persona
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_tipo_persona_rel(pctipper IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_tipo_persona_rel';
   BEGIN
      cur := pac_md_listvalores.f_get_tipo_persona_rel(pctipper, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, NULL,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_tipo_persona_rel;

-- FI BUG 0029035 - FAL - 21/05/2014

  /*************************************************************************
      Recupera el tipo de persona relacionada
      param in pctipper : tipo de persona con condicion
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/

   FUNCTION f_get_tipo_persona_rel_des(pctipper IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_tipo_persona_rel';
   BEGIN
      cur := pac_md_listvalores.f_get_tipo_persona_rel_des(pctipper, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, NULL,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_tipo_persona_rel_des;

   -- BUG34603:XBA:17/02/2015:Inici
   /*************************************************************************
      Recupera la Lista de los rankings utilizados para las pignoraciones, devuelve un ref cursor
      param out : mensajes de error
      return    : ref cursor
   *************************************************************************/
   FUNCTION f_get_rank_pledge(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_rank_pledge';
   BEGIN
      cur := pac_md_listvalores.f_get_rank_pledge(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_rank_pledge;

   -- BUG34603:XBA:17/02/2015:Inici
   /*************************************************************************
      Recupera la Lista de las causas para las pignoraciones, devuelve un ref cursor
      param in pcmotmov  : código de causa
      param out : mensajes de error
      return    : ref cursor
   *************************************************************************/
   FUNCTION f_get_tipo_causa(pcmotmov IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'pcmotmov: ' || pcmotmov;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_tipo_causa';
   BEGIN
      cur := pac_md_listvalores.f_get_tipo_causa(pcmotmov, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_tipo_causa;

   -- BUG34603:33886/199827
     /*************************************************************************
        Recupera la Lista de las causas reembolsosos MSV
        param out : mensajes de error
        return    : ref cursor
     *************************************************************************/
   FUNCTION f_get_lstreembolso(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100);
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lstreembolso_msv';
   BEGIN
      cur := pac_md_listvalores.f_get_lstreembolso(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstreembolso;

   /*************************************************************************
      Recupera la Lista de las causas montos para desembolsos MSV
      param out : mensajes de error
      return    : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstmonto(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100);
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lstmonto_msv';
   BEGIN
      cur := pac_md_listvalores.f_get_lstmonto(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstmonto;

      /*************************************************************************
      Recupera la Lista de estados de reembolsos MSV
      param out : mensajes de error
      return    : ref cursor
   *************************************************************************/
   FUNCTION f_get_lststatus(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100);
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lststatus_msv';
   BEGIN
      cur := pac_md_listvalores.f_get_lststatus(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lststatus;

   FUNCTION f_get_lst_tipocontingencias(clave IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(2000) := 'clave = ' || clave;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lst_tipocontingencias';
   BEGIN
      cur := pac_md_listvalores.f_get_lst_tipocontingencias(clave, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lst_tipocontingencias;

   FUNCTION f_get_lstprodproyp(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lstprodproyp';
   BEGIN
      cur := pac_md_listvalores.f_get_lstprodproyp(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstprodproyp;

   /*************************************************************************
      Recuperar la lista de proyeccion provision
      param in mensajes : mensajes de error
      return      : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstproyprovis(psproduc IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lstproyprovis';
   BEGIN
      cur := pac_md_listvalores.f_get_lstproyprovis(psproduc, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstproyprovis;

    /*************************************************************************
       Recupera la lista de ciiu
       param out mensajes : mensajes de error
       return             : ref cursor
    *************************************************************************/
   FUNCTION f_get_ciiu(
      codigo IN VARCHAR2,
      condicion IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_ciiu';
   BEGIN
      cur := pac_md_listvalores.f_get_ciiu(codigo, condicion, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_ciiu;


   /*************************************************************************
      Recupera las actividades con su descripcion por producto
      param in psproduc  : id. interno de producto
      param in pcramo    : ramo
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_activigrupo(PCGRUPO IN VARCHAR, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      VPASEXEC       number(8) := 1;
      VPARAM         varchar2(100) := ' pcgrupo: ' || PCGRUPO;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_activigrupo';
      vsquery        VARCHAR2(200);
   BEGIN
      cur := pac_md_listvalores.f_get_activigrupo(PCGRUPO, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         return CUR;
   END f_get_activigrupo;
/*************************************************************************
      Recupera la lista de agrupaciones consorcios
      param in sperson   : codigo de persona
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_agrupaciones_consorcios(sperson IN NUMBER, pmodo IN VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := 'sperson= ' || sperson;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_Agrupaciones_Consorcios';
   BEGIN
      cur := pac_md_listvalores.f_get_agrupaciones_consorcios(sperson, pmodo, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   End F_Get_Agrupaciones_Consorcios;
   -- Ini-QT-1704
/*************************************************************************
      Recupera los ramos con su descripcion por empresa
      param in pcempres  : empresa
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/
   FUNCTION f_get_cramo_conv(pcempres IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(10) := pcempres;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_Get_Cramo_Conv';
      vsquery        VARCHAR2(200);
   Begin
      cur := pac_md_listvalores.f_get_cramo_conv(pcempres, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         Return Cur;
   End F_Get_Cramo_Conv;
   -- Fin-QT-1704
   --INI WAJ
   /*************************************************************************
          Recupera código y la descripción de los tipos de vinculacion definidos
          param out MSJ : mensajes de error
          return : ref cursor
   *************************************************************************/
   FUNCTION f_get_lstvinculos(mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.F_get_Lstvinculos';
   BEGIN
      cur := pac_md_listvalores.f_get_lstvinculos(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lstvinculos;
   /*************************************************************************
          Recupera código y la descripción de los tipos de compañias definidos
          param out MSJ : mensajes de error
          return : ref cursor
   *************************************************************************/
   FUNCTION f_get_lsttipcomp(mensajes IN OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_lsttipcomp';
   BEGIN
      cur := pac_md_listvalores.f_get_lsttipcomp(mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
   END f_get_lsttipcomp;
 --FIN WAJ

 -- Ini  TCS_827 - ACL - 17/02/2019
	/*************************************************************************
      Recupera el ramo cumplimiento, devuelve un ref cursor
      param in pcempres : codigo de empresa
      param out : mensajes de error
      return    : ref cursor
	*************************************************************************/
	FUNCTION f_get_ramo_contrag(p_tipo IN VARCHAR2, pcempres IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_ramo_contrag';
	BEGIN
      IF pcempres IS NULL THEN
         cur := pac_md_listvalores.f_get_ramo_contrag(p_tipo, pac_md_common.f_get_cxtempresa(),
                                               mensajes);
      ELSE
         cur := pac_md_listvalores.f_get_ramo_contrag(p_tipo, pcempres, mensajes);
      END IF;

      RETURN cur;
	EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
	END f_get_ramo_contrag;
   --INI IAXIS-2085 18/03/2019 AP
    /*************************************************************************
      Recupera la Lista de agrupaciones, devuelve un ref cursor
      param in pcagente : codigo de agente
      param out : mensajes de error
      return    : ref cursor
    *************************************************************************/
    FUNCTION f_get_agrupa_consorcios(psperson IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor IS
      cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(100) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_agrupa_consorcios';
   BEGIN
      cur := pac_md_listvalores.f_get_agrupa_consorcios(psperson, mensajes);
      RETURN cur;
   EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;
         RETURN cur;
   END f_get_agrupa_consorcios;
   --FIN IAXIS-2085 18/03/2019 AP
    FUNCTION f_get_prodactividad (pcramo IN NUMBER, pcactivi IN NUMBER, mensajes OUT t_iax_mensajes)
    RETURN SYS_REFCURSOR
    IS
    cur            sys_refcursor;
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(1) := NULL;
      vobject        VARCHAR2(200) := 'PAC_IAX_LISTVALORES.f_get_prodactividad';
	BEGIN

    cur:=PAC_MD_LISTVALORES. F_GET_PRODACTIVIDAD(pcramo, pcactivi,mensajes);

    RETURN cur;

	EXCEPTION
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);

         IF cur%ISOPEN THEN
            CLOSE cur;
         END IF;

         RETURN cur;
	END f_get_prodactividad;
END pac_iax_listvalores;
/