--------------------------------------------------------
--  DDL for Type OB_DET_SIMULA_PU_ULK
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_DET_SIMULA_PU_ULK" 
   AUTHID CURRENT_USER
AS OBJECT
/******************************************************************************
   NOMBRE:  OB_det_simula_pu_ulk
   PROPÓSITO:     Objeto para contener los datos simula pu.

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        26/02/2013   LCF                1. 0025803: RSA001 - Ampliar los decimales que utiliza iAXIS
******************************************************************************/
(
   pttramo        NUMBER(5, 2),   -- % fijado de simulacion del índice (tendremos -60,-40,-20, 0, 20, 40, 60)
   prendimiento   NUMBER(5, 2),   -- Rendimiento
   iindice        NUMBER,   -- 25803 Importe del íncide
   previndice     NUMBER(5, 2)   -- Participación revalorización Ibex 35
);

/

  GRANT EXECUTE ON "AXIS"."OB_DET_SIMULA_PU_ULK" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_DET_SIMULA_PU_ULK" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_DET_SIMULA_PU_ULK" TO "PROGRAMADORESCSI";
