create or replace PACKAGE "PAC_MD_PRODUCCION" AS

/*****************************************************************************************************************

   NOMBRE:      PAC_MD_PRODUCCION
   PROP�SITO:   Funciones para la producci�n en segunda capa

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        27/12/2007   JAS               1. Creaci�n del package.
   2.0        30/01/2007   ACC               2. Reorganizar package
   3.0        04/03/2009   DRA               3. 0009296: IAX - Implementar el circuit de recobrament de rebuts en l'emissi� de p�lisses pendents d'emetre
   4.0        12/02/2009   RSC               4. Preguntas semiautom�ticas
   5.0        27/02/2009   RSC               5. Adaptaci�n iAxis a productos colectivos con certificados
   6.0        11/03/2009   RSC               6. An�lisis adaptaci�n productos indexados
   7.0        01/04/2009   SBG               7. S'afegeix par�metre p_filtroprod a funci� f_consultapoliza
   8.0        13-08-2009:  XPL               8. 0010093, se a�ade el cramo, consulta polizas
   9.0        01-09-2009:  XPL               9. 11008, CRE - Afegir camps de cerca en la pantalla de selecci� de certificat 0.
   10.0       28/01/2010   MRB              10. 11408 PSU (Pol�tica de Subscripci�).
   11.0       28/01/2010   DRA              11. 0010464: CRE - L'anul�laci� de propostes pendents d'emetre no tira enderrera correctament el moviment anul�lat.
   12.0       24/03/2010   JRH              12. 0012136: CEM - RVI - Verificaci�n productos RVI
   13.0       12/05/2010   AMC              13. Bug 14443 - Se a�ade la funci�n f_get_domicili_prenedor
   14.0       26/05/2010   DRA              14. 0011288: CRE - Modificaci�n de propuestas retenidas
   15.0       01/06/2010   DRA              15. 0014754: CRE800- Edici�n propuesta suplemento p�liza 2005407
   16.0       10/06/2010   RSC              16. 0013832: APRS015 - suplemento de aportaciones �nicas
   17.0       05/08/2010   VCL              17. 15468: GRC - B�squeda de p�lizas. A�adir N� Solicitud
   18.0       22/11/2010   APD              18. 16768: APR - Implementaci�n y parametrizaci�n del producto GROUPLIFE (II)
   19.0       24/01/2010   JMP              19. 0017341: APR703 - Suplemento de preguntas - FlexiLife
   20.0       14/04/2011   DRA              20. 0018024: CRT - Parametrizar comision de seguro
   21.0       26/04/2011   JMC              20. 0016730: CRT902 - Aplicar visibilidad oficina en consultas masivas
   22.0       29/04/2011   ICV              22. 0017950: CRT003 - Alta rapida poliza correduria (simplificar campos)
   23.0       15/07/2011   JTS              23. 0018926: MSGV003- Activar el suplement de canvi de forma de pagament
   24.0       13/09/2011   DRA              24. 0018682: AGM102 - Producto SobrePrecio- Definici�n y Parametrizaci�n
   25.0       21/11/2011   JMC              24. 0019303: LCOL_T003-Analisis Polissa saldada/prorrogada. LCOL_TEC_ProductosBrechas04
   26.0       03/01/2012   JMF              26. 0020761 LCOL_A001- Quotes targetes
   27.0       09/01/2012   DRA              27. 0020498: LCOL_T001-LCOL - UAT - TEC - Beneficiaris de la p?lissa
   28.0       01/03/2012   DRA              28. 0021467: AGM- Quitar en la descripci�n de riesgos el plan y al final se muestran caracteres raros
   29.0       23/04/2011   MDS              29. 0021907: MDP - TEC - Descuentos y recargos (t�cnico y comercial) a nivel de p�liza/riesgo/garant�a
   30.0       18/07/2012   MDS              30. 0022824: LCOL_T010-Duplicado de propuestas
   31.0       31/07/2012   FPG              31. 0023075: LCOL_T010-Figura del pagador
   32.0       01/10/2012   DRA              32. 0022839: LCOL_T010-LCOL - Funcionalidad Certificado 0
   33.0       30/10/2012   MDS              33. 0022839: LCOL_T010-LCOL - Funcionalidad Certificado 0
   34.0       25/10/2012   DRA              34. 0023853: LCOL - PRIMAS M"IMAS PACTADAS POR P?IZA Y POR COBRO
   35.0       05/12/2012   APD              35. 0024278: LCOL_T010 - Suplementos diferidos - Cartera - colectivos
   36.0       20/12/2012   MDS              36. 0024717: (POSPG600)-Parametrizacion-Tecnico-Descripcion en listas Tipos Beneficiarios RV - Cambiar descripcion en listas Tipos Beneficiar
   37.0       07/02/2013   JDS              37. 0025583: LCOL - Revision incidencias qtracker (IV)
   38.0       21/02/2013   ECP              38. 0026070: LCOL_T010-LCOL - Revision incidencias qtracker (V). Nota 138777
   39.0       28/02/2013   ECP              39. 0026070: LCOL_T010-LCOL - Revision incidencias qtracker (V). Nota  139391
   40.0       04/03/2013   AEG              40. 0024685: (POSDE600)-Desarrollo-GAPS Tecnico-Id 5 -- N?mero de p?liza manual
   41.0       06/09/2013   DCT              41. 0027923  LCOL_F3BTEC-MTF3B - LCOL_TEC23 - Definici?n de condiciones en Certificado
   42.0       14/04/2014   FAL              42. 0029965: RSA702 - GAPS renovaci�n
   43.0       02/10/2015   KJSC             43. 0036507: Funcion apunte retencion cuando salte una PSU
   44.0       11/04/2016   JMT              44. 0026373: ENSA998-Envio Automatico de email para os contribuintes
   45.0       16/06/2016   VCG              45. AMA-187-Realizar el desarrollo del GAP 114
   46.0       27/02/2019   ACL    			TCS_827 Se agrega la funci�n f_consultapoliza_contrag.
   47.0       19/03/2019   CJMR             47. IAXIS-3194: Adici�n de nuevos campo de b�squeda
   48.0       22/03/2019   CJMR             48. IAXIS-3195: Adici�n de nuevos campo de b�squeda
   49.0       02/04/2019   SGM              49. INI BUG 3324  Interacci�n del Rango DIAN con la p�liza (No. Certificado)
   50.0       03/01/2020   ECP              50. IAXIS-3504. Pantallas gesti�n Suplementos   
*******************************************************************************/

   /*************************************************************************
      Crea los objetos necesarios
      param in out dtPoliza : objeto detalle poliza
      param in out gestion  : objeto gesti�n
      param in out mensajes : mensajes de error
   *************************************************************************/

	PROCEDURE inicializaobjetos(
			 dtpoliza	IN	OUT OB_IAX_DETPOLIZA,
			 gestion	IN	OUT OB_IAX_GESTION,
			 mensajes	IN	OUT T_IAX_MENSAJES
	);

   /*************************************************************************
	Traspasa una propuesta (de alta o suplemento) de las tablas EST a las tablas REALES
	param in pssolicit  : N�mero de propuesta
	param out           : mensajes de error
	return              : 0 todo correcto
	1 ha habido un error
	*************************************************************************/
	FUNCTION f_traspasarpropuesta(
			 pssolicit	IN	NUMBER,
			 pnmovimi	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /*************************************************************************
	Retiende una propuesta (de alta o suplemento).
	param in pssolicit  : N�mero de propuesta
	param out           : mensajes de error
	return              : 0 todo correcto
	1 ha habido un error
	*************************************************************************/
	FUNCTION f_retenerpropuesta(
			 pssolicit	IN	NUMBER,
			 pnmovimi	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /*************************************************************************
	Establece la fecha de efecto de la p�liz en funci�n de la parametrizaci�n
	del producto y de la fecha de efecto de la p�liza
	param in psproduc    : c�digo del producto
	param in out pfefecto: fecha de efecto del producto
	param in out mensajes: mensajes de error
	return               : 0 todo correcto
	1 ha habido un error
	*************************************************************************/
	FUNCTION f_set_calc_fefecto(
			 psproduc	IN	NUMBER,
			 pfefecto	IN	OUT DATE,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /*************************************************************************
	Establece la fecha de vencimiento y la duraci�n de la p�liza, si estuvieran
	informados los datos no hace nada
	param in pgest  : datos de gesti�n
	param out       : mensajes de error
	return          : 0 todo correcto
	1 ha habido un error
	*************************************************************************/
	FUNCTION f_set_calc_vencim_nduraci(
			 pgest	IN	OUT OB_IAX_GESTION,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /*************************************************************************
	Funci�n que calcula la fecha de vencimiento y la duraci�n seg�n la
	parametrizaci�n del producto y los valores iniciales.
	Si s�lo llega duraci�n: calcula la fecha de vencimiento
	Si s�lo llega fecha de vencimiento: calcula la duraci�n
	Si no llega ni duraci�n ni fecha de vencimiento calcula la duraci�n
	m�nima y m�xima y la correspondiente fecha de vencimiento
	param in psproduc     : c�digo del producto
	param in pfnacimi     : fecha nacimiento
	param in pfefecto     : fecha efecto
	param in pcduraci     : c�digo de duraci�n
	param in out pnduraci : duraci�
	param in out pfvencim : fecha vencimiento
	return                : 0 todo correcto
	1 ha habido un error
	*************************************************************************/
	  /* FUNCTION F_Calc_Fvencim_Nduraci (psproduc IN NUMBER, pfnacimi IN DATE,
	pfefecto IN DATE, pcduraci IN NUMBER,
	pnduraci IN OUT NUMBER,
	pfvencim IN OUT DATE,
	mensajes IN OUT T_IAX_MENSAJES)
	RETURN NUMBER;

	/***********************************************************************
	Cobro de un recibo
	param in pctipcob  : tipo cobro VF 552
	param in pnrecibo  : n�mero de recibo
	param in pcbancar  : cuenta bancaria
	param in pctipban  : tipo cuenta bancaria
	param out mensajes : mensajes de error
	return             : O todo correcto
	1 ha habido un error
	***********************************************************************/
	FUNCTION f_set_cobrorec(
			 psseguro	IN	NUMBER,
			 pnmovimi	IN	NUMBER,
			 pctipcob	IN	NUMBER,
			 pctipban	IN	NUMBER,
			 pcbancar	IN	VARCHAR2,
			 pterror	OUT	VARCHAR2,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /***********************************************************************
	Establece las garantias del producto para insertalas en el riesgo
	param in out gars : objeto garantias
	param in pnmovimi : n�mero de movimiento
	param in out mensajes : mensajes error
	param in pnriesgo : numero de riesgo
	return             : O todo correcto
	1 ha habido un error
	***********************************************************************/
	  -- Bug 26662 - APD - 16/04/2013 - se a�ade el pnriesgo a la funcion
	FUNCTION p_set_garanprod(
			 gars	IN	OUT T_IAX_GARANTIAS,
			 pnmovimi	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES,
			 pnriesgo	IN	NUMBER DEFAULT 1
	)   RETURN NUMBER;

   -- INI BUG CONF-1243 QT_724 - 23/01/2018 - Grabar datos de fechas para Vigencia Amparos (SUPLEMENTO 918)
   /***********************************************************************
   Busca el finiefe de la p�liza (garantias)
   param in psseguro  : n�mero seguro
   param in out mensajes : mensajes error
   return                : 0 todo correcto
   1 ha habido un error
   ***********************************************************************/
   FUNCTION f_get_finiefe(psseguro  IN SEGUROS.SSEGURO%TYPE,
                          mensajes  IN OUT t_iax_mensajes) RETURN DATE;
   -- FIN BUG CONF-1243 QT_724
	  /***********************************************************************
	Busca el cobrador bancario
	param in detPoliza    : objeto detalle poliza
	param in out gest     : objeto gesti�n
	param in out mensajes : mensajes error
	return                : 0 todo correcto
	1 ha habido un error
	***********************************************************************/
	FUNCTION f_get_cobban(
			 detpoliza	IN	OB_IAX_DETPOLIZA,
			 gest	IN	OUT OB_IAX_GESTION,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /*************************************************************************
	Recupera las cuentas corrientes del primer tomador
	param in psperson  : c�digo personas
	param in psseguro  : n�mero seguro
	param out mensajes : mensajes de error
	return             : ref cursor
	*************************************************************************/
	FUNCTION f_get_tomadorccc(
			 psperson	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES,
			 psseguro	IN	NUMBER DEFAULT NULL,
			 pmandato	IN	VARCHAR2 DEFAULT NULL
	)   RETURN SYS_REFCURSOR;

	  /*************************************************************************
	Tarifica el riesgo
	param in pmode     : modo de tarificaci�n
	param in psolicit  : c�digo de solicitud
	param in pnriesgo  : n�mero de riesgo
	param in pnmovimi  : n�mero de movimiento
	param in pfefecto  : fecha efecto
	param out mensajes : mensajes de error
	return             : 0 todo correcto
	1 ha habido un error o codigo error
	*************************************************************************/
	FUNCTION f_tarifar_riesgo_tot(
			 pmode	IN	VARCHAR2,
			 psolicit	IN	NUMBER,
			 pnriesgo	IN	NUMBER,
			 pnmovimi	IN	NUMBER,
			 pfefecto	IN	DATE,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /*************************************************************************
	Traspasamos los registros de las tablas EST a las REALES
	param in psolicit  : n�mero solicitud
	param in pfefecto  : fecha efecto
	param out mensajes : mensajes de error
	return             : 0 todo correcto
	1 ha habido un error o codigo error
	*************************************************************************/
	FUNCTION traspaso_tablas_est(
			 psolicit	IN	NUMBER,
			 pfefecto	IN	DATE,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /*************************************************************************
	Emite la propuesta
	param in psolicit  : n�mero solicitud
	param out pnmovimi : n�mero movimiento
	param out mensajes : mensajes de error
	return             : 0 todo correcto
	1 ha habido un error o codigo error
	*************************************************************************/
	FUNCTION f_emitir_propuesta(
			 psolicit	IN	NUMBER,
			 onpoliza	OUT	NUMBER,
			 osseguro	OUT	NUMBER,
			 onmovimi	OUT	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES,
			 pcommit NUMBER DEFAULT 1, -- Bug 26070 --ECP -- 21/02/2013
             pvsseguro  IN       NUMBER DEFAULT null -- Ini IAXIS-3504 --ECP -- 03/02/2010

	)
	  RETURN NUMBER;

	  /*************************************************************************
	Antes de emitir la propuesta debe pasar por una serie de controles para saber
	la propuesta debe quedar retenida o no. Dicha funci�n realiza dichos controles,
	dejando la p�liza retenida si corresponde.
	param in psolicit   : n�mero de solicitud
	param in pnmovimi   : n�mero de movimiento
	param out mensajes  : mensajes de error
	return              : 0 todo correcto
	1 ha habido un error o codigo error
	*************************************************************************/
	FUNCTION f_control_emision(
			 psolicit	IN	NUMBER,
			 pnmovimi	IN	NUMBER,
			 ocreteni	OUT	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /*************************************************************************
	Borrar registros en las tablas est
	param in psolicit   : n�mero de solicitud
	param out mensajes  : mensajes de error
	return              : 0 todo correcto
	1 ha habido un error o codigo error
	*************************************************************************/
	PROCEDURE borrar_tablas_est(
			 psolicit	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	);

   /************************************************************************
	FI EMISIO
	************************************************************************/
	  /************************************************************************
	INICI CONSULTA
	************************************************************************/
	  -- BUG 9017 - 01/04/2009 - SBG - S'afegeix par�metre p_filtroprod
	  /*************************************************************************
	Devuelve las p�lizas que cumplan con el criterio de selecci�n
	param in psproduc     : c�digo de producto
	param in pnpoliza     : n�mero de p�liza
	param in pncert       : n�mero de cerificado por defecto 0
	param in pnnumide     : n�mero identidad persona
	param in psnip        : n�mero identificador externo
	param in pbuscar      : nombre+apellidos a buscar de la persona
	param in ptipopersona : tipo de persona
	1 tomador
	2 asegurado
	param in p_filtroprod : Tipo de productos requeridos:
	'TF'         ---> Contratables des de Front-Office
	'REEMB'      ---> Productos de salud
	'APOR_EXTRA' ---> Con aportaciones extra
	'SIMUL'      ---> Que puedan tener simulaci�n
	'RESCA'      ---> Que puedan tener rescates
	'SINIS'      ---> Que puedan tener siniestros
	null         ---> Todos los productos
	param out mensajes    : mensajes de error
	return                : ref cursor
	*************************************************************************/
	  --13-08-2009:  XPL BUG 0010093, se a�ade el cramo, consulta polizas
	FUNCTION f_consultapoliza(
			 pramo	IN	NUMBER,
			 psproduc	IN	NUMBER,
			 pnpoliza	IN	NUMBER,
			 pncert	IN	NUMBER DEFAULT -1,
			 pnnumide	IN	VARCHAR2,
			 psnip	IN	VARCHAR2,
			 pbuscar	IN	VARCHAR2,
			 pnsolici	IN	NUMBER, --bug15468 05/08/2010 VCL A�adir camp n�mero solicitud
			 ptipopersona	IN	NUMBER,
			 pcagente	IN	NUMBER, --BUG 11313 - JTS - 29/10/2009
			 pcmatric	IN	VARCHAR2, --BUG19605:LCF:25/02/2010
			 pcpostal	IN	VARCHAR2, --BUG19605:LCF:25/02/2010
			 ptdomici	IN	VARCHAR2, --BUG19605:LCF:25/02/2010
			 ptnatrie	IN	VARCHAR2, --BUG19605:LCF:25/02/2010
			 pcsituac	IN	NUMBER, --BUG19605:LCF:19/02/2010
			 p_filtroprod	IN	VARCHAR2,
			 pcpolcia	IN	VARCHAR2, -- BUG 14585 - PFA - Anadir campo poliza compania
			 pccompani	IN	NUMBER, -- BUG 17160 - JBN - Anadir campo compani
			 pcactivi	IN	NUMBER, -- BUG18024:DRA:14/04/2011
			 pcestsupl	IN	NUMBER, -- BUG18024:DRA:14/04/2011
			 pnpolrelacionada	IN	NUMBER,
			 pnpolini	IN	VARCHAR2, --BUG19715:XPL:06/12/2011
			 mensajes	IN	OUT T_IAX_MENSAJES,
			 pfilage	IN	NUMBER DEFAULT 1, --BUG 16739: JMC : 26/04/2011
			 pcsucursal	IN	NUMBER DEFAULT NULL, -- Bug 22839/126886 - 29/10/2012 - AMC
			 pcadm	IN	NUMBER DEFAULT NULL, -- Bug 22839/126886 - 29/10/2012 - AMC
			 pcmotor	IN	VARCHAR2 DEFAULT NULL, -- Bug 25177/133016 - 07/01/2013 - AMC
			 pcchasis	IN	VARCHAR2 DEFAULT NULL, -- Bug 25177/133016 - 07/01/2013 - AMC
			 pnbastid	IN	VARCHAR2 DEFAULT NULL, -- Bug 25177/133016 - 07/01/2013 - AMC
			 pcmodo	IN	NUMBER DEFAULT NULL, -- Bug 27766 10/12/2013
             pncontrato     IN VARCHAR2 DEFAULT NULL, -- AP CONF - 219
             pfemiini       IN DATE DEFAULT NULL,       -- CJMR 22/03/2019 IAXIS-3195
             pfemifin       IN DATE DEFAULT NULL,       -- CJMR 22/03/2019 IAXIS-3195
             pfefeini       IN DATE DEFAULT NULL,       -- CJMR 22/03/2019 IAXIS-3195
             pfefefin       IN DATE DEFAULT NULL,       -- CJMR 22/03/2019 IAXIS-3195
             pcusuari       IN VARCHAR2 DEFAULT NULL,   -- CJMR 22/03/2019 IAXIS-3195
             pnnumidease    IN VARCHAR2 DEFAULT NULL,   -- CJMR 22/03/2019 IAXIS-3195
             pbuscarase     IN VARCHAR2 DEFAULT NULL    -- CJMR 22/03/2019 IAXIS-3195
    )
	  RETURN SYS_REFCURSOR;

	  -- FINAL BUG 9017 - 01/04/2009 - SBG
	  /*************************************************************************
	Recupera informaci�n para el objeto poliza
	param in sseguro    : n�mero de seguro
	param in pmode      : mode con el que recuperar informaci�n
	poram out pnmovimi  : n�mero de movimiento
	param out pproducto : c�digo de producto
	param out pagente   : c�digo de agente
	param out pempresa  : c�digo empresa
	param out pfEfecto  : fecha efecto
	param out pfVencim  : fecha vencimiento
	param out mensajes  : mensajes de error
	return              : 0 todo correcto
	1 ha habido un error
	*************************************************************************/
	FUNCTION f_set_consultapoliza(
			 psseguro	IN	NUMBER,
			 pmode	IN	VARCHAR2,
			 pnmovimi	OUT	NUMBER,
			 pproducto	OUT	NUMBER,
			 pagente	OUT	NUMBER,
			 pempresa	OUT	NUMBER,
			 pfefecto	OUT	DATE,
			 pfvencim	OUT	DATE,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /***********************************************************************
	Recupera los recibos de la p�liza
	param in psolicit  : n�mero de solicitud
	param out mensajes : mensajes de error
	return             : objeto detalle de la poliza
	***********************************************************************/
	FUNCTION f_get_recibos(
			 psolicit	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN T_IAX_DETRECIBO;

	  /***********************************************************************
	Recupera los movimientos de la p�liza
	param in psolicit  : n�mero de solicitud
	param out mensajes : mensajes de error
	return             : ref cursor
	***********************************************************************/
	FUNCTION f_get_mvtpoliza(
			 psolicit	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN SYS_REFCURSOR;

	  /*************************************************************************
	Llena el objeto el o los motivos de retenci�n de polizas con la informaci�n
	de la p�liza seleccionada y movimiento. Si el movimiento es informado con un NULO, retorna
	todos los motivos de retenci�n de la p�liza.
	param in psseguro  : c�digo de p�liza
	param in pnmovimi  : n�mero del movimiento de la p�liza
	param out mensajes : mensajes de error
	return             : objeto motivos retenci�n p�liza
	*************************************************************************/
	FUNCTION f_get_motretenmov(
			 psseguro	IN	seguros.sseguro%TYPE,
			 pnmovimi	IN	motretencion.nmovimi%TYPE,
			 mensajes	OUT	T_IAX_MENSAJES
	)   RETURN T_IAX_POLMVTRETEN;

	  /***********************************************************************
	Recupera los documentos asociados a un determinado movimiento de la p�liza
	param in psseguro   : n�mero del seguro
	param in pnmovimi   : n�mero del movimiento
	param out mensajes  : mensajes de error
	return              : ref cursor
	***********************************************************************/
	FUNCTION f_get_docmvtpoliza(
			 psseguro	IN	NUMBER,
			 pnmovimi	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN SYS_REFCURSOR;

	  /************************************************************************
	FI CONSULTA
	************************************************************************/
	  /************************************************************************
	RETENCI�N P�LIZAS
	************************************************************************/
	  /*************************************************************************
	Llena el objeto retenci�n polizas con la informaci�n de las retenidas
	param in psproduc  : c�digo de producto
	param in pnpoliza  : n�mero de p�liza
	param in pnsolici  : n�mero de solicitud
	param in pncertif  : n�mero de certificado
	param in pnnumide  : n�mero de identificaci�n persona
	param in psnip     : identificador externo de persona DEFAULT NULL
	param in pnombre   : texto a buscar como tomador
	param in pcreteni  : situaci�n de la p�liza
	param out mensajes : mensajes de error
	return             : 0 todo correcto
	1 ha habido un error
	*************************************************************************/
	FUNCTION f_get_polizasreten(
			 pcagente	IN	NUMBER,
			 pramo	IN	NUMBER,
			 psproduc	IN	NUMBER,
			 pnpoliza	IN	NUMBER,
			 pnsolici	IN	NUMBER,
			 pncertif	IN	NUMBER DEFAULT -1,
			 pnnumide	IN	VARCHAR2,
			 psnip	IN	VARCHAR2 DEFAULT NULL,
			 pnombre	IN	VARCHAR2,
			 pcreteni	IN	NUMBER,
			 pcmatric	IN	VARCHAR2, --BUG19605:LCF:19/02/2010
			 pcpostal	IN	VARCHAR2, --BUG19605:LCF:19/02/2010
			 ptdomici	IN	VARCHAR2, --BUG19605:LCF:19/02/2010
			 ptnatrie	IN	VARCHAR2, --BUG19605:LCF:19/02/2010
			 p_filtroprod	IN	VARCHAR2,
			 mensajes	IN	OUT T_IAX_MENSAJES,
			 pcsucursal	IN	NUMBER DEFAULT NULL, -- Bug 22839/126886 - 29/10/2012 - AMC
			 pcadm	IN	NUMBER DEFAULT NULL, -- Bug 22839/126886 - 29/10/2012 - AMC
			 pcmotor	IN	VARCHAR2 DEFAULT NULL, -- Bug 25177/133016 - 28/12/2012 - AMC
			 pcchasis	IN	VARCHAR2 DEFAULT NULL, -- Bug 25177/133016 - 28/12/2012 - AMC
			 pnbastid	IN	VARCHAR2 DEFAULT NULL, -- Bug 25177/133016 - 28/12/2012 - AMC
			 pcpolcia	IN	VARCHAR2 DEFAULT NULL, -- Bug 0029965 - 14/04/2014 - FAL
			 pfretend	IN	DATE DEFAULT NULL, -- Bug 0029965 - 14/04/2014 - FAL
			 pfretenh     IN DATE DEFAULT NULL, -- Bug 0029965 - 14/04/2014 - FAL
			 pcactivi     IN NUMBER DEFAULT NULL,    -- CJMR 19/03/2019 IAXIS-3194
			 pnnumidease  IN VARCHAR2 DEFAULT NULL,  -- CJMR 19/03/2019 IAXIS-3194
			 pnombrease   IN VARCHAR2 DEFAULT NULL)  -- CJMR 19/03/2019 IAXIS-3194
	  RETURN T_IAX_POLIZASRETEN;

	  /*************************************************************************
	Valida si se puede anular una propuesta de p�liza retenida
	param in psseguro  : c�digo de p�liza
	param in pnmovimi  : numero de movimiento
	param in pcreteni  : propuesta retenida
	param out mensajes : mensajes de error
	return             : 0 -> No se puede anular la propuesta
	1 -> Si se permite anular la propuesta
	*************************************************************************/
	FUNCTION f_permite_anularpropuesta(
			 psseguro	IN	NUMBER,
			 pnmovimi	IN	NUMBER, -- BUG10464:DRA:16/06/2009
			 pcreteni	IN	NUMBER,
			 mensajes	OUT	T_IAX_MENSAJES
	)
	  RETURN NUMBER;

	  /*************************************************************************
	Anula la propuesta de p�liza retenida
	param in psseguro  : c�digo de p�liza
	param in pnsuplem  : Contador del n�mero de suplementos
	param in pcmotmov  : c�digo motivo de movimiento
	param in ptobserva : observaciones
	param out mensajes : mensajes de error
	return             : 0 todo correcto
	1 ha habido errores
	*************************************************************************/
	FUNCTION f_anularpropuesta(
			 psseguro	IN	NUMBER,
			 pnsuplem	IN	NUMBER,
			 pcmotmov	IN	NUMBER,
			 ptobserva	IN	VARCHAR2,
			 mensajes	OUT	T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /*************************************************************************
	Emitir la propuesta de p�liza retenida
	param in  psseguro : c�digo de p�liza
	param in  pnmovimi : n�mero de movimiento
	param out onpoliza : n�mero de p�lissa assignat a la proposta emessa
	param out mensajes : mensajes de error
	return             : 0 todo correcto
	1 ha habido errores
	*************************************************************************/
	FUNCTION f_emitirpropuesta(
			 psseguro	IN	NUMBER,
			 pnmovimi	IN	NUMBER,
			 onpoliza	OUT	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES,
			 psproces	IN	NUMBER DEFAULT NULL) -- BUG23853:DRA:08/11/2012
	  RETURN NUMBER;

	  /*************************************************************************
	Editar la propuesta de p�liza retenida
	param in  psseguro : c�digo de p�liza
	param out osseguro : c�digo de la poliza a editar
	param in  pcestpol : Estado de la p�liza en el momento de la edicion
	param out mensajes : mensajes de error
	return             : 0 todo correcto
	1 ha habido errores
	*************************************************************************/
	FUNCTION f_editarpropuesta(
			 psseguro	IN	NUMBER,
			 osseguro	OUT	NUMBER,
			 onmovimi	OUT	NUMBER, -- BUG14754:DRA:01/06/2010
			 pcestpol	IN	VARCHAR2, -- BUG11288:DRA:19/10/2009
			 mensajes	IN	OUT T_IAX_MENSAJES
	)
	  RETURN NUMBER;

	  --JRH 03/2008
	  /*************************************************************************
	Acciones post tarificaci�n
	(para ello se debe guardar toda la informaci�n a la base de datos)
	param in nriesgo   : n�mero de riesgo
	param out mensajes : mensajes de error
	return             : 0 todo correcto
	1 ha habido un error
	*************************************************************************/
	FUNCTION f_accionposttarif(
			 tablas	IN	VARCHAR2,
			 vsolicit	IN	NUMBER,
			 nriesgo	IN	NUMBER,
			 vnmovimi	IN	NUMBER,
			 mensajes	OUT	T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /*************************************************************************
	C�lculo fecha renovaci�n seg�n producto y fecha efecto/fecha actual
	param in psproduc  : n�mero de riesgo
	param in pfecha    : fecha efecto (por defecto fecha actual)
	param in dtPoliza  : objeto detalle p�liza
	param out mensajes : mensajes de error
	return             : 0 = todo correcto
	1 = ha habido un error
	*************************************************************************/
	FUNCTION f_calcula_nrenova(
			 psproduc	IN	NUMBER,
			 pfecha	IN	DATE DEFAULT f_sysdate,
			 dtpoliza	IN	OUT OB_IAX_DETPOLIZA,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /*************************************************************************
	Nos indica si hay garant�a con revalorizci�n diferente que la de la p�liza
	param in psseguro  : P�liza
	param in pnriesgo    : n�mero de riesgo
	param out mensajes : mensajes de error
	return             : 0 = Si las garant�as tienen igual revalorizaci�n
	1 = Si alguna garant�a tiene diferente revalorizaci�n
	*************************************************************************/
	FUNCTION f_gar_reval_dif(
			 psseguro	IN	NUMBER,
			 pnriesgo	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /***********************************************************************
	Establece las preguntas asignadas a las garantias del producto para insertalas en el riesgo
	param in out pregs : objeto preguntas
	param in pnmovimi : n�mero de movimiento
	param in out mensajes : mensajes error
	return             : O todo correcto
	1 ha habido un error
	***********************************************************************/
	FUNCTION p_set_garanpregunprod(
			 pregs	IN	OUT T_IAX_PREGUNTAS,
			 pcgarant	IN	NUMBER,
			 pnmovimi	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /***********************************************************************
	Borra de la tabla est_per_personas y de esttomadores las personas que toca al
	cancelar una simulaci�n.
	param in pnmovimi : psseguro de la simulaci�n.
	param in out mensajes : mensajes error
	return             : O todo correcto
	1 ha habido un error
	***********************************************************************/
	FUNCTION f_get_personsimul(
			 psseguro	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /***********************************************************************
	Borra de la tabla estgaranseg las garantias que tocan al cancelar una
	simulaci�n.
	param in pnmovimi : psseguro de la simulaci�n.
	param in out mensajes : mensajes error
	return             : O todo correcto
	1 ha habido un error
	***********************************************************************/
	FUNCTION f_borra_datos_prod_simul(
			 psseguro	IN	NUMBER,
			 pnmovimi	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /***********************************************************************
	Recupera los recibos de la p�liza
	param in psolicit  : n�mero de solicitud
	param out mensajes : mensajes de error
	return             : objeto detalle de la poliza
	***********************************************************************/
	FUNCTION f_cobro_recibos(
			 psolicit	IN	NUMBER,
			 pnmovimi	IN	NUMBER,
			 pctipcob	IN	NUMBER,
			 pctipban	IN	NUMBER,
			 pcbancar	IN	VARCHAR2,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /***********************************************************************
	Recupera la fecha de revisi�n de la p�liza
	param in psproduc  : c�digo del producto
	pnduraci  : duraci�n de la p�liza
	pndurper  : duraci�n del per�odo
	pfefecto  : fecha de efecto
	param out  pfrevisio : fecha de revisi�n de la p�liza
	mensajes : mensajes de error
	return             : number
	***********************************************************************/
	FUNCTION f_get_frevisio(
			 psproduc	IN	NUMBER,
			 pnduraci	IN	NUMBER,
			 pndurper	IN	NUMBER,
			 pfefecto	IN	DATE,
			 pfrevisio	OUT	DATE,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /***********************************************************************
	Recupera agente
	param in psperson  : c�digo de la persona
	param out pcagente : codigo agente
	mensajes : mensajes de error
	return             : number
	***********************************************************************/
	FUNCTION f_busca_agente_poliza(
			 psperson	IN	NUMBER,
			 pcagente	OUT	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /***********************************************************************
	Devuelve el valor de la revalorizaci�n de una p�liza.
	param in ptablas   : Tablas ('EST' - temporales, 'SEG' - reales, 'SOL' - solicitudes)
	param in psseguro  : N�mero interno de seguro
	param out prevali  : Porcentaje o valor de revalorizaci�n
	param out pcrevali : Tipo de revalorizaci�n
	mensajes : mensajes de error
	return             : number
	***********************************************************************/
	FUNCTION f_get_reval_poliza(
			 ptablas	IN	VARCHAR2 DEFAULT 'SEG',
			 psseguro	IN	NUMBER,
			 prevali	OUT	NUMBER,
			 pcrevali	OUT	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  --ACC 13122008
	  /*************************************************************************
	Inicialitza la p�lissa amb la parametritzaci�n del producte
	en cas de estar en mode consulta/suplement
	param in out dtPoliza : objeto detalle poliza
	param in out mensajes : mensajes de error
	*************************************************************************/
	PROCEDURE inicializaobjetosproduct(
			 dtpoliza	IN	OUT OB_IAX_DETPOLIZA,
			 mensajes	IN	OUT T_IAX_MENSAJES
	);

   --ACC 13122008
	  ---------------------------------------------------------------------------
	  -- Mantis 7919.#6.i.12/2008
	  ---------------------------------------------------------------------------
	FUNCTION f_set_calc_ndurcob(
			 psproduc	IN	productos.sproduc%TYPE,
			 pgest	IN	OUT OB_IAX_GESTION,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /***********************************************************************
	Devuelve un objeto con los datos de gesti�n de una p�liza.
	param in psseguro  : N�mero interno de seguro
	param in ptablas   : Tablas ('EST' - temporales, 'SEG' - reales, 'SOL' - solicitudes)
	param out mensajes : mensajes de error
	return             : ob_iax_poliza
	***********************************************************************/
	FUNCTION f_get_datos_cobro(
			 psseguro	IN	NUMBER,
			 ptablas	IN	VARCHAR2 DEFAULT 'SEG',
			 mensajes	OUT	T_IAX_MENSAJES
	)   RETURN OB_IAX_GESTION;

	  /*************************************************************************
	Establece las preguntas asignadas al producto para insertalas en la poliza
	param in pnmovimi  :    c�digo de movimiento
	param in pfefecto  :    fecha de efecto
	param in out ppoliza :    Objeto p�liza E/S
	return             :    NUMBER
	*************************************************************************/
	  -- Bug 9109 - 12/02/2009 - RSC - APR: Preguntas semiautom�ticas
	FUNCTION f_grabar_semiautomatpol(
			 pnmovimi	IN	NUMBER,
			 pfefecto	IN	DATE,
			 ppoliza	IN	OUT OB_IAX_POLIZA,
			 mensajes	OUT	T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /*************************************************************************
	Establece las preguntas asignadas al producto para insertalas en la poliza
	param in pnmovimi  :    c�digo de movimiento
	param in pfefecto  :    fecha de efecto
	param in out ppoliza :    Objeto p�liza E/S
	param in out preg :    Preguntas de la p�liza E/S
	param in out mensajes : mensajes de error
	param in pnriesgo  :    Identificador de riesgo tratado
	param in pcgarant  :    Identificador de garant�a tratada
	return             :    NUMBER
	*************************************************************************/
	  -- Bug 9109 - 12/02/2009 - RSC - APR: Preguntas semiautom�ticas
	FUNCTION f_grabar_semiautomatriesgo(
			 pnmovimi	IN	NUMBER,
			 pfefecto	IN	DATE,
			 ppoliza	IN	OUT OB_IAX_POLIZA,
			 preg	IN	OUT T_IAX_PREGUNTAS,
			 mensajes	OUT	T_IAX_MENSAJES,
			 pnriesgo	IN	NUMBER,
			 pcgarant	IN	NUMBER
	)   RETURN NUMBER;

	  /*************************************************************************
	Establece las preguntas asignadas al producto para insertalas en la poliza
	param in pnmovimi  :    c�digo de movimiento
	param in out pregs :    mensajes de error
	param in out mensajes : mensajes de error
	return             :    NUMBER
	*************************************************************************/
	  -- Bug 9109 - 12/02/2009 - RSC - APR: Preguntas semiautom�ticas
	FUNCTION p_set_pregunprod(
			 pnmovimi	IN	NUMBER,
			 pregs	IN	OUT T_IAX_PREGUNTAS,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /*************************************************************************
	Establece las preguntas asignadas al producto para insertalas en la poliza
	param in pnmovimi  :    c�digo de movimiento
	param in out pregs :    mensajes de error
	param in out mensajes : mensajes de error
	return             :    NUMBER
	*************************************************************************/
	  -- Bug 9109 - 12/02/2009 - RSC - APR: Preguntas semiautom�ticas
	FUNCTION p_set_pregunriesgos(
			 pnmovimi	IN	NUMBER,
			 pregs	IN	OUT T_IAX_PREGUNTAS,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /*************************************************************************
	Recupera las p�lizas de colectivos con certificado cero para el producto indicado
	param in psproduc  : c�digo de producto
	param in pnpoliza  : num. poliza
	param in pbuscar  : texto a buscar por nombre de tomador
	param out mensajes : mensajes de error
	return             : ref cursor
	*************************************************************************/
	FUNCTION f_get_certificadoscero(
			 psproduc	IN	NUMBER,
			 pnpoliza	IN	NUMBER, --BUG11008-01092009-XPL
			 pnsolici	IN	NUMBER, -- Bug 34409/196980 - 16/04/2015 - POS
			 pbuscar	IN	VARCHAR2, --BUG11008-01092009-XPL,
			 pcintermed	IN	NUMBER, --BUG22839/125740:DCT:21/10/2012
			 pcsucursal	IN	NUMBER, --BUG22839/125740:DCT:21/10/2012
			 pcadm	IN	NUMBER, --BUG22839/125740:DCT:21/10/2012
			 mensajes	IN	OUT T_IAX_MENSAJES,
			 pmodo	IN	VARCHAR2 DEFAULT NULL -- Bug 30360/174025 - 09/05/2014 - AMC

	)
	  RETURN VARCHAR2;

	  /*************************************************************************
	Obtiene datos gestion del certificado 0
	param out mensajes : mensajes de error
	return             : objeto datos gestion
	*************************************************************************/
	  -- Bug 8745 - 27/02/2009 - RSC - Adaptaci�n iAxis a productos colectivos con certificados
	FUNCTION f_get_datosgestion(
			 ppoliza	IN	OB_IAX_DETPOLIZA,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN OB_IAX_DETPOLIZA;

	  /*************************************************************************
	Graba en el objeto poliza la distribuci�n seleccionada
	param in pcmodelo  : C�digo de modelo de inversi�n
	param in ppoliza   : Objeto p�liza
	param out mensajes : mensajes de error
	return             : number
	*************************************************************************/
	  -- Bug 9031 - 11/03/2009 - RSC - AXIS: An�lisis adaptaci�n productos indexados
	FUNCTION f_grabar_modeloinvulk(
			 pcmodelo	IN	NUMBER,
			 ppoliza	IN	OUT OB_IAX_POLIZA,
			 mensajes	OUT	T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /*************************************************************************
	Obtiene info de si una garant�a est� o no contratada
	param in psseguro : identificador de seguro
	param in pcgarant : identificador de garant�a
	param out mensajes : mensajes de error
	return             : objeto datos gestion
	*************************************************************************/
	  -- Bug 11735 - RSC - 19/01/2010 - APR - suplemento de modificaci�n de capital /prima
	FUNCTION f_get_contagar(
			 psseguro	IN	NUMBER,
			 pcgarant	IN	NUMBER
	)   RETURN NUMBER;

	  -- Bug 12136 - 24/03/2010 - JRH - 0012136: CEM - RVI - Verificaci�n productos RVI
	  /*************************************************************************
	Establece el valor del pdoscab
	informados los datos no hace nada
	param in pgest  : datos de gesti�n
	param out       : mensajes de error
	return          : 0 todo correcto
	1 ha habido un error
	*************************************************************************/
	FUNCTION f_set_pctrev(
			 pgest	IN	OUT OB_IAX_GESTION,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  -- Fi Bug 12136 - 24/03/2010 - JRH
	  /*************************************************************************
	Recupera la direccion del tomador
	param in ptomador
	param out  psitriesgo
	param out mensajes  : mensajes de error
	return              : 0 todo correcto
	1 ha habido un error
	Bug 14443 - 12/05/2010 - AMC
	*************************************************************************/
	FUNCTION f_get_domicili_prenedor(
			 ptomador	IN	T_IAX_TOMADORES,
			 psitriesgo	OUT	OB_IAX_SITRIESGOS,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /*************************************************************************
	Determina si debe o no debe grabar objeto de tarificaci�n
	param in pcmotmov
	param in out mensajes  : mensajes de error
	return                 : 0 todo correcto
	1 ha habido un error
	*************************************************************************/
	  -- Bug 13832 - RSC - 10/06/2010 -  APRS015 - suplemento de aportaciones �nicas
	FUNCTION f_bloqueo_grabarobjectodb(
			 psseguro	IN	NUMBER,
			 pcmotmov	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  -- Fin Bug 13832
	  /*************************************************************************
	Borrar registros en las tablas est que dependen de la actividad que seleccionemos
	param in psolicit   : n�mero de solicitud
	param in pnmovimi   : n�mero de movimiento
	param in pnriesgo   : n�mero de riesgo
	param in pcobjase   : tipo de riesgo
	param in ppmode   : Modo EST/POL
	param in out mensajes  : mensajes de error
	return              : 0 todo correcto
	1 ha habido un error o codigo error
	*************************************************************************/
	PROCEDURE p_limpiar_tablas(
			 psolicit	IN	NUMBER,
			 pnriesgo	IN	NUMBER,
			 pnmovimi	IN	NUMBER,
			 pcobjase	IN	NUMBER,
			 ppmode	IN	VARCHAR2,
			 mensajes	IN	OUT T_IAX_MENSAJES
	);

   -- Bug 16768 - APD - 22-11-2010 - se crea la funcion f_get_agentecol
	  /***************************************************************************
	FUNCTION f_get_agentecol
	Dado un numero de poliza, obtenemos el codigo del agente de su certificado 0
	param in  pnpoliza:  numero de la p�liza.
	return:              NUMBER.
	***************************************************************************/
	FUNCTION f_get_agentecol(
			 pnpoliza	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  -- Fin Bug 16768 - APD - 22-11-2010
	  -- Bug 16768 - APD - 22-11-2010 - se crea la funcion f_get_cforpagcol
	  /***************************************************************************
	FUNCTION f_get_cforpagcol
	Dado un numero de poliza, obtenemos la forma de pago de su certificado 0
	param in  pnpoliza:  numero de la p�liza.
	return:              NUMBER.
	***************************************************************************/
	FUNCTION f_get_cforpagcol(
			 pnpoliza	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  -- Fin Bug 16768 - APD - 22-11-2010
	  /*************************************************************************
	FUNCTION f_grabargar_modifdb
	Determina si debe o no debe grabar el objeto garant�as a BDD para el
	motivo de movimiento indicado.
	param in psseguro      : c�digo del seguro
	param in pcmotmov      : motivo de movimiento
	param in out mensajes  : mensajes de error
	return                 : 0 no grabar el objeto
	1 grabar el objeto
	*************************************************************************/
	  -- Bug 17341 - 24/01/2011 - JMP - Se crea la funci�n
	FUNCTION f_grabargar_modifdb(
			 psseguro	IN	NUMBER,
			 pcmotmov	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /*************************************************************************
	FUNCTION f_url_prodexterno
	Obtiene una url
	param in pproducto     : codigo producto
	param in ptipo         : tipo
	param in pidpoliza     : idpoliza
	param in out mensajes  : mensajes de error
	return                 : URL
	*************************************************************************/
	  -- Bug 18058 - 28/03/2011 - JTS - Se crea la funci�n
	FUNCTION f_url_prodexterno(
			 pproducto	IN	NUMBER,
			 ptipo	IN	VARCHAR2,
			 pidpoliza	IN	VARCHAR2,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN VARCHAR2;

	  /*************************************************************************
	Recupera datos del riesgo por defecto
	param in pcempres
	param in pcobjase
	param in psproduc
	param in pcactivi
	param out psperson
	param out psperson
	param out  ptdomici
	param out  pcpais
	param out  pcprovin
	param out  pcpoblac
	param out  pcpostal
	param out  ptnatrie
	param out mensajes  : mensajes de error
	return              : 0 todo correcto
	1 si ha habido un error
	Bug 17950 - 28/04/2011 - ICV
	*************************************************************************/
	FUNCTION f_get_riesgo_defecto(
			 pcempres	IN	NUMBER,
			 pcobjase	IN	NUMBER,
			 psproduc	IN	NUMBER,
			 pcactivi	IN	NUMBER,
			 psperson	OUT	NUMBER,
			 ptdomici	OUT	VARCHAR2,
			 pcpais	OUT	NUMBER,
			 pcprovin	OUT	NUMBER,
			 pcpoblac	OUT	NUMBER,
			 pcpostal	OUT	VARCHAR2,
			 ptnatrie	OUT	VARCHAR2,
			 pcversion	OUT	VARCHAR2,
			 pcmodelo	OUT	VARCHAR2,
			 pcmarca	OUT	VARCHAR2,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /*************************************************************************
	Emite la propuesta
	param in psolicit  : número solicitud
	param out mensajes : mensajes de error
	return             : 0 todo correcto
	1 ha habido un error o codigo error
	--BUG18926 - JTS - 15/07/2011
	*************************************************************************/
	FUNCTION f_emitir(
			 psseguro	IN	NUMBER,
			 pnmovimi	IN	NUMBER,
			 pissuplem	IN	BOOLEAN,
			 onpoliza	OUT	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES,
			 psproces	IN	NUMBER DEFAULT NULL,
			 pcommit NUMBER DEFAULT 1 -- Bug 26070 - ECP- 21/02/2013
			 ) -- BUG23853:DRA:08/11/2012
	  RETURN NUMBER;

	  /*************************************************************************
	F_LEEDOCREQUERIDA
	Devuelve un objeto T_IAX_DOCREQUERIDA con la documentaci򬋊      requerida para los parଥtros informados.
	param in psproduc                : c򣨧o de producto
	param in psseguro                : n� secuencial de seguro
	param in pcactivi                : c򣨧o de actividad
	param in pnmovimi                : n� de movimiento
	param in pcidioma                : c򣨧o de idioma
	param in out mensajes            : mensajes de error
	return                           : el objeto T_IAX_DOCREQUERIDA
	BUG 18351 - 10/05/2011 - JMP - Se crea la funci򬋊   *************************************************************************/
	FUNCTION f_leedocrequerida(
			 psproduc	IN	NUMBER,
			 psseguro	IN	NUMBER,
			 pcactivi	IN	NUMBER,
			 pnmovimi	IN	NUMBER,
			 pcidioma	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN T_IAX_DOCREQUERIDA;

	  -- BUG21467:DRA:01/03/2012:Inici
	FUNCTION f_get_datos_host(
			 datpol	IN	OB_IAX_INT_DATOS_POLIZA,
			 pregpol	IN	T_IAX_INT_PREG_POLIZA,
			 v_query1	OUT	VARCHAR2, -- INT_DATOS_POLIZA
			 v_query2	OUT	VARCHAR2, -- INT_DATOS_PREGPOL
			 v_query3	OUT	VARCHAR2, -- INT_DATOS_RIESGOS
			 v_query4	OUT	VARCHAR2, -- INT_DATOS_PREGRIE
			 mensajes	IN	OUT T_IAX_MENSAJES
	)
	  RETURN NUMBER;

	  -- BUG21467:DRA:01/03/2012:Fi
	  /*************************************************************************
	Valida si se puede anular una propuesta de póliza retenida
	param in psseguro  : código de póliza
	param in pnmovimi  : numero de movimiento
	param in pcreteni  : propuesta retenida
	param out mensajes : mensajes de error
	return             : 0 -> No se puede anular la propuesta
	1 -> Si se permite anular la propuesta
	*************************************************************************/
	FUNCTION f_crear_facul(
			 psseguro	IN	NUMBER,
			 pnmovimi	IN	NUMBER, -- BUG10464:DRA:16/06/2009
			 pcreteni	IN	NUMBER,
			 mensajes	OUT	T_IAX_MENSAJES
	)
	  RETURN NUMBER;

	  --Ini Bug.: 19152
	  /*************************************************************************
	Funci�n que inicializa el objeto de BENEIDENTIFICADOS riesgo
	param in pnriesgo  : n�mero de riesgo
	param in psperson  : C�digo de personas
	param out mensajes : mensajes de error
	return             : number
	*************************************************************************/
	FUNCTION f_insert_beneident_r(
			 benef	IN	OB_IAX_BENESPECIALES,
			 psperson	IN	NUMBER,
			 pfefecto	IN	DATE,
       psseguro IN  NUMBER,
			 pnorden	OUT	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN T_IAX_BENEIDENTIFICADOS;

	  /*************************************************************************
	Funci�n que para actualizar el objeto OB_IAX_BENEIDENTIFICADOS riesgo
	param in pnriesgo  : n�mero de riesgo
	param in pnorden  : orden dentro del objeto
	param in psperson_tit :
	param in pctipben :
	param in pcparen:
	param in ppparticip :
	param out mensajes : mensajes de error
	return             : number
	*************************************************************************/
	FUNCTION f_set_beneident_r(
			 benef	IN	OB_IAX_BENESPECIALES,
			 pnorden	IN	NUMBER,
			 psperson_tit	IN	NUMBER,
			 pctipben	IN	NUMBER,
			 pcparen	IN	NUMBER,
			 ppparticip	IN	NUMBER,
			 pcestado	IN	NUMBER, -- Bug 24717 - MDS - 20/12/2012 : A�adir campo cestado
			 pctipcon	IN	NUMBER, -- Bug 34866/206821 - JAL - 10/06/2015
       psseguro IN  NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)
	  RETURN T_IAX_BENEIDENTIFICADOS;

	  /*************************************************************************
	Funci�n que inicializa el objeto de OB_iax_benespeciales_gar
	param in pnriesgo  : n�mero de riesgo
	param in pcgarant  : C�digo de garant�a
	param out mensajes : mensajes de error
	return             : number
	*************************************************************************/
	FUNCTION f_insert_benesp_gar(
			 benef	IN	OB_IAX_BENESPECIALES,
			 pcgarant	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN T_IAX_BENESPECIALES_GAR;

	  /*************************************************************************
	Funci�n que inicializa el objeto de OB_iax_beneidentificados Garant�a
	param in pnriesgo  : n�mero de riesgo
	param in pcgarant  : C�digo de garant�a
	param in psperson  : C�digo de persona
	param out mensajes : mensajes de error
	return             : number
	*************************************************************************/
	FUNCTION f_insert_beneident_g(
			 benef	IN	OB_IAX_BENESPECIALES,
			 pfefecto	IN	DATE,
			 pcgarant	IN	NUMBER,
			 psperson	IN	NUMBER,
       psseguro IN  NUMBER,
			 pnorden	OUT	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN T_IAX_BENESPECIALES_GAR;

	  /*************************************************************************
	Funci�n que para actualizar el objeto OB_IAX_BENEIDENTIFICADOS garant�a
	param in pnriesgo  : n�mero de riesgo
	param in pnorden  : orden dentro del objeto
	param in psperson_tit :
	param in pctipben :
	param in pcparen:
	param in ppparticip :
	param in pcgarant
	param out mensajes : mensajes de error
	return             : number
	*************************************************************************/
	FUNCTION f_set_beneident_g(
			 benef	IN	OB_IAX_BENESPECIALES,
			 pnorden	IN	NUMBER,
			 psperson_tit	IN	NUMBER,
			 pctipben	IN	NUMBER,
			 pcparen	IN	NUMBER,
			 ppparticip	IN	NUMBER,
			 pcgarant	IN	NUMBER,
			 pcestado	IN	NUMBER, -- Bug 24717 - MDS - 20/12/2012 : A�adir campo cestado
			 pctipcon	IN	NUMBER, -- Bug 34866/206821 - JAL - 10/06/2015
			 mensajes	IN	OUT T_IAX_MENSAJES
	)
	  RETURN T_IAX_BENESPECIALES_GAR;

	  /*************************************************************************
	Funci�n que devuelve una lista de garant�as seleccionadas para beneficiario
	param in psseguro  : n�mero de seguro
	param out mensajes : mensajes de error
	return             : sys_refcursor
	*************************************************************************/
	FUNCTION f_get_garantias_benidgar(
			 psseguro	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN SYS_REFCURSOR;

	  /*************************************************************************
	Funci�n que comprueba que la garant�a este seleccionada en caso de beneficiario especial por garant�a, si no lo est� la borra
	param in psseguro  : n�mero de seguro
	param out mensajes : mensajes de error
	return             : number
	*************************************************************************/
	FUNCTION f_comprobar_benidgar(
			 psseguro	IN	NUMBER,
			 pnriesgo	IN	NUMBER,
			 pcgarant	IN	NUMBER,
			 benefesp_gar	IN	OUT T_IAX_BENESPECIALES_GAR,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  -- Ini bug 19303 - JMC - 21/11/2011
	  /*************************************************************************
	FUNCTION f_crearpropuesta_sp
	Funci�n que generara una p�liza del producto SALDAR o PRORROGAR, tomando
	los datos de una p�liza origen
	psseguro in number: c�digo del seguro origen
	piprima_np in number:
	picapfall_np in number: capital fallecimiento de la nueva p�liza
	pfvencim_np in date: fecha vencimiento de la nueva p�liza
	pmode in number: Modo
	pfecha in date: fecha efecto nueva p�liza.
	psolicit out number: N�mero solicitud.
	purl out varchar2:
	pmensa in out varchar2: mensajes de error.
	return number: retorno de la funci�n f_crearpropuesta_sp
	*************************************************************************/
	FUNCTION f_crearpropuesta_sp(
			 psseguro	IN	NUMBER,
			 piprima_np	IN	NUMBER,
			 picapfall_np	IN	NUMBER,
			 pfvencim_np	IN	DATE,
			 pmode	IN	VARCHAR2,
			 pfecha	IN	DATE,
			 pssolicit	OUT	NUMBER,
			 purl	OUT	VARCHAR2,
			 pmensa	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  -- Fi bug 19303 - JMC - 21/11/2011
	  /***************************************************************************
	-- BUG 0020761 - 03/01/2012 - JMF
	Dado tipo cuenta nos dice si es tarjeta o no.
	param in  pctipban:  numero de la p�liza.
	return: NUMBER (0=No, 1=Si).
	***************************************************************************/
	FUNCTION f_get_tarjeta(
			 pctipban	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  -- BUG20498:DRA:09/01/2012:Inici
	FUNCTION f_grabapreguntasclausula(
			 psseguro	IN	NUMBER,
			 pnmovimi	IN	NUMBER,
			 pfefecto	IN	DATE,
			 ptablas	IN	VARCHAR2,
			 preg	IN	OUT T_IAX_PREGUNTAS,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  -- BUG20498:DRA:09/01/2012:Fi
	  --  Ini Bug 21907 - MDS - 23/04/2012
	  /***********************************************************************
	Devuelve los valores de descuentos y recargos de un riesgo
	param in ptablas   : Tablas ('EST' - temporales, 'SEG' - reales)
	param in psseguro  : Numero interno de seguro
	param in pnriesgo  : Numero interno de riesgo
	param out pdtocom  : Porcentaje descuento comercial
	param out precarg  : Porcentaje recargo t�cnico
	param out pdtotec  : Porcentaje descuento t�cnico
	param out preccom  : Porcentaje recargo comercial
	mensajes : mensajes de error
	return             : number
	***********************************************************************/
	FUNCTION f_get_dtorec_riesgo(
			 ptablas	IN	VARCHAR2 DEFAULT 'EST',
			 psseguro	IN	NUMBER,
			 pnriesgo	IN	NUMBER,
			 pdtocom	OUT	NUMBER,
			 precarg	OUT	NUMBER,
			 pdtotec	OUT	NUMBER,
			 preccom	OUT	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  --  Fin Bug 21907 - MDS - 23/04/2012
	  -- 18/07/2012 - MDS - 0022824: LCOL_T010-Duplicado de propuestas
	FUNCTION f_dup_seguro(
			 psseguroorig	IN	NUMBER,
			 pfefecto	IN	DATE,
			 pobservaciones	IN	VARCHAR2,
			 pssegurodest	OUT	NUMBER,
			 pnsolicidest	OUT	NUMBER,
			 pnpolizadest	OUT	NUMBER,
			 pncertifdest	OUT	NUMBER,
			 ptipotablas	IN	NUMBER DEFAULT NULL,
       pcagente IN NUMBER DEFAULT NULL, --CONF-249-30/11/2016-RCS
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /***************************************************************************
	-- BUG 22839 - 24/07/2012 - RSC
	Indica si la garant�a se encuentra contratada o no en el certificado 0.
	return: NUMBER (0=No, 1=Si).
	***************************************************************************/
	FUNCTION f_get_cobliga_cero(
			 pnpoliza	IN	NUMBER,
			 pplan	IN	NUMBER,
			 pcgarant	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /***************************************************************************
	-- BUG 23075 - 27/07/2012 - FPG
	Recupera las cuentas corrientes del pagador / gestor de cobro
	param in psperson  : C�digo personas
	param in psseguro  : N�mero seguro
	param out mensajes : Mensajes de error
	return             : ref cursor
	*************************************************************************/
	FUNCTION f_get_pagadorccc(
			 psperson	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES,
			 psseguro	IN	NUMBER DEFAULT NULL,
			 pmandato	IN	VARCHAR2 DEFAULT NULL
	)   RETURN SYS_REFCURSOR;

	  -- BUG22839:DRA:26/09/2012:Inici
	FUNCTION f_es_col_admin(
			 psseguro	IN	NUMBER,
			 ptablas	IN	VARCHAR2 DEFAULT 'SEG',
			 es_col_admin	OUT	NUMBER,
			 es_certif_cero	OUT	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	FUNCTION f_emitir_col_admin(
			 psseguro	IN	NUMBER,
			 psproces	IN	OUT NUMBER,
			 pcontinuaemitir	OUT	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES,
			 ppasapsu	IN	NUMBER DEFAULT 1,
			 pskipfusion	IN	NUMBER DEFAULT 0,
			 preteni	IN	NUMBER DEFAULT 1
	)   RETURN NUMBER;

	  -- Bug 24278 - APD - 05/12/2012 - se a?? el parametro pfecha
	FUNCTION f_abrir_suplemento(
			 psseguro	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  -- BUG22839:DRA:26/09/2012:Fi
	  -- Ini Bug 22839 - MDS - 30/10/2012
	  /*************************************************************************
	Recupera la cuenta corriente del tomador del certificado 0
	param in psperson  : cdigo persona
	param in pnpoliza  : nmero pliza
	param out mensajes : mensajes de error
	return             : ref cursor
	*************************************************************************/
	FUNCTION f_get_tomadorccc_certif0(
			 psperson	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES,
			 pnpoliza	IN	NUMBER,
			 pmandato	IN	VARCHAR2 DEFAULT NULL
	)   RETURN SYS_REFCURSOR;

	  -- Fin Bug 22839 - MDS - 30/10/2012
	  -- Bug 26070:- ECP - 28/02/2013 - se crea la funcion f_get_efectocol
	  /***************************************************************************
	FUNCTION f_get_efectocol
	Dado un numero de poliza, obtenemos fecha efecto de su certificado 0
	param in  pnpoliza:  numero de la p�liza.
	return:              DATE
	***************************************************************************/
	FUNCTION f_get_efectocol(
			 pnpoliza	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN DATE;

	  -- Fin Bug 26070:- ECP - 28/02/2013
	  -- Bug 27923 - INICIO - DCT - 06/09/2013 - LCOL_F3BTEC-MTF3B - LCOL_TEC23 - Definici?n de condiciones en Certificado
	FUNCTION f_get_obligaopcional_cero(
			 pnpoliza	IN	NUMBER,
			 pplan	IN	NUMBER,
			 pcgarant	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  -- Bug 27923 - FIN - DCT - 06/09/2013 - LCOL_F3BTEC-MTF3B - LCOL_TEC23 - Definici?n de condiciones en Certificado
	  -- Bug 29665/163095 - 13/01/2014 - AMC
	FUNCTION f_lanzajob_emitecol_admin(
			 psseguro	IN	NUMBER,
			 psproces	IN	NUMBER,
			 pcontinuaemitir	IN	NUMBER,
			 ppasapsu	IN	NUMBER DEFAULT 1,
			 pskipfusion	IN	NUMBER DEFAULT 0
	)   RETURN NUMBER;

	  -- Bug 29665/163095 - 13/01/2014 - AMC
	FUNCTION f_num_certif(
			 pnpoliza	IN	NUMBER,
			 psseguro	IN	NUMBER,
			 pcreteni	IN	NUMBER,
			 pcuantos	IN	OUT NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	  /*************************************************************************
	Establece las preguntas automaticas asignadas al producto para insertalas en la poliza
	param in pnmovimi  :    c�digo de movimiento
	param in pfefecto  :    fecha de efecto
	param in out ppoliza :    Objeto p�liza E/S
	param in out preg :    Preguntas de la p�liza E/S
	param in out mensajes : mensajes de error
	param in pnriesgo  :    Identificador de riesgo tratado
	param in pcgarant  :    Identificador de garant�a tratada
	return             :    NUMBER
	*************************************************************************/
	FUNCTION f_grabar_automatriesgo(
			 pnmovimi	IN	NUMBER,
			 pfefecto	IN	DATE,
			 ppoliza	IN	OUT OB_IAX_POLIZA,
			 preg	IN	OUT T_IAX_PREGUNTAS,
			 mensajes	OUT	T_IAX_MENSAJES,
			 pnriesgo	IN	NUMBER,
			 pcgarant	IN	NUMBER
	)   RETURN NUMBER;

	FUNCTION f_grabar_modalidadriesgo(
			 pnmovimi	IN	NUMBER,
			 pfefecto	IN	DATE,
			 ppoliza	IN	OUT OB_IAX_POLIZA,
			 preg	IN	OUT T_IAX_PREGUNTAS,
			 mensajes	OUT	T_IAX_MENSAJES,
			 pnriesgo	IN	NUMBER,
			 pcgarant	IN	NUMBER
	)   RETURN NUMBER;

	FUNCTION f_borrar_garantia(
			 psseguro	IN	NUMBER,
			 pnriesgo	IN	NUMBER,
			 pnmovimi	IN	NUMBER,
			 pcgarant	IN	NUMBER,
			 mensajes	OUT	T_IAX_MENSAJES
	)   RETURN NUMBER;

	  -- 36596/211429
	FUNCTION f_get_psu_retenidas(
			 poliza OB_IAX_POLIZA,
			 mensajes	OUT	T_IAX_MENSAJES
	)   RETURN T_IAX_PSU_RETENIDAS;

	  --36507-215125
	FUNCTION f_apunte_retencion(
			 psseguro	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	FUNCTION f_val_tomador_cbancar(
			 psseguro	IN	NUMBER,
			 psperson	IN	NUMBER,
			 mensajes	IN	OUT T_IAX_MENSAJES
	)   RETURN NUMBER;

	 -- Bug  - 11/04/2016 - JMT
       FUNCTION f_get_datoscontacto(
      npoliza IN NUMBER,
      ncertif IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN t_iax_datos_contacto;

      -- Bug  - 11/04/2016 - JMT
       FUNCTION f_set_datoscontacto(
      npol IN NUMBER,
      ncert IN NUMBER,
      spers IN NUMBER,
      tipopers IN NUMBER,
      lmail IN NUMBER,
      ltel IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

       ---AMA-187 - 15/06/2016 - VCG
       Function F_Borrar_Simulaciones(Psseguro    In Estseguros.Sseguro%Type,
                                 Mensajes In Out T_Iax_Mensajes) Return Number;
								 
	-- Ini  TCS_827 - ACL - 17/02/2019
	/*************************************************************************
	Devuelve las p�lizas que cumplan con el criterio de selecci�n	
	param out mensajes    : mensajes de error
	return                : ref cursor
	*************************************************************************/
	   	FUNCTION f_consultapoliza_contrag(
			 pramo	IN	NUMBER,
			 psproduc	IN	NUMBER,
			 pnpoliza	IN	NUMBER,
			 pncert	IN	NUMBER DEFAULT -1,
			 pnnumide	IN	VARCHAR2,
			 psnip	IN	VARCHAR2,
			 pbuscar	IN	VARCHAR2,
			 pnsolici	IN	NUMBER, 
			 ptipopersona	IN	NUMBER,
			 pcagente	IN	NUMBER, 
			 pcmatric	IN	VARCHAR2, 
			 pcpostal	IN	VARCHAR2, 
			 ptdomici	IN	VARCHAR2, 
			 ptnatrie	IN	VARCHAR2, 
			 pcsituac	IN	NUMBER, 
			 p_filtroprod	IN	VARCHAR2,
			 pcpolcia	IN	VARCHAR2, 
			 pccompani	IN	NUMBER, 
			 pcactivi	IN	NUMBER, 
			 pcestsupl	IN	NUMBER, 
			 pnpolrelacionada	IN	NUMBER,
			 pnpolini	IN	VARCHAR2, 
			 mensajes	IN	OUT T_IAX_MENSAJES,
			 pfilage	IN	NUMBER DEFAULT 1, 
			 pcsucursal	IN	NUMBER DEFAULT NULL, 
			 pcadm	IN	NUMBER DEFAULT NULL, 
			 pcmotor	IN	VARCHAR2 DEFAULT NULL, 
			 pcchasis	IN	VARCHAR2 DEFAULT NULL, 
			 pnbastid	IN	VARCHAR2 DEFAULT NULL, 
			 pcmodo	IN	NUMBER DEFAULT NULL, 
                         pncontrato     IN VARCHAR2 DEFAULT NULL 

		)
	  RETURN SYS_REFCURSOR;
	-- Fin  TCS_827 - ACL - 17/02/2019
-- INI BUG 3324 - SGM Interacci�n del Rango DIAN con la p�liza (No. Certificado)
   /***********************************************************************
   Busca el certificado dian de la p�liza ligado al movimiento
   ***********************************************************************/
   FUNCTION f_get_certdian(psseguro  IN SEGUROS.SSEGURO%TYPE,
                           pnrecibo  IN RECIBOS.NRECIBO%TYPE,
                           mensajes  IN OUT t_iax_mensajes) RETURN VARCHAR2;
-- INI BUG 3324 - SGM Interacci�n del Rango DIAN con la p�liza (No. Certificado)

END PAC_MD_PRODUCCION;

/
