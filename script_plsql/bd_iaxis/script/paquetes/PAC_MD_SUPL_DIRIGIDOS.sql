--------------------------------------------------------
--  DDL for Package PAC_MD_SUPL_DIRIGIDOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_MD_SUPL_DIRIGIDOS" AS
/******************************************************************************
   NOMBRE:       pac_md_supl_dirigidos
   PROP�SITO:  Interficie para cada tipo de suplemento

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        28/07/2009   JRH                1. Creaci�n del package. Bug 10776 reducci�n total
******************************************************************************/

   /*************************************************************************
      Acciones a hacer para la reduccion total de una p�liza
      param in psseguro    : c�digo del seguro
      param out mensajes   : colecci�n de mensajes
      return               : 0 todo ha ido bien
                             1 se ha producido un error
   *************************************************************************/
   FUNCTION f_reduccion_total(psseguro IN NUMBER, mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;
END pac_md_supl_dirigidos;
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_MD_SUPL_DIRIGIDOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MD_SUPL_DIRIGIDOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MD_SUPL_DIRIGIDOS" TO "PROGRAMADORESCSI";
