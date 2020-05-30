--------------------------------------------------------
--  DDL for Type OB_INT_DATOS_POLIZA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_INT_DATOS_POLIZA" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_INT_DATOS_POLIZA
   PROPÓSITO:    Contiene la información del detalle de la póliza para la llamada a la interfase

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/10/2010   DRA              1. 0019498: AGM998 - Sobreprecio - Exclusión de variedades ( Modificar el proceso)
   2.0        01/03/2012   DRA              2. 0021467: AGM- Quitar en la descripción de riesgos el plan y al final se muestran caracteres raros
******************************************************************************/
(
   cempres        NUMBER,   --Código de la empresa
   sseguro        NUMBER,   --Código seguro identificador interno
   ssegpol        NUMBER,   --Código corresponde con el sseguro de la tabla SEGUROS cuando el estudio ha pasado a póliza
   nsolici        NUMBER,   --Numero de solicitud
   nmovimi        NUMBER,   --Número movimiento
   nsuplem        NUMBER,   --Contador del número de suplementos
   npoliza        NUMBER,   --Número de póliza.
   ncertif        NUMBER,   --Número de certificado para pólizas colectivas
   fefecto        DATE,
   cmodali        NUMBER(2),   --Código de Modalidad del Producto
   ccolect        NUMBER(2),   --Código de Colectividad del Producto
   cramo          NUMBER(8),   --Código de Ramo del Producto
   ctipseg        NUMBER(2),   --Código de Tipo de Seguro del Producto
   cactivi        NUMBER,   --Código de Actividad
   sproduc        NUMBER(8),   --Código del Producto
   cagente        NUMBER,   --Código de Agente
   cobjase        NUMBER(2),   --Código de Objeto asegurado
   csubpro        NUMBER(2),   --Código de subtipo de producto
   cforpag        NUMBER,   -- forma de pago
   csituac        NUMBER,   --Código de situación. Valor fijo 61
   creteni        NUMBER,   --Propuesta retenida o no. Valor fijo 66
   cpolcia        VARCHAR2(50),   -- campo poliza compania
   ccompani       NUMBER,   -- codigo compañia
   cpromotor      NUMBER(10),   -- Promotor
   npoliza_ini    VARCHAR2(50),   -- Numero de poliza origen
   cidioma        NUMBER,   -- Idioma de la póliza
   CONSTRUCTOR FUNCTION ob_int_datos_poliza
      RETURN SELF AS RESULT
)
NOT FINAL;
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_INT_DATOS_POLIZA" AS
   CONSTRUCTOR FUNCTION ob_int_datos_poliza
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.cempres := NULL;
      SELF.sseguro := NULL;
      SELF.ssegpol := NULL;
      SELF.fefecto := NULL;
      SELF.npoliza := NULL;
      SELF.ncertif := 0;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_INT_DATOS_POLIZA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_INT_DATOS_POLIZA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_INT_DATOS_POLIZA" TO "PROGRAMADORESCSI";
