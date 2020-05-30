--------------------------------------------------------
--  DDL for Type OB_DET_SIMULA_PP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_DET_SIMULA_PP" 
   AUTHID CURRENT_USER
AS OBJECT(
   nejercicio     NUMBER(4),   -- exercici o anualitat, començant a partir de 1
   ffinejercicio  DATE,   -- data final de l'exercici
   iapormensual   NUMBER,   -- aportació mensual durant l'exercici
   icapital       NUMBER   -- capital acumulat a l'exercici
);

/

  GRANT EXECUTE ON "AXIS"."OB_DET_SIMULA_PP" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_DET_SIMULA_PP" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_DET_SIMULA_PP" TO "PROGRAMADORESCSI";
