--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_T_JUDICIAL_DETPER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_T_JUDICIAL_DETPER" AS OBJECT
   /******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMITA_JUDICIAL
   PROPOSITO:  Contiene la informacion de la tramitacion judicial - pretensiones
   REVISIONES:
   Ver        Fecha        Autor             Descripcion
   ---------  ----------  ---------------  ------------------------------------
   1.0        09/08/2016   IGIL                1. Creacion objeto
******************************************************************************/
   (
   NROL NUMBER(3),
   NPERSONA NUMBER(3),
   NTIPPER NUMBER(8),
   TTIPPER VARCHAR2(200),
   NNUMIDE VARCHAR2(50),
   TNOMBRE VARCHAR2(200),
   IIMPORTE NUMBER(19,2),
   CONSTRUCTOR FUNCTION ob_iax_sin_t_judicial_detper
      RETURN SELF AS RESULT
      );
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_T_JUDICIAL_DETPER" as
   CONSTRUCTOR FUNCTION ob_iax_sin_t_judicial_detper
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.NROL := NULL;
      SELF.NPERSONA := NULL;
      SELF.NTIPPER := NULL;
      SELF.NNUMIDE  := NULL;
      RETURN;
   END;
   END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_T_JUDICIAL_DETPER" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_T_JUDICIAL_DETPER" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_T_JUDICIAL_DETPER" TO "PROGRAMADORESCSI";
