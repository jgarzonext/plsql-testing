--------------------------------------------------------
--  DDL for Type OB_IAX_FIC_PROCESOSDET
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_FIC_PROCESOSDET" IS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_FIC_PROCESOSDET
   PROPÓSITO:    FIC_PROCESOS_DETALLE

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        22/08/2013   JMG                1. CreaciÃ³n del objeto.
   2.0        07/10/2013   JMG                2. 0028462-155008 : Modificaci�n de campos clave que actualmente estan definidos
                                                 en la base de datos como NUMBER(X) para dejarlos como NUMBER
******************************************************************************/
(
   sproces        NUMBER,   -- Bug 28462 - 08/10/2013 - JMG - Modificacion campo sproces a NUMBER
   nprolin        NUMBER(6),
   tpathfi        VARCHAR2(200),
   fprolin        DATE,
   ctiplin        NUMBER(2),
   ttiplin        VARCHAR2(20),
   tfprolin       VARCHAR2(20),
   CONSTRUCTOR FUNCTION ob_iax_fic_procesosdet
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_FIC_PROCESOSDET" AS
/******************************************************************************
   NOMBRE:       OB_IAX_PROCESOSLIN
   PROPÓSITO:    PROCESOSLIN

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        22/02/10   JRB                1. Creación del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_fic_procesosdet
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sproces := 0;
      SELF.nprolin := 0;
      SELF.tpathfi := NULL;
      SELF.fprolin := NULL;
      SELF.ctiplin := 0;
      SELF.ttiplin := NULL;
      SELF.tfprolin := NULL;
      RETURN;
   END ob_iax_fic_procesosdet;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_FIC_PROCESOSDET" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_FIC_PROCESOSDET" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_FIC_PROCESOSDET" TO "PROGRAMADORESCSI";
