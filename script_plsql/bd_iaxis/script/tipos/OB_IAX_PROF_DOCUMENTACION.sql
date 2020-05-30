--------------------------------------------------------
--  DDL for Type OB_IAX_PROF_DOCUMENTACION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROF_DOCUMENTACION" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_PROF_DOCUMENTACION
   PROPÓSITO:  Contiene la documentación asociada al profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        21/01/2013   NSS                1. Creación del objeto.
******************************************************************************/
(
   sprofes        VARCHAR2(14),   --Codigo profesional  sin_prof_doc
   norddoc        NUMBER,   --Número Documento Siniestro
   iddocgx        NUMBER(10),   --Identificador Documento Gedox
   freclama       DATE,   --Fecha Reclamación Documento
   frecibe        DATE,   --Fecha Recepción Documento
   fcaduca        DATE,   --Fecha Caducidad Documento
   cusualt        VARCHAR2(20),   --Código Usuario Alta   sprofes, norddoc, iddocgx, tdescri, cusualt, falta, fcaduca, tobserva
   falta          DATE,   --Fecha Alta
   cusumod        VARCHAR2(20),   --Código Usuario Modificación
   fmodifi        DATE,   --Fecha Modificación
   ttitdoc        VARCHAR2(200),   -- Nombre identificativo documento
   tdescri        VARCHAR2(100),   --Descripcion documento
   tobserva       VARCHAR2(1000),   --Observaciones
   idcat          NUMBER,   --Id categoria
   CONSTRUCTOR FUNCTION ob_iax_prof_documentacion
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PROF_DOCUMENTACION" AS
   CONSTRUCTOR FUNCTION ob_iax_prof_documentacion
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sprofes := NULL;
      SELF.norddoc := NULL;
      SELF.iddocgx := NULL;
      SELF.freclama := NULL;
      SELF.frecibe := NULL;
      SELF.fcaduca := NULL;
      SELF.cusualt := NULL;
      SELF.falta := NULL;
      SELF.cusumod := NULL;
      SELF.fmodifi := NULL;
      SELF.ttitdoc := NULL;
      SELF.tdescri := NULL;
      SELF.tobserva := NULL;
      SELF.idcat := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_DOCUMENTACION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_DOCUMENTACION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROF_DOCUMENTACION" TO "PROGRAMADORESCSI";
