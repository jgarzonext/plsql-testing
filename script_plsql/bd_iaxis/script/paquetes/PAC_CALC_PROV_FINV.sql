--------------------------------------------------------
--  DDL for Package PAC_CALC_PROV_FINV
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_CALC_PROV_FINV" AUTHID CURRENT_USER IS
   /******************************************************************************
      NOMBRE:       PAC_CALC_PROV_FINV
      PROP�SITO:
      REVISIONES:

      Ver        Fecha        Autor             Descripci�n
      ---------  ----------  ---------------  ------------------------------------
       1.0       07/05/2009  RSC              1. Creaci�n de package
       2.0       17/09/2009     RSC           2. Bug 0010828: CRE - Revisi�n de los productos PPJ din�mico y Pla Estudiant (ajustes)
   ******************************************************************************/
   FUNCTION fechaultcambprima281(
      psesion NUMBER,
      pseguro IN NUMBER,
      priesgo IN NUMBER,
      importeprimper OUT NUMBER)
      RETURN NUMBER;

   FUNCTION fechaultcambprima500(
      psesion NUMBER,
      pseguro IN NUMBER,
      pfecha IN NUMBER,
      priesgo IN NUMBER)
      RETURN NUMBER;

   FUNCTION fechaultcambprima508(
      psesion NUMBER,
      pseguro IN NUMBER,
      pfecha IN NUMBER,
      priesgo IN NUMBER)
      RETURN NUMBER;

   FUNCTION fechaultcambprima526(
      psesion NUMBER,
      pseguro IN NUMBER,
      pfecha IN NUMBER,
      priesgo IN NUMBER)
      RETURN NUMBER;

   FUNCTION fechaultcambprima266(
      psesion NUMBER,
      pseguro IN NUMBER,
      pfecha IN NUMBER,
      priesgo IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_cesperado(psesion IN NUMBER, psseguro IN NUMBER, pfecha IN NUMBER)
      RETURN NUMBER;

   FUNCTION ff_cfallec(psesion IN NUMBER, psseguro IN NUMBER, ppfefecto IN NUMBER)
      RETURN NUMBER;
/*************************************************************************
   Obtiene el rendimiento esperado del modelo de inversi�n asociado
   a un contrato financiero de inversi�n.
   param in ptablas  : Tablas reales o table est
   param in psseguro : C�digo de contrato
   return          : 0 todo correcto
                     1 ha habido un error
*************************************************************************/
-- Bug 9424 - 07/04/2009 - RSC - Creaci�n del producto PPJ Din�mic
--FUNCTION ff_rendimiento_esperado(ptablas IN VARCHAR2, psseguro IN NUMBER)
--RETURN NUMBER;
-- Fin Bug 9424
END pac_calc_prov_finv;
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_CALC_PROV_FINV" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_CALC_PROV_FINV" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_CALC_PROV_FINV" TO "PROGRAMADORESCSI";
