--------------------------------------------------------
--  DDL for Index SIN_GAR_DEPENDIENTES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."SIN_GAR_DEPENDIENTES_PK" ON "AXIS"."SIN_GAR_DEPENDIENTES" ("CGARANT", "CGARDEP", "CEMPRES") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
