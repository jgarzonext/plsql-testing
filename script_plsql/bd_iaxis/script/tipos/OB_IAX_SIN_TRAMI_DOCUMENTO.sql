--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMI_DOCUMENTO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMI_DOCUMENTO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMI_DOCUMENTO (refencia sin_tramita_documento)
   PROP¿SITO:  Contiene la informaci¿n del siniestro

   REVISIONES:
   Ver        Fecha        Autor             Descripci¿n
   ---------  ----------  ---------------  ------------------------------------
   1.0        25/03/2009   XVM                1. Creaci¿n del objeto.
   2.0        06/10/2009   DCT                2. A¿adir ttitdoc en el objeto.
******************************************************************************/
(
   nsinies        VARCHAR2(14),   --N¿mero Siniestro
   ntramit        NUMBER(3),   --N¿mero Tramitaci¿n Siniestro
   ndocume        NUMBER(6),   --N¿mero Documento Siniestro
   cdocume        NUMBER(6),   --C¿digo Documento Siniestro
   iddoc          NUMBER(10),   --Identificador Documento Gedox
   freclama       DATE,   --Fecha Reclamaci¿n Documento
   frecibe        DATE,   --Fecha Recepci¿n Documento
   fcaduca        DATE,   --Fecha Caducidad Documento
   cobliga        NUMBER(1),   --C¿digo Documento Obligatorio/Opcional
   cusualt        VARCHAR2(20),   --C¿digo Usuario Alta
   falta          DATE,   --Fecha Alta
   cusumod        VARCHAR2(20),   --C¿digo Usuario Modificaci¿n
   fmodifi        DATE,   --Fecha Modificaci¿n
   ttitdoc        VARCHAR2(200),   -- Nombre identificativo documento
   descdoc        VARCHAR2(500),   -- Descripcion del usuario para el documento
   caccion        NUMBER(1),   -- Documento modificable. (0/null)-->S¿ modificable | 1--> No modificable
   corigen        NUMBER(1),   -- 0 Externo / 1 iAxis
   tusualtdoc     VARCHAR2(100), -- Usuario upload documentos Gedox
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_documento
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMI_DOCUMENTO" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_documento
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nsinies := NULL;
      SELF.ntramit := 0;
      SELF.ndocume := 0;
      SELF.cdocume := 0;
      SELF.iddoc := 0;
      SELF.freclama := NULL;
      SELF.frecibe := NULL;
      SELF.fcaduca := NULL;
      SELF.cobliga := 0;
      SELF.cusualt := NULL;
      SELF.falta := NULL;
      SELF.cusumod := NULL;
      SELF.fmodifi := NULL;
      SELF.ttitdoc := NULL;
      SELF.descdoc := NULL;
      SELF.caccion := NULL;
      SELF.corigen := NULL;
      SELF.tusualtdoc := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_DOCUMENTO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_DOCUMENTO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_DOCUMENTO" TO "PROGRAMADORESCSI";
