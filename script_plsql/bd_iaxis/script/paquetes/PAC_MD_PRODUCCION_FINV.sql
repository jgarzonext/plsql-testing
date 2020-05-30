--------------------------------------------------------
--  DDL for Package PAC_MD_PRODUCCION_FINV
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_MD_PRODUCCION_FINV" AS
   /******************************************************************************
      NOMBRE:      PAC_MD_PRODUCCION_FINV
      PROP�SITO:   Funciones para la producci�n en segunda capa de productos financieros
                   de inversi�n.

      REVISIONES:
      Ver        Fecha        Autor             Descripci�n
      ---------  ----------  ---------------  ------------------------------------
      1.0        16/03/2008   RSC               1. Creaci�n del package.
   ******************************************************************************/

   /*************************************************************************
      Graba en el objeto poliza la distribuci�n seleccionada
      param in pcmodelo  : C�digo de modelo de inversi�n
      param in ppoliza   : Objeto p�liza
      param out mensajes : mensajes de error
      return             : number
   *************************************************************************/
   FUNCTION f_grabar_modeloinvfinv(
      pcmodelo IN NUMBER,
      ppoliza IN OUT ob_iax_poliza,
      mensajes OUT t_iax_mensajes)
      RETURN NUMBER;
END pac_md_produccion_finv;

/

  GRANT EXECUTE ON "AXIS"."PAC_MD_PRODUCCION_FINV" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MD_PRODUCCION_FINV" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MD_PRODUCCION_FINV" TO "PROGRAMADORESCSI";
