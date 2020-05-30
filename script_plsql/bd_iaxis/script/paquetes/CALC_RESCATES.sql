--------------------------------------------------------
--  DDL for Package CALC_RESCATES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."CALC_RESCATES" AUTHID CURRENT_USER AS
   /******************************************************************************
       NOMBRE:      CALC_RESCATES
       PROP�SITO:   Funciones para la gesti�n de rescates

       REVISIONES:
       Ver        Fecha        Autor             Descripci�n
       ---------  ----------  ---------------  ------------------------------------
       1.0        ??/??/????   ???                1. Creaci�n del package
       2.0        22/02/2010   RSC                3. 0013296: CEM - Revisi�n m�dulo de rescates
       3.0        16/04/2010   RSC                4. 0014160: CEM800 - Adaptar packages de productos de inversi�n al nuevo m�dulo de siniestros
       4.0        05/09/2010   JRH                5. BUG 0016217: Mostrar cuadro de capitales para la p�lizas de rentas
          5.0        22/11/2011   RSC                  6. 0020241: LCOL_T004-Parametrizaci�n de Rescates (retiros)
   ******************************************************************************/
   FUNCTION fvalresctotaho(
      pnsesion IN NUMBER,
      psseguro IN NUMBER,
      pfrescat IN NUMBER,
      psituac IN NUMBER DEFAULT 1)
      RETURN NUMBER;

   FUNCTION frecgestion(psseguro IN NUMBER, ptipo IN NUMBER)
      RETURN NUMBER;

   FUNCTION frcmrescate(
      psesion IN NUMBER,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pcgarant IN NUMBER,
      pfefecto IN NUMBER,
      pctipres IN NUMBER,
      picapris IN NUMBER,
      pipenali IN NUMBER)
      RETURN NUMBER;

   FUNCTION fredrescate(
      psesion IN NUMBER,
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pcgarant IN NUMBER,
      pfefecto IN NUMBER,
      pctipres IN NUMBER,
      picapris IN NUMBER,
      pipenali IN NUMBER)
      RETURN NUMBER;

   /*************************************************************************
        fporcenpenali:

        C�lculo de la % penalizaci�n
        param in psseguro          : Sseguro
        param in pfrescat          : Fecha de rescate
        param in pccausin          : Tipo de movimiento (4 : Rescate total / 5 : Rescate parcial)
         param in  porigen         : 1 EST, 2 SEG
        return                     : %
                                     nulo si error
    *************************************************************************/
   FUNCTION fporcenpenali(
      psesion IN NUMBER,
      psseguro IN NUMBER,
      pfrescat IN NUMBER,
      pccausin IN NUMBER,
      -- BUG 16217 - 09/2010 - JRH  -  Cuadro de provisiones
      porigen IN NUMBER DEFAULT 2)
      -- Fi BUG 16217 - 09/2010 - JRH
   RETURN NUMBER;

   FUNCTION fprimasaport(
      pnsesion IN NUMBER,
      psseguro IN NUMBER,
      pfrescat IN NUMBER,
      pccausin IN NUMBER)
      RETURN NUMBER;

   FUNCTION fimaximo_rescp(
      psesion IN NUMBER,
      psseguro IN NUMBER,
      pfrescat IN NUMBER,
      pccausin IN NUMBER)
      RETURN NUMBER;

   FUNCTION fvalvenctotaho(pnsesion IN NUMBER, psseguro IN NUMBER, pfrescat IN NUMBER)
      RETURN NUMBER;

/*************************************************************************
       fipenali:

       C�lculo de la % penalizaci�n
       param in psseguro          : Sseguro
       param in pfrescat          : Fecha de rescate
       param in pccausin          : Tipo de movimiento (4 : Rescate total / 5 : Rescate parcial)
        param in  porigen         : 1 EST, 2 SEG
       return                     : %
                                    nulo si error
   *************************************************************************/
   FUNCTION fipenali(
      psesion IN NUMBER,
      psseguro IN NUMBER,
      pfrescat IN NUMBER,
      pccausin IN NUMBER,
      picaprisc IN NUMBER,
      -- BUG 16217 - 09/2010 - JRH  -  Cuadro de provisiones
      porigen IN NUMBER DEFAULT 2)
      -- Fi BUG 16217 - 09/2010 - JRH
   RETURN NUMBER;

-- Bug 11227 - APD - 25/09/2009 - se crea la funcion fprimasconsum
   FUNCTION fprimasconsum(
      pnsesion IN NUMBER,
      psseguro IN NUMBER,
      pfrescat IN NUMBER,
      pccausin IN NUMBER)
      RETURN NUMBER;

-- Bug 11227 - APD - 25/09/2009 - se crea la funcion fprimasnoconsum
   FUNCTION fprimasnoconsum(
      pnsesion IN NUMBER,
      psseguro IN NUMBER,
      pfrescat IN NUMBER,
      pccausin IN NUMBER)
      RETURN NUMBER;

   /*************************************************************************
       C�lculo de a�os dentro de periodo revisi�n / hasta periodo revisi�n.
       param in psseguro          : Sseguro
       param in pfrescat          : Fecha de rescate
       param in pctipmov          : Tipo de movimiento (3: Rescate total / 2: Rescate parcial)
       param out pnanyos2         : Anyos2 para el c�lculo de penalizaci�n recucida en meses.
       param out pnmeses          : Numero de meses (para penalizaci�n recucida en meses)
       param out pctipo           : Tipo de penalizaci�n aplicada (valor fijo 360)
       param out pnmesessinpenali : mensajes de error
       porigen OUT NUMBER         : 1 EST 2 SEG
       return                     : N�mero de a�o dentro de periodo de revisi�n /
                                                  hasta periodo de revisi�n.
   *************************************************************************/
   -- Bug 13296 - RSC - 22/02/2010 - CEM - Revisi�n m�dulo de rescates
   FUNCTION f_calc_anyos_porcenpenali(
      psseguro IN NUMBER,
      pfrescat IN NUMBER,
      pctipmov IN NUMBER,
      pnanyos2 OUT NUMBER,
      pnmeses OUT NUMBER,
      pctipo OUT NUMBER,
      pnmesessinpenali OUT NUMBER,
-- BUG 16217 - 09/2010 - JRH  -  Cuadro de provisiones
      porigen IN NUMBER DEFAULT 2)
      -- Fi BUG 16217 - 09/2010 - JRH
   RETURN NUMBER;

   /*************************************************************************
       C�lculo del porcentaje o importe de penalizaci�n.

       param in psseguro          : Sseguro
       param in pfrescat          : Fecha de rescate
       param in pctipmov          : Tipo de movimiento (3: Rescate total / 2: Rescate parcial)
       param out ptippenali       : Tipo de penalizaci�n (Porcentaje / Importe)
       param in  porigen : 1 EST, 2 SEG
       return                     : Porcentaje o improte de penalizaci�n.
   *************************************************************************/
   FUNCTION f_get_penalizacion(
      psseguro IN NUMBER,
      pfrescat IN NUMBER,
      pctipmov IN NUMBER,
      ptippenali OUT NUMBER,
      -- BUG 16217 - 09/2010 - JRH  -  Cuadro de provisiones
      porigen IN NUMBER DEFAULT 2)
      -- Fi BUG 16217 - 09/2010 - JRH
   RETURN NUMBER;

   /*************************************************************************
       C�lculo de a�os dentro de periodo revisi�n / hasta periodo revisi�n.

       param in psseguro          : Sseguro
       param in pfrescat          : Fecha de rescate
       param in pctipmov          : Tipo de movimiento (3: Rescate total / 2: Rescate parcial)
       param in porigen : 1 EST/2 SEG
       return                     : N�mero de a�o dentro de periodo de revisi�n /
                                                  hasta periodo de revisi�n.
   *************************************************************************/
   FUNCTION f_get_anyos_porcenpenali(
      psseguro IN NUMBER,
      pfrescat IN NUMBER,
      pctipmov IN NUMBER,
      -- BUG 16217 - 09/2010 - JRH  -  Cuadro de provisiones
      porigen IN NUMBER DEFAULT 2)
      -- Fi BUG 16217 - 09/2010 - JRH
   RETURN NUMBER;

-- Fin Bug 13296

   /*************************************************************************
       C�lculo de valoraci�n de reserva en siniestros de muerte (garant�s de riesgo)

         param in pnsesion          : sesion
       param in psseguro          : Sseguro
       param in pfrescat          : Fecha de rescate
       param in pcgarant          : Identificador de garant�a
       return                     : N�mero de a�o dentro de periodo de revisi�n /
                                                  hasta periodo de revisi�n.
   *************************************************************************/
   -- Bug 14160 - RSC - 16/04/2010 - CEM800 - Adaptar packages de productos de inversi�n al nuevo m�dulo de siniestros
   FUNCTION fvalresc_finv(
      pnsesion IN NUMBER,
      psseguro IN NUMBER,
      pfrescat IN NUMBER,
      pcgarant IN NUMBER)
      RETURN NUMBER;

-- Fin Bug 14160
   FUNCTION fvalresctotrie(
      pnsesion IN NUMBER,
      psseguro IN NUMBER,
      pfrescat IN NUMBER,
      pcgarant IN NUMBER DEFAULT NULL)
      RETURN NUMBER;

   FUNCTION f_penal_sialp(
      pnsesion IN NUMBER,
      pprovisi IN NUMBER,
      psproduc IN NUMBER,
      pfsinies IN NUMBER,
      pnsinies IN NUMBER,
      psseguro IN NUMBER)
      RETURN NUMBER;
END calc_rescates;

/

  GRANT EXECUTE ON "AXIS"."CALC_RESCATES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."CALC_RESCATES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."CALC_RESCATES" TO "PROGRAMADORESCSI";
