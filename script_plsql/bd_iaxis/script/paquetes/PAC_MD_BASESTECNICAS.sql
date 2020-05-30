--------------------------------------------------------
--  DDL for Package PAC_MD_BASESTECNICAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_MD_BASESTECNICAS" AS
/******************************************************************************
   NOMBRE:       PAC_MD_BASESTECNICAS
   PURPOSE:    Funciones de obtenci�n de las bases t�cnicas de una p�liza

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/12/2009   APD             1. Creaci�n del package.
******************************************************************************/

   --JRH 14/12/2009
   /*************************************************************************
      Obtiene un objeto del tipo OB_IAX_BASESTECNICAS con las bases t�cnicas
      param in psseguro  : p�liza
      param in pnriesgo  : riesgo (si pnriesgo IS NULL, se mostraron todos)
      param in pnmovimi  : pnmovimi
      param out          : El objeto del tipo OB_IAX_BASESTECNICAS con los valores de esos importes
      param out mensajes : mensajes de error
      return             : 0 si todo va bien o  1.
   *************************************************************************/
   FUNCTION f_obtbasestecnicas(
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pnmovimi IN NUMBER,
      pbastec IN OUT ob_iax_basestecnicas,
      mensajes IN OUT t_iax_mensajes,
      ptabla IN VARCHAR2 DEFAULT 'SEG')
      RETURN NUMBER;
END pac_md_basestecnicas;
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_MD_BASESTECNICAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MD_BASESTECNICAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MD_BASESTECNICAS" TO "PROGRAMADORESCSI";
