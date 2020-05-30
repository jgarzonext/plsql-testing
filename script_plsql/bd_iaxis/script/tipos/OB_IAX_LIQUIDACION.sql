--------------------------------------------------------
--  DDL for Type OB_IAX_LIQUIDACION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_LIQUIDACION" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_LIQUIDACION
   PROP�SITO:  Contiene los datos de una liquidacion

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        24/11/2010   xpl                1. Creaci�n del objeto.

******************************************************************************/
(
   sproliq        NUMBER(6),   --      Secuencial Proceso Liquidaci�n
   ccompani       NUMBER(8),   --      Compa�ia que liquidaremos
   tcompani       VARCHAR2(1000),   --      Compa�ia que liquidaremos
   cempres        NUMBER(2),   --     Codigo empresa
   tempres        VARCHAR2(250),   -- nombre empresa
   fliquida       DATE,   --     Fecha Liquidaci�n
   finiliq        DATE,   --fecha de inicio de liquidacion
   ffinliq        DATE,   --fecha de fin de liquidacion
   importe        NUMBER,   --NUMBER(15, 2),   --importe que queremos liquidar
   tliquida       VARCHAR2(400),   --      Observaciones Liquidaci�n
   nmovliq        NUMBER(3),   --     N�mero Movimiento Liquidaci�n
   cestliq        NUMBER(2),   --     C�digo Estado Liquidaci�n
   testliq        VARCHAR2(200),   -- desc estado liquidacion
   itotliq        NUMBER,   --      Importe Total Liquidaci�n
   movimientos    t_iax_liquida_mov,
   recibos        t_iax_liquida_rec,
   CONSTRUCTOR FUNCTION ob_iax_liquidacion
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_LIQUIDACION" AS
/******************************************************************************
   NOMBRE:       OB_IAX_LIQUIDACION
   PROP�SITO:  Contiene los datos de una liquidacion

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        24/11/2010   xpl                1. Creaci�n del objeto.
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
