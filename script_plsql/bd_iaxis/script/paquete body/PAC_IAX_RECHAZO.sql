--------------------------------------------------------
--  DDL for Package Body PAC_IAX_RECHAZO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "AXIS"."PAC_IAX_RECHAZO" IS
   /******************************************************************************
      NOMBRE:    PAC_IAX_RECHAZO
      PROP�SITO: Funciones para rechazo

      REVISIONES:
      Ver        Fecha        Autor             Descripci�n
      ---------  ----------  ---------------  ------------------------------------
      1.0        11/02/2009   JMF                1. Creaci�n del package.
   ******************************************************************************/
   e_object_error EXCEPTION;
   e_param_error  EXCEPTION;

   /*************************************************************************
      Generaci�n del Rechazo.
      param in     psseguro : C�digo del seguro
      param in     pcmotmov : C�digo del motivo
      param in     pnmovimi : N�mero movimiento
      param in     paccion  : Acci�n (3) si es rechazo � (4) anulaci�n del suplemento
      param in     ptobserv : Observaciones
      param in out mensajes : mensajes de error
   *************************************************************************/
   FUNCTION rechazo(
      psseguro IN NUMBER,
      pcmotmov IN NUMBER,
      pnmovimi IN NUMBER,
      paccion IN NUMBER,
      ptobserv IN VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(200)
         := 'seg=' || psseguro || ' mot=' || pcmotmov || ' mov=' || pnmovimi || ' acc='
            || paccion;
      vobject        VARCHAR2(200) := 'PAC_IAX_RECHAZO.rechazo';
      vnumerr        NUMBER;
   BEGIN
      vnumerr := pac_md_rechazo.rechazo(psseguro, pcmotmov, pnmovimi, paccion, ptobserv,
                                        mensajes);

      IF vnumerr = 0 THEN
         COMMIT;
      ELSE
         ROLLBACK;
         RAISE e_object_error;
      END IF;

      RETURN 0;
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
   END rechazo;
END pac_iax_rechazo;

/

  GRANT EXECUTE ON "AXIS"."PAC_IAX_RECHAZO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_RECHAZO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_RECHAZO" TO "PROGRAMADORESCSI";
