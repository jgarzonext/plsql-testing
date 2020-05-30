--------------------------------------------------------
--  DDL for Type OB_IAX_SARLAFT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SARLAFT" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_SARLAFT
   PROPOSITO:  Contiene la informacion SARLAFT de las personas

   REVISIONES:
   Ver         Fecha        Autor             Descripcion
   ---------  ----------   ---------------    ----------------------------------
   1.0        22/09/2011   MDS                1. Creacion del objeto
******************************************************************************/
(
   sperson        NUMBER(10),   -- Secuencia unica de identificacion de una persona
   cagente        NUMBER,   -- Codigo de agente
   fefecto        DATE,   -- Fecha de efecto del documento SARLAFT
   cusualt        VARCHAR2(20),   -- Codigo usuario alta del registro
   falta          DATE,   -- Fecha de alta del registro
   CONSTRUCTOR FUNCTION ob_iax_sarlaft
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SARLAFT" AS
   CONSTRUCTOR FUNCTION ob_iax_sarlaft
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sperson := 0;
      SELF.cagente := 0;
      SELF.fefecto := NULL;
      SELF.cusualt := '';
      SELF.falta := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SARLAFT" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SARLAFT" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SARLAFT" TO "PROGRAMADORESCSI";
