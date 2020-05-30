--------------------------------------------------------
--  DDL for Type OB_IAX_PRESTAMO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRESTAMO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRESTAMO
   PROPÓSITO:    Contiene la información del prestamo

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        30/11/2011   DRA               1. 0019238: LCOL_T001- Prèstecs de pòlisses de vida
   2.0        05/09/2012   MDS               2. 0023588: LCOL - Canvis pantalles de prestecs
   3.0        12/09/2012   MDS               3. 0023588: LCOL - Canvis pantalles de prestecs
   4.0        01/07/2013   RCL             4. 0024697: LCOL_T031-Tamaño del campo SSEGURO
******************************************************************************/
(
   ctapres        VARCHAR2(50),   -- Id del préstamo.
   sseguro        NUMBER,   -- id del seguro
   nriesgo        NUMBER(6),   -- num. riesgo
   nmovimi        NUMBER(4),   -- num. movimiento
   finiprest      DATE,   -- fecha de inicio préstamo (primer efecto)
   ffinprest      DATE,   -- fecha de vencimiento del préstamo
   falta          DATE,   -- fecha de registro en el sistema
   ctippres       NUMBER(3),   -- tipo de préstamo (VF 712)
   ctipint        NUMBER(2),   -- tipo de interés (VF 711)
   icapini        NUMBER,   -- capital inicial del préstamo.
   cestado        NUMBER(2),   -- Estado del préstamo (ver apartado de VF)
   itasa          NUMBER(5, 2),   -- % de interés aplicado.
   ipendent       NUMBER,   -- Importe pendiente de otros PRESTAMOS.
   sperson        NUMBER(10),   -- SPERSON del tomador de la póliza
   ctipban        NUMBER(3),   --Tipo de cuenta
   cbancar        VARCHAR2(50),   --Cuenta Bancaria
   ivalres        NUMBER,   --Valor de rescate
   ivalpre        NUMBER,   --Valor otros préstamos
   ivaldis        NUMBER,   --Valor disponible
   forden         DATE,   --Fecha orden
   cforpag        NUMBER(2),   --Forma de pago
   fcuota1        DATE,   --Fecha primera cuota
   isaldo         NUMBER,   --Saldo del préstamo
   cuadro         t_iax_prestcuadro,   -- como colección de OB_IAX_PRESTCUADRO: T_OB_IAX_PRESTCUADRO
   cuotas         t_iax_prestamocuotas,   -- como colección de OB_IAX_PRESTAMOCUOTAS
   ticapitalcuota NUMBER,   -- Total importe del capital de las cuotas
   tiinterescuota NUMBER,   -- Total importe de los intereses de las cuotas
   tidemoracuota  NUMBER,   -- Total importe del interes de demora de las cuotas
   icapini_moncia NUMBER,   --NUMBER(15, 2),   --Capital inicial del préstamo (Moneda Cia)
   fcambio        DATE,   --Fecha Cambio
   sproduc        NUMBER,   --identificador del producto
   npoliza        NUMBER,   --número de póliza
   ncertif        NUMBER,   --número de certificado
   ctipide        NUMBER,   --Tipo de identificación del tomador del préstamo
   nnumide        VARCHAR2(50),   --Número de identificación de la persona
   pago           t_iax_prestamopago,   -- colección de OB_IAX_PRESTAMOPAGO - Bug 0023588 - 05/09/2012 - MDS
   testado        VARCHAR2(100),   -- descripción de cestado  - Bug 0023588 - 12/09/2012 - MDS
   tsucursal      VARCHAR2(300),
   CONSTRUCTOR FUNCTION ob_iax_prestamo
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRESTAMO" AS
   CONSTRUCTOR FUNCTION ob_iax_prestamo
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ctapres := NULL;
      SELF.sseguro := NULL;
      SELF.nriesgo := NULL;
      SELF.nmovimi := NULL;
      SELF.finiprest := NULL;
      SELF.ffinprest := NULL;
      SELF.falta := NULL;
      SELF.ctippres := NULL;
      SELF.ctipint := NULL;
      SELF.icapini := NULL;
      SELF.cestado := NULL;
      SELF.itasa := NULL;
      SELF.ipendent := NULL;
      SELF.sperson := NULL;
      SELF.ctipban := NULL;
      SELF.cbancar := NULL;
      SELF.ivalres := NULL;
      SELF.ivalpre := NULL;
      SELF.ivaldis := NULL;
      SELF.forden := NULL;
      SELF.cforpag := NULL;
      SELF.fcuota1 := NULL;
      SELF.isaldo := NULL;
      SELF.ticapitalcuota := NULL;
      SELF.tiinterescuota := NULL;
      SELF.tidemoracuota := NULL;
      SELF.icapini_moncia := NULL;
      SELF.fcambio := NULL;
      SELF.sproduc := NULL;
      SELF.npoliza := NULL;
      SELF.ncertif := NULL;
      SELF.ctipide := NULL;
      SELF.nnumide := NULL;
      SELF.tsucursal := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRESTAMO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRESTAMO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRESTAMO" TO "PROGRAMADORESCSI";
