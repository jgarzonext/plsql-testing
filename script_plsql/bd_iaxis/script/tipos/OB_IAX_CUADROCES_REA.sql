--------------------------------------------------------
--  DDL for Type OB_IAX_CUADROCES_REA
--------------------------------------------------------

   DROP TYPE  AXIS.OB_IAX_CUADROCES_REA FORCE;
/
  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CUADROCES_REA" AS OBJECT(
/*
  REVISIONES:
   Ver        Fecha        Autor             Descripci¿n
   ---------  ----------  ---------------  ------------------------------------
   1.0        26/02/2013   LCF                1. 0025803: RSA001 - Ampliar los decimales que utiliza iAXIS
*/
   ccompani       NUMBER(4),   -- C¿digo de la compa¿¿a
   tcompani       VARCHAR2(40),   -- Descripci¿n de la compa¿¿a
   nversio        NUMBER(2),   -- N¿mero de versi¿n contrato reas.
   scontra        NUMBER(6),   -- Secuencia de contrato
   ctramo         NUMBER(2),   -- C¿digo de tramo
   ttramo         VARCHAR2(100),   -- Descripci¿n del tramo (VF 105)
   ccomrea        NUMBER(4),   -- C¿digo de comisi¿n en contratos de reaseguro.
   tcomrea        VARCHAR2(50),   -- Desc. Comisi¿n (Descomisionrea)
   pcesion        NUMBER(17, 14),   -- Porcentaje de cesi¿n
   nplenos        NUMBER(5, 2),   -- N¿mero de plenos
   icesfij        NUMBER,   -- Importe de cesi¿n fijo
   icomfij        NUMBER,   -- Importe de comisi¿n dijo
   isconta        NUMBER,   -- Importe l¿mite pago siniestros al contado
   preserv        NUMBER(5, 2),   -- Porcentaje de reserva sobre cesi¿n - % Deposito
   pintres        NUMBER(7, 2),   -- Porcentaje de inter¿s sobre reserva - % Deposito
   iliacde        NUMBER,   -- Importe l¿mite acumulaci¿n deducible(XLoss)
   ppagosl        NUMBER(5, 2),   -- Porcentaje a pagar por el reasegurador sobre el porcentaje que ha asumido
   ccorred        NUMBER(4),   -- Indicador corredor ( Cia que agrupamos )
   descorred      VARCHAR2(40),   -- desc. de la compa¿¿a
   cintref        NUMBER(3),   -- C¿digo de inter¿s referenciado
   cresref        NUMBER(3),   -- C¿digo de reserva referenciada
   cintres        NUMBER(2),   -- C¿digo de inter¿s de reaseguro
   ireserv        NUMBER,   -- Importe fijo de reserva
   ptasaj         NUMBER(5, 2),   -- Tasa de ajuste de la reserva
   fultliq        DATE,   -- ¿ltima liquidaci¿n reservas
   iagrega        NUMBER,   -- Importe Agregado XL
   imaxagr        NUMBER,   -- Importe Agregado M¿ximo XL ( L.A.A )
   ctipcomis      NUMBER(1),   -- Tipo Comisi¿n
   ttipcomis      VARCHAR2(100),   -- Desc. Tipo Comisi¿n
   pctcomis       NUMBER(5, 2),   -- % Comisi¿n fija / provisional
   ctramocomision NUMBER(5),   -- Tramo comisi¿n variable
   ttramocomision VARCHAR2(100),   -- Desc. Tramo comisi¿n variable
   pctgastos      NUMBER(5, 2),    -- % Gastos del reasegurador (CONF-587)
   CONSTRUCTOR FUNCTION ob_iax_cuadroces_rea
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CUADROCES_REA" AS
   CONSTRUCTOR FUNCTION ob_iax_cuadroces_rea
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccompani := 0;   -- C¿digo de la compa¿¿a
      SELF.tcompani := NULL;   -- Descripci¿n de la compa¿¿a
      SELF.nversio := 0;   -- N¿mero de versi¿n contrato reas.
      SELF.scontra := 0;   -- Secuencia de contrato
      SELF.ctramo := 0;   -- C¿digo de tramo
      SELF.ttramo := NULL;   -- Descripci¿n del tramo (VF 105)
      SELF.ccomrea := 0;   -- C¿digo de comisi¿n en contratos de reaseguro.
      SELF.tcomrea := NULL;   -- Desc. Comisi¿n (Descomisionrea)
      SELF.pcesion := 0;   -- Porcentaje de cesi¿n
      SELF.nplenos := 0;   -- N¿mero de plenos
      SELF.icesfij := 0;   -- Importe de cesi¿n fijo
      SELF.icomfij := 0;   -- Importe de comisi¿n dijo
      SELF.isconta := 0;   -- Importe l¿mite pago siniestros al contado
      SELF.preserv := 0;   -- Porcentaje de reserva sobre cesi¿n - % Deposito
      SELF.pintres := 0;   -- Porcentaje de inter¿s sobre reserva - % Deposito
      SELF.iliacde := 0;   -- Importe l¿mite acumulaci¿n deducible(XLoss)
      SELF.ppagosl := 0;   -- Porcentaje a pagar por el reasegurador sobre el porcentaje que ha asumido
      SELF.ccorred := 0;   -- Indicador corredor ( Cia que agrupamos )
      SELF.descorred := NULL;   -- desc. de la compa¿¿a
      SELF.cintref := 0;   -- C¿digo de inter¿s referenciado
      SELF.cresref := 0;   -- C¿digo de reserva referenciada
      SELF.cintres := 0;   -- C¿digo de inter¿s de reaseguro
      SELF.ireserv := 0;   -- Importe fijo de reserva
      SELF.ptasaj := 0;   -- Tasa de ajuste de la reserva
      SELF.fultliq := NULL;   -- ¿ltima liquidaci¿n reservas
      SELF.iagrega := 0;   -- Importe Agregado XL
      SELF.imaxagr := 0;   -- Importe Agregado M¿ximo XL ( L.A.A )
      SELF.ctipcomis := NULL;   -- Tipo Comisi¿n
      SELF.ttipcomis := NULL;   -- Desc. Tipo Comisi¿n
      SELF.pctcomis := 0;   -- % Comisi¿n fija / provisional
      SELF.ctramocomision := NULL;   -- Tramo comisi¿n variable
      SELF.ttramocomision := NULL;   -- Desc. Tramo comisi¿n variable
      SELF.pctgastos := NULL; -- % Gastos del reasegurador (CONF-587)
      RETURN;
   END ob_iax_cuadroces_rea;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CUADROCES_REA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CUADROCES_REA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CUADROCES_REA" TO "PROGRAMADORESCSI";
