--------------------------------------------------------
--  DDL for Type OB_INT_DATOS_POLIZA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_INT_DATOS_POLIZA" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_INT_DATOS_POLIZA
   PROP�SITO:    Contiene la informaci�n del detalle de la p�liza para la llamada a la interfase

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/10/2010   DRA              1. 0019498: AGM998 - Sobreprecio - Exclusi�n de variedades ( Modificar el proceso)
   2.0        01/03/2012   DRA              2. 0021467: AGM- Quitar en la descripci�n de riesgos el plan y al final se muestran caracteres raros
******************************************************************************/
(
   cempres        NUMBER,   --C�digo de la empresa
   sseguro        NUMBER,   --C�digo seguro identificador interno
   ssegpol        NUMBER,   --C�digo corresponde con el sseguro de la tabla SEGUROS cuando el estudio ha pasado a p�liza
   nsolici        NUMBER,   --Numero de solicitud
   nmovimi        NUMBER,   --N�mero movimiento
   nsuplem        NUMBER,   --Contador del n�mero de suplementos
   npoliza        NUMBER,   --N�mero de p�liza.
   ncertif        NUMBER,   --N�mero de certificado para p�lizas colectivas
   fefecto        DATE,
   cmodali        NUMBER(2),   --C�digo de Modalidad del Producto
   ccolect        NUMBER(2),   --C�digo de Colectividad del Producto
   cramo          NUMBER(8),   --C�digo de Ramo del Producto
   ctipseg        NUMBER(2),   --C�digo de Tipo de Seguro del Producto
   cactivi        NUMBER,   --C�digo de Actividad
   sproduc        NUMBER(8),   --C�digo del Producto
   cagente        NUMBER,   --C�digo de Agente
   cobjase        NUMBER(2),   --C�digo de Objeto asegurado
   csubpro        NUMBER(2),   --C�digo de subtipo de producto
   cforpag        NUMBER,   -- forma de pago
   csituac        NUMBER,   --C�digo de situaci�n. Valor fijo 61
   creteni        NUMBER,   --Propuesta retenida o no. Valor fijo 66
   cpolcia        VARCHAR2(50),   -- campo poliza compania
   ccompani       NUMBER,   -- codigo compa�ia
   cpromotor      NUMBER(10),   -- Promotor
   npoliza_ini    VARCHAR2(50),   -- Numero de poliza origen
   cidioma        NUMBER,   -- Idioma de la p�liza
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
