--------------------------------------------------------
--  DDL for Type OB_IAX_CAMPAAGE_GANADOR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CAMPAAGE_GANADOR" AS OBJECT
/******************************************************************************
   NOMBRE:  OB_IAX_CAMPAAGE_GANADOR
   PROPÓSITO:     Objeto para contener los datos de los agentes ganadores asociados a campa�a.

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        29/08/2011   FAL                1. Creación del objeto.
******************************************************************************/
(
   ccodigo        NUMBER,   -- codigo de la campa�a
   cagente        NUMBER,   -- c�digo de agente
   tagente        VARCHAR2(200),   -- Nombre y apellidos del agente (raz�n social para el caso de personas jur�dicas)
   ctipage        NUMBER,   -- tipo agente
   ttipage        VARCHAR2(200),   -- descripcion del tipo agente
   finicam        DATE,   -- fecha inicio de la campa�a
   ffincam        DATE,   -- fecha fin de la campa�a
   bganador       VARCHAR2(1),   -- si es ganador S/N
   CONSTRUCTOR FUNCTION ob_iax_campaage_ganador
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CAMPAAGE_GANADOR" AS
   CONSTRUCTOR FUNCTION ob_iax_campaage_ganador
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccodigo := NULL;
      SELF.cagente := NULL;
      SELF.tagente := NULL;
      SELF.ctipage := NULL;
      SELF.ttipage := NULL;
      SELF.finicam := NULL;
      SELF.ffincam := NULL;
      SELF.bganador := 'S';
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CAMPAAGE_GANADOR" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CAMPAAGE_GANADOR" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CAMPAAGE_GANADOR" TO "PROGRAMADORESCSI";
