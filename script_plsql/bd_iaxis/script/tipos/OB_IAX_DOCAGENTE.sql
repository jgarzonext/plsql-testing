--------------------------------------------------------
--  DDL for Type OB_IAX_DOCAGENTE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DOCAGENTE" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DOCPERSONA
   PROPÓSITO:  Contiene los datos de un documento de una persona

   REVISIONES:
   Ver        Fecha        Autor             Descripcion
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/03/2012   AMC               1. Creacion del objeto.
******************************************************************************/
(
   cagente        NUMBER,   --    Código de agente
   iddocgedox     NUMBER(10),   --    Identificador del documento GEDOX
   fcaduca        DATE,   --    Fecha de caducidad del documento
   tobserva       VARCHAR2(1000),   --    Observaciones
   tamano         VARCHAR2(20),   -- Tama�o del fichero
   cusualt        VARCHAR2(20),   --    Código usuario alta del registro original
   falta          DATE,   --    Fecha de alta del registro original
   cusuari        VARCHAR2(20),   --    Código usuario modificación del registro original
   fmovimi        DATE,   --    Fecha modificación del registro original
   fichero        VARCHAR2(100),   --    Nombre del fichero
   tdescrip       VARCHAR2(1000),   --    Descripción
   iddcat         NUMBER(8),   --    Categoría del documento
   CONSTRUCTOR FUNCTION ob_iax_docagente
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DOCAGENTE" AS
   CONSTRUCTOR FUNCTION ob_iax_docagente
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cagente := NULL;
      SELF.iddocgedox := NULL;
      SELF.fcaduca := NULL;
      SELF.tobserva := NULL;
      SELF.tamano := NULL;
      SELF.cusualt := NULL;
      SELF.falta := NULL;
      SELF.cusuari := NULL;
      SELF.fmovimi := NULL;
      SELF.fichero := NULL;
      SELF.tdescrip := NULL;
      SELF.iddcat := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DOCAGENTE" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DOCAGENTE" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DOCAGENTE" TO "PROGRAMADORESCSI";
