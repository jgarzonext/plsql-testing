--------------------------------------------------------
--  DDL for Package PAC_IAX_LIQUIDACOR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_IAX_LIQUIDACOR" AS
/******************************************************************************
   NOMBRE:       PAC_IAX_LIQUIDACOR
   PROP�SITO:    Contiene las funciones para la liquidaci�n de comisiones de Correduria

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        25/11/2010   XPL                1. Creaci�n del package. Bug 16310
******************************************************************************/
   vtliquida      t_iax_liquidacion;

/*************************************************************************/

   /*************************************************************************
       Funci�n que nos crear� una nueva liquidaci�n, pas�ndole el mes, a�o y descripci�n.
       Nos guardar� en persistencia la liquidaci�n inicializada
       param in  p_mes       : Mes de la liquidaci�n
       param in  p_anyo      : A�o de la liquidaci�n
       param in  p_tliquida  : Observaciones
       param out mensajes    : mensajes de error
       return                : 0.-    OK
                               1.-    KO
        25/11/2010#XPL#16310
   *************************************************************************/
   FUNCTION f_propuesta_fechainicio(
      p_ccompani IN NUMBER,
      p_mes IN NUMBER,
      p_anyo IN NUMBER,
      p_finiliq OUT DATE,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
       Funci�n que nos crear� una nueva liquidaci�n, pas�ndole el mes, a�o y descripci�n.
       Nos guardar� en persistencia la liquidaci�n inicializada
       param in  p_mes       : Mes de la liquidaci�n
       param in  p_anyo      : A�o de la liquidaci�n
       param in  p_tliquida  : Observaciones
       param out mensajes    : mensajes de error
       return                : 0.-    OK
                               1.-    KO
        25/11/2010#XPL#16310
   *************************************************************************/
   FUNCTION f_inicializa_liquidacion(
      p_mes IN NUMBER,
      p_anyo IN NUMBER,
      p_ccompani IN NUMBER,
      p_finiliq IN DATE,
      p_ffinliq IN DATE,
      p_importe IN NUMBER,
      p_tliquida IN VARCHAR2,
      p_sproces OUT NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

      /*************************************************************************
       Funci�n que modificara liquidaci�n, pas�ndole el mes, a�o y descripci�n.
       Nos guardar� en persistencia la liquidaci�n inicializada
       param in  p_mes       : Mes de la liquidaci�n
       param in  p_anyo      : A�o de la liquidaci�n
       param in  p_tliquida  : Observaciones
       param out mensajes    : mensajes de error
       return                : 0.-    OK
                               1.-    KO
        25/11/2010#XPL#16310
   *************************************************************************/
   FUNCTION f_modifica_liquidacion(
      p_mes IN NUMBER,
      p_anyo IN NUMBER,
      p_ccompani IN NUMBER,
      p_finiliq IN DATE,
      p_ffinliq IN DATE,
      p_importe IN NUMBER,
      p_tliquida IN VARCHAR2,
      p_sproces IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
      Funci�n que nos devuelve los movimientos de un proceso del objeto persistente
      param in  p_sproliq   : Proceso liquidacion
      param in  P_nmovliq   : Movimiento a recuperar
      param out pob_liquidamov : Objeto del movimiento
      param out mensajes    : mensajes de error
      return                : 0.-    OK
                              1.-    KO
       25/11/2010#XPL#16310
   *************************************************************************/
   FUNCTION f_get_liquidamov_ob(
      p_sproliq IN NUMBER,
      p_nmovliq IN NUMBER,
      pob_liquidamov OUT ob_iax_liquida_mov,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
      Funci�n que nos devuelve la colecci�n de liquidaciones buscada
      param out pob_liquida : Colecci�n de liquidaciones
      param out mensajes    : mensajes de error
      return                : 0.-    OK
                              1.-    KO
       25/11/2010#XPL#16310
   *************************************************************************/
   FUNCTION f_get_lstliquida_ob(pob_liquida OUT t_iax_liquidacion, mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
      Funci�n que devolvera el objecto liquidaci�n que tenemos en persistencia
      param in  p_sproliq   : Proceso liquidacion
       param out mensajes    : Mensajes de error
      param out pob_liquida  : Objeto liquidaci�n
      return                : NUMBER 1/0
      25/11/2010#XPL#16310
   *************************************************************************/
   FUNCTION f_get_liquida_ob(
      p_sproliq IN NUMBER,
      pob_liquida OUT ob_iax_liquidacion,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
      Funci�n que cargar� el  objecto liquidacion con sus movimientos y recibos buscados en la bd
      param in  P_cempres   : Empresa
      param in  P_sproduc   : Producto
      param in  p_sproliq   : Proceso liquidacion
      param in  p_mes       : Mes de la liquidaci�n
      param in  p_anyo      : A�o de la liquidaci�n
      param in  p_cestado   : Estado de la liquidaci�n(abierto, cerrado..)
      param in  P_npoliza   : P�liza
      param in  P_npolcia   : P�liza Compa�ia
      param in  p_nrecibo   : Recibo
      param in  p_creccia   : Recibo Compa�ia
      param in p_ccompani   : Compa�ia del seguro
      param in  P_cagente   : Agente
      param in  P_femiini   : Fecha inicio emisi�n
      param in  P_femifin   : Fecha fin emisi�n
      param in  P_fefeini   : Fecha inicio efecto
      param in  P_fefefin   : Fecha fin efecto
      param in  P_fcobini   : Fecha inicio cobro
      param in  P_fcobfin   : Fecha fin cobro
      param out mensajes    : Mensajes de error
      param out pt_liquida  : Colecci�n liquidaci�n
      return                : NUMBER 1/0
      25/11/2010#XPL#16310
   *************************************************************************/
   FUNCTION f_get_liquida(
      p_cempres IN NUMBER,
      p_sproduc IN NUMBER,
      p_sproliq IN NUMBER,
      p_nmes IN NUMBER,
      p_anyo IN NUMBER,
      p_cestado IN NUMBER,
      p_npoliza IN NUMBER,
      p_cpolcia IN VARCHAR2,
      p_nrecibo IN NUMBER,
      p_creccia IN VARCHAR2,
      p_ccompani IN NUMBER,
      p_cagente IN NUMBER,
      p_femiini IN DATE,
      p_femifin IN DATE,
      p_fefeini IN DATE,
      p_fefefin IN DATE,
      p_fcobini IN DATE,
      p_fcobfin IN DATE,
      pt_liquida OUT t_iax_liquidacion,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

      /*************************************************************************
      Funci�n que cargar� el  objecto liquidacion con sus movimientos buscados en la bd
      param in  P_cempres   : Empresa
      param in  P_sproduc   : Producto
      param in  p_sproliq   : Proceso liquidacion
      param in  p_mes       : Mes de la liquidaci�n
      param in  p_anyo      : A�o de la liquidaci�n
      param in  p_cestado   : Estado de la liquidaci�n(abierto, cerrado..)
      param in  P_npoliza   : P�liza
      param in  P_npolcia   : P�liza Compa�ia
      param in  p_nrecibo   : Recibo
      param in  p_creccia   : Recibo Compa�ia
      param in p_ccompani   : Compa�ia del seguro
      param in  P_cagente   : Agente
      param in  P_femiini   : Fecha inicio emisi�n
      param in  P_femifin   : Fecha fin emisi�n
      param in  P_fefeini   : Fecha inicio efecto
      param in  P_fefefin   : Fecha fin efecto
      param in  P_fcobini   : Fecha inicio cobro
      param in  P_fcobfin   : Fecha fin cobro
      param out mensajes    : Mensajes de error
      param out pt_liquida  : Colecci�n liquidaci�n
      return                : NUMBER 1/0
      25/11/2010#XPL#16310
   *************************************************************************/
   FUNCTION f_get_liquida_cab(
      p_cempres IN NUMBER,
      p_sproduc IN NUMBER,
      p_sproliq IN NUMBER,
      p_nmes IN NUMBER,
      p_anyo IN NUMBER,
      p_cestado IN NUMBER,
      p_npoliza IN NUMBER,
      p_cpolcia IN VARCHAR2,
      p_nrecibo IN NUMBER,
      p_creccia IN VARCHAR2,
      p_ccompani IN NUMBER,
      p_cagente IN NUMBER,
      p_femiini IN DATE,
      p_femifin IN DATE,
      p_fefeini IN DATE,
      p_fefefin IN DATE,
      p_fcobini IN DATE,
      p_fcobfin IN DATE,
      pt_liquida OUT t_iax_liquidacion,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
      Funci�n que nos buscar� los recibos que queremos liquidar
      param in  p_sproliq   : Proceso liquidacion
      param in  p_nrecibo   : Recibo
      param in  p_ccompani   : Compa�ia del seguro
      param in  P_cagente   : Agente
      param in  p_cmonseg : moneda
      param in  p_cmonliq : moneda liq
      param in  p_cgescob : gest cob
      param in  P_cramo  : ramo
      param in  P_sproduc   : Producto
      param in  P_fefeini   : Fecha inicio efecto
      param in  P_fefefin   : Fecha fin efecto
      param out pt_recliquida : colecci�n recibos
       param out mensajes    : mensajes de error
       return                : 0.-    OK
                               1.-    KO
       25/11/2010#XPL#16310
   *************************************************************************/
   FUNCTION f_get_recibos_propuestos(
      p_sproliq IN NUMBER,
      p_nrecibo IN NUMBER,
      p_ccompani IN NUMBER,
      p_cagente IN NUMBER,
      p_cmonseg IN VARCHAR2,
      p_cmonliq IN VARCHAR2,
      p_cgescob IN NUMBER,
      p_cramo IN NUMBER,
      p_sproduc IN VARCHAR2,
      p_fefectoini IN DATE,
      p_fefectofin IN DATE,
      pt_recliquida OUT t_iax_liquida_rec,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

/*
   FUNCTION f_get_recliquida(
      p_sproliq IN NUMBER,
      p_nrecibo IN NUMBER,
      p_ccompani IN NUMBER,
      p_cagente IN NUMBER,
      p_cmonseg IN VARCHAR2,
      p_cmonliq IN VARCHAR2,
      p_cgescob IN NUMBER,
      p_cramo IN NUMBER,
      p_sproduc IN NUMBER,
      p_fefectoini IN DATE,
      p_fefectofin IN DATE,
      pt_recliquida OUT t_iax_liquida_rec,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;
*/ /*************************************************************************
      Funci�n que actualizar� el objeto persistente, nos podr� marcar el recibo de un proceso,
      nos modificar� el signo de la liquidaci�n (iliquida), en el caso que no pasemos ning�n recibo como par�metro
      nos marcar� todos los registros con el param p_selec
      param in  P_nrecibo   : N� de recibo devuelto
      param in  P_sproliq   : Identificador proceso liquidacion
      param in  P_selec     : Indica si el recibo/s es seleccionado
      param in  P_signo     : Indica el signo de iliquida
      param out mensajes    : Mensajes de error
      return                : 0.-    OK
                              1.-    KO
      25/11/2010#XPL#16310
   *************************************************************************/
   FUNCTION f_setobjetorecliqui(
      p_nrecibo IN VARCHAR2,
      p_sproliq IN NUMBER,
      p_selec IN NUMBER,
      p_signo IN NUMBER,
      p_modif IN NUMBER DEFAULT NULL,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
      Funci�n que nos grabar� un nuevo  movimiento con el estado que le pasamos
      param in  p_sproliq   : Proceso liquidacion
      param in  p_cestliq   : Nuevo estado
      param out mensajes    : mensajes de error
      return                : 0.-    OK
                              1.-    KO
       25/11/2010#XPL#16310
   *************************************************************************/
   FUNCTION f_set_movliqui(
      p_sproliq IN NUMBER,
      p_cestliq IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
       Funci�n que insertar� los recibos que forman la liquidaci�n en BD, si pasamos un proceso liquidaci�n
       liquidaremos ese proceso sin� liquidaremos todos los procesos que tenemos por pantalla.
       param in  P_sproliq   : Identificador proceso liquidacion
       param out mensajes    : mensajes de error
       return                : 0.-    OK
                               1.-    KO
       25/11/2010#XPL#16310
   *************************************************************************/
   FUNCTION f_set_recliqui(p_sproliq IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   FUNCTION f_setobjetorecliquiall(
      p_sproliq IN NUMBER,
      p_selec IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

         /*************************************************************************
      Funci�n nos devuelve las liquidaciones en las cuales se encuentra el recibo
      param in  P_nrecibo   : N� de recibo
      param out mensajes    : Mensajes de error
      return                : 0.-    OK
                              1.-    KO
      03/06/2011#XPL#0018732
   *************************************************************************/
   FUNCTION f_get_lstliquida_rec(
      p_nrecibo IN NUMBER,
      p_liquidarec OUT sys_refcursor,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;
END pac_iax_liquidacor;
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_IAX_LIQUIDACOR" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_LIQUIDACOR" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_LIQUIDACOR" TO "PROGRAMADORESCSI";
