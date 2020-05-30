--------------------------------------------------------
--  DDL for Type OB_IAX_PRODPARTICIPACION_AGE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODPARTICIPACION_AGE" AS OBJECT
/******************************************************************************
   NOMBRE:  OB_IAX_PRODPARTICIPACION_AGENTE
   PROP�SITO:     Objeto para contener Productos para la participaci�n de utilidades para el agente

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/09/2011   APD                1. 0019169: LCOL_C001 - Campos nuevos a a�adir para Agentes
******************************************************************************/
(
   cagente        NUMBER,   --    C�digo de agente
   sproduc        NUMBER(6),   --    C�digo del producto
   tproduc        VARCHAR2(100),   --    Descripci�n del producto
   cactivi        NUMBER(4),   --    C�digo de la actividad
   tactivi        VARCHAR2(100),   --    Descripci�n de la actividad
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
