--------------------------------------------------------
--  DDL for Type OB_IAX_ASEGURADORAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_ASEGURADORAS" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_ASEGURADORAS
   PROPÓSITO:  Contiene la información de las aseguradoras

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        18/01/2009   JGM                1. Creación del objeto.
******************************************************************************/
(
   ccodaseg       VARCHAR2(15),
   sperson        NUMBER(10),
   descripcio     VARCHAR2(100),
   cempres        NUMBER(2),
   l_depositarias t_iax_pdepositarias,
   coddgs         VARCHAR2(10),   --ppa
   ccodigo        NUMBER(7),   --ppa
   tnombre        VARCHAR2(100),   --ppa
   clistblanc     NUMBER(1),
   CONSTRUCTOR FUNCTION ob_iax_aseguradoras
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_ASEGURADORAS" AS
   CONSTRUCTOR FUNCTION ob_iax_aseguradoras
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccodaseg := NULL;
      SELF.sperson := NULL;
      SELF.descripcio := NULL;
      SELF.cempres := NULL;
      SELF.coddgs := NULL;
      SELF.ccodigo := NULL;
      SELF.tnombre := NULL;
      SELF.clistblanc := NULL;
      --
      SELF.l_depositarias := NULL;
      RETURN;
   END ob_iax_aseguradoras;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_ASEGURADORAS" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_ASEGURADORAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_ASEGURADORAS" TO "R_AXIS";
