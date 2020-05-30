--------------------------------------------------------
--  DDL for Type OB_IAX_AGE_CONTACTOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_AGE_CONTACTOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_AGE_CONTACTOS
   PROPÓSITO:  Contiene la información del contacto

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        24/02/2012  AMC               1. Creación del objeto.
******************************************************************************/
(
   cagente        NUMBER,
   ctipo          NUMBER,
   ttipo          VARCHAR2(100),
   norden         NUMBER,
   nombre         VARCHAR2(100),
   cargo          VARCHAR2(100),
   iddomici       NUMBER(2),
   tddomici       VARCHAR2(200),
   telefono       NUMBER(10),
   telefono2      NUMBER(10),
   fax            NUMBER(10),
   web            VARCHAR2(200),
   email          VARCHAR2(200),
   CONSTRUCTOR FUNCTION ob_iax_age_contactos
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_AGE_CONTACTOS" AS
   CONSTRUCTOR FUNCTION ob_iax_age_contactos
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cagente := NULL;
      SELF.ctipo := NULL;
      SELF.ttipo := '';
      SELF.norden := NULL;
      SELF.nombre := '';
      SELF.cargo := NULL;
      SELF.iddomici := NULL;
      SELF.tddomici := '';
      SELF.telefono := '';
      SELF.telefono2 := '';
      SELF.fax := '';
      SELF.web := '';
      SELF.email := '';
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_AGE_CONTACTOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AGE_CONTACTOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_AGE_CONTACTOS" TO "PROGRAMADORESCSI";
