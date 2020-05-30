--------------------------------------------------------
--  DDL for Type OB_IAX_NMESEXTRA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_NMESEXTRA" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_NMESEXTRA
   PROPÓSITO:  Contiene información de los meses que tienen paga extra

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        27/11/2008   AMC                1. Creación del objeto.
   2.0        11/02/2013   NMM                2. S'afegeix un import que pot ser diferent per cada mes.

******************************************************************************/
(
   nmes1          NUMBER,
   nmes2          NUMBER,
   nmes3          NUMBER,
   nmes4          NUMBER,
   nmes5          NUMBER,
   nmes6          NUMBER,
   nmes7          NUMBER,
   nmes8          NUMBER,
   nmes9          NUMBER,
   nmes10         NUMBER,
   nmes11         NUMBER,
   nmes12         NUMBER,
   imp_nmes1      NUMBER,
   imp_nmes2      NUMBER,
   imp_nmes3      NUMBER,
   imp_nmes4      NUMBER,
   imp_nmes5      NUMBER,
   imp_nmes6      NUMBER,
   imp_nmes7      NUMBER,
   imp_nmes8      NUMBER,
   imp_nmes9      NUMBER,
   imp_nmes10     NUMBER,
   imp_nmes11     NUMBER,
   imp_nmes12     NUMBER,
   CONSTRUCTOR FUNCTION ob_iax_nmesextra
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_NMESEXTRA" AS
   CONSTRUCTOR FUNCTION ob_iax_nmesextra
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nmes1 := NULL;
      SELF.nmes2 := NULL;
      SELF.nmes3 := NULL;
      SELF.nmes4 := NULL;
      SELF.nmes5 := NULL;
      SELF.nmes6 := NULL;
      SELF.nmes7 := NULL;
      SELF.nmes8 := NULL;
      SELF.nmes9 := NULL;
      SELF.nmes10 := NULL;
      SELF.nmes11 := NULL;
      SELF.nmes12 := NULL;
      SELF.imp_nmes1 := NULL;
      SELF.imp_nmes2 := NULL;
      SELF.imp_nmes3 := NULL;
      SELF.imp_nmes4 := NULL;
      SELF.imp_nmes5 := NULL;
      SELF.imp_nmes6 := NULL;
      SELF.imp_nmes7 := NULL;
      SELF.imp_nmes8 := NULL;
      SELF.imp_nmes9 := NULL;
      SELF.imp_nmes10 := NULL;
      SELF.imp_nmes11 := NULL;
      SELF.imp_nmes12 := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_NMESEXTRA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_NMESEXTRA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_NMESEXTRA" TO "PROGRAMADORESCSI";
