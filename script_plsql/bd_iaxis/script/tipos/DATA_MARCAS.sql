--------------------------------------------------------
--  DDL for Type DATA_MARCAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."DATA_MARCAS" as object (
    marca  VARCHAR2(10),
     tomador number(1),
  consorcio number (1),
  asegurado number(1),
  codeudor number(1),
  beneficiario number(1),
  accionista number(1),
  intermediario number(1),
  representante number (1),
  apoderado number(1),
  pagador number(1),
  proveedor number(1)
  )

/

  GRANT EXECUTE ON "AXIS"."DATA_MARCAS" TO "R_AXIS";
