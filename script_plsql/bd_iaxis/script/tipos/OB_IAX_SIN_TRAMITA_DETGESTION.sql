--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMITA_DETGESTION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMITA_DETGESTION" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_SIN_TRAMITA_DETGESTION
   PROPÓSITO:  Contiene la información de SIN_TRAMITA_DETGESTION

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
    1.0       24/08/2011   ASN             Creacion
******************************************************************************/
(
   sgestio        NUMBER,   --'Clave de la tabla SIN_TRAMITA_GESTION';
   ndetges        NUMBER,   --'Numero de linea';
   sservic        NUMBER,   --'Codigo de servicio';
   tservic        VARCHAR2(500 BYTE),   --'Descripcion'
   nvalser        NUMBER,   --'Valor unitario';
   ncantid        NUMBER,   --'Cantidad';
   cunimed        NUMBER,   --'Unidad de medida. VF 734';
   tunimed        VARCHAR2(100 BYTE),   --'Descripcion unidad'
   cnocarg        NUMBER,   --'0=Sin cargo, 1=Precio normal'
   itotal         NUMBER,   --'Importe total';
   ccodmon        VARCHAR2(3),   --'Codigo moneda';
   tmoneda        VARCHAR2(100 BYTE),   --'Descripcion moneda'
   fcambio        DATE,   --'Fecha de cambio';
   falta          DATE,
   CONSTRUCTOR FUNCTION ob_iax_sin_tramita_detgestion
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMITA_DETGESTION" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_tramita_detgestion
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sgestio := NULL;
      SELF.ndetges := NULL;
      SELF.sservic := NULL;
      SELF.tservic := NULL;
      SELF.nvalser := NULL;
      SELF.ncantid := NULL;
      SELF.cunimed := NULL;
      SELF.tunimed := NULL;
      SELF.cnocarg := NULL;
      SELF.itotal := NULL;
      SELF.ccodmon := NULL;
      SELF.tmoneda := NULL;
      SELF.fcambio := NULL;
      SELF.falta := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITA_DETGESTION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITA_DETGESTION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITA_DETGESTION" TO "PROGRAMADORESCSI";
