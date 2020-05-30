--------------------------------------------------------
--  DDL for Package PAC_MD_DESCARGAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_MD_DESCARGAS" AS
/******************************************************************************
   NOMBRE:       PAC_MD_DESCARGAS
   PROPOSITO: Funciones para gestionar descargas

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        29/08/2011  JMC              1. Creaci�n del package.
******************************************************************************//***************************************************************************
      FUNCTION f_get_cias
      Funci�n que retorna lista con las compa�ias que tiene configurada alguna
      descarga.
      param out mensajes : mensajes de error
      return             : ref cursor
   ***************************************************************************/
   FUNCTION f_get_cias(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

/***************************************************************************
      FUNCTION f_get_descargas
      Funci�n que retorna lista con las descargas, se puede filtrar por
      compa�ia y/o tipo de petici�n.
      param in pccompani : C�digo compa��a
      param in pctippet : Tipo de petici�n (1-Descarga, 2-Confirmaci�n, 3-Listado)
      param out mensajes : mensajes de error
      return             : ref cursor
   ***************************************************************************/
   FUNCTION f_get_descargas(
      pccompani IN NUMBER,
      pctippet IN NUMBER,
      psseqdwl IN NUMBER,
      pctipfch IN NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

/***************************************************************************
      FUNCTION f_get_ficheros
      Funci�n que retorna lista con los ficheros de una descarga.
      param in psseqdwl : Secuencia de descarga.
      param out mensajes : mensajes de error
      return             : ref cursor
   ***************************************************************************/
   FUNCTION f_get_ficheros(psseqdwl IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

/***************************************************************************
      FUNCTION f_set_peticion
      Funci�n que realiza la petici�n de descarga.
      param in pccoddes : C�digo descarga.
      param in psseqdwl : Secuencia de descarga (listado).
      param in pnnumfil : N�mero de fichero.
      param out psseqout : secuencia de descarga (descarga).
      param out mensajes : mensajes de error
      return             : ref cursor
   ***************************************************************************/
   FUNCTION f_set_peticion(
      psseqdwl IN NUMBER,
      pnnumfil IN NUMBER,
      psseqout OUT NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;

   /***************************************************************************
      FUNCTION F_SET_PETICION_LST_FILES
      Funci�n que realizara la petici�n de listado de ficheros para una compa�ia
      y tipo de listado. Esta funci�n se lanzara desde la pantalla.
      param in  pccompani:     C�digo compa�ia.
      param in  pctipfch:      Tipo fichero 1-p�liza 2-Recibo.
      param in  psseqout       N�mero de secuencia de descarga.
      return:                0-OK, <>0-Error
   ***************************************************************************/
   FUNCTION f_set_peticion_lst_files(
      pccompani IN NUMBER,
      pctipfch IN NUMBER,
      psseqout OUT NUMBER,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;
END pac_md_descargas;
 

/

  GRANT EXECUTE ON "AXIS"."PAC_MD_DESCARGAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MD_DESCARGAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MD_DESCARGAS" TO "PROGRAMADORESCSI";
