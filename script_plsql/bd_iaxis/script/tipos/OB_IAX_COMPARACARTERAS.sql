--------------------------------------------------------
--  DDL for Type OB_IAX_COMPARACARTERAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_COMPARACARTERAS" AS OBJECT(
/******************************************************************************
   NOMBRE:       OB_IAX_COMPARACARTERAS
   PROPÓSITO:    Contiene el resultado de los listados de carteras generados en PAC_LISTADO_CARTERA
   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        04/10/2010   SRA              1. Creación del objeto.
   2.0        22/12/2010   ICV              2. 0016137: CRT003 - Carga fichero cartera -> Listado cartera
   3.0        10/02/2011   SRA              3. 0016137: CRT003 - Carga fichero cartera -> Listado cartera: añadimos los campos pcomisi, ipriforpag y icomisiforpag
   4.0        08/06/2011   AMC              4. 0016137: CRT003 - Carga fichero cartera -> Listado cartera: añadimos los campos nnumidetom,tforpag y femisior_ultimo
   5.0        26/02/2013   LCF              5. 0025803: RSA001 - Ampliar los decimales que utiliza iAXIS
   6.0        08/10/2013   DEV, HRES        6. 0028462: LCOL_T001-Cambio dimension NPOLIZA, NRECIBO
   ******************************************************************************/
   ccompani       NUMBER(6),
   tcompani       VARCHAR2(40),
   cagente        NUMBER,
   cpolcia        VARCHAR2(50),
   creccia        VARCHAR2(50),
   npoliza        NUMBER,   -- Bug 28462 - 07/10/2013 - HRE - Cambio de dimension NPOLIZA
   titulopro      VARCHAR2(40),
   fefectopol     DATE,
   nnumidetom     VARCHAR2(14),   --bug 16137 - 08/06/2011 -AMC
   tnombretom     VARCHAR2(200),   --bug 16137 - 08/06/2011 -AMC
   nrecibo_ultimo NUMBER,   -- Bug 28462 - 04/10/2013 - DEV - la precisión debe ser NUMBER
   nrecibo_anterior NUMBER,   -- Bug 28462 - 04/10/2013 - DEV - la precisión debe ser NUMBER
   fefector_ultimo DATE,
   fefector_anterior DATE,
   fvencimr_ultimo DATE,
   fvencimr_anterior DATE,
   femisior_ultimo DATE,   --bug 16137 - 08/06/2011 -AMC
   iprinet_ultimo NUMBER,   --25803
   iprinet_anterior NUMBER,   --25803
   iprinet_variacion NUMBER,   --25803
   icombru_ultimo NUMBER,   --25803
   icombru_anterior NUMBER,   --25803
   icombru_variacion NUMBER,   --25803
   creccia_ultimo VARCHAR2(50),
   creccia_anterior VARCHAR2(50),
   fcarant        VARCHAR2(10),
   fcarpro        VARCHAR2(10),
   tsituac        VARCHAR2(50),
   pcomisi        NUMBER(15, 2),   -- %comisión definida por producto
   icomisi        NUMBER,   --25803   -- prima neta del recibo multiplicada por pcomisi
   ipriforpag     NUMBER,   --25803   -- suma de prima anual de las garantías dividida entre la forma de pago
   icomisiforpag  NUMBER,   --25803   -- ipriforpag*pcomisi
   tactivi        VARCHAR2(40),   -- descripción de la actividad
   tforpag        VARCHAR2(50),   -- Descripción de la forma de pago bug 16137 - 08/06/2011 -AMC
   CONSTRUCTOR FUNCTION ob_iax_comparacarteras
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_COMPARACARTERAS" AS
/******************************************************************************
   NOMBRE:       OB_IAX_COMPARACARTERAS
   PROPÓSITO:    Contiene el resultado de los listados de carteras generados en PAC_LISTADO_CARTERA
   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        04/10/2010   SRA              1. Creación del objeto.
   2.0        10/02/2011   SRA              3. 0016137: CRT003 - Carga fichero cartera -> Listado cartera: añadimos los campos pcomisi, ipriforpag y icomisiforpag
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_comparacarteras
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccompani := NULL;
      SELF.cagente := NULL;
      SELF.tcompani := NULL;
      SELF.cpolcia := NULL;
      SELF.creccia := NULL;
      SELF.npoliza := NULL;
      SELF.titulopro := NULL;
      SELF.fefectopol := NULL;
      SELF.nnumidetom := NULL;
      SELF.tnombretom := NULL;
      SELF.nrecibo_ultimo := NULL;
      SELF.nrecibo_anterior := NULL;
      SELF.fefector_ultimo := NULL;
      SELF.fefector_anterior := NULL;
      SELF.fvencimr_ultimo := NULL;
      SELF.fvencimr_anterior := NULL;
      SELF.femisior_ultimo := NULL;
      SELF.iprinet_ultimo := NULL;
      SELF.iprinet_anterior := NULL;
      SELF.iprinet_variacion := NULL;
      SELF.icombru_ultimo := NULL;
      SELF.icombru_anterior := NULL;
      SELF.icombru_variacion := NULL;
      SELF.creccia_ultimo := NULL;
      SELF.creccia_anterior := NULL;
      SELF.fcarant := NULL;
      SELF.fcarpro := NULL;
      SELF.tsituac := NULL;
      SELF.pcomisi := NULL;
      SELF.icomisi := NULL;
      SELF.ipriforpag := NULL;
      SELF.icomisiforpag := NULL;
      SELF.tactivi := NULL;
      SELF.tforpag := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_COMPARACARTERAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_COMPARACARTERAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_COMPARACARTERAS" TO "PROGRAMADORESCSI";
