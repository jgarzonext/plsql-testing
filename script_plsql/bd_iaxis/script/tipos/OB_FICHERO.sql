--------------------------------------------------------
--  DDL for Type OB_FICHERO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_FICHERO" IS OBJECT(
   cempres        NUMBER(2),
   tgestor        VARCHAR2(20),
   tformat        VARCHAR2(20),
   nunicap        NUMBER(4),
   ttablineas     t_linea,
   ttipdoc        VARCHAR2(10),
   tnumdoc        VARCHAR2(50),
   tnumpol        VARCHAR2(50)
);

/

  GRANT EXECUTE ON "AXIS"."OB_FICHERO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_FICHERO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_FICHERO" TO "PROGRAMADORESCSI";
