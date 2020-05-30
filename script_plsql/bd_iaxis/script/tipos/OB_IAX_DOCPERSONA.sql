--------------------------------------------------------
--  DDL for Type OB_IAX_DOCPERSONA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DOCPERSONA" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_DOCPERSONA
   PROP�SITO:  Contiene los datos de un documento de una persona

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        23/11/2011   APD                1. Creaci�n del objeto. 0020126: LCOL_P001 - PER - Documentaci�n en personas
   2.0        07/04/2014   JLTS               2. 30417_0171145_QT-0012092, cambio de el campo fichero de VARCHAR2(100) a VARCHAR2(200)
******************************************************************************/
(
   sperson        NUMBER(10),   --   Secuencia �nica de identificaci�n de una persona
   cagente        NUMBER,   --    C�digo de agente
   iddocgedox     NUMBER(10),   --    Identificador del documento GEDOX
   fcaduca        DATE,   --    Fecha de caducidad del documento
   tobserva       VARCHAR2(1000),   --    Observaciones
   cusualt        VARCHAR2(20),   --    C�digo usuario alta del registro original
   falta          DATE,   --    Fecha de alta del registro original
   cusuari        VARCHAR2(20),   --    C�digo usuario modificaci�n del registro original
   fmovimi        DATE,   --    Fecha modificaci�n del registro original
   fichero        VARCHAR2(200),   --    Nombre del fichero
   tdescrip       VARCHAR2(1000),   --    Descripci�n
   iddcat         NUMBER(8),   --    Categor�a del documento
   tdocumento     NUMBER(10),
   edocumento     NUMBER(10),
   fedo           DATE,
   CONSTRUCTOR FUNCTION ob_iax_docpersona
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DOCPERSONA" AS
   CONSTRUCTOR FUNCTION ob_iax_docpersona
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sperson := NULL;
      SELF.cagente := NULL;
      SELF.iddocgedox := NULL;
      SELF.fcaduca := NULL;
      SELF.tobserva := NULL;
      SELF.cusualt := NULL;
      SELF.falta := NULL;
      SELF.cusuari := NULL;
      SELF.fmovimi := NULL;
      SELF.fichero := NULL;
      SELF.tdescrip := NULL;
      SELF.iddcat := NULL;
      SELF.tdocumento := NULL;
      SELF.edocumento := NULL;
      SELF.fedo := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DOCPERSONA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DOCPERSONA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DOCPERSONA" TO "PROGRAMADORESCSI";
