--------------------------------------------------------
--  DDL for Type OB_RESP_SIMULA_PP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_RESP_SIMULA_PP" AUTHID CURRENT_USER AS OBJECT
(
  Det_Simula_PP	  t_Det_Simula_PP,  -- detall per exercici dels càlculs
  iCapVencim	  NUMBER(13,2),     -- Capital al final
  iAporRea	      NUMBER(13,2),     -- Total Aportacions realitzades
  nDurAnos	      NUMBER(4),        -- Durada d'anys de les aportacions
  nDurMeses	      NUMBER(2),        -- Mesos d'aportacions del darrer exercici
  iRentaVit	      NUMBER(13,2),     -- Renda vitalicia estimada
  errores		  ob_errores
)

/

  GRANT EXECUTE ON "AXIS"."OB_RESP_SIMULA_PP" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_RESP_SIMULA_PP" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_RESP_SIMULA_PP" TO "PROGRAMADORESCSI";
