--------------------------------------------------------
--  DDL for Type OB_IAX_FACTURAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_FACTURAS" AS OBJECT
/******************************************************************************
   NOMBRE:     ob_iax_facturas
   PROPOSITO:  Contiene la informacion de una factura

   REVISIONES:
   Ver        Fecha        Autor             Descripcion
   ---------  ----------  ---------------  ------------------------------------
   1.0        23/05/2012   APD             1. Creacion del objeto. (Bug 21786)

******************************************************************************/
(
   nfact          VARCHAR2(40),   --Nº de Factura
   cempres        NUMBER(2),   -- Código de Empresa
   tempres        VARCHAR2(200),   --Descripción de la empresa
   ffact          DATE,   --Fecha de emisión de la factura
   ctipfact       NUMBER(3),   --Tipo de Factura (v.f. 1082)
   ttipfact       VARCHAR2(200),   --Descripción del Tipo de Factura
   ctipiva        NUMBER(3),   --Tipo de IVA (tabla descripcioniva)
   ttipiva        VARCHAR2(200),   -- Descripción del Tipo de IVA
   cestado        NUMBER(3),   --Estado de la Factura (v.f. 1083)
   testado        VARCHAR2(200),   --Descripción del Tipo de Estado de la Factura
   cagente        NUMBER,   --Código de agente
   sperson        NUMBER(10),   --Identificador de persona
   nnumide        VARCHAR2(14),   -- NIF del agente/persona
   tnombre        VARCHAR2(200),   --Nombre del agente/persona
   iimporte_total NUMBER,   -- NUMBER(17, 2),   -- Suma de todos los Importe de los conceptos
   iirpf_total    NUMBER,   --NUMBER(17, 2),   -- Suma de todos los IRPF de los conceptos
   iimpneto_total NUMBER,   --NUMBER(17, 2),   -- Suma de todos los Importe neto de los conceptos
   iimpcta_total  NUMBER,   --NUMBER(17, 2),   -- Suma de todos los Importe del ingreso a cuenta de los conceptos
   ctipdoc        NUMBER(3),   -- Tipo documento vf.1140
   ttipdoc        VARCHAR2(100),   -- Texto Tipo documento vf.1140
   nfolio         NUMBER,   -- Número folio
   ccarpeta       VARCHAR2(100),   -- Carpeta
   iddocgedox     NUMBER(10),   -- Identificador del GEDOX
   nliqmen        NUMBER(4),   -- Número de liquidación
   cautorizada    NUMBER(3),   -- Factura autorizada: 0-No, 1-Si
   tautorizada    VARCHAR2(100),   -- Texto Factura autorizada: 0-No, 1-Si
   detfactura     t_iax_detfactura,
   CONSTRUCTOR FUNCTION ob_iax_facturas
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_FACTURAS" AS
   CONSTRUCTOR FUNCTION ob_iax_facturas
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nfact := NULL;
      SELF.cempres := NULL;
      SELF.tempres := NULL;
      SELF.ffact := NULL;
      SELF.ctipfact := NULL;
      SELF.ttipfact := NULL;
      SELF.ctipiva := NULL;
      SELF.ttipiva := NULL;
      SELF.cestado := NULL;
      SELF.testado := NULL;
      SELF.cagente := NULL;
      SELF.sperson := NULL;
      SELF.nnumide := NULL;
      SELF.tnombre := NULL;
      SELF.iimporte_total := 0;
      SELF.iirpf_total := 0;
      SELF.iimpneto_total := 0;
      SELF.iimpcta_total := 0;
      SELF.ctipdoc := NULL;
      SELF.ttipdoc := NULL;
      SELF.nfolio := NULL;
      SELF.ccarpeta := NULL;
      SELF.iddocgedox := NULL;
      SELF.nliqmen := NULL;
      SELF.cautorizada := NULL;
      SELF.tautorizada := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_FACTURAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_FACTURAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_FACTURAS" TO "PROGRAMADORESCSI";
