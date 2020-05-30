--------------------------------------------------------
--  DDL for Package Body PAC_AXIS_RENT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "AXIS"."PAC_AXIS_RENT" IS
     /******************************************************************************
      NOMBRE:     PAC_AXIS_RENT
      PROP�SITO:  Package que contiene las funciones propias de tarificaici�n de rentas.

      REVISIONES:
      Ver        Fecha        Autor             Descripci�n
      ---------  ----------  ---------------  ------------------------------------
      1.0        22/10/2009   JRH             1.0 Creaci�n del package.
   ******************************************************************************/

   /*************************************************************************
      FUNCTION AXY_M
        Calcula el valor AXY_M
        param in psesion   : Sesi�n.
        param in psseguro   : Seguro.
        return             : Valor del s�mbolo
   *************************************************************************/
   FUNCTION axy_m(psesion IN NUMBER, psseguro IN NUMBER)
      RETURN NUMBER IS
   BEGIN
      RETURN 77;
   END;

   /*************************************************************************
      FUNCTION AXY
        Calcula el valor AXY
        param in psesion   : Sesi�n.
        param in psseguro   : Seguro.
        return             : Valor del s�mbolo
   *************************************************************************/
   FUNCTION axy(psesion IN NUMBER, psseguro IN NUMBER)
      RETURN NUMBER IS
   BEGIN
      RETURN 0.55;
   END;
END pac_axis_rent;

/

  GRANT EXECUTE ON "AXIS"."PAC_AXIS_RENT" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_AXIS_RENT" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_AXIS_RENT" TO "PROGRAMADORESCSI";
