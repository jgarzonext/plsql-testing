BEGIN
    PAC_SKIP_ORA.p_comprovadrop('OB_IAX_CONTRATO_REA','TYPE');
END;
/

--------------------------------------------------------
--  DDL for Type OB_IAX_CONTRATO_REA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CONTRATO_REA" AS OBJECT(
   scontra        NUMBER,   -- Secuencia del contrato
   nversio        NUMBER,   -- Número versión contrato reas.
   npriori        NUMBER,   -- Porcentaje local asumible
   fconini        DATE,   -- Fecha inicial de versión
   nconrel        NUMBER,   -- Contrato relacionado
   fconfin        DATE,   -- Fecha final de versión
   iautori        NUMBER,   -- Importe con autorización
   iretenc        NUMBER,   -- Importe pleno neto de retención
   iminces        NUMBER,   -- Importe mínimo cesión (Pleno neto de retención)
   icapaci        NUMBER,   -- Importe de capacidad máxima
   iprioxl        NUMBER,   -- Importe prioridad XL
   ppriosl        NUMBER,   -- Prioridad SL
   tcontra        VARCHAR2(50),   -- Descripción del contrato
   tobserv        VARCHAR2(80),   -- Observaciones varias
   pcedido        NUMBER,   -- Porcentaje cedido
   priesgos       NUMBER,   -- Porcentaje riesgos agravados
   pdescuento     NUMBER,   -- Porcentaje de descuenctros de selección
   pgastos        NUMBER,   -- Porcentaje de gastos (PB)
   ppartbene      NUMBER,   -- Porcentaje de participación en beneficios (PB)
   creafac        NUMBER,   -- Código de facultativo
   treafac        VARCHAR2(50),   -- Descripción del facultativo (VF:71)
   pcesext        NUMBER,   -- Porcentaje de cesión sobre la extraprima
   cgarrel        NUMBER,   -- Código de la garantía relacionada
   tgarrel        VARCHAR2(50),   -- Descripción de la garantía relacionada
   cfrecul        NUMBER,   -- Frecuencia de liquidación con cia
   sconqp         NUMBER,   -- Contrato CP relacionado
   nverqp         NUMBER,   -- Versión CP relacionado
   iagrega        NUMBER,   -- Importe agregado XL
   imaxagr        NUMBER,   -- Importe agregado máximo XL (L.A.A.)
   clavecbr       NUMBER,   -- Fórmula para el CBR
   cercartera     NUMBER,   -- Tipo E/R cartera
   tercartera     VARCHAR2(100),   -- Desc. Tipo E/R cartera
   iprimaesperadas NUMBER,   -- Primas esperadas totales para la versión
   nanyosloss     NUMBER,   -- Años Loss-Corridos
   cbasexl        NUMBER,   -- Base para el cálculo XL
   tbasexl        VARCHAR2(100),   -- Desc. Base para el cálculo XL
   closscorridor_con NUMBER,   -- Código cláusula Loss Corridor
   tlosscorridor_con VARCHAR2(100),   -- Desc. Código cláusula Loss Corridor
   ccappedratio_con NUMBER,   -- Código cláusula Capped Ratio
   tcappedratio_con VARCHAR2(100),   -- Desc Código cláusula Capped Ratio
   scontraprot    NUMBER,   -- Contrato XL protección
   tscontraprot   VARCHAR2(100),   -- Desc. Contrato y versió XL protección
   cestado        NUMBER,   -- Estado de la versión
   nversioprot    NUMBER,   -- Versión del Contrato XL protección
   pcomext        NUMBER,   --% Comisión extra prima (solo para POSITIVA)
   ttramos        t_iax_tramos_rea,   -- Tramos del contrato
   nretpol		  NUMBER, --EDBR - 11/06/2019 - IAXIS3338 - se agrega parametro de Retencion por poliza NRETPOL
   nretcul		  NUMBER, --EDBR - 11/06/2019 - IAXIS3338 - se agrega parametro de Retencion por Cumulo NRETCUL
   CONSTRUCTOR FUNCTION ob_iax_contrato_rea
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CONTRATO_REA" AS
   CONSTRUCTOR FUNCTION ob_iax_contrato_rea
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.scontra := 0;   -- Secuencia del contrato
      SELF.nversio := 0;   -- Número versión contrato reas.
      SELF.npriori := 0;   -- Porcentaje local asumible
      SELF.fconini := NULL;   -- Fecha inicial de versión
      SELF.nconrel := 0;   -- Contrato relacionado
      SELF.fconfin := NULL;   -- Fecha final de versión
      SELF.iautori := 0;   -- Importe con autorización
      SELF.iretenc := 0;   -- Importe pleno neto de retención
      SELF.iminces := 0;   -- Importe mínimo cesión (Pleno neto de retención)
      SELF.icapaci := 0;   -- Importe de capacidad máxima
      SELF.iprioxl := 0;   -- Importe prioridad XL
      SELF.ppriosl := 0;   -- Prioridad SL
      SELF.tcontra := NULL;   -- Descripción del contrato
      SELF.tobserv := NULL;   -- Observaciones varias
      SELF.pcedido := 0;   -- Porcentaje cedido
      SELF.priesgos := 0;   -- Porcentaje riesgos agravados
      SELF.pdescuento := 0;   -- Porcentaje de descuenctros de selección
      SELF.pgastos := 0;   -- Porcentaje de gastos (PB)
      SELF.ppartbene := 0;   -- Porcentaje de participación en beneficios (PB)
      SELF.creafac := 0;   -- Código de facultativo
      SELF.treafac := NULL;   -- Descripción del facultativo (VF:71)
      SELF.pcesext := 0;   -- Porcentaje de cesión sobre la extraprima
      SELF.cgarrel := 0;   -- Código de la garantía relacionada
      SELF.tgarrel := NULL;   -- Descripción de la garantía relacionada
      SELF.cfrecul := 0;   -- Frecuencia de liquidación con cia
      SELF.sconqp := 0;   -- Contrato CP relacionado
      SELF.nverqp := 0;   -- Versión CP relacionado
      SELF.iagrega := 0;   -- Importe agregado XL
      SELF.imaxagr := 0;   -- Importe agregado máximo XL (L.A.A.)
      SELF.ttramos := NULL;   -- Tramos del contrato
      SELF.clavecbr := NULL;   -- Fórmula para el CBR
      SELF.cercartera := NULL;   -- Tipo E/R cartera
      SELF.tercartera := NULL;   -- Desc. Tipo E/R cartera
      SELF.iprimaesperadas := 0;   -- Primas esperadas totales para la versión
      SELF.nanyosloss := 0;   -- Años Loss-Corridos
      SELF.cbasexl := NULL;   -- Base para el cálculo XL
      SELF.tbasexl := NULL;   -- Desc. Base para el cálculo XL
      SELF.closscorridor_con := NULL;   -- Código cláusula Loss Corridor
      SELF.tlosscorridor_con := NULL;   -- Desc. Código cláusula Loss Corridor
      SELF.ccappedratio_con := NULL;   -- Código cláusula Capped Ratio
      SELF.tcappedratio_con := NULL;   -- Desc Código cláusula Capped Ratio
      SELF.scontraprot := NULL;   -- Contrato XL protección
      SELF.tscontraprot := NULL;   -- Desc. Contrato XL protección
      SELF.cestado := 0;   -- Estado de la version
      SELF.nversioprot := NULL;   -- Versión del Contrato XL protección
      SELF.pcomext := NULL;   --% Comisión extra prima (solo para POSITIVA)
	  nretpol      :=0; --EDBR - 11/06/2019 - IAXIS3338 - se agrega asignacion de campo de Retencion por poliza NRETPOL
	  nretcul      :=0;--EDBR - 11/06/2019 - IAXIS3338 - se agrega campo de Retencion por Cumulo NRETCUL
      RETURN;
   END ob_iax_contrato_rea;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CONTRATO_REA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CONTRATO_REA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CONTRATO_REA" TO "PROGRAMADORESCSI";
