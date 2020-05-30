--------------------------------------------------------
--  DDL for Package Body PAC_IAX_FIC_FORMATOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "AXIS"."PAC_IAX_FIC_FORMATOS" AS
/******************************************************************************
   NOMBRE:       PAC_IAX_FIC_FORMATOS
   PROP�SITO: Nuevo paquete de la capa IAX que tendr� las funciones para la gesti�n de formatos del gestor de informes.
              Controlar todos posibles errores con PAC_IOBJ_MNSAJES.P_TRATARMENSAJE


   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/06/2009   JMG                1. Creaci�n del package.
******************************************************************************/--e_object_error EXCEPTION;
   --e_param_error  EXCEPTION;

   /*************************************************************************
      Funci�n que ejecuta los formatos de un gestor
      del modelo del par�metro
      param in  pcempres : c�digo empresa
      param in  ptgestor : fecha de contabilidad inicial
      param in ptformat  : mensajes de error
      param in  panio : c�digo empresa
      param in  pmes : fecha de contabilidad inicial
      param in  pmes_dia  : mensajes de error
      param in  pchk_genera : c�digo empresa
      param in  pchkescribe : fecha de contabilidad inicial
      param in out mensajes  : mensajes de error
   *************************************************************************/
   FUNCTION f_genera_formatos(
      pcempres IN NUMBER,
      ptgestor IN VARCHAR2,
      ptformat IN VARCHAR2,
      panio IN NUMBER,
      pmes IN VARCHAR2,
      pmes_dia IN VARCHAR2,
      pchk_genera IN VARCHAR2,
      pchkescribe VARCHAR2,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER IS
      vpasexec       NUMBER(8) := 1;
      vparam         VARCHAR2(3000)
         := 'pcempres=' || pcempres || ' ptgestor=' || ptgestor || ' ptformat=' || ptformat
            || ' panio=' || panio || ' pmes=' || pmes || ' pmes_dia=' || pmes_dia
            || ' pchk_genera=' || pchk_genera || ' pchkescribe=' || pchkescribe;
      vobject        VARCHAR2(200) := 'PAC_IAX_FIC_FORMATOS.f_genera_formatos';
      vnum_err       NUMBER(8) := 0;
   BEGIN
      --Crida a la capa MD
      vnum_err := pac_md_fic_formatos.f_genera_formatos(pcempres, ptgestor, ptformat, panio,
                                                        pmes, pmes_dia, pchk_genera,
                                                        pchkescribe, mensajes);
      vnum_err := 0;

      IF vnum_err <> 0 THEN
         RAISE e_object_error;
      END IF;

      COMMIT;
      RETURN vnum_err;
   EXCEPTION
      WHEN e_param_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000005, vpasexec, vparam);
         ROLLBACK;
         RETURN 1;
      WHEN e_object_error THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000006, vpasexec, vparam);
         ROLLBACK;
         RETURN 1;
      WHEN OTHERS THEN
         pac_iobj_mensajes.p_tratarmensaje(mensajes, vobject, 1000001, vpasexec, vparam,
                                           psqcode => SQLCODE, psqerrm => SQLERRM);
         ROLLBACK;
         RETURN 1;
   END f_genera_formatos;
END pac_iax_fic_formatos;

/

  GRANT EXECUTE ON "AXIS"."PAC_IAX_FIC_FORMATOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_FIC_FORMATOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_FIC_FORMATOS" TO "PROGRAMADORESCSI";
