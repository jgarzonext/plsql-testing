--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_AGENTES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_AGENTES" AS OBJECT
/******************************************************************************
   NOMBRE:  OB_IAX_SIN_AGENTES
   PROPÓSITO:     Objeto para contener los datos de los sin_agentes.

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0                                        1. Creación del objeto.
******************************************************************************/
(
   sclave         NUMBER,
   cagente        NUMBER,
   ctramte        NUMBER(4),
   cramo          NUMBER(4),
   ctipcod        NUMBER(4),
   ctramitad      VARCHAR2(4 BYTE),
   sprofes        NUMBER(8),
   cvalora        NUMBER(1),
   finicio        DATE,
   ffin           DATE,
   cusuari        VARCHAR2(20 BYTE),
   falta          DATE,
   CONSTRUCTOR FUNCTION ob_iax_sin_agentes
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_AGENTES" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_agentes
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sclave := NULL;
      SELF.cagente := NULL;
      SELF.ctramte := NULL;
      SELF.cramo := NULL;
      SELF.ctipcod := NULL;
      SELF.ctramitad := NULL;
      SELF.sprofes := NULL;
      SELF.cvalora := NULL;
      SELF.finicio := NULL;
      SELF.ffin := NULL;
      SELF.cusuari := NULL;
      SELF.falta := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_AGENTES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_AGENTES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_AGENTES" TO "PROGRAMADORESCSI";
