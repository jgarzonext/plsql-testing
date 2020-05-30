--------------------------------------------------------
--  DDL for Type OB_IAX_MASDATOSGAR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_MASDATOSGAR" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_MASDATOSGAR
   PROPÓSITO:  Contiene la información de mas datos de garantias de la poliza

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        21/05/2009   RSC             1. Creación del objeto.
   2.0        16/12/2009   RSC             2. 0010690: APR - Provisiones en productos de cartera (PORTFOLIO)
   3.0        22/12/2009   RSC             3. 0010690: APR - Provisiones en productos de cartera (PORTFOLIO)
   4.0        11/04/2011   APD             4. 0018225: AGM704 - Realizar la modificación de precisión el cagente
******************************************************************************/
(
   ndetgar        NUMBER(4),
   fefecto        DATE,
   fvencim        DATE,
   ndurcob        NUMBER(4),
   ffincob        DATE,
   pinttec        NUMBER(5, 2),
   pintmin        NUMBER(5, 2),
   fprovt0        DATE,
   iprovt0        NUMBER,   --NUMBER(15, 2),
   fprovt1        DATE,
   iprovt1        NUMBER,   --NUMBER(15, 2),
   estado         NUMBER(1),
   testado        VARCHAR2(100),
   ctarifa        NUMBER(5),
   ftarifa        DATE,
   cunica         NUMBER(1),
   tunica         VARCHAR2(100),   -- Bug 13832 - RSC - 09/06/2010 - APRS015 - suplemento de aportaciones únicas
   cagente        NUMBER,   -- Bug 18225 - APD - 11/04/2011 - la precisión debe ser NUMBER
   provmat        NUMBER,   --NUMBER(17, 2),   --    Bug 10690 - RSC - 22/12/2009 - APR - Provisiones en productos de cartera (PORTFOLIO)
   ireducc        NUMBER,   --NUMBER(17, 2),   --    Bug 10690 - RSC - 22/12/2009 - APR - Provisiones en productos de cartera (PORTFOLIO)
   valresc        NUMBER,   -- Bug 31154/0173547 - APD - 05/05/2014 - Descuento Comercial y Actualización Fórmula Valor de Rescate
   CONSTRUCTOR FUNCTION ob_iax_masdatosgar
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_MASDATOSGAR" AS
   CONSTRUCTOR FUNCTION ob_iax_masdatosgar
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ndetgar := NULL;
      SELF.fefecto := NULL;
      SELF.fvencim := NULL;
      SELF.ndurcob := NULL;
      SELF.ffincob := NULL;
      SELF.pinttec := NULL;
      SELF.pintmin := NULL;
      SELF.fprovt0 := NULL;
      SELF.iprovt0 := NULL;
      SELF.fprovt1 := NULL;
      SELF.iprovt1 := NULL;
      SELF.estado := NULL;
      SELF.testado := NULL;
      SELF.ctarifa := NULL;
      SELF.ftarifa := NULL;
      SELF.cunica := NULL;
      SELF.tunica := NULL;   -- Bug 13832 - RSC - 09/06/2010 - APRS015 - suplemento de aportaciones únicas
      SELF.cagente := NULL;
      SELF.provmat := NULL;
      SELF.ireducc := NULL;
      SELF.valresc := NULL;   -- Bug 31154/0173547 - APD - 05/05/2014 - Descuento Comercial y Actualización Fórmula Valor de Rescate
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_MASDATOSGAR" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_MASDATOSGAR" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_MASDATOSGAR" TO "PROGRAMADORESCSI";
