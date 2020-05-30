--------------------------------------------------------
--  DDL for Package PAC_IAX_LISTVALORES_COA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_IAX_LISTVALORES_COA" AS
/******************************************************************************
 NOMBRE: PAC_IAX_LISTVALORES_COA
 PROP�SITO: Funciones para recuperar valores

 REVISIONES:
 Ver Fecha Autor Descripci�n
 --------- ---------- --------------- ------------------------------------
 1.0                                  1. Creacion del Package
 2.0       23/05/2012 AVT             2. 0022076: LCOL_A004-Mantenimientos de cuenta tecnica del reaseguro y del coaseguro
 3.0       18/04/2013 ECP             3. 0023183: LCOL_T020-COA-Circuit d'alta de propostes amb coasseguran. Nota 142806
 4.0       20/02/2014 AGG             4. 0026663: POSPG400-(POSPG400)- Parametrizacion Reaseguro, Coaseguro - Parametrizacion contratos
 ******************************************************************************/

   /*************************************************************************
   Recupera la lista desplegable de conceptos de la cuenta t�cnica del Caoseguro
   devuelve un SYS_REFCURSOR param out : mensajes de error (CMOVIMI de CTACOASEGURO)
   return : ref cursor
   *************************************************************************/
   FUNCTION f_get_tipo_movcta(mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;

   /*************************************************************************
      Recupera la lista de valores del desplegable Tipo de Coaseguro
      param out mensajes : mensajes de error
      return             : ref cursor
   *************************************************************************/--Ini bug 23183 -- ECP -- 18/04/2013
   FUNCTION f_get_tipcoaseguro(
      pcempres IN NUMBER,
      pcvalor IN NUMBER,
      pcatribu IN NUMBER,
      pcvalordep IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      --Fin bug 23183 -- ECP -- 18/04/2013
   RETURN sys_refcursor;

    /*************************************************************************
      Recupera la lista desplegable de tipos importes de la cuenta t�cnica del
      Caoseguro
      param out mensajes : mensajes de error (CIMPORT de CTACOASEGURO)
      return             : ref cursor
      Nova funcio: 22076 AVT 02/01/2012
   *************************************************************************/
   FUNCTION f_get_tipo_importe(pcempres IN NUMBER, mensajes OUT t_iax_mensajes)
      RETURN sys_refcursor;
END pac_iax_listvalores_coa;

/

  GRANT EXECUTE ON "AXIS"."PAC_IAX_LISTVALORES_COA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_LISTVALORES_COA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_IAX_LISTVALORES_COA" TO "PROGRAMADORESCSI";
