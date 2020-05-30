--------------------------------------------------------
--  DDL for Type OB_IAX_AUTDISPOSITIVOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_AUTDISPOSITIVOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_AUTDISPOSITIVOS
   PROPÓSITO:  Contiene la información del riesgo autos dispositivos

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/08/2007   disp                1. Creación del objeto.
   2.0        07/04/2009   AMC                 2. Se añaden los campos CVEHB7 y CMARCADO
   3.0        26/02/2013   LCF                 3. 0025803: RSA001 - Ampliar los decimales que utiliza iAXIS
   4.0        01/07/2013   RCL                 4. 0024697: LCOL_T031-Tamaño del campo SSEGURO
******************************************************************************/
(
   /* Estriesgos + Riesgos */
   sseguro        NUMBER,   --Secuencial de seguro
   nriesgo        NUMBER(6),   --Numero de riesgo
   nmovimi        NUMBER(4),   --Numero de movimiento
   cversion       VARCHAR2(11),   --Codigo de la version del vehiculo
   cdispositivo   VARCHAR2(10),   --Codigo dispositivo
   tdispositivo   VARCHAR2(1000),   --desc dispositivo / Opcionpack
   cpropdisp      VARCHAR2(8),   --Codigo prop dispositivo
   tpropdisp      VARCHAR2(100),   --Descripcion prop. dispositivo
   finicontrato   DATE,   --Fecha inicio o alta
   ffincontrato   DATE,   --Fecha inicio o alta
   ivaldisp       NUMBER,   --25803  --Valor dispositivos
   ncontrato      VARCHAR2(100),   --Valor dispositivos
   tdescdisp      VARCHAR2(100),   --Descripción dispositivos
   cvehb7         NUMBER(2),   -- Indica si procede de base 7 0-No 1-si
   cmarcado       NUMBER(2),   -- Indica si se ha seleccionado 0-No 1-si
   /* */
   CONSTRUCTOR FUNCTION ob_iax_autdispositivos
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_AUTDISPOSITIVOS" AS
   CONSTRUCTOR FUNCTION ob_iax_autdispositivos
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sseguro := NULL;
      SELF.tdispositivo := '';
      SELF.nriesgo := NULL;
      SELF.nmovimi := 0;
      SELF.cversion := NULL;
      SELF.cdispositivo := NULL;
      SELF.cpropdisp := NULL;
      SELF.tpropdisp := NULL;
      SELF.finicontrato := NULL;
      SELF.ivaldisp := 0;
      SELF.tdescdisp := NULL;
      SELF.cvehb7 := 0;
      SELF.cmarcado := 0;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_AUTDISPOSITIVOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AUTDISPOSITIVOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AUTDISPOSITIVOS" TO "PROGRAMADORESCSI";
