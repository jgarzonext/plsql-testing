--------------------------------------------------------
--  DDL for Type OB_IAX_LIQUIDACION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_LIQUIDACION" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_LIQUIDACION
   PROPÓSITO:  Contiene los datos de una liquidacion

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        24/11/2010   xpl                1. Creación del objeto.

******************************************************************************/
(
   sproliq        NUMBER(6),   --      Secuencial Proceso Liquidación
   ccompani       NUMBER(8),   --      Compañia que liquidaremos
   tcompani       VARCHAR2(1000),   --      Compañia que liquidaremos
   cempres        NUMBER(2),   --     Codigo empresa
   tempres        VARCHAR2(250),   -- nombre empresa
   fliquida       DATE,   --     Fecha Liquidación
   finiliq        DATE,   --fecha de inicio de liquidacion
   ffinliq        DATE,   --fecha de fin de liquidacion
   importe        NUMBER,   --NUMBER(15, 2),   --importe que queremos liquidar
   tliquida       VARCHAR2(400),   --      Observaciones Liquidación
   nmovliq        NUMBER(3),   --     Número Movimiento Liquidación
   cestliq        NUMBER(2),   --     Código Estado Liquidación
   testliq        VARCHAR2(200),   -- desc estado liquidacion
   itotliq        NUMBER,   --      Importe Total Liquidación
   movimientos    t_iax_liquida_mov,
   recibos        t_iax_liquida_rec,
   CONSTRUCTOR FUNCTION ob_iax_liquidacion
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_LIQUIDACION" AS
/******************************************************************************
   NOMBRE:       OB_IAX_LIQUIDACION
   PROPÓSITO:  Contiene los datos de una liquidacion

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        24/11/2010   xpl                1. Creación del objeto.
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_liquidacion
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cempres := NULL;
      RETURN;
   END ob_iax_liquidacion;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_LIQUIDACION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_LIQUIDACION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_LIQUIDACION" TO "PROGRAMADORESCSI";
