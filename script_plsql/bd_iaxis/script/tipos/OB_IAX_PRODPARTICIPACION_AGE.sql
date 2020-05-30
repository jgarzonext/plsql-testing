--------------------------------------------------------
--  DDL for Type OB_IAX_PRODPARTICIPACION_AGE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODPARTICIPACION_AGE" AS OBJECT
/******************************************************************************
   NOMBRE:  OB_IAX_PRODPARTICIPACION_AGENTE
   PROPÓSITO:     Objeto para contener Productos para la participación de utilidades para el agente

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/09/2011   APD                1. 0019169: LCOL_C001 - Campos nuevos a añadir para Agentes
******************************************************************************/
(
   cagente        NUMBER,   --    Código de agente
   sproduc        NUMBER(6),   --    Código del producto
   tproduc        VARCHAR2(100),   --    Descripción del producto
   cactivi        NUMBER(4),   --    Código de la actividad
   tactivi        VARCHAR2(100),   --    Descripción de la actividad
   CONSTRUCTOR FUNCTION ob_iax_prodparticipacion_age
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODPARTICIPACION_AGE" AS
   CONSTRUCTOR FUNCTION ob_iax_prodparticipacion_age
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cagente := NULL;
      SELF.sproduc := NULL;
      SELF.tproduc := NULL;
      SELF.cactivi := NULL;
      SELF.tactivi := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODPARTICIPACION_AGE" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODPARTICIPACION_AGE" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODPARTICIPACION_AGE" TO "PROGRAMADORESCSI";
