--------------------------------------------------------
--  DDL for Type OB_IAX_DETDESCUENTO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DETDESCUENTO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DETDESCUENTO
   PROPÓSITO:  Contiene la información de la gestión de comisión

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/03/2012   JRB                1. Creación del objeto.
******************************************************************************/
(
   sproduc        NUMBER(6),
   ttitulo        VARCHAR2(500),
   trotulo        VARCHAR2(500),
   cactivi        NUMBER(4),
   tactivi        VARCHAR2(500),
   cgarant        NUMBER(4),
   tgarant        VARCHAR2(500),
   nivel          NUMBER(1),   -- 1 productos, 2 actividad, 3 garantia
   finivig        DATE,
   ffinvig        DATE,
   modificado     NUMBER,   --para saber si el registro se tiene que bajar o no
   cmoddesc       NUMBER(1),   -- Código de modalidad del descuento
   tmoddesc       VARCHAR2(500),
   cdesc          NUMBER(2),
   tdesc          VARCHAR2(500),
   pdesc          FLOAT,   -- Porcentaje de descuento
   ninialt        NUMBER,
   nfinalt        NUMBER,
   nindice        NUMBER,
   CONSTRUCTOR FUNCTION ob_iax_detdescuento
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DETDESCUENTO" AS
   CONSTRUCTOR FUNCTION ob_iax_detdescuento
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cmoddesc := 0;
      SELF.pdesc := 0;
      SELF.modificado := 0;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DETDESCUENTO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DETDESCUENTO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DETDESCUENTO" TO "PROGRAMADORESCSI";
