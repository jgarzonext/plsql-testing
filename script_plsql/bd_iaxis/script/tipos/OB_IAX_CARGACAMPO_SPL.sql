--------------------------------------------------------
--  DDL for Type OB_IAX_CARGACAMPO_SPL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CARGACAMPO_SPL" AS OBJECT(
   cdarchi        VARCHAR2(50),
   norden         NUMBER,
   ccampo         VARCHAR2(50),
   ctipcam        VARCHAR2(1),
   nposici        NUMBER(3),
   nlongitud      NUMBER(4),
   ntipo          NUMBER(1),
   cdecimal       NUMBER,
   cmask          VARCHAR2(10),
   cedit          NUMBER(1),
   CONSTRUCTOR FUNCTION ob_iax_cargacampo_spl
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CARGACAMPO_SPL" AS
   CONSTRUCTOR FUNCTION ob_iax_cargacampo_spl
      RETURN SELF AS RESULT IS
   BEGIN
      --
      cdarchi := NULL;
      norden := NULL;
      ccampo := NULL;
      ctipcam := NULL;
      nposici := NULL;
      nlongitud := NULL;
      ntipo := NULL;
      cdecimal := NULL;
      cmask := NULL;
      cedit := 0;
      RETURN;
   --
   END;
--
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CARGACAMPO_SPL" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CARGACAMPO_SPL" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CARGACAMPO_SPL" TO "PROGRAMADORESCSI";
