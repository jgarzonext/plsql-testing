--------------------------------------------------------
--  DDL for Type OB_IAX_PRESTAMOSEG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRESTAMOSEG" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRESTAMOSEG
   PROPÓSITO:    Contiene la información del saldo deutor

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/09/2009   AMC              1. CRE080. Bug 11165, Se crea objeto
   2.0        30/11/2009   JMF              2. Bug 0010908 Afegir camps
   3.0        21-10-2011   JGR              3. 0018944: LCOL_P001 - PER - Tarjetas (nota 0095276) en desarrollo AXIS3181
   4.0        01/07/2013   RCL            4. 0024697: LCOL_T031-Tamaño del campo SSEGURO
******************************************************************************/
(
   sseguro        NUMBER,   --Código seguro identificador interno
   nmovimi        NUMBER(6),   --Número movimiento
   idcuenta       VARCHAR2(50),   --Identificador único préstamo
   ctipcuenta     NUMBER(4),   --Valor fijo 401. Tipo de cuenta
   ttipcuenta     VARCHAR2(100),   --Descripción del tipo de cuenta
   descripcion    VARCHAR2(3000),   --Descripción
   ctipban        NUMBER(3),   --
   ttipban        VARCHAR2(100),   --Descripción del tipo de cuenta.
   ctipimp        NUMBER(3),   --valor fijo 402, tipo de importe en la cuenta.
   ttipimp        VARCHAR2(500),   --Descripción del tipo de importe de la cuenta.
   isaldo         NUMBER,   --NUMBER(15, 2),   --
   porcen         NUMBER(5, 2),
   ilimite        NUMBER,   --NUMBER(15, 2),
   icapmax        NUMBER,   --NUMBER(15, 2),   --Importe máximo por cuenta
   icapital       NUMBER,   --NUMBER(15, 2),
   cmoneda        VARCHAR2(10),
   icapaseg       NUMBER,   --NUMBER(15, 2),   --capital asegurado por cuenta
   selsaldo       NUMBER(1),   --marcado 1 no marcado 0
   -- ini bug 0010908 30/11/2009   JMF
   finiprest      DATE,   -- Fecha inicio del efecto de la asociación de prestamo con el seguro y con el porcentaje indicado
   ffinprest      DATE,   -- Fecha fin del efecto de la asociación de prestamo con el seguro y con el porcentaje indicado
   pporcen        NUMBER(5, 2),   -- Porcentaje del titular del seguro en el préstamo
   falta          DATE,   -- Fecha de alta del préstamo
   -- fin bug 0010908 30/11/2009   JMF
   -- ini Bug 13884: xpl
   cuadro         t_iax_prestcuadroseg,   --cuadro del prestamo
   -- fin Bug 13884: xpl
   CONSTRUCTOR FUNCTION ob_iax_prestamoseg
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRESTAMOSEG" AS
   CONSTRUCTOR FUNCTION ob_iax_prestamoseg
      RETURN SELF AS RESULT IS
   /******************************************************************************
      NOMBRE:       OB_IAX_PRESTAMOSEG
      PROPÓSITO:    Contiene la información del saldo deutor

      REVISIONES:
      Ver        Fecha        Autor             Descripción
      ---------  ----------  ---------------  ------------------------------------
      1.0        16/09/2009   AMC              1. CRE080. Bug 11165, Se crea objeto
      2.0        30/11/2009   JMF              2. Bug 0010908 Afegir camps
   ******************************************************************************/
   BEGIN
      SELF.isaldo := 0;
      SELF.porcen := 0;
      SELF.ilimite := 0;
      SELF.icapmax := 0;
      SELF.icapital := 0;
      SELF.icapaseg := 0;
      -- ini bug 0010908 30/11/2009 JMF
      SELF.sseguro := NULL;
      SELF.nmovimi := NULL;
      SELF.idcuenta := NULL;
      SELF.ctipcuenta := NULL;
      SELF.ttipcuenta := NULL;
      SELF.descripcion := NULL;
      SELF.ctipban := NULL;
      SELF.ttipban := NULL;
      SELF.ctipimp := NULL;
      SELF.ttipimp := NULL;
      SELF.cmoneda := NULL;
      SELF.selsaldo := NULL;
      SELF.finiprest := NULL;
      SELF.ffinprest := NULL;
      SELF.pporcen := NULL;
      SELF.falta := NULL;
      -- fin bug 0010908 30/11/2009  JMF
      -- ini Bug 13884: xpl
      SELF.cuadro := NULL;
      -- fin Bug 13884: xpl
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRESTAMOSEG" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRESTAMOSEG" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRESTAMOSEG" TO "PROGRAMADORESCSI";
