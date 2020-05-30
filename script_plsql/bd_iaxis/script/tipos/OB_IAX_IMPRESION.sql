--------------------------------------------------------
--  DDL for Type OB_IAX_IMPRESION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_IMPRESION" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_IMPRESION
   PROP�SITO:  Contiene informaci�n de los documentos impresos

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        28/04/2008   ACC                1. Creaci�n del objeto.
******************************************************************************/
(
   descripcion    VARCHAR2(500),   -- Descripci�n documento
   fichero        VARCHAR2(2000),   -- Fichero a recuperar
   ctipo          VARCHAR2(50),   --c�digo tipo documento (SINIS,RESCA...)
   ttipo          VARCHAR2(500),   -- Descripci�n tipo
   ccategoria     NUMBER(6),   --Categor�a de la impresi�n
   cdiferido      NUMBER(1),   --Se trata de una impresi�n diferida 0.-No,1.-Si
   info_campos    t_iax_info,
   CONSTRUCTOR FUNCTION ob_iax_impresion
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_IMPRESION" AS
   CONSTRUCTOR FUNCTION ob_iax_impresion
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.descripcion := NULL;
      SELF.fichero := NULL;
      SELF.info_campos := NULL;
      SELF.ccategoria := NULL;
      SELF.cdiferido := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_IMPRESION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_IMPRESION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_IMPRESION" TO "PROGRAMADORESCSI";
