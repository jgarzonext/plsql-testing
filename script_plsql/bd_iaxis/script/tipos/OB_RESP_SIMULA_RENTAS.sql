--------------------------------------------------------
--  DDL for Type OB_RESP_SIMULA_RENTAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_RESP_SIMULA_RENTAS" AUTHID CURRENT_USER AS OBJECT
(
  ssolicit        NUMBER(8), -- N�mero de soliciud (simulaci�n) generada
  det_simula_rentas      t_det_simula_rentas, -- detalle del c�lculo de la simulaci�n
  iprimaneta      NUMBER(13,2), -- prima pagada  
  pctretIRPF    NUMBER(13,2), --% de la retenci�n aplicable a la renta (RO)
  --Estos son todos de HI salida
  durCCRHI      NUMBER(3), -- duraci�n de la CCCR (HI)
  primrentHI    NUMBER(13,2), -- primera renta vitacilia (HI)
  comisapertHI  NUMBER(13,2), -- comisi�n apertura (HI)
  gastnotHI     NUMBER(13,2), -- gastos notaria (HI)
  gastgestionHI NUMBER(13,2), -- gastos de gesti�n (HI)
  impuajdHI     NUMBER(13,2), -- impuestos ajd(HI)  
  gatostasacionHI     NUMBER(13,2), -- gastos de tasaci�n(HI)  
  gastosGestoriaHI NUMBER(13,2), -- gastos de gestor�a(HI)  
  deudacumHI     NUMBER(13,2), -- deuda acumulada  (HI)  
  TAE        NUMBER(13,2), -- TAE (HI)
  tramoA     NUMBER(13,2), -- Importe del Tramo A (HI)
  tramoB     NUMBER(13,2), -- Importe del Tramo B (HI)
  tramoC     NUMBER(13,2), -- Importe del Tramo C  (HI)
  fechaulttrasp DATE, --fecha del �ltimo traspaso peri�dico (HI)
  fechaInicioRenta DATE,--fecha inicio de la renta (HI)
  errores          ob_errores
) 

/

  GRANT EXECUTE ON "AXIS"."OB_RESP_SIMULA_RENTAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_RESP_SIMULA_RENTAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_RESP_SIMULA_RENTAS" TO "PROGRAMADORESCSI";
