--------------------------------------------------------
--  DDL for Type OB_IAX_PROF_SERVI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROF_SERVI" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PROF_SERVI
   PROPÓSITO:  Contiene los servicios del profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        25/01/2013   NSS                1. Creación del objeto.
******************************************************************************/
(
   sservic        NUMBER,   --Identificativo del servicio
   ccodcup        VARCHAR2(10),   --Codigo CUPS
   tdescri        VARCHAR2(200),   --Descripcion (si es un codigo manual)
   cunimed        NUMBER,   --Unidad de medida
   iprecio        NUMBER,   --Valor unitario
   cmagnit        NUMBER,   --Unidad valor (moneda/valor relativo)
   iminimo        NUMBER,   --Importe minimo
   cselecc        NUMBER,   --Seleccionable en alta de gestion 1=si / 2=no
   ctipser        NUMBER,   -- Tipo servicio.
   finivig        DATE,   --Inicio vigenciarte indemnizado
   ffinvig        DATE,   --Fin vigencia
   ctipcal        NUMBER,   --tipo de cálculo
   CONSTRUCTOR FUNCTION ob_iax_prof_servi
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PROF_SERVI" AS
   CONSTRUCTOR FUNCTION ob_iax_prof_servi
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sservic := NULL;
      SELF.ccodcup := NULL;
      SELF.tdescri := NULL;
      SELF.cunimed := NULL;
      SELF.iprecio := NULL;
      SELF.cmagnit := NULL;
      SELF.iminimo := NULL;
      SELF.cselecc := NULL;
      SELF.ctipser := NULL;
      SELF.finivig := NULL;
      SELF.ffinvig := NULL;
      SELF.ctipcal := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_SERVI" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_SERVI" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_SERVI" TO "PROGRAMADORESCSI";
