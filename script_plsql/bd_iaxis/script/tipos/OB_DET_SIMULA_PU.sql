--------------------------------------------------------
--  DDL for Type OB_DET_SIMULA_PU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_DET_SIMULA_PU" 
   AUTHID CURRENT_USER
AS OBJECT(
   nanyo          NUMBER(4),   -- ejercicio o anualidad
   fecha          DATE,   -- fecha de cada anualidad
   icapgar        NUMBER,   -- capital garantizado a esa fecha
   icapfall       NUMBER,   --capital de fallecimiento a esa fecha
   icapest        NUMBER,   -- capital estimado según el % de interés técnico estimado (ahorro seguro)
   prescate       NUMBER(5, 2),   -- %  de rescate al finalizar cada anualidad
   pinttec        NUMBER(5, 2)   -- % de interés aplicado en cada anualidad
);

/

  GRANT EXECUTE ON "AXIS"."OB_DET_SIMULA_PU" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_DET_SIMULA_PU" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_DET_SIMULA_PU" TO "PROGRAMADORESCSI";
