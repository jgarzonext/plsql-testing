--------------------------------------------------------
--  DDL for Type OB_IAX_RELACIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_RELACIONES" AS OBJECT
/******************************************************************************
   NOMBRE:     ob_iax_relaciones
   PROPOSITO:  Contiene la informacion de las relaciones de recibos (tabla RELACIONES)

   REVISIONES:
   Ver        Fecha        Autor             Descripcion
   ---------  ----------  ---------------  ------------------------------------
   1.0        11/07/2012   APD             1. Creacion del objeto. (Bug 22494)
   2.0        04/10/2013   DEV             2. 0028462: LCOL_T001-Cambio dimensi?n iAxis

******************************************************************************/
(
   srelacion      NUMBER(8),   -- Código de relación (sequence SRELACION)
   cagente        NUMBER,   -- Código de agente
   nrecibo        NUMBER,   -- Número de recibo -- Bug 28462 - 04/10/2013 - DEV - la precisión debe ser NUMBER
   ctipo          NUMBER(3),   -- Tipo de relación (v.f. 1085)
   finiefe        DATE,   -- Fecha de inicio de efecto , del recibo dentro de la relación
   ffinefe        DATE,   -- Fecha de fin del recibo, dentro de la relación
   cobliga        NUMBER(1),   -- Identificador de recibo marcado (1) o no (0) para crear la relacion
   fefecto        DATE,
   npoliza        VARCHAR2(20),
   tomador        VARCHAR2(1000),
   riesgo         VARCHAR2(1000),
   liquido        NUMBER(15, 2),
   importe        NUMBER(15, 2),
   CONSTRUCTOR FUNCTION ob_iax_relaciones
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_RELACIONES" AS
   CONSTRUCTOR FUNCTION ob_iax_relaciones
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.srelacion := NULL;
      SELF.cagente := NULL;
      SELF.nrecibo := NULL;
      SELF.ctipo := NULL;
      SELF.finiefe := NULL;
      SELF.ffinefe := NULL;
      SELF.cobliga := 0;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_RELACIONES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_RELACIONES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_RELACIONES" TO "PROGRAMADORESCSI";
