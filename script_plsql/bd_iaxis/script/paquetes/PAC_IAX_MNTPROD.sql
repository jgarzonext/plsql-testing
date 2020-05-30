--------------------------------------------------------
--  DDL for Package PAC_IAX_MNTPROD
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_IAX_MNTPROD" AS
/******************************************************************************
   NOMBRE:       PAC_IAX_MNTPROD
   PROP�SITO: Funciones para mantenimiento productos

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/04/2008   ACC                1. Creaci�n del package.
   2.0        13/01/2009   XCG                2. Modificaci� del package, creaci� de noves funcionalitats
   3.0        29/06/2009   AMC                3. Se a�aden nuevas funciones bug 10557
   4.0        05/05/2010   AMC                4. Bug 14284. Se a�aden nuevas funciones.
   5.0        27/05/2010   AMC                5. Se a�ade la funci�n f_del_garantia bug 14723
   6.0        07/06/2010   PFA                6. 14588: CRT001 - A�adir campo compa�ia productos
   7.0        16/06/2010   AMC                7. Se a�aden nuevas funciones bug 15023
   8.0        18/06/2010   AMC                8. Bug 15148 - Se a�aden nuevas funciones
   9.0        21/06/2010   AMC                9. Bug 15149 - Se a�aden nuevas funciones
  10.0        23/07/2010   PFA               10. 15513: MDP - Alta de productos
  11.0        15/12/2010   LCF               11. 16684: Anyadir ccompani para productos especiales
  12.0        17/05/2012   MDS               12. 0022253: LCOL - Duraci�n del cobro como campo desplegable
  13.0        23/01/2014   AGG               13. 0027306: POSS518 (POSSF200)- Resolucion de Incidencias FASE 1-2: Tecnico - VI - Temporales anuales renovables
  14.0        18/02/2014   DEV               14. 0029920: POSFC100-Taller de Productos
  15.0        25/09/2014   JTT               15. 0032620: A�adimos el parametro cprovis a la funcion F_set_datostec
                                                 0032367: A�adimos el parametro cnv_spr a la funcion F_set_admprod
******************************************************************************/
   e_object_error EXCEPTION;
   e_param_error  EXCEPTION;
   e_param_act_error EXCEPTION;
   vtitulos       t_iax_prodtitulo;
   vforpagprod    t_iax_prodformapago;
   -- Bug 14284 - 05/05/2010 - AMC
   vlistcapitales t_iax_prodgaranprocap;

   -- Fi Bug 14284 - 05/05/2010 - AMC

   -- Bug 14588 - 07/06/2010 - PFA
   /**************************************************************************
     Inserta un nuevo registro en la tabla companipro. Si existe, lo actualiza
     param in psproduc     : Codigo del producto
     param in pccompani    : Codigo de la compania
     param in pcagencorr   : Codigo del agente en la compania/producto
     param in psproducesp  : Codigo del producto especifico
   **************************************************************************/
   FUNCTION f_insert_companipro(
      psproduc IN NUMBER,
      pccompani IN NUMBER,
      pcagencorr IN VARCHAR2,
      psproducesp IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /**************************************************************************
     Borra un registro de la tabla companipro.
     param in psproduc     : Codigo del producto
     param in pccompani    : Codigo de la compania
   **************************************************************************/
   FUNCTION f_delete_companipro(
      psproduc IN NUMBER,
      pccompani IN NUMBER,
      psproducesp IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   --Fi Bug 14588 - 07/06/2010 - PFA

   /*************************************************************************
      Recupera el objeto con la informaci�n del producto
      param in pcempresa   : c�digo empresa
      param in pcramo      : c�digo ramo
      param in pcagrpro    : c�digo agrupaci�n producto
      param in pcactivo    : activo
      param out mensajes   : mensajes de error
   *************************************************************************/
   FUNCTION f_get_consulta(
      pcempresa IN NUMBER,
      pcramo IN NUMBER,
      pcagrpro IN NUMBER,
      pcactivo IN NUMBER,
      ccompani IN NUMBER,   --BUG 14588 - PFA -  CRT001 - A�adir campo compa�ia productos
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

       /*************************************************************************
      Recupera el objeto con la informaci�n del producto filtrado
      param in pcempresa   : c�digo empresa
      param in pcramo      : c�digo ramo
      param in pcagrpro    : c�digo agrupaci�n producto
      param in pcactivo    : activo
      param out mensajes   : mensajes de error
   *************************************************************************/
   FUNCTION f_get_consulta_filtrado(
      pcempresa IN NUMBER,
      pcramo IN NUMBER,
      pcagrpro IN NUMBER,
      pcactivo IN NUMBER,
      ccompani IN NUMBER,   --BUG 14588 - PFA -  CRT001 - A�adir campo compa�ia productos
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /*************************************************************************
      Duplica el productos especificado como "origen", en un nuevo producto
      identificado como "destino". La salida del duplicado (script o ejecuci�n
      directa en base de datos se puede especificar mediante el par�metro de
      entrada "psalida".
      param in  pramorig    : Ramo origen
      param in  pmodaliorig : Modalidad origen
      param in  ptipsegorig : Tipo seguro origen
      param in  pcolectorig : Colectividad origen
      param in  pramdest    : Ramo destino
      param in  pmodalidest : Modalidad destino
      param in  ptipsegdest : Tipo seguro destino
      param in  pcolectdest : Colectividad destino
      param in  psalida     : Tipo de salida 0/1 ' Script / BD
      param out mensajes    : mensajes de error
      retorno: 0 -> Todo ha ido bien
               <>0 -> Error al duplicar producto.
   *************************************************************************/
   FUNCTION f_duplicarprod(
      pramorig IN NUMBER,
      pmodaliorig IN NUMBER,
      ptipsegorig IN NUMBER,
      pcolectorig IN NUMBER,
      pramdest IN NUMBER,
      pmodalidest IN NUMBER,
      ptipsegdest IN NUMBER,
      pcolectdest IN NUMBER,
      psalida IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
      Recupera el objeto con la informaci�n del producto
      param in psproduc  : c�digo producto
      param out mensajes : mensajes de error
   *************************************************************************/
   FUNCTION f_get_producto(psproduc IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN ob_iax_producto;

   /*************************************************************************
      Recupera los datos generales del producto
      param in psproduc  : c�digo producto
      param out mensajes : mensajes de error
   *************************************************************************/
   FUNCTION f_get_datosgenerales(psproduc IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN ob_iax_producto;

   /*************************************************************************
      Recupera el objeto con la informaci�n del producto datos de gesti�n
      param in psproduc  : c�digo producto
      param out mensajes : mensajes de error
   *************************************************************************/
   FUNCTION f_get_gestion(psproduc IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN ob_iax_prodgestion;

   /*************************************************************************
      Recupera el objeto con la informaci�n del producto datos gesti�n duraciones
      param in psproduc  : c�digo producto
      param out mensajes : mensajes de error
   *************************************************************************/
   FUNCTION f_get_durperiod(psproduc IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN t_iax_proddurperiodo;

   /*************************************************************************
      Recupera el objeto con la informaci�n del producto datos administraci�n
      param in psproduc  : c�digo producto
      param out mensajes : mensajes de error
   *************************************************************************/
   FUNCTION f_get_admprod(psproduc IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN ob_iax_prodadministracion;

   /*************************************************************************
      Permite recuperar las formas de pago que tiene definidas el producto.
      param in psproduc  : c�digo producto
      param out mensajes : mensajes de error
   *************************************************************************/
   FUNCTION f_get_forpago(psproduc IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN t_iax_prodformapago;

   /*************************************************************************
      Recupera las garantias del producto y actividad
      param in psproduc  : c�digo del producto
      param in pcactivi  : c�digo actividad
      param out mensajes : mensajes de error
      return             : objecto garantias
   *************************************************************************/
   FUNCTION f_get_garantias(
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN t_iax_prodgarantias;

   /*************************************************************************
      Recupera el objeto con la informaci�n de la actividad
      param in psproduc  : c�digo producto
      param in pcactivi  : c�digo actividad
      param out mensajes : mensajes de error
   *************************************************************************/
   FUNCTION f_get_detailactivid(
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN ob_iax_prodactividades;

   /*************************************************************************
      Recupera el objeto con la informaci�n de la garantia
      param in psproduc  : c�digo producto
      param in pcactivi  : c�digo actividad
      param in pcgarant  : c�digo garantia
      param out mensajes : mensajes de error
   *************************************************************************/
   FUNCTION f_get_detailgaran(
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      pcgarant IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN ob_iax_prodgarantias;

   /*************************************************************************
      Recupera el cursor con la informaci�n de la tabla GARANPRO
      param in psproduc  : c�digo producto
      param in pcactivi  : c�digo actividad
      param out mensajes : mensajes de error
   *************************************************************************/
   FUNCTION f_get_datosgeneralesgaran(
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      pcgarant IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN ob_iax_prodgarantias;

   /*************************************************************************
      Recupera el objeto con la informaci�n de la garantia
      datos de gesti�n
      param in psproduc  : c�digo producto
      param in pcactivi  : c�digo de la actividad
      param in pcgarant  : c�digo de la garantia
      param out mensajes : mensajes de error
   *************************************************************************/
   FUNCTION f_get_gestiongaran(
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      pcgarant IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN ob_iax_prodgardatgestion;

   /*************************************************************************
      Recupera el objeto con la informaci�n de las formulas de una garantia
      param in psproduc  : c�digo producto
      param in pcactivi  : c�digo actividad
      param in pgarant  : c�digo garant�a
      param out mensajes : mensajes de error
   *************************************************************************/
   FUNCTION f_get_impuestosgaran(
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      pcgarant IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN ob_iax_prodgarimpuestos;

   /*************************************************************************
      Recupera el objeto con la informaci�n de las formulas de una garantia
      param in psproduc  : c�digo producto
      param in pcactivi  : c�digo actividad
      param in pgarant  : c�digo garant�a
      param out mensajes : mensajes de error
   *************************************************************************/
   FUNCTION f_get_formulasgaran(
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      pcgarant IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN t_iax_prodgarformulas;

   /*************************************************************************
      Actualiza la variable persistente "vtitulos"
      param in psproduc  : c�digo del producto
      param in pcidioma  : c�digo idioma
      param in pttitulo  : T�tulo
      param in ptrotulo  : R�tulo
      param out mensajes : mensajes de error
      Return 0 si es correcto 1 si falla
   *************************************************************************/
   FUNCTION f_set_prodtitulo(
      pcidioma IN NUMBER,
      pttitulo IN VARCHAR2,
      ptrotulo IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
      Realiza las validaciones, inserciones o modificaciones
      param in psproduc    : c�digo del producto
      param in pcramo      : c�digo del ramo
      param in pcmodali    : c�digo de la modalidad
      param in pctipseg    : c�digo del tipo de seguro
      param in pccolect    : c�digo de colectividad
      param in pcactivo    : indica si el producto est� activo
      param in pctermfin   : contratable desde el terminal financiero, 0.-Si, 1.-No
      param in pctiprie    : tipo de riesgo
      param in pcobjase    : Tipo de objeto asegurado
      param in pcsubpro    : C�digo de subtipo de producto
      param in pnmaxrie    : maximo riesgo
      param in pc2cabezas  : c2cabezas
      param in pcagrpro    : Codigo agrupaci�n de producto
      param in pcdivisa    : Clave de Divisa
      param out mensajes   : mensajes de error
      return               : 0 si ha ido bien
                            1 si ha ido mal
   *************************************************************************/
   FUNCTION f_set_datosgenerales(
      psproduc IN NUMBER,
      pcramo IN NUMBER,
      pcmodali IN NUMBER,
      pctipseg IN NUMBER,
      pccolect IN NUMBER,
      pcactivo IN NUMBER,
      pctermfin IN NUMBER,
      pctiprie IN NUMBER,
      pcobjase IN NUMBER,
      pcsubpro IN NUMBER,
      pnmaxrie IN NUMBER,
      pc2cabezas IN NUMBER,
      pcagrpro IN NUMBER,
      pcdivisa IN NUMBER,
      pcprprod IN NUMBER,
      pcompani IN NUMBER,
      psproduc_nou OUT NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
      Valida los datos de gesti�n de un producto
      param in psproduc   : c�digo del producto
      param in cduraci    : c�digo de la duraci�n
      param in ctempor    : Permite temporal
      param in ndurcob    : Duraci�n pagos
      param in cdurmin    : Duraci�n m�nima
      param in nvtomin    : Tipo
      param in cdurmax    : duraci�n m�xima p�liza
      param in nvtomax    : N�mero a�os m�ximo para el vto.
      param in ctipefe    : Tipo de efecto
      param in nrenova    : renovaci�n
      param in cmodnre    : Fecha de renovaci�n
      param in cprodcar   : Si ha pasado cartera
      param in crevali    : C�digo de revalorizaci�n
      param in prevali    : Porcentaje revalorizaci�n
      param in irevali    : Importe revalorizaci�n
      param in ctarman    : tarificaci�n puede ser manual
      param in creaseg    : creaseg
      param in creteni    : Indicador de propuesta
      param in cprorra    : tipo prorrateo
      param in cprimin    : tipo de prima minima
      param in iprimin    : importe m�nimo prima de recibo en emisi�n
      param in cclapri    : F�rmula prima m�nima
      param in ipminfra   : Prima m�nima fraccionada
      param in nedamic    : Edad m�n ctr
      param in ciedmic    : Edad real
      param in nedamac    : Edad m�x. ctr
      param in ciedmac    : Edad Real. Check por defecto = 0 ( sino es actuarial)
      param in nedamar    : Edad m�x. ren
      param in ciedmar    : Edad Real
      param in nedmi2c    : Edad m�n ctr 2� aseg.
      param in ciemi2c    : Edad real
      param in nedma2c    : Edad m�x. ctr 2� aseg.
      param in ciema2c    : Edad Real
      param in nedma2r    : Edad m�x. ren 2� aseg.
      param in ciema2r    : Real o Actuarial
      param in nsedmac    : Suma M�x. Edades
      param in cisemac    : Real
      param in cvinpol    : P�liza vinculada
      param in cvinpre    : Pr�stamo vinculado
      param in ccuesti    : Cuestionario Salud
      param in cctacor    : Libreta
      return              : 0 si ha ido bien
                           error si ha ido mal
   *************************************************************************/
   FUNCTION f_set_gestion(
      psproduc IN NUMBER,
      pcduraci IN NUMBER,
      pctempor IN NUMBER,
      pndurcob IN NUMBER,
      pcdurmin IN NUMBER,
      pnvtomin IN NUMBER,
      pcdurmax IN NUMBER,
      pnvtomax IN NUMBER,
      pctipefe IN NUMBER,
      pnrenova IN NUMBER,
      pcmodnre IN NUMBER,
      pcprodcar IN NUMBER,
      pcrevali IN NUMBER,
      pprevali IN NUMBER,
      pirevali IN NUMBER,
      pctarman IN NUMBER,
      pcreaseg IN NUMBER,
      pcreteni IN NUMBER,
      pcprorra IN NUMBER,
      pcprimin IN NUMBER,
      piprimin IN NUMBER,
      pcclapri IN NUMBER,
      pipminfra IN NUMBER,
      pnedamic IN NUMBER,
      pciedmic IN NUMBER,
      pnedamac IN NUMBER,
      pciedmac IN NUMBER,
      pnedamar IN NUMBER,
      pciedmar IN NUMBER,
      pnedmi2c IN NUMBER,
      pciemi2c IN NUMBER,
      pnedma2c IN NUMBER,
      pciema2c IN NUMBER,
      pnedma2r IN NUMBER,
      pciema2r IN NUMBER,
      pnsedmac IN NUMBER,
      pcisemac IN NUMBER,
      pcvinpol IN NUMBER,
      pcvinpre IN NUMBER,
      pccuesti IN NUMBER,
      pcctacor IN NUMBER,
      pcpreaviso IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
       Borra las duraciones permitidas para un producto
       param in psproduc   : c�digo del producto
       param in Pfinicio   : fecha inicio
       param in pndurper   : duracion
       param out mensajes  : mensajes de error
       return              : 0 si ha ido bien
                             1 si ha ido mal
   *************************************************************************/
   FUNCTION f_del_durperiod(
      psproduc IN NUMBER,
      pfinicio IN DATE,
      pndurper IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
       Modifica o inserta un periodo
       param in psproduc   : c�digo del producto
       param in Pfinicio   : fecha inicio
      param in pndurper   : duracion
       param in PndurperOld: duracion anterior
       param out mensajes  : mensajes de error
       return              : 0 si ha ido bien
                             1 si ha ido mal
    *************************************************************************/
   FUNCTION f_set_durperiod(
      psproduc IN NUMBER,
      pfinicio IN DATE,
      pndurper IN NUMBER,
      pndurperold IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
      Realiza las  modificaciones y validaciones de los datos de admnistraci�n del producto
      param in psproduc    : c�digo del producto
      param in Pctipges    : Gesti�n del seguro.
      param in pcreccob    : 1er recibo
      param in pctipreb    : Recibo por.
      param in pccalcom    : C�lculo comisi�n
      param in pctippag    : Cobro
      param in pcmovdom    : Domiciliar el primer recibo
      param in pcfeccob    : Acepta fecha de cobro
      param in pcrecfra    : Recargo Fraccionamiento
      param in piminext    : Prima m�nima extorno
      param in pndiaspro   : D�as acumulables
      param in pcnv_spr    : Identificador del cliente para el producto en contabilidad
      param out mensajes   : mensajes de error
      retorna un cero si todo va bien  y un uno en caso contrario
   *************************************************************************/
   FUNCTION f_set_admprod(
      psproduc IN NUMBER,
      pctipges IN NUMBER,
      pcreccob IN NUMBER,
      pctipreb IN NUMBER,
      pccalcom IN NUMBER,
      pctippag IN NUMBER,
      pcmovdom IN NUMBER,
      pcfeccob IN NUMBER,
      pcrecfra IN NUMBER,
      piminext IN NUMBER,
      pndiaspro IN NUMBER,
      pcnv_spr IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
      Modifica las formas de pago del producto.
      param in psproduc  : c�digo producto
      param out mensajes : mensajes de error
   *************************************************************************/
   FUNCTION f_set_forpago(
      psproduc IN NUMBER,
      pcforpag IN NUMBER,
      ptforpag IN VARCHAR2,
      pcobliga IN NUMBER,
      pprecarg IN NUMBER,
      pcpagdef IN NUMBER,
      pcrevfpg IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
      Inserta o modifica los impuestos de una garantia
      param in psproduc    : c�digo del producto
      param in pcactivi    : c�digo de la actividad
      param in pcgarant    : c�digo de la garant�a
      param in pcimpcon    : aplica consorcio 0/1
      param in pcimpdgs    : aplica la DGS 0/1
      param in pcimpips    : aplica IPS 0/1
      param in pcimparb    : se calcula arbitrios 0/1
      param in pcimpfng    :
      param out mensajes   : mensajes de error
      return               : 0 si ha ido bien
                            numero error si ha ido mal
   *************************************************************************/
   FUNCTION f_set_impuestosgaran(
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      pcgarant IN NUMBER,
      pcimpcon IN NUMBER,
      pcimpdgs IN NUMBER,
      pcimpips IN NUMBER,
      pcimparb IN NUMBER,
      pcimpfng IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
      Inserta o modifica la formula de una garantia
      param in psproduc    : c�digo del producto
      param in pcactivi    : c�digo de la actividad
      param in pcgarant    : c�digo de la garant�a
      param in pccampo     : c�digo del campo
      param in pclave      : clave f�rmula
      param out mensajes   : mensajes de error
      return               : 0 si ha ido bien
                            numero error si ha ido mal
   *************************************************************************/
   FUNCTION f_set_prodgarformulas(
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      pcgarant IN NUMBER,
      pccampo IN VARCHAR2,
      pclave IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
       funci�n que nos devuelve la descripci�n de un cuadro de inter�s
       param in pncodint    : C�digo del cuadro
       param out mensajes   : mensajes de error
   *************************************************************************/
   FUNCTION f_get_descripncodint(pncodint IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN VARCHAR2;

   /*************************************************************************
       funci�n que nos devuelve la descripci�n de un cuadro de inter�s
       param in pncodint    : C�digo del cuadro
       param in ctipo       : C�digo del tipo de inter�s
       param out mensajes   : mensajes de error
   *************************************************************************/
   FUNCTION f_get_intertecmov(pncodint IN NUMBER, ctipo IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN t_iax_intertecprod;

   /*************************************************************************
       funci�n que nos devuelve los tramos que tiene para un cuadro y un tipo de inter�s en concreto
       param in pncodint    : C�digo del cuadro
       param in pctipo       : C�digo del tipo de inter�s
       param in pfinicio     : Fecha de inicio
       param out mensajes   : mensajes de error
   *************************************************************************/
   FUNCTION f_get_intertecmovdet(
      pncodint IN NUMBER,
      pctipo IN NUMBER,
      pfinicio IN DATE,
      mensajes OUT t_iax_mensajes)
      RETURN t_iax_intertecmovdetprod;

   /*************************************************************************
       funci�n que nos devolver� los datos t�cnicos de un producto
       param in psproduc    : c�digo del producto
       param out mensajes   : mensajes de error
   *************************************************************************/
   FUNCTION f_get_dattecn(psproduc IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN ob_iax_proddatostecnicos;

    /*************************************************************************
       funci�n que nos devolver� los datos t�cnicos de un producto
       param in pncodint    : C�digo del cuadro
       param out mensajes   : mensajes de error
   *************************************************************************/
   FUNCTION f_get_cuadrointeresprod(pncodint IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN t_iax_intertecprod;

    /*************************************************************************
       funci�n que modificar� los datos t�cnicos de un producto en concreto
       param in Psproduc  : C�digo del producto.
       PARAM IN pnniggar  : Indica si los gastos est�n a nivel de garant�a Par�metro de entrada
       PARAM IN pnniigar  : Indicador de si el inter�s t�cnico est� a nivel de garant�a. Par�metro de entrada
     PARAM IN pcmodint  : Intereses tecnicos modificables en p�liza.
       PARAM IN pcintrev  : Por defecto en renovaci�n aplicar el inter�s del producto
       PARAM IN pncodint  : C�digo del cuadro de inter�s que se ha escogido para el producto
       param out mensajes : mensajes de error
   *************************************************************************/
   FUNCTION f_set_dattecn(
      psproduc IN NUMBER,
      pnniggar IN NUMBER,
      pnniigar IN NUMBER,
      pcmodint IN NUMBER,
      pcintrev IN NUMBER,
      pncodint IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
     funci�n que recupera la descripci�n de un cuadro de inter�s
     PARAM IN PNCODINT  : C�digo del cuadro de inter�s que se ha escogido para el producto
     PARAM IN PCIDIOMA  : C�digo del Idioma
     PARAM IN TNCODINT  : Descripci�n del cuadro de inter�s
     param out mensajes : mensajes de error
   *************************************************************************/
   FUNCTION f_get_ncodint(
      pncodint IN NUMBER,
      pcidioma IN NUMBER,
      ptncodint IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /*************************************************************************
       funci�n que se encargar� de borrar un cuadro de inter�s t�cnico
       PARAM IN PNCODINT  : C�digo del cuadro de inter�s que se ha escogido para el producto
       param out mensajes : mensajes de error
     *************************************************************************/
   FUNCTION f_del_intertec(pncodint IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
    funci�n que se encargar� de borrar una vigencia de un cuadro de inter�s t�cnico
    PARAM IN PNCODINT   : C�digo del cuadro de inter�s que se ha escogido para el producto
    PARAM IN PCTIPO     : C�digo del tipo de inter�s.
    PARAM IN PFINICIO   : Fecha inicio vigencia del tramo.
    param out mensajes : mensajes de error
   *************************************************************************/
   FUNCTION f_del_intertecmov(
      pncodint IN NUMBER,
      pctipo IN NUMBER,
      pfinicio IN DATE,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

    /*************************************************************************
        Funci�n que se encargar� de borrar una vigencia de un cuadro de inter�s t�cnico
        PARAM IN PNCODINT  : C�digo del cuadro de inter�s
        PARAM IN PCTIPO    : C�digo del tipo de inter�s.
        PARAM IN PFINICIO  : Fecha inicio vigencia del tramo.
        PARAM IN PNDESDE   : importe/edad desde
        PARAM OUT mensajes : mensajes de error
   *************************************************************************/
   FUNCTION f_del_intertecmovdet(
      pncodint IN NUMBER,
      pctipo IN NUMBER,
      pfinicio IN DATE,
      pndesde IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
    funci�n que se encargar� de recuperar la informaci�n de una vigencia en concreto para un cuadro de inter�s.
    PARAM IN PNCODINT   : C�digo del cuadro de inter�s que se ha escogido para el producto
    PARAM IN PCTIPO     : C�digo del tipo de inter�s.
    PARAM IN PFINICIO   : Fecha inicio vigencia del tramo.
    PARAM OUT PFFIN     : Fecha fin
    PARAM OUT PCTRAMTIP : C�digo del concepto del tramo
    param out mensajes  : mensajes de error
   *************************************************************************/
   FUNCTION f_getreg_intertecmov(
      pncodint IN NUMBER,
      pctipo IN NUMBER,
      pfinicio IN DATE,
      pffin OUT DATE,
      pctramtip OUT NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

/*************************************************************************
    funci�n que se encarga de validar y grabar una nueva vigencia para un cuadro de inter�s.
    PARAM IN PNCODINT   : C�digo del cuadro de inter�s que se ha escogido para el producto
    PARAM IN PCTIPO     : C�digo del tipo de inter�s.
    PARAM IN PFINICIO   : Fecha inicio vigencia del tramo.
    PARAM IN PFFIN      : Fecha fin
    PARAM IN PCTRAMTIP  : C�digo del concepto del tramo
    param out mensajes  : mensajes de error
   *************************************************************************/
   FUNCTION f_set_intertecmov(
      pncodint IN NUMBER,
      pctipo IN NUMBER,
      pfinicio IN DATE,
      pffin IN DATE,
      pctramtip IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
   funci�n que nos sirve para recuperar un registro de un tramo en concreto
   PARAM IN PNCODINT    : C�digo del cuadro de inter�s que se ha escogido para el producto
   PARAM IN PCTIPO      : C�digo del tipo de inter�s.
   PARAM IN PFINICIO    : Fecha inicio vigencia del tramo.
   PARAM IN NDESDE      : Inicio deL tramo
   PARAM OUT NHASTA     : Fin del tramo
   PARAM OUT PNINTTEC   : Porcentaje de interes
   PARAM OUT MENSAJES   : mensajes de error
   *************************************************************************/
   FUNCTION f_getreg_intertecmovdet(
      pncodint IN NUMBER,
      pctipo IN NUMBER,
      pfinicio IN DATE,
      pndesde IN NUMBER,
      pnhasta OUT NUMBER,
      pninttec OUT NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
   funci�n que modifica o da de alta un nuevo tramo
   PARAM IN PNCODINT    : C�digo del cuadro de inter�s que se ha escogido para el producto
   PARAM IN PCTIPO      : C�digo del tipo de inter�s.
   PARAM IN PFINICIO    : Fecha inicio vigencia del tramo.
   PARAM IN NDESDE      : Inicio deL tramo
   PARAM OUT NHASTA     : Fin del tramo
   PARAM OUT PNINTTEC   : Porcentaje de interes
   PARAM OUT MENSAJES   : mensajes de error
   *************************************************************************/
   FUNCTION f_set_intertecmovdet(
      pncodint IN NUMBER,
      pctipo IN NUMBER,
      pfinicio IN DATE,
      pndesde IN NUMBER,
      pnhasta IN NUMBER,
      pninttec IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*******BUG8510-07/01/2008-XCG Afegir funcions***************************/
   /*************************************************************************
          Funci�n que INSERTA las actividades seleccionadas previamente.
          PARAM IN PCRAMO       : C�digo del Ramo del producto
          PARAM IN PCMODALI     : C�digo de la Modalidad del producto
          PARAM IN PCTIPSEG     : C�digo del tipo de Seguro del producto
          PARAM IN PCCOLECT     : C�digo del la Colectividad del producto
          PARAM IN PSPRODUC     : C�digo del Identificador del producto
          PARAM IN PCACTIVI     : C�digo de la Actividad
          PARAM IN OUT MENSAJES : mensajes de error
          RETURN NUMBER(0: operaci�n correcta sino num error)
     *************************************************************************/
   FUNCTION f_set_actividades(
      pcramo IN NUMBER,
      pcmodali IN NUMBER,
      pctipseg IN NUMBER,
      pccolect IN NUMBER,
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

/*************************************************************************
       Recupera el objeto con la informaci�n del producto
       par�metros actividades
       param in psproduc  : c�digo producto
       param in pcactivi  : c�digo acticividad
       param out mensajes : mensajes de error
    *************************************************************************/
   FUNCTION f_get_paractividad(
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN t_iax_prodparactividad;

/*************************************************************************
        Funci�n que retorna un objeto con el recargo del fraccionamiento asignado a una actividad de producto.
        PARAM IN PCRAMO        : C�digo del Ramo del producto
        PARAM IN PCMODALI      : C�digo de la Modalidad del producto
        PARAM IN PCTIPSEG      : C�digo del tipo de Seguro del producto
        PARAM IN PCCOLECT      : C�digo del la Colectividad del producto
        PARAM IN PSPRODUC      : C�digo del Identificador del producto
        PARAM IN PCACTIVI      : C�digo de la Actividad
        PARAM IN OUT PREACTIVI : Tipo T_IAX_PRODRECFRACCACTI, recargo de fraccionamiento, seg�n forma de pago,
                                 de una actividad
        PARAM IN OUT MENSAJES  : TIPO T_IAX_MENSAJES mensajes de error
        RETURN T_IAX_PRODRECFRACCACTI
   *************************************************************************/
   FUNCTION f_get_recactividad(
      pcramo IN NUMBER,
      pcmodali IN NUMBER,
      pctipseg IN NUMBER,
      pccolect IN NUMBER,
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN t_iax_prodrecfraccacti;

/*************************************************************************
        Funci�n que retorna un objeto con las preguntas definidas a nivel de una actividad de producto.
        PARAM IN PCRAMO      : C�digo del Ramo del producto
        PARAM IN PCMODALI    : C�digo de la Modalidad del producto
        PARAM IN PCTIPSEG    : C�digo del tipo de Seguro del producto
        PARAM IN PCCOLECT    : C�digo del la Colectividad del producto
        PARAM IN PSPRODUC    : C�digo del Identificador del producto
        PARAM IN PCACTIVI    : C�digo de la Actividad
        PARAM IN  PPREGACTIVI  : Tipo T_IAX_PRODPREGUNACTI, Preuntas definidas a nivel de actividad
        PARAM IN OUT MENSAJE : TIPO T_IAX_MENSAJES mensajes de error
        RETURN T_IAX_PRODPREGUNACTI
   *************************************************************************/
   FUNCTION f_get_pregactividad(
      pcramo IN NUMBER,
      pcmodali IN NUMBER,
      pctipseg IN NUMBER,
      pccolect IN NUMBER,
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN t_iax_prodpregunacti;

/*************************************************************************
        Funci�n que retorna un objeto con las actividades de un producto.
        PARAM IN PCRAMO       : C�digo del Ramo del producto
        PARAM IN PCMODALI     : C�digo de la Modalidad del producto
        PARAM IN PCTIPSEG     : C�digo del tipo de Seguro del producto
        PARAM IN PCCOLECT     : C�digo del la Colectividad del producto
        PARAM IN PSPRODUC     : C�digo del Identificador del producto
        PARAM IN PCACTIVI     : C�digo de la Actividad
        PARAM IN PPRODACTIVI  : Tipo T_IAX_PRODACTIVIDADES
        PARAM IN OUT MENSAJES : TIPO T_IAX_MENSAJES mensajes de error
        RETURN T_IAX_PRODPREGUNACTI
   *************************************************************************/
   FUNCTION f_get_actividades(
      pcramo IN NUMBER,
      pcmodali IN NUMBER,
      pctipseg IN NUMBER,
      pccolect IN NUMBER,
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN t_iax_prodactividades;

/*************************************************************************
        Funci�n que inserta datos de la forma de pago y recargo por actividad.
        PARAM IN PCRAMO       : C�digo del Ramo del producto
        PARAM IN PCMODALI     : C�digo de la Modalidad del producto
        PARAM IN PCTIPSEG     : C�digo del tipo de Seguro del producto
        PARAM IN PCCOLECT     : C�digo del la Colectividad del producto
        PARAM IN PSPRODUC     : C�digo del Identificador del producto
        PARAM IN PCACTIVI     : C�digo de la Actividad
        PARAM IN PCFORPAG     : C�digo de la forma de pago
        PARAM IN PPRECARG     : Porcentage del recargo
        PARAM IN OUT MENSAJES : TIPO T_IAX_MENSAJES mensajes de error
        RETURN NUMBER(0: operaci�n correcta sino num error)
   *************************************************************************/
   FUNCTION f_set_recactividad(
      pcramo IN NUMBER,
      pcmodali IN NUMBER,
      pctipseg IN NUMBER,
      pccolect IN NUMBER,
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      pcforpag IN NUMBER,
      pprecarg IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

/*************************************************************************
        Funci�n que se utiliza para comprobar si existen p�lizas de una actividad definida en un producto
        PARAM IN PSPRODUC     : C�digo del Identificador del producto
        PARAM IN PCACTIVI     : C�digo de la Actividad
        PARAM OUT NERROR      : C�digo de error
        PARAM IN OUT MENSAJES : TIPO T_IAX_MENSAJES mensajes de error
        RETURN NUMBER(0: operaci�n correcta sino num error)
   *************************************************************************/
   FUNCTION f_exist_actpol(psproduc IN NUMBER, pcactivi IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

/*************************************************************************
        Funci�n que inserta preguntas por producto y actividad.
        PARAM IN PCRAMO       : C�digo del Ramo del producto
        PARAM IN PCMODALI     : C�digo de la Modalidad del producto
        PARAM IN PCTIPSEG     : C�digo del tipo de Seguro del producto
        PARAM IN PCCOLECT     : C�digo del la Colectividad del producto
        PARAM IN PSPRODUC     : C�digo del Identificador del producto
        PARAM IN PCACTIVI     : C�digo de la Actividad
        PARAM IN PCPREGUN     : C�digo de pregunta
        PARAM IN PCPRETIP     : C�digo tipo de respuesta (manual,autom�tica) valor fijo: 787
        PARAM IN PNPREORD     : N�mero de orden en el que se pregunta
        PARAM IN PTPREFOR     : F�rmula para plantear la pregunta
        PARAM IN PCPREOBL     : Obligatorio (S�-1,No-0)
        PARAM IN PNPREIMP     : Orden de impresi�n
        PARAM IN PCRESDEF     : Respuesta por defecto
        PARAM IN PCOFERSN     : C�digo: Aparece en ofertas? (S�-1,No-0)
        PARAM IN PTVALOR      : F�rmula para validar la respuesta
        PARAM IN OUT MENSAJES : TIPO T_IAX_MENSAJES mensajes de error
        RETURN NUMBER(0: operaci�n correcta sino num error)
 *************************************************************************/
   FUNCTION f_set_pregactividad(
      pcramo IN NUMBER,
      pcmodali IN NUMBER,
      pctipseg IN NUMBER,
      pccolect IN NUMBER,
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      pcpregun IN NUMBER,
      pcpretip IN NUMBER,
      pnpreord IN NUMBER,
      ptprefor IN VARCHAR2,
      pcpreobl IN NUMBER,
      pnpreimp IN NUMBER,
      pcresdef IN NUMBER,
      pcofersn IN NUMBER,
      ptvalfor IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

/*************************************************************************
        Funci�n que se utiliza para borrar la actividad definida en un producto
        PARAM IN PSPRODUC     : C�digo del Identificador del producto
        PARAM IN PCACTIVI     : C�digo de la Actividad
        PARAM OUT NERROR      : C�digo de error
        PARAM IN OUT MENSAJES : TIPO T_IAX_MENSAJES mensajes de error
        RETURN NUMBER(0: operaci�n correcta sino num error)
   *************************************************************************/
   FUNCTION f_borrar_actividades(
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

    /**********************************************************************
         Funci�n que duplica actividad.
         PARAM IN PCRAMO       : C�digo del Ramo del producto
         PARAM IN PCMODALI     : C�digo de la Modalidad del producto
         PARAM IN PCTIPSEG     : C�digo del tipo de Seguro del producto
         PARAM IN PCCOLECT     : C�digo del la Colectividad del producto
         PARAM IN PSPRODUC     : C�digo del Identificador del producto
         PARAM IN PCACTIVI     : C�digo de la Actividad
         PARAM IN PCACTIVIC    : C�digo de la Actividad destino
         PARAM IN OUT MENSAJES : TIPO T_IAX_MENSAJES mensajes de error
         RETURN NUMBER         : C�digo de error (0: operaci�n correcta sino 1)
   **********************************************************************/
   FUNCTION f_duplicar_actividades(
      pcramo IN NUMBER,
      pcmodali IN NUMBER,
      pctipseg IN NUMBER,
      pccolect IN NUMBER,
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      pcactivic IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

/*****FI BUG8510-07/01/2008-XCG************************/

   /*************************************************************************
         Funci�n para asignar cl�usulas de beneficiario al producto
         PARAM IN PSPRODUC    : C�digo del Identificador del producto
         PARAM IN PSCLABEN    : C�digo de la clausula
         PARAM OUT MENSAJES   : Mensajes de error
         RETURN NUMBER        : C�digo de error (0: operaci�n correcta sino 1)

         Bug 10557   29/06/2009  AMC
   **********************************************************************/
   FUNCTION f_set_benefpro(psproduc IN NUMBER, psclaben IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
         Funci�n para asignar una cl�usula de beneficiario por defecto al producto
         PARAM IN PSPRODUC    : C�digo del Identificador del producto
         PARAM IN PSCLABEN    : C�digo de la clausula
         RETURN NUMBER        : C�digo de error (0: operaci�n correcta sino 1)

         Bug 10557   29/06/2009  AMC
   **********************************************************************/
   FUNCTION f_set_benefdefecto(
      psproduc IN NUMBER,
      psclaben IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
         Funci�n que retorna las cl�usulas de beneficirio no asignadas a un producto
         PARAM IN PSPRODUC    : C�digo del Identificador del producto
         PARAM OUT MENSAJES   : Mensajes de error
         RETURN NUMBER        : C�digo de error (0: operaci�n correcta sino 1)

         Bug 10557   29/06/2009  AMC
   **********************************************************************/
   FUNCTION f_get_benef_noasig(psproduc IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

     /*************************************************************************
         Funci�n que se utiliza para desasignar una cl�usula del producto
         PARAM IN PSPRODUC    : C�digo del Identificador del producto
         PARAM IN PSCLABEN    : C�digo de la clausula
         PARAM OUT PNERROR    : C�digo del error
         PARAM OUT MENSAJES   : Mensajes de error
         RETURN NUMBER        : C�digo de error (0: operaci�n correcta sino 1)

         Bug 10557   29/06/2009  AMC
   **********************************************************************/
   FUNCTION f_del_benefpro(
      psproduc IN NUMBER,
      psclaben IN NUMBER,
      pnerror OUT NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
         Funci�n que retorna las cl�usulas asignadas a un producto
         PARAM IN PSPRODUC    : C�digo del Identificador del producto
         PARAM OUT MENSAJES   : Mensajes de error
         RETURN T_IAX_PRODBENEFICIARIOS

         Bug 10557   29/06/2009  AMC
   **********************************************************************/
   FUNCTION f_get_benefpro(psproduc IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN t_iax_prodbeneficiarios;

   /*************************************************************************
          Funci�n que asigna una garantia a un producto
          PARAM IN PSPRODUC    : C�digo del Identificador del producto
          PARAM IN PCGARANT    : C�digo de la garantia
          PARAM IN PCACTIVI    : C�digo de la actividad
          PARAM IN PNORDEN     : Numero de orden
          PARAM IN PCTIPGAR    : C�digo de tipo de garantia
          PARAM IN PCTIPCAR    : C�digo de tipo de capital
          PARAM IN OUT MENSAJES   : Mensajes de error
          RETURN NUMBER

          Bug 14284   26/04/2010  AMC
    **********************************************************************/
   FUNCTION f_set_garantiaprod(
      psproduc IN NUMBER,
      pcgarant IN NUMBER,
      pcactivi IN NUMBER,
      pnorden IN NUMBER,
      pctipgar IN NUMBER,
      pctipcap IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
         Funci�n que devuelve la lista de parametro por garantia
         PARAM IN PCIDIOMA    : C�digo de idioma
         PARAM OUT MENSAJES   : Mensajes de error
         RETURN sys_refcursor

         Bug 14284   29/04/2010  AMC
   **********************************************************************/
   FUNCTION f_get_pargarantia(pcidioma IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /*************************************************************************
         Funci�n que retorna el tipo de respuesta y la lista de valores de un parametro
         PARAM IN PCPARGAR    : codigo del parametro
         PARAM IN PCIDIOMA    : C�digo del idioma
         PARAM OUT PCTIPO     : tipo de respuesta
         PARAM OUT PLISTRESP  : lista de posibles respuestas
         PARAM IN OUT MENSAJES   : Mensajes de error
         RETURN sys_refcursor

         Bug 14284   29/04/2010  AMC
   **********************************************************************/
   FUNCTION f_get_valpargarantia(
      pcpargar IN VARCHAR2,
      pcidioma IN NUMBER,
      pctipo OUT NUMBER,
      plistresp OUT sys_refcursor,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
      Inicializa los capitales
      param out          : mensajes de error
      return             : 0 todo ha sido correcto
                           1 ha habido un error

     Bug 14284 - 05/05/2010 - AMC
   *************************************************************************/
   FUNCTION f_inicializa_capitales(mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
      Inicializa las listas de capitales de una garantia
      param in psproduc  : codigo del producto
      param in pcgarant  : codigo de la garantia
      param in pcactivi  : codigo de la actividad
      param out          : mensajes de error
      return             : 0 todo ha sido correcto
                           1 ha habido un error

     Bug 14284 - 05/05/2010 - AMC
   *************************************************************************/
   FUNCTION f_inicializa_capital(
      psproduc IN NUMBER,
      pcgarant IN NUMBER,
      pcactivi IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
      Devuelve los capitales
      param out          : mensajes de error
      return             : 0 todo ha sido correcto
                           1 ha habido un error

     Bug 14284 - 05/05/2010 - AMC
   *************************************************************************/
   FUNCTION f_get_obj_capitales(mensajes OUT t_iax_mensajes)
      RETURN t_iax_prodgaranprocap;

   /*************************************************************************
      Inserta un nuevo capital
      param in picapital  : importe del capital
      param in pcdefecto  : importe por defecto 0-No/1-Si
      param out          : mensajes de error
      return             : 0 todo ha sido correcto
                           1 ha habido un error

     Bug 14284 - 05/05/2010 - AMC
   *************************************************************************/
   FUNCTION f_set_obj_capital(picapital NUMBER, pcdefecto NUMBER, mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
      Baja la lista de capitales a BB.DD
      param in psproduc  : codigo del producto
      param in pcgarant  : codigo de la garantia
      param in pcactivi  : codigo de la actividad
      param out          : mensajes de error
      return             : 0 todo ha sido correcto
                           1 ha habido un error

     Bug 14284 - 05/05/2010 - AMC
   *************************************************************************/
   FUNCTION f_set_capitales(
      psproduc IN NUMBER,
      pcgarant IN NUMBER,
      pcactivi IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
      Elimina un capital
      param in pnorden : orden del capital
      param out          : mensajes de error
      return             : 0 todo ha sido correcto
                           1 ha habido un error

     Bug 14284 - 06/05/2010 - AMC
    *************************************************************************/
   FUNCTION f_del_obj_capital(pnorden NUMBER, mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
      Sube o baja un posici�n un capital
      param in pnorden : orden del capital
      param in pmodo   : modo de ordenacion
      param out        : mensajes de error
      return           : 0 todo ha sido correcto
                         1 ha habido un error

     Bug 14284 - 06/05/2010 - AMC
    *************************************************************************/
   FUNCTION f_ordenar_obj_capital(pnorden NUMBER, pmodo VARCHAR2, mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
         Funci�n que actualiza los datos generales de la garantia
         param in psproduc  : codigo del producto
         param in pcgarant  : codigo de la garantia
         param in pcactivi  : codigo de la actividad
         param in pnorden   : numero de orden
         param in pctipgar  : codigo tipo de garantia
         param in pctipcap  : codigo tipo de capital
         param in pcgardep  : codigo garantia dependiente
         param in pcpardep  : codigo parametro dependiente
         param in pcvalpar  : valor parametro dependiente
         param in pctarjet
         param in pcbasica
         param in picapmax  : importe capital maximo
         param in pccapmax  : codigo capital maximo
         param in pcformul  : codigo de formula
         param in pcclacap  :
         param in picaprev  : capital de revision
         param in ppcapdep  :
         param in piprimin  : prima minima
         param in piprimax  : capital maximo
         param in picapmin  : capital minimo
         param in out mensajes : mensajes de error
         RETURN number

         Bug 14284   07/05/2010  AMC
   **********************************************************************/
   FUNCTION f_set_datosgen(
      psproduc IN NUMBER,
      pcgarant IN NUMBER,
      pcactivi IN NUMBER,
      pnorden IN NUMBER,
      pctipgar IN NUMBER,
      pctipcap IN NUMBER,
      pcgardep IN NUMBER,
      pcpardep IN VARCHAR2,
      pcvalpar IN NUMBER,
      pctarjet IN NUMBER,
      pcbasica IN NUMBER,
      picapmax IN NUMBER,
      pccapmax IN NUMBER,
      pcformul IN NUMBER,
      pcclacap IN NUMBER,
      picaprev IN NUMBER,
      ppcapdep IN NUMBER,
      piprimin IN NUMBER,
      piprimax IN NUMBER,
      pccapmin IN NUMBER,
      picapmin IN NUMBER,
      pcclamin IN NUMBER,
      pcmoncap IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /**********************************************************************
         Funci�n que borrar una garantia asignada a un producto
         param in psproduc  : codigo del producto
         param in pcgarant  : codigo de la garantia
         param in pcactivi  : c�digo de la actividad
         param in mensajes  : mensajes de error
         RETURN number

         Bug 14723 -  25/05/2010 - AMC
   **********************************************************************/
   FUNCTION f_del_garantia(
      psproduc IN NUMBER,
      pcgarant IN NUMBER,
      pcactivi IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
         Funci�n que actualiza los datos generales de la garantia
         param in psproduc  : codigo del producto
         param in pcgarant  : codigo de la garantia
         param in pcactivi  : codigo de la actividad
         param in pciedmic  : Ind. si se valida la 0-edad actuarial 1-edad real. Edad Min. Ctnr.
         param in pnedamic  : Edad m�nima de contrataci�n
         param in pciedmac  : Ind. si se valida la 0-edad actuarial 1-edad real. Edad Max. Ctnr.
         param in pnedamac, : Edad m�xima de contrataci�n
         param in pciedmar  : Ind. si se valida la 0-edad actuarial 1-edad real. Edad Max. Renov.
         param in pnedamar  : Edad m�xima de renovaci�n
         param in pciemi2c  : Ind. si se valida la 0-edad actuarial 1-edad real. Cuando se informa Edad Min. Ctnr. 2�Asegurado
         param in pnedmi2c, : Edad Min. Ctnr. 2�Asegurado
         param in pciema2c, : Ind. si se valida la 0-edad actuarial 1-edad real. Cuando se informa Edad Max. Ctnr. 2�Asegurado
         param in pnedma2c  : Edad Max. Ctnr. 2�Asegurado
         param in pciema2r  : Ind. si se valida la 0-edad actuarial 1-edad real. Cuando se informa Edad Max. Renov. 2�Asegurado
         param in pnedma2r  : Edad Max. Renov. 2�Asegurado
         param in pcreaseg
         param in pcrevali  : Tipo de revalorizaci�n
         param in pctiptar  : Tipo de tarifa (lista de valores)
         param in pcmodrev  : Se puede modificar la revalorizaci�n
         param in pcrecarg  : Se puede a�adir un recargo
         param in pcdtocom  : Admite descuento comercial
         param in pctecnic
         param in pcofersn
         param in pcextrap  : Se puede modificar la extraprima
         param in pcderreg
         param in pprevali  : Porcentaje de revalorizaci�n
         param in pirevali  : Importe de revalorizaci�n
         param in pcrecfra
         param in pctarman
         param in pnedamrv : Edad m�xima de revalorizaci�n
         param in pciedmrv : Ind. si se valida la 0-edad actuarial 1-edad real. Edad Max. Revalorizaci�n
         param out mensajes : mensajes de error
         RETURN number

         Bug 14748   04/06/2010  AMC
   **********************************************************************/
   FUNCTION f_set_datosges(
      psproduc IN NUMBER,
      pcgarant IN NUMBER,
      pcactivi IN NUMBER,
      pciedmic IN NUMBER,
      pnedamic IN NUMBER,
      pciedmac IN NUMBER,
      pnedamac IN NUMBER,
      pciedmar IN NUMBER,
      pnedamar IN NUMBER,
      pciemi2c IN NUMBER,
      pnedmi2c IN NUMBER,
      pciema2c IN NUMBER,
      pnedma2c IN NUMBER,
      pciema2r IN NUMBER,
      pnedma2r IN NUMBER,
      pcreaseg IN NUMBER,
      pcrevali IN NUMBER,
      pctiptar IN NUMBER,
      pcmodrev IN NUMBER,
      pcrecarg IN NUMBER,
      pcdtocom IN NUMBER,
      pctecnic IN NUMBER,
      pcofersn IN NUMBER,
      pcextrap IN NUMBER,
      pcderreg IN NUMBER,
      pprevali IN NUMBER,
      pirevali IN NUMBER,
      pcrecfra IN NUMBER,
      pctarman IN NUMBER,
      pnedamrv IN NUMBER,
      pciedmrv IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
       Recupera las garantias que peden ser incompatibles
       param in psproduc     : c�digo del producto
       param in pcactivi     : c�digo de la actividad
       param in pcgarant     : c�digo de la garantia
       param in out mensajes   : mensajes de error
       RETURN sys_refcursor

       -- Bug 15023 - 16/06/2010 - AMC
    *************************************************************************/
   FUNCTION f_get_lstgarincompatibles(
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      pcgarant IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /*************************************************************************
         Funci�n que inserta en incompgaran
         PARAM IN PSPRODUC     : codigo del producto
         PARAM IN PCGARANT    : codigo de la garantia
         PARAM IN PCGARANT    : codigo de la garantia incompatible
         PARAM IN PCACTIVI    : codigo de la actividad
         PARAM OUT MENSAJES   : mensajes de error

         RETURN NUMBER

         Bug 15023   16/06/2010  AMC
   **********************************************************************/
   FUNCTION f_set_incompagar(
      psproduc IN NUMBER,
      pcgarant IN NUMBER,
      pcgarinc IN NUMBER,
      pcactivi IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
         Funci�n que borra de incompgaran
         PARAM IN PSPRODUC     : codigo del producto
         PARAM IN PCGARANT    : codigo de la garantia
         PARAM IN PCGARANT    : codigo de la garantia incompatible
         PARAM IN PCACTIVI    : codigo de la actividad
         PARAM OUT MENSAJES   : mensajes de error

         RETURN NUMBER

         Bug 15023   16/06/2010  AMC
   **********************************************************************/
   FUNCTION f_del_incompagar(
      psproduc IN NUMBER,
      pcgarant IN NUMBER,
      pcgarinc IN NUMBER,
      pcactivi IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
         Funci�n que actualiza los datos tecnicos de la garantia
         param in psproduc  : codigo del producto
         param in pcgarant  : codigo de la garantia
         param in pcactivi  : codigo de la actividad
         param in pcramdgs  : c�digo del ramo de la dgs
         param in pctabla   : c�digo de la tabla de mortalidad
         param in precseg   : % recargo de seguridad
         param in nparben   : participaci�n en beneficios
         param in cprovis   : Tipo de provision
         param out mensajes   : mensajes de error

         RETURN number

         Bug 15148 - 21/06/2010 - AMC
   **********************************************************************/
   FUNCTION f_set_datostec(
      psproduc IN NUMBER,
      pcgarant IN NUMBER,
      pcactivi IN NUMBER,
      pcramdgs IN NUMBER,
      pctabla IN NUMBER,
      pprecseg IN NUMBER,
      pnparben IN NUMBER,
      pcprovis IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
      Borra la formula de una garantia
      param in psproduc    : c�digo del producto
      param in pcactivi    : c�digo de la actividad
      param in pcgarant    : c�digo de la garant�a
      param in pccampo     : c�digo del campo
      param in pclave      : clave f�rmula
      param out mensajes   : mensajes de error
      return               : 0 si ha ido bien
                            numero error si ha ido mal

      Bug 15149 - 29/06/2010 - AMC
   *************************************************************************/
   FUNCTION f_del_prodgarformulas(
      psproduc IN NUMBER,
      pcactivi IN NUMBER,
      pcgarant IN NUMBER,
      pccampo IN VARCHAR2,
      pclave IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
         Inserta un nuevo producto en la tabla PRODUCTOS
         param in pcramo    : codigo del ramo
         param in pcmodali  : codigo de la modalidad
         param in pctipseg  : codigo del tipo de seguro
         param in pccolect  : codigo de colectividad
         param in pcagrpro  : codigo agrupacion de producto
         param in pttitulo  : titulo del producto
         param in ptrotulo  : abreviacion del titulo
         param in pcsubpro  : codigo de subtipo de producto
         param in pctipreb  : recibo por.
         param in pctipges  : gestion del seguro
         param in pctippag  : cobro
         param in pcduraci  : codigo de la duraci�n
         param in pctarman  : tarificacion puede ser manual
         param in pctipefe  : tipo de efecto
         param out psproduct_out  : codigo del producto insertado
         param out mensajes  : mensajes de error

         Bug 15513 - 23/07/2010 - PFA
   *************************************************************************/
   FUNCTION f_alta_producto(
      pcramo IN NUMBER,
      pcmodali IN NUMBER,
      pctipseg IN NUMBER,
      pccolect IN NUMBER,
      pcagrpro IN NUMBER,
      pttitulo IN VARCHAR2,
      ptrotulo IN VARCHAR2,
      pcsubpro IN NUMBER,
      pctipreb IN NUMBER,
      pctipges IN NUMBER,
      pctippag IN NUMBER,
      pcduraci IN NUMBER,
      pctarman IN NUMBER,
      pctipefe IN NUMBER,
      psproduc_copy IN NUMBER,
      pparproductos IN NUMBER,
      psproduc_out OUT NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

/*************************************************************************
      Recupera el objeto con la informaci�n del producto
      actividades
      param in psproduc  : c�digo producto
      param out mensajes : mensajes de error
   *************************************************************************/
   FUNCTION f_get_activid(psproduc IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN t_iax_prodactividades;

   /*************************************************************************
         Funci�n que retorna els documentos d'un producte
         param in psproduc  : codigo del producto

         RETURN sys_refcursor

         Bug 14284   29/04/2010  AMC
   **********************************************************************/
   FUNCTION f_get_documentos(psproduc IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /*************************************************************************
            Funci�n que retorna las duraciones de cobro de un producto
            param in psproduc  : codigo del producto

            RETURN t_iax_durcobroprod

            Bug 22253   17/05/2012   MDS
      **********************************************************************/
   FUNCTION f_get_durcobroprod(psproduc IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN t_iax_durcobroprod;

   /**************************************************************************
     Assigna un pla de pensi� per un producte. Si existe, lo actualiza
     param in psproduc     : Codigo del producto
     param in pccodpla    : Codigo del plan de pensi�n
   **************************************************************************/
   FUNCTION f_set_planpension(
      psproduc IN NUMBER,
      pccodpla IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
         Funci�n que busca en la tabla int_codigos_emp
         PARAM IN CCODIGO     : codigo de la interfaz
         PARAM IN CVALAXIS    : valor del campo en axis
         PARAM IN CVALEMP    : valor del campo en la empresa
         PARAM OUT MENSAJES   : mensajes de error

         RETURN NUMBER

         Bug 15023   01/11/2013  LPP
   **********************************************************************/
   FUNCTION f_get_interficie(
      pccodigo IN VARCHAR2,
      pcvalaxis IN VARCHAR2,
      pcvalemp IN VARCHAR2,
      mensajes IN OUT t_iax_mensajes)
      RETURN t_iax_interficies;

   /*************************************************************************
         Funci�n que mantiene la tabla int_codigos_emp
         PARAM IN CCODIGO     : codigo de la interfaz
         PARAM IN CVALAXIS    : valor del campo en axis
         PARAM IN CVALEMP    : valor del campo en la empresa
         PARAM IN CVALDEF    : valor del campo en axis, por si cvalaxis tiene mas de un valor
         PARAM IN CVALAXISDEF : valor del campo en la empresa, por si cvalaxisdef tiene mas de un valor
         PARAM OUT MENSAJES   : mensajes de error

         RETURN NUMBER

         Bug 15023   01/11/2013  LPP
   **********************************************************************/
   FUNCTION f_set_interficie(
      pccodigo IN VARCHAR2,
      pcvalaxis IN VARCHAR2,
      pcvalemp IN VARCHAR2,
      pcvaldef IN VARCHAR2,
      pcvalaxisdef IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
         Funci�n que borra de la tabla int_codigos_emp
         PARAM IN CCODIGO     : codigo de la interfaz
         PARAM IN CVALAXIS    : valor del campo en axis
         PARAM OUT MENSAJES   : mensajes de error

         RETURN NUMBER

         Bug 15023   01/11/2013  LPP
   **********************************************************************/
   FUNCTION f_del_interficie(
      pccodigo IN VARCHAR2,
      pcvalaxis IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;
END pac_iax_mntprod;

/

  GRANT EXECUTE ON "AXIS"."PAC_IAX_MNTPROD" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_MNTPROD" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_MNTPROD" TO "PROGRAMADORESCSI";
