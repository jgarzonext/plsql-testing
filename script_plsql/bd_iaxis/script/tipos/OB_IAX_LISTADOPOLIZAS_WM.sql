--------------------------------------------------------
--  DDL for Type OB_IAX_LISTADOPOLIZAS_WM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_LISTADOPOLIZAS_WM" AS OBJECT(
/******************************************************************************
   NOMBRE:       OB_IAX_LISTADOPOLIZAS_WM
   PROPÓSITO:    Contiene el resultado del listado de polizas del agente que devuelve la transacción PAC_LISTADOS_WM.F_LISTADO_POLIZAS
   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        10/06/2010   SRA              1. Creación del objeto.
   2.0        08/10/2013   HRE              2. Bug 0028462: HRE - Cambio dimension campo NPOLIZA
******************************************************************************/
   cagente        NUMBER(6),
   tagente        VARCHAR2(200),
   npoliza        NUMBER,   -- Bug 28462 - 08/10/2013 - HRE - Cambio de dimension NPOLIZA
   ttitulo        VARCHAR2(40),
   tramo          VARCHAR2(30),
   fefecto        DATE,
   fvencim        DATE,
   femisio        DATE,
   tnasegu        VARCHAR2(200),
   triesgo        VARCHAR2(200),
   iprianu        NUMBER,   --NUMBER(13, 2),
   pdispri        NUMBER(5, 2),
   pcomisi        NUMBER(5, 2),
   cusualt        VARCHAR2(20),
   CONSTRUCTOR FUNCTION ob_iax_listadopolizas_wm
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_LISTADOPOLIZAS_WM" AS
   CONSTRUCTOR FUNCTION ob_iax_listadopolizas_wm
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.npoliza := NULL;
      SELF.fefecto := NULL;
      SELF.fvencim := NULL;
      SELF.femisio := NULL;
      SELF.tnasegu := NULL;
      SELF.triesgo := NULL;
      SELF.ttitulo := NULL;
      SELF.tramo := NULL;
      SELF.iprianu := NULL;
      SELF.pdispri := NULL;
      SELF.pcomisi := NULL;
      SELF.cagente := NULL;
      SELF.tagente := NULL;
      SELF.cusualt := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_LISTADOPOLIZAS_WM" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_LISTADOPOLIZAS_WM" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_LISTADOPOLIZAS_WM" TO "PROGRAMADORESCSI";
