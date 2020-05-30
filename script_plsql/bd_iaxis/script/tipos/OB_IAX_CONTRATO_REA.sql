BEGIN
    PAC_SKIP_ORA.p_comprovadrop('OB_IAX_CONTRATO_REA','TYPE');
END;
/

--------------------------------------------------------
--  DDL for Type OB_IAX_CONTRATO_REA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CONTRATO_REA" AS OBJECT(
   scontra        NUMBER,   -- Secuencia del contrato
   nversio        NUMBER,   -- N�mero versi�n contrato reas.
   npriori        NUMBER,   -- Porcentaje local asumible
   fconini        DATE,   -- Fecha inicial de versi�n
   nconrel        NUMBER,   -- Contrato relacionado
   fconfin        DATE,   -- Fecha final de versi�n
   iautori        NUMBER,   -- Importe con autorizaci�n
   iretenc        NUMBER,   -- Importe pleno neto de retenci�n
   iminces        NUMBER,   -- Importe m�nimo cesi�n (Pleno neto de retenci�n)
   icapaci        NUMBER,   -- Importe de capacidad m�xima
   iprioxl        NUMBER,   -- Importe prioridad XL
   ppriosl        NUMBER,   -- Prioridad SL
   tcontra        VARCHAR2(50),   -- Descripci�n del contrato
   tobserv        VARCHAR2(80),   -- Observaciones varias
   pcedido        NUMBER,   -- Porcentaje cedido
   priesgos       NUMBER,   -- Porcentaje riesgos agravados
   pdescuento     NUMBER,   -- Porcentaje de descuenctros de selecci�n
   pgastos        NUMBER,   -- Porcentaje de gastos (PB)
   ppartbene      NUMBER,   -- Porcentaje de participaci�n en beneficios (PB)
   creafac        NUMBER,   -- C�digo de facultativo
   treafac        VARCHAR2(50),   -- Descripci�n del facultativo (VF:71)
   pcesext        NUMBER,   -- Porcentaje de cesi�n sobre la extraprima
   cgarrel        NUMBER,   -- C�digo de la garant�a relacionada
   tgarrel        VARCHAR2(50),   -- Descripci�n de la garant�a relacionada
   cfrecul        NUMBER,   -- Frecuencia de liquidaci�n con cia
   sconqp         NUMBER,   -- Contrato CP relacionado
   nverqp         NUMBER,   -- Versi�n CP relacionado
   iagrega        NUMBER,   -- Importe agregado XL
   imaxagr        NUMBER,   -- Importe agregado m�ximo XL (L.A.A.)
   clavecbr       NUMBER,   -- F�rmula para el CBR
   cercartera     NUMBER,   -- Tipo E/R cartera
   tercartera     VARCHAR2(100),   -- Desc. Tipo E/R cartera
   iprimaesperadas NUMBER,   -- Primas esperadas totales para la versi�n
   nanyosloss     NUMBER,   -- A�os Loss-Corridos
   cbasexl        NUMBER,   -- Base para el c�lculo XL
   tbasexl        VARCHAR2(100),   -- Desc. Base para el c�lculo XL
   closscorridor_con NUMBER,   -- C�digo cl�usula Loss Corridor
   tlosscorridor_con VARCHAR2(100),   -- Desc. C�digo cl�usula Loss Corridor
   ccappedratio_con NUMBER,   -- C�digo cl�usula Capped Ratio
   tcappedratio_con VARCHAR2(100),   -- Desc C�digo cl�usula Capped Ratio
   scontraprot    NUMBER,   -- Contrato XL protecci�n
   tscontraprot   VARCHAR2(100),   -- Desc. Contrato y versi� XL protecci�n
   cestado        NUMBER,   -- Estado de la versi�n
   nversioprot    NUMBER,   -- Versi�n del Contrato XL protecci�n
   pcomext        NUMBER,   --% Comisi�n extra prima (solo para POSITIVA)
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
      SELF.nversio := 0;   -- N�mero versi�n contrato reas.
      SELF.npriori := 0;   -- Porcentaje local asumible
      SELF.fconini := NULL;   -- Fecha inicial de versi�n
      SELF.nconrel := 0;   -- Contrato relacionado
      SELF.fconfin := NULL;   -- Fecha final de versi�n
      SELF.iautori := 0;   -- Importe con autorizaci�n
      SELF.iretenc := 0;   -- Importe pleno neto de retenci�n
      SELF.iminces := 0;   -- Importe m�nimo cesi�n (Pleno neto de retenci�n)
      SELF.icapaci := 0;   -- Importe de capacidad m�xima
      SELF.iprioxl := 0;   -- Importe prioridad XL
      SELF.ppriosl := 0;   -- Prioridad SL
      SELF.tcontra := NULL;   -- Descripci�n del contrato
      SELF.tobserv := NULL;   -- Observaciones varias
      SELF.pcedido := 0;   -- Porcentaje cedido
      SELF.priesgos := 0;   -- Porcentaje riesgos agravados
      SELF.pdescuento := 0;   -- Porcentaje de descuenctros de selecci�n
      SELF.pgastos := 0;   -- Porcentaje de gastos (PB)
      SELF.ppartbene := 0;   -- Porcentaje de participaci�n en beneficios (PB)
      SELF.creafac := 0;   -- C�digo de facultativo
      SELF.treafac := NULL;   -- Descripci�n del facultativo (VF:71)
      SELF.pcesext := 0;   -- Porcentaje de cesi�n sobre la extraprima
      SELF.cgarrel := 0;   -- C�digo de la garant�a relacionada
      SELF.tgarrel := NULL;   -- Descripci�n de la garant�a relacionada
      SELF.cfrecul := 0;   -- Frecuencia de liquidaci�n con cia
      SELF.sconqp := 0;   -- Contrato CP relacionado
      SELF.nverqp := 0;   -- Versi�n CP relacionado
      SELF.iagrega := 0;   -- Importe agregado XL
      SELF.imaxagr := 0;   -- Importe agregado m�ximo XL (L.A.A.)
      SELF.ttramos := NULL;   -- Tramos del contrato
      SELF.clavecbr := NULL;   -- F�rmula para el CBR
      SELF.cercartera := NULL;   -- Tipo E/R cartera
      SELF.tercartera := NULL;   -- Desc. Tipo E/R cartera
      SELF.iprimaesperadas := 0;   -- Primas esperadas totales para la versi�n
      SELF.nanyosloss := 0;   -- A�os Loss-Corridos
      SELF.cbasexl := NULL;   -- Base para el c�lculo XL
      SELF.tbasexl := NULL;   -- Desc. Base para el c�lculo XL
      SELF.closscorridor_con := NULL;   -- C�digo cl�usula Loss Corridor
      SELF.tlosscorridor_con := NULL;   -- Desc. C�digo cl�usula Loss Corridor
      SELF.ccappedratio_con := NULL;   -- C�digo cl�usula Capped Ratio
      SELF.tcappedratio_con := NULL;   -- Desc C�digo cl�usula Capped Ratio
      SELF.scontraprot := NULL;   -- Contrato XL protecci�n
      SELF.tscontraprot := NULL;   -- Desc. Contrato XL protecci�n
      SELF.cestado := 0;   -- Estado de la version
      SELF.nversioprot := NULL;   -- Versi�n del Contrato XL protecci�n
      SELF.pcomext := NULL;   --% Comisi�n extra prima (solo para POSITIVA)
	  nretpol      :=0; --EDBR - 11/06/2019 - IAXIS3338 - se agrega asignacion de campo de Retencion por poliza NRETPOL
	  nretcul      :=0;--EDBR - 11/06/2019 - IAXIS3338 - se agrega campo de Retencion por Cumulo NRETCUL
      RETURN;
   END ob_iax_contrato_rea;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CONTRATO_REA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CONTRATO_REA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CONTRATO_REA" TO "PROGRAMADORESCSI";
