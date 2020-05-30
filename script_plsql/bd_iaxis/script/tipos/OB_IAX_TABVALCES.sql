--------------------------------------------------------
--  DDL for Type OB_IAX_TABVALCES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_TABVALCES" AS OBJECT(
--******************************************************************************
--   NOMBRE:  OB_IAX_TABVALCES
--   PROP�SITO:     Objeto
--
--   REVISIONES :
--   Ver        Fecha        Autor             Descripci�n
--   ---------  ----------  ---------------  ------------------------------------
--   1.0        22/09/2009   JGM              Creaci�n del Objeto (bug 11175)
--******************************************************************************
   ccesta         NUMBER(3),   --C�digo de cesta
   fvalor         DATE,   --Fecha valor
   nparact        NUMBER,   --NUMBER(15, 6),   --N� participaciones
   iuniact        NUMBER,   --NUMBER(15, 6),   --Importe de la unidad de participaci�n
   ivalact        NUMBER,   --NUMBER(12, 2),   --Importe de todas las participaciones
   nparasi        NUMBER,   --NUMBER(15, 6),   --N� de partipaciones asignadas
   igastos        NUMBER,   --NUMBER(15, 6),   --Importe de gastos
   diasem         VARCHAR2(20),   --D�a de la semana en letras
   varinum        NUMBER(9, 6),   --Porcentaje de variaci�n
   varisig        CHAR(1),   --Signo de la variaci�n
   iuniultcmp     NUMBER,
   iuniultvtashw  NUMBER,
   iuniultcmpshw  NUMBER,
   CONSTRUCTOR FUNCTION ob_iax_tabvalces
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_TABVALCES" AS
   CONSTRUCTOR FUNCTION ob_iax_tabvalces
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccesta := 0;
      SELF.fvalor := NULL;
      SELF.nparact := 0;
      SELF.iuniact := 0;
      SELF.ivalact := 0;
      SELF.nparasi := 0;
      SELF.igastos := 0;
      SELF.diasem := NULL;
      SELF.varinum := 0;
      SELF.varisig := NULL;
      SELF.iuniultcmp := 0;
      SELF.iuniultvtashw := 0;
      SELF.iuniultcmpshw := 0;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_TABVALCES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_TABVALCES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_TABVALCES" TO "PROGRAMADORESCSI";
