--------------------------------------------------------
--  DDL for Type OB_RESP_SIMULA_PU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_RESP_SIMULA_PU" AUTHID CURRENT_USER AS OBJECT
(
  ssolicit        NUMBER(8), -- N�mero de soliciud (simulaci�n) generada
  det_simula_pu      t_det_simula_pu, -- detalle del c�lculo de la simulaci�n
  iprimaneta      NUMBER(13,2), -- prima pagada
  prendimiento      NUMBER(5,2), -- % de rendimiento obtenido sobre la prima pagada y el capital al vencimiento
  icapvencim      NUMBER(13,2), -- capital al vencimiento
  pintprom        number(5,2), -- % de inter�s promocional
  pintfin         number(5,2), -- % de inter�s bruto equivalente a operaci�n financiera
  PINTMIN	  number(5,2), -- % de inter�s m�mino garantizado
  errores          ob_errores
)

/

  GRANT EXECUTE ON "AXIS"."OB_RESP_SIMULA_PU" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_RESP_SIMULA_PU" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_RESP_SIMULA_PU" TO "PROGRAMADORESCSI";
