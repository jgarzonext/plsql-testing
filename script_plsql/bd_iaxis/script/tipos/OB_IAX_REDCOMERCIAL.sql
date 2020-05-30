--------------------------------------------------------
--  DDL for Type OB_IAX_REDCOMERCIAL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_REDCOMERCIAL" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_REDCOMERCIAL
   PROP�SITO:      Objeto para contener la red comercial definida.

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/09/2008   AMC                1. Creaci�n del objeto.
   2.0        11/04/2011   APD                2. 0018225: AGM704 - Realizar la modificaci�n de precisi�n el cagente
   3.0        20/10/2011   JMC                3. 0019586: AGM003-Comisiones Indirectas a distintos niveles.
   4.0        09/11/2011   APD                4. 0018946: LCOL_P001 - PER - Visibilidad en personas
******************************************************************************/
(
   cempres        NUMBER(2),   -- cod.de empresa
   cagente        NUMBER,   -- cod.del agente -- Bug 18225 - APD - 11/04/2011 - la precisi�n debe ser NUMBER
   fmovini        DATE,   -- f. inicio de la red comercial
   fmovfin        DATE,   -- f. fin de la red comercial
   ctipage        NUMBER(2),   -- cod. de tipo de agente
   tctipage       VARCHAR2(100),   -- descripci�n de tipo agente
   cpadre         NUMBER,   -- cod.del agente del cual depende -- Bug 18225 - APD - 11/04/2011 - la precisi�n debe ser NUMBER
   tpadre         VARCHAR2(100),   -- nombre del agente del cual depende
   cpervisio      NUMBER,   -- nivel de visi�n
   tpervisio      VARCHAR2(100),   -- nombre del agente de nivel de visi�n
   cpernivel      NUMBER(6),   -- tipo de visi�n
   tpernivel      VARCHAR2(100),   -- descripci�n del tipo de visi�n
   cageind        NUMBER,   --C�digo agente comisiones indirectas -- Bug 19585 - JMC - 20/10/2011
   tageind        VARCHAR2(100),   --Nombre agente comisiones indirectas -- Bug 19585 - JMC - 20/10/2011
   -- Bug 18946 - APD - 09/11/2011 - se a�aden los campos de visibilidad por poliza
   cpolvisio      NUMBER,   -- nivel de visi�n de polizas
   tpolvisio      VARCHAR2(100),   -- nombre del agente de nivel de visi�n de polizas
   cpolnivel      NUMBER(6),   -- tipo de visi�n de polizas
   tpolnivel      VARCHAR2(100),
                                   -- descripci�n del tipo de visi�n de polizas
   -- fin Bug 18946 - APD - 09/11/2011
   -- BUG 21672 - JTS - 29/05/2012
   cenlace        NUMBER,   --enlace en la redcomercial
   tenlace        VARCHAR2(100),   --enlace en la redcomercial
   -- fi BUG 21672
   CONSTRUCTOR FUNCTION ob_iax_redcomercial
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_REDCOMERCIAL" AS
   CONSTRUCTOR FUNCTION ob_iax_redcomercial
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cempres := NULL;
      SELF.cagente := NULL;
      SELF.fmovini := NULL;
      SELF.fmovfin := NULL;
      SELF.ctipage := NULL;
      SELF.tctipage := NULL;
      SELF.cpadre := NULL;
      SELF.tpadre := NULL;
      SELF.cpervisio := NULL;
      SELF.tpervisio := NULL;
      SELF.cpernivel := NULL;
      SELF.tpernivel := NULL;
      SELF.cageind := NULL;
      SELF.tageind := NULL;
      -- Bug 18946 - APD - 09/11/2011 - se a�aden los campos de visibilidad por poliza
      SELF.cpolvisio := NULL;
      SELF.tpolvisio := NULL;
      SELF.cpolnivel := NULL;
      SELF.tpolnivel := NULL;
      -- fin Bug 18946 - APD - 09/11/2011
      -- BUG 21672 - JTS - 29/05/2012
      SELF.cenlace := NULL;
      SELF.tenlace := NULL;
      -- fi BUG 21672
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_REDCOMERCIAL" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_REDCOMERCIAL" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_REDCOMERCIAL" TO "PROGRAMADORESCSI";
