--------------------------------------------------------
--  DDL for Type OB_IAX_AUTOLIQUIDAAGE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_AUTOLIQUIDAAGE" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_AUTOLIQUIDAAGE
   PROP�SITO:  Contiene los datos de una cabecera de liquidaci�n

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/10/2015   jrb                1. Creaci�n del objeto.

******************************************************************************/
(
   sproliq        NUMBER,   --      Secuencial Proceso Liquidaci�n
   cempres        NUMBER(2),   --     Codigo empresa
   cageclave      NUMBER,   -- c�digo agente clave
   cagente        NUMBER,   --c�digo de agente
   nliqmen        NUMBER,   --c�digo de liquidacion de liquidacab
   cestautoliq    NUMBER,   --estado autoliq
   iimporte       NUMBER,   --importe de autoliquidacion
   cusuari        VARCHAR2(20),   --      usuario que realiza la autoliquidacion
   fcobro         DATE,   --fecha de cobro de autoliquidacion
   cmarcado       NUMBER,   --marcado/desmarcado
   idifglobal     NUMBER,   --diferenciaglobal
   fliquida       DATE,   --fecha liquidacion
   tagente        VARCHAR2(200),   --      nombre agente que realiza la autoliquidacion
   CONSTRUCTOR FUNCTION ob_iax_autoliquidaage
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_AUTOLIQUIDAAGE" AS
/******************************************************************************
   NOMBRE:       OB_IAX_AUTOLIQUIDAAGE
   PROP�SITO:  Contiene los datos de una cabecera de liquidaci�n

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/10/2015   jrb                1. Creaci�n del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_autoliquidaage
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cempres := NULL;
      SELF.sproliq := NULL;
      SELF.cageclave := NULL;
      SELF.cagente := NULL;
      SELF.nliqmen := NULL;
      SELF.cestautoliq := NULL;
      SELF.iimporte := NULL;
      SELF.cusuari := NULL;
      SELF.fcobro := NULL;
      SELF.cmarcado := 0;
      SELF.idifglobal := 0;
      RETURN;
   END ob_iax_autoliquidaage;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_AUTOLIQUIDAAGE" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AUTOLIQUIDAAGE" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AUTOLIQUIDAAGE" TO "PROGRAMADORESCSI";
