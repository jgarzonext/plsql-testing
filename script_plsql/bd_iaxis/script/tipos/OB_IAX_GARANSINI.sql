--------------------------------------------------------
--  DDL for Type OB_IAX_GARANSINI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_GARANSINI" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_GARANSINI
   PROPÓSITO:  Contiene la información de las garantias vinculadas a un siniestro

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        20/12/2007   JAS                1. Creación del objeto.
******************************************************************************/
(
   nsinies        VARCHAR2(14),   --Número del siniestro
   cgarant        NUMBER(8),   --Código de la garantía
   tgarant        VARCHAR2(120),   --Descripción de la garantía
   fvalora        DATE,   --Fecha de la valoración
   ivalora        NUMBER,   --NUMBER(13, 2),   --Valoración de la garantía
   icaprisc       NUMBER,   --NUMBER(13, 2),   --Capital del riesgo
   ipenali        NUMBER,   --NUMBER(13, 2),   --Importe de penalitzación
   fperini        DATE,
   fperfin        DATE,
   cusualt        VARCHAR2(30),   --Usuario que ha realizado la Alta
   falta          DATE,   --Fecha alta de la valoración
   cusumod        VARCHAR2(30),   --Usuario que ha realizado la Modificación
   fmodifi        DATE,   --Fecha modificación de la valoración
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
