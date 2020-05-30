--------------------------------------------------------
--  DDL for Type OB_IAX_ENTRADASALIDA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_ENTRADASALIDA" AS OBJECT(
   ccodfon        NUMBER(3),   -- Código de fondo de inversión.
   tfonabv        VARCHAR2(50),   -- Descripcción del fondo
   fvalor         DATE,   -- Última fecha valor anterior
   iuniult        NUMBER,   -- NUMBER(15, 6),   -- Valor liquidativo anterior  -- BUG 25803 --
   entradas       NUMBER,   -- NUMBER(13, 2),   -- Entradas registradas  -- BUG 25803 --
   entradas_penali NUMBER,   -- NUMBER(13, 2),   -- Entradas registradas  -- BUG 25803 --
   entradas_teo   NUMBER,   -- NUMBER(13, 2),   -- Entradas registradas  -- BUG 25803 --
   salidas        NUMBER,   -- NUMBER(13, 2),   -- Salidas registradas  -- BUG 25803 --
   salidas_teo    NUMBER,   -- NUMBER(13, 2),   -- Salidas registradas  -- BUG 25803 --
   pentrada       NUMBER,   -- NUMBER(15, 6),   -- Unidades de entrada  -- BUG 25803 --
   pentrada_teo   NUMBER,   -- NUMBER(15, 6),   -- Unidades de entrada  -- BUG 25803 --
   psalidas       NUMBER,   -- NUMBER(15, 6),   -- Unidades de salida  -- BUG 25803 --
   psalidas_teo   NUMBER,   -- NUMBER(15, 6),   -- Unidades de salida  -- BUG 25803 --
   diferencia     NUMBER,   -- NUMBER(15, 6),   -- Diferencia  -- BUG 25803 --
   iuniultcmp     NUMBER,
   iuniultcmpshw  NUMBER,
   iuniultvtashw  NUMBER,
   CONSTRUCTOR FUNCTION ob_iax_entradasalida
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_ENTRADASALIDA" AS
   CONSTRUCTOR FUNCTION ob_iax_entradasalida
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccodfon := NULL;
      SELF.tfonabv := NULL;
      SELF.fvalor := NULL;
      SELF.iuniult := NULL;
      SELF.entradas := NULL;   -- Importe aportaciones (Real)
      SELF.entradas_penali := NULL;   -- Importe penalizaciones (Real) (Rescates parciales)
      SELF.entradas_teo := NULL;   -- Importe redistribuciones (Teorico)
      SELF.pentrada := NULL;   -- Unidades reales (Rescates Totales)
      SELF.pentrada_teo := NULL;   -- Unidades teoricas (calculadas sobre entradas)
      SELF.salidas := NULL;   -- Importe rescates parciales (reales)
      SELF.salidas_teo := NULL;   -- Unidades rescate parcial (teorico)
      SELF.psalidas := NULL;   -- Unidades de salidas (reales) (Siniestros, Rescates totales, etc)
      SELF.psalidas_teo := NULL;   -- No se utiliza
      SELF.diferencia := NULL;
      SELF.iuniultcmp := NULL;
      SELF.iuniultcmpshw := NULL;
      SELF.iuniultvtashw := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_ENTRADASALIDA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_ENTRADASALIDA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_ENTRADASALIDA" TO "PROGRAMADORESCSI";
