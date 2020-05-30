--------------------------------------------------------
--  DDL for Package PAC_GESTION_RETENIDAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_GESTION_RETENIDAS" AS
/******************************************************************************
   NOMBRE:     PAC_GESTION_RETENIDAS
   PROP�SITO:  Package que contiene las funciones para la Gesti�n de las Propuestas Retenidas.

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   2.0        03/03/2009   DRA                2. BUG0009297: IAX - Gesti� de propostes - Revisi� punts pendents
   3.0        01/10/2009   JRB                3. BUG0011196: Gesti�n de propuestas retenidas

******************************************************************************/
   FUNCTION f_lanzar_tipo_mail(
      psseguro IN NUMBER,
      pctipo IN NUMBER,
      pcidioma IN NUMBER,
      pcaccion IN VARCHAR2,
      pmail OUT VARCHAR2,
      pasunto OUT VARCHAR2,
      pfrom OUT VARCHAR2,
      pto OUT VARCHAR2,
      pto2 OUT VARCHAR2)
      RETURN NUMBER;

   FUNCTION f_aceptar_propuesta(
      psseguro IN NUMBER,
      pnmovimi IN NUMBER,
      pnriesgo IN NUMBER,
      pfecha IN DATE DEFAULT NULL,
      ptobserv IN VARCHAR2 DEFAULT NULL)
      RETURN NUMBER;

   FUNCTION f_rechazar_propuesta(
      psseguro IN NUMBER,
      pnmovimi IN NUMBER,
      pnriesgo IN NUMBER,
      pcmotmov IN NUMBER,
      pnsuplem IN NUMBER,
      ptobserv IN VARCHAR2,
      ptpostpper IN psu_retenidas.postpper%TYPE,
      pcperpost IN psu_retenidas.perpost%TYPE)
      RETURN NUMBER;

   FUNCTION f_cambio_fcancel(psseguro IN NUMBER, pnmovimi IN NUMBER, pfcancel_nou IN DATE)
      RETURN NUMBER;

   FUNCTION f_cambio_sobreprima(psseguro IN NUMBER, pnmovimi IN NUMBER, pnriesgo IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_cambio_clausulas(psseguro IN NUMBER, pnmovimi IN NUMBER, pnriesgo IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_estado_propuesta(psseguro IN NUMBER, pcreteni OUT NUMBER)
      RETURN NUMBER;

   FUNCTION f_act_estadogestion(
      psseguro IN NUMBER,
      pnriesgo IN NUMBER,
      pnmovimi IN NUMBER,
      pcmotret IN NUMBER,
      pnmotret IN NUMBER,
      pcestgest IN NUMBER,
      ptodos IN NUMBER)
      RETURN NUMBER;
END pac_gestion_retenidas;

/

  GRANT EXECUTE ON "AXIS"."PAC_GESTION_RETENIDAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_GESTION_RETENIDAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_GESTION_RETENIDAS" TO "PROGRAMADORESCSI";
