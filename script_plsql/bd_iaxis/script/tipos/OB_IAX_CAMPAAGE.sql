--------------------------------------------------------
--  DDL for Type OB_IAX_CAMPAAGE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CAMPAAGE" AS OBJECT
/******************************************************************************
   NOMBRE:  OB_IAX_CAMPAAGE
   PROPÃ“SITO:     Objeto para contener los datos de los agentes asociados a campaña.

   REVISIONES:
   Ver        Fecha        Autor             DescripciÃ³n
   ---------  ----------  ---------------  ------------------------------------
   1.0        29/08/2011   FAL                1. CreaciÃ³n del objeto.
******************************************************************************/
(
  ccodigo  NUMBER, -- codigo de la campaña
  cagente  NUMBER, -- código de agente
  tagente  VARCHAR2(200), -- Nombre y apellidos del agente (razón social para el caso de personas jurídicas)
  ctipage  NUMBER, -- tipo agente
  ttipage  VARCHAR2(200), -- descripcion del tipo agente
  finicam  DATE, -- fecha inicio de la campaña
  ffincam  DATE, -- fecha fin de la campaña
  bganador VARCHAR2(1), -- si es ganador S/N
  imeta    NUMBER,
  CONSTRUCTOR FUNCTION ob_iax_campaage RETURN SELF AS RESULT
)
;
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CAMPAAGE" AS
  CONSTRUCTOR FUNCTION ob_iax_campaage RETURN SELF AS RESULT IS
  BEGIN
    SELF.ccodigo  := NULL;
    SELF.cagente  := NULL;
    SELF.tagente  := NULL;
    SELF.ctipage  := NULL;
    SELF.ttipage  := NULL;
    SELF.finicam  := NULL;
    SELF.ffincam  := NULL;
    SELF.bganador := 'N';
    SELF.imeta    := NULL;
    RETURN;
  END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CAMPAAGE" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CAMPAAGE" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CAMPAAGE" TO "PROGRAMADORESCSI";
