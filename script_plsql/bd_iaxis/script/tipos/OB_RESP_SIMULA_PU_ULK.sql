--------------------------------------------------------
--  DDL for Type OB_RESP_SIMULA_PU_ULK
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_RESP_SIMULA_PU_ULK" AUTHID CURRENT_USER AS OBJECT
(
  ssolicit            NUMBER(8), -- Número de soliciud (simulación) generada
  det_simula_pu       t_det_simula_pu, -- detalle del cálculo de la simulación
  iprimaneta          NUMBER(13,2), -- prima pagada
  prendimiento        NUMBER(5,2),  -- % de rendimiento obtenido sobre la prima pagada y el capital al vencimiento
  icapvencim          NUMBER(13,2), -- capital al vencimiento
  pinttec             NUMBER(5,2),  -- % interés técnico garantizado
  icapulk             NUMBER(13,2), -- capital destinado a adquirir participaciones del índice Ibex 35
  pprimaindice        NUMBER(5,2),  -- Porcentaje de la prima única inicial destinado al índice
  det_simula_pu_ulk   t_det_simula_pu_ulk, -- detalle del cálculo de la simulación parte de Ibex
  errores             ob_errores
) 

/

  GRANT EXECUTE ON "AXIS"."OB_RESP_SIMULA_PU_ULK" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_RESP_SIMULA_PU_ULK" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_RESP_SIMULA_PU_ULK" TO "PROGRAMADORESCSI";
