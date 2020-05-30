--------------------------------------------------------
--  DDL for Package PAC_IAX_JOBS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_IAX_JOBS" AS
/******************************************************************************
   NOMBRE:    PAC_IAX_JOBS
   PROP�SITO: Funciones para gestion de los jobs

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        12/05/2009   AMC               1. Creaci�n del package.
   2.0        13/05/2015   AQM               2. BUG 35980 : Modificacion de un parametro
******************************************************************************/

   /*************************************************************************
      Funci�n que recupera los procesos que hay en la vista DBA_JOBS
      param in pNumJob    : Id. n�mero de job
      param in pFechaDesde : Fecha inicial
      param in pFechaHasta : Fecha final
      param in pBloqueado : Indica si esta bloqueado
      param out mensajes  : Mensajes de error
      return              : sys_refcursor
   *************************************************************************/
   FUNCTION f_get_procesos(
      pnumjob IN NUMBER,
      pfechadesde IN DATE,
      pfechahasta IN DATE,
      pbloqueado IN VARCHAR2,
      pfuncion IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /*************************************************************************
     Funci�n que elimina un proceso de la cola
     param in pNumJob    : Id. n�mero de job
     param out mensajes  : Mensajes de error
     return              : Devolver� 0 - OK o 1 - KO
   *************************************************************************/
   FUNCTION f_eliminar(pnumjob IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
     Funci�n que ejecuta al momento un job
     param in pNumJob    : Id. n�mero de job
     param out mensajes  : Mensajes de error
     return              : Devolver� 0 - OK o 1 - KO
   *************************************************************************/
   FUNCTION f_ejecutar(pnumjob IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
     Funci�n que da de alta un proceso en la cola de trabajo
     param in pFuncion      : Funci�n a ejecutar
     param in Proximafecha    : Fecha de ejecuci�n
     param in pIntervalo : Intervalo
     param in pbloqueado : Si esta bloqueado
     param out pNumJob    : Id. n�mero de job
     param out mensajes  : Mensajes de error
     return              : Devolver� 0 - OK o 1 - KO
   *************************************************************************/
   FUNCTION f_set_altaproceso(
      pfuncion IN VARCHAR2,
      proximafecha IN VARCHAR2,   --BUG 35980_212027 KJSC 12/08/2015 SE PASA A VARCHAR PROXIMAFECHA
      pcintervalo IN VARCHAR2,   --BUG 35980 - AQM - 13/07/2015
      pbloqueado IN NUMBER,
      pnumjob OUT NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
      Funci�n que realiza modificaciones en los procesos que hay en cola
      param in pNumJob    : Id. n�mero de job
      param in pFuncion   : Funci�n a ejecutar
      param in Proximafecha   : Fecha de ejecuci�n
      param in pIntervalo : Intervalo
      param in pbloqueado : Si esta bloqueado
      param out mensajes  : Mensajes de error
      return              : Devolver� 0 - OK o 1 - KO
    *************************************************************************/
   FUNCTION f_set_modproceso(
      pnumjob IN NUMBER,
      pfuncion IN VARCHAR2,
      proximafecha IN VARCHAR2,   --BUG 35980_212027 KJSC 12/08/2015 SE PASA A VARCHAR PROXIMAFECHA
      pcintervalo IN VARCHAR2,   --BUG 35980-210151 KJSC 16/07/2015 SE PASA A VARCHAR EL INTERVALO
      pbloqueado IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
      Funci�n que realiza la modificaci�n del estado "Bloqueado" de un proceso en la cola
      param in pNumJob    : Id. n�mero de job
      param in pBloqueado    : Indica el estado
      param in Proximafecha    : Fecha de ejecuci�n
      param out mensajes  : Mensajes de error
      return              : Devolver� 0 - OK o 1 - KO
    *************************************************************************/
   FUNCTION f_set_modbloqueo(
      pnumjob IN NUMBER,
      pbloqueado IN BOOLEAN,
      proximafecha IN DATE,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /*************************************************************************
     Funci�n que recupera los tipos de intervalos que se pueden utilizar en un proceso
     param out mensajes  : Mensajes de error
     return              : sys_refcursor
   *************************************************************************/
   FUNCTION f_get_intervalos(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

    /*************************************************************************
      Funci�n que recupera los procesos que hay en la vista DBA_JOBS
      param in pNumJob    : Id. n�mero de job
      param out pWhat     : funci�n
      param out pNextdate : proxima fecha
      param out pBroken   : Indica si esta bloqueado
      param out mensajes  : Mensajes de error
      return              : number
   *************************************************************************/
   FUNCTION f_get_proceso(
      pnumjob IN NUMBER,
      pwhat OUT VARCHAR2,
      pnextdate OUT DATE,
      pinterval OUT VARCHAR2,
      pbroken OUT NUMBER,
      phora OUT VARCHAR2,   --BUG 35980_212027 KJSC 12/08/2015 AGREGAR HORA EN LA CREACION Y MODIFICACION DE LOS JOBS
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;
END pac_iax_jobs;

/

  GRANT EXECUTE ON "AXIS"."PAC_IAX_JOBS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_JOBS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_JOBS" TO "PROGRAMADORESCSI";
