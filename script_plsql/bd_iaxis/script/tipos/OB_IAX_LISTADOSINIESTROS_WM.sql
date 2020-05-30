--------------------------------------------------------
--  DDL for Type OB_IAX_LISTADOSINIESTROS_WM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_LISTADOSINIESTROS_WM" AS OBJECT(
/******************************************************************************
   NOMBRE:       OB_IAX_LISTADOSINIESTROS_WM
   PROPÓSITO:    Contiene el resultado del listado de siniestros del agente que devuelve la transacción PAC_LISTADOS_WM.P_LISTADO_SINIESTROS
   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/06/2010   SRA              1. Creación del objeto.
   2.0        08/10/2013   HRE              2. Bug 0028462: HRE - Cambio dimension campo NPOLIZA
******************************************************************************/
   npoliza        NUMBER,   -- Bug 28462 - 08/10/2013 - HRE - Cambio de dimension SSEGURO
   tramo          VARCHAR2(30),
   cagente        NUMBER(6),
   tagente        VARCHAR2(200),
   fefecto        DATE,
   nsinies        VARCHAR2(14),
   fsinies        DATE,
   fentrad        DATE,
   fcierre        DATE,
   ntramit        NUMBER(3),
   ttramit        VARCHAR2(40),
   tcausin        VARCHAR2(100),
   tmotsin        VARCHAR2(100),
   tgarant        VARCHAR2(40),
   tasegurado     VARCHAR2(100),
   ivalori        NUMBER,   --NUMBER(13, 2),
   ivalorf        NUMBER,   --NUMBER(13, 2),
   ipagost        NUMBER,   --NUMBER(13, 2),
   irecobro       NUMBER,   --NUMBER(13, 2),
   cusualt        VARCHAR2(20),
   CONSTRUCTOR FUNCTION ob_iax_listadosiniestros_wm
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_LISTADOSINIESTROS_WM" AS
   CONSTRUCTOR FUNCTION ob_iax_listadosiniestros_wm
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.npoliza := NULL;
      SELF.tramo := NULL;
      SELF.cagente := NULL;
      SELF.tagente := NULL;
      SELF.fefecto := NULL;
      SELF.nsinies := NULL;
      SELF.fsinies := NULL;
      SELF.fentrad := NULL;
      SELF.fcierre := NULL;
      SELF.ntramit := NULL;
      SELF.ttramit := NULL;
      SELF.tcausin := NULL;
      SELF.tmotsin := NULL;
      SELF.tgarant := NULL;
      SELF.tasegurado := NULL;
      SELF.ivalori := NULL;
      SELF.ivalorf := NULL;
      SELF.ipagost := NULL;
      SELF.irecobro := NULL;
      SELF.cusualt := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_LISTADOSINIESTROS_WM" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_LISTADOSINIESTROS_WM" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_LISTADOSINIESTROS_WM" TO "PROGRAMADORESCSI";
