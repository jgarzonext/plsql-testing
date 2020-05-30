--------------------------------------------------------
--  DDL for Type OB_IAX_PRODADMINISTRACION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODADMINISTRACION" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODADMINISTRACION
   PROPÓSITO:  Contiene información de la administración del producto

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/04/2008   ACC                1. Creación del objeto.
   2.0        25/09/2014   JTT                2. Añadimos el campo CNV_SPR
******************************************************************************/
(
   ctipges        NUMBER,   -- Indica si los datos de gestión están en cada seguro o en el tomad  (VF 43)
   ttipges        VARCHAR2(100),   -- Descripción Indica si los datos de gestión están en cada seguro o en el tomad
   creccob        NUMBER,   -- Indica si el primer recibo es pendiente o cobrado  (VF 694)
   treccob        VARCHAR2(100),   -- Descripción Indica si el primer recibo es pendiente o cobrado
   ctipreb        NUMBER,   -- Tipo recibo para colectivos.  (VF 40)
   ttipreb        VARCHAR2(100),   -- Descripción Tipo recibo para colectivos.
   ccalcom        NUMBER,   -- Cálculo comisión  (VF 122)
   tcalcom        VARCHAR2(100),   -- Descripción cálculo comisión
   ctippag        NUMBER,   -- Tipo de pago  (VF 39)
   ttippag        VARCHAR2(100),   -- Descripción tipo de pago
   cmovdom        NUMBER,   -- Domiciliación primer recibo
   cfeccob        NUMBER,   -- Fecha cobro
   crecfra        NUMBER,   -- Recargo fraccionamiento
   iminext        NUMBER,   -- Prima minima extorno
   ndiaspro       NUMBER,   -- Días acumulables
   scuecar        NUMBER,   -- Cuenta cargo
   tcuecar        VARCHAR2(100),   -- Descripción cuenta cargo
   ccobban        NUMBER,   -- Cobrador bancario
   tcobban        VARCHAR2(100),   -- Descripción cobrador bancario
   cnv_spr        VARCHAR2(20),   -- Identificador del cliente para el producto en contabilidad
   CONSTRUCTOR FUNCTION ob_iax_prodadministracion
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODADMINISTRACION" AS
   CONSTRUCTOR FUNCTION ob_iax_prodadministracion
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ctipges := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODADMINISTRACION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODADMINISTRACION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODADMINISTRACION" TO "PROGRAMADORESCSI";
