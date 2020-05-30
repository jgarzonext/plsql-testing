--------------------------------------------------------
--  DDL for Package PAC_SUPLEM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_SUPLEM" 
IS
   --  funci�n que llama a los suplementos seg�n la instalaci�n y parametrizaci�n.
   FUNCTION f_suplem_car(
      psproces     IN       NUMBER,
      indice_err   IN OUT   NUMBER,
      pfdesde      IN       DATE,
      pfhasta      IN       DATE,
      pmodo                 NUMBER)
      RETURN NUMBER;
   -- procedimiento que llena la tabla de params_suplementos para realizar el suplem.
   FUNCTION f_insparametros(
      psproces   NUMBER,
      pclave     VARCHAR2,
      pvalor     NUMBER)
      RETURN NUMBER;
   --SMF funci�n que guarda el estado de la poliza en seguroscar y proceslin
   FUNCTION f_seguroscar(
      psproces   NUMBER,
      psseguro   NUMBER,
      pnriesgo   NUMBER,
      pcmotmov   NUMBER,
      pnerror    NUMBER DEFAULT NULL)
      RETURN NUMBER;
   num_err    NUMBER; --polizas erroneas de un suplemento.
/******************************************************************************
  -- EJECUCI�N DE LOS SUPLEMENTOS ANTES DE LA CARTERA
******************************************************************************/
END pac_suplem;
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_SUPLEM" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_SUPLEM" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_SUPLEM" TO "PROGRAMADORESCSI";
