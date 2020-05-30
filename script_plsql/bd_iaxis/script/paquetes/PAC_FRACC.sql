--------------------------------------------------------
--  DDL for Package PAC_FRACC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_FRACC" AUTHID CURRENT_USER IS
   /******************************************************************************
      NOMBRE:       PAC_FRACCIONARIOS
      PROP�SITO:    Funciones para temas relacionados con los productos fraccionarios

      REVISIONES:
      Ver        Fecha        Autor             Descripci�n
      ---------  ----------  ---------------  ------------------------------------
      1.0        08/09/2009   RSC               1. Creaci�n del package.
   ******************************************************************************/

   -- Bug 10828 - RSC - 08/09/2009 - CRE - Revisi�n de los productos PPJ din�mico y Pla Estudiant (ajustes)
   -- No se utiliza (existe de forma aislada como funci�n)
   FUNCTION f_revalcartera_frac(psseguro IN NUMBER, pfcarpro IN DATE)
      RETURN NUMBER;

   FUNCTION f_frac(psseguro IN NUMBER, pfcarpro IN DATE)
      RETURN NUMBER;
END pac_fracc;
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_FRACC" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_FRACC" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_FRACC" TO "PROGRAMADORESCSI";
