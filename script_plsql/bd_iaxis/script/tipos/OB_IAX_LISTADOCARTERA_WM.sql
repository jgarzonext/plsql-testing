--------------------------------------------------------
--  DDL for Type OB_IAX_LISTADOCARTERA_WM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_LISTADOCARTERA_WM" AS OBJECT(
/******************************************************************************
   NOMBRE:       OB_IAX_LISTADOCARTERA_WM
   PROPÓSITO:    Contiene el resultado del listado de carteras del agente que devuelve la transacción PAC_LISTADOS_WM.F_LISTADO_CARTERA
   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        10/06/2010   SRA              1. Creación del objeto.
   2.0        08/10/2013   DEV, HRE         2. 0028462: LCOL_T001-Cambio dimension NPOLIZA, NRECIBO
******************************************************************************/
   cagente        NUMBER(6),
   tagente        VARCHAR2(200),
   npoliza        NUMBER,   -- Bug 28462 - 08/10/2013 - HRE - Cambio de dimension NPOLIZA
   ttitulo        VARCHAR2(40),
   tramo          VARCHAR2(30),
   ttomador       VARCHAR2(200),
   nrecibo        NUMBER,   -- Bug 28462 - 04/10/2013 - DEV - la precisión debe ser NUMBER
   fefecto        DATE,
   femisio        DATE,
   icomisinet     NUMBER,   --NUMBER(15, 2),
   iliqrec        NUMBER,   --NUMBER(15, 2),
   ipritot        NUMBER,   --NUMBER(15, 2),
   itotalr        NUMBER,   --NUMBER(15, 2),
   CONSTRUCTOR FUNCTION ob_iax_listadocartera_wm
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_LISTADOCARTERA_WM" AS
   CONSTRUCTOR FUNCTION ob_iax_listadocartera_wm
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cagente := NULL;
      SELF.tagente := NULL;
      SELF.npoliza := NULL;
      SELF.ttitulo := NULL;
      SELF.tramo := NULL;
      SELF.ttomador := NULL;
      SELF.nrecibo := NULL;
      SELF.fefecto := NULL;
      SELF.femisio := NULL;
      SELF.icomisinet := NULL;
      SELF.iliqrec := NULL;
      SELF.ipritot := NULL;
      SELF.itotalr := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_LISTADOCARTERA_WM" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_LISTADOCARTERA_WM" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_LISTADOCARTERA_WM" TO "PROGRAMADORESCSI";
