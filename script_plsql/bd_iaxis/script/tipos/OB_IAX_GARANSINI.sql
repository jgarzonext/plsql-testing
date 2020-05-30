--------------------------------------------------------
--  DDL for Type OB_IAX_GARANSINI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_GARANSINI" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_GARANSINI
   PROP�SITO:  Contiene la informaci�n de las garantias vinculadas a un siniestro

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        20/12/2007   JAS                1. Creaci�n del objeto.
******************************************************************************/
(
   nsinies        VARCHAR2(14),   --N�mero del siniestro
   cgarant        NUMBER(8),   --C�digo de la garant�a
   tgarant        VARCHAR2(120),   --Descripci�n de la garant�a
   fvalora        DATE,   --Fecha de la valoraci�n
   ivalora        NUMBER,   --NUMBER(13, 2),   --Valoraci�n de la garant�a
   icaprisc       NUMBER,   --NUMBER(13, 2),   --Capital del riesgo
   ipenali        NUMBER,   --NUMBER(13, 2),   --Importe de penalitzaci�n
   fperini        DATE,
   fperfin        DATE,
   cusualt        VARCHAR2(30),   --Usuario que ha realizado la Alta
   falta          DATE,   --Fecha alta de la valoraci�n
   cusumod        VARCHAR2(30),   --Usuario que ha realizado la Modificaci�n
   fmodifi        DATE,   --Fecha modificaci�n de la valoraci�n
   CONSTRUCTOR FUNCTION ob_iax_garansini
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_GARANSINI" AS
   CONSTRUCTOR FUNCTION ob_iax_garansini
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nsinies := NULL;
      SELF.cgarant := NULL;
      SELF.tgarant := NULL;
      SELF.fvalora := NULL;
      SELF.ivalora := NULL;
      SELF.icaprisc := NULL;
      SELF.ipenali := NULL;
      SELF.fperini := NULL;
      SELF.fperfin := NULL;
      SELF.cusualt := NULL;
      SELF.falta := NULL;
      SELF.cusumod := NULL;
      SELF.fmodifi := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_GARANSINI" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GARANSINI" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_GARANSINI" TO "PROGRAMADORESCSI";
