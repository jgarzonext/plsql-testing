--------------------------------------------------------
--  DDL for Type OB_IAX_CUACESFAC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_CUACESFAC" AS OBJECT(
/******************************************************************************
   NOMBRE:    ob_iax_cuacesfac
   PROPÓSITO:      Objeto para contener el detalle del cuadro de compañias que se reparten el riesgo facultativo

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        29/06/2009   ETM                1. Creación del objeto.
                                                --BUG 10487 - 18/06/2009 - ETM - IAX : REA: Desarrollo PL del mantenimiento de Facultativo
   2.0        21/08/2012   AVT                2. 22374: LCOL_A004-Mantenimiento de facultativo - Fase 2
   3.0        26/02/2013   LCF                3. 0025803: RSA001 - Ampliar los decimales que utiliza iAXIS
******************************************************************************/
   sfacult        NUMBER(6),   -- Secuencia de cuadro facultativo
   ccompani       NUMBER(3),   -- Código de Compañia
   tcompani       VARCHAR2(200),   --Descripción de la compañia
   pcesion        NUMBER(8, 5),   -- % de cesión
   icesfij        NUMBER,   -- Importe fijo de cesión
   ccomrea        NUMBER(2),   -- Código de comisión en contrato de reaseguro
   tcomrea        VARCHAR2(50),   --Descripcion de comisión en contratos de reaseguro
   pcomisi        NUMBER(5, 2),   --
   icomfij        NUMBER,   -- Importe fijo comisión
   isconta        NUMBER,   -- Importe límite pago siniestro al contado
   -- INICIO INFORCOL 26-01-2020 Reaseguro facultativo - ajuste para deposito en prima retenida
   preserv        NUMBER(5, 2),   -- % reserva sobre cesión a cargo de la compañia
   presrea        NUMBER(5, 2),   -- % reserva sobre cesión a cargo del reasegurador
   -- FIN INFORCOL 26-01-2020 Reaseguro facultativo - ajuste para deposito en prima retenida
   pintres        NUMBER(7, 5),   -- % Interés sobre la reserva
   cintres        NUMBER(2),   -- Codi de la taula d´interés variable
   pimpint        NUMBER(5, 2),   -- 23/08/2012 AVT 22374 Porcentaje de impuestos sobre los intereses
   ccorred        NUMBER(4),   -- 20/08/2012 AVT 22374 - Indicador corredor (Cia que agrupamos)
   cfreres        NUMBER(2),   -- 20/08/2012 AVT 22374 - C?digo frecuencia liberaci?n/reembolso de Reservas VF:17
   cresrea        NUMBER(1),   -- 20/08/2012 AVT 22374 - Reserva/Dep?stio a cuenta de la reaseguradora (0-No, 1-Si)
   cconrec        NUMBER(1),   -- 20/08/2012 AVT 22374 - Cl?usula control de reclamos
   fgarpri        DATE,   -- 20/08/2012 AVT 22374 - Fecha garant?a de pago de primas
   fgardep        DATE,   -- 20/08/2012 AVT 22374 - Fecha garant?a de pago de depositos
   tidfcom        VARCHAR2(50),
   CONSTRUCTOR FUNCTION ob_iax_cuacesfac
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_CUACESFAC" AS
   CONSTRUCTOR FUNCTION ob_iax_cuacesfac
      RETURN SELF AS RESULT IS
/******************************************************************************
   NOMBRE:    ob_iax_cuacesfac
   PROPÓSITO:      Objeto para contener el detalle del cuadro de compañias que se reparten el riesgo facultativo

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        29/06/2009   ETM                1. Creación del objeto.
                                                --BUG 10487 - 18/06/2009 - ETM - IAX : REA: Desarrollo PL del mantenimiento de Facultativo
   2.0        21/08/2012   AVT                2. 22374: LCOL_A004-Mantenimiento de facultativo - Fase 2
******************************************************************************/
   BEGIN
      SELF.sfacult := 0;   -- Secuencia de cuadro facultativo
      SELF.ccompani := 0;   -- Código de Compañia
      SELF.tcompani := NULL;   --Descripción de la compañia
      SELF.pcesion := 0;   -- % de cesión
      SELF.icesfij := 0;   -- Importe fijo de cesión
      SELF.ccomrea := 0;   -- Código de comisión en contrato de reaseguro
      SELF.tcomrea := NULL;   --Descripcion de comisión en contratos de reaseguro
      SELF.pcomisi := 0;
      SELF.icomfij := 0;   -- Importe fijo comisión
      SELF.isconta := 0;   -- Importe límite pago siniestro al contado
      -- INICIO INFORCOL 26-01-2020 Reaseguro facultativo - ajuste para deposito en prima retenida
      SELF.preserv := 0;   -- % reserva sobre cesión a cargo de la compañia
      SELF.presrea := 0;   -- % reserva sobre cesión a cargo del reasegurador
      -- FIN INFORCOL 26-01-2020 Reaseguro facultativo - ajuste para deposito en prima retenida
      SELF.pintres := 0;   -- % Interés sobre la reserva
      SELF.cintres := 0;   -- Codi de la taula d´interés variable
      SELF.pimpint := 0;   -- 23/08/2012 AVT 22374 Porcentaje de impuestos sobre los intereses
      SELF.ccorred := 0;   -- 20/08/2012 AVT 22374 - Indicador corredor (Cia que agrupamos)
      SELF.cfreres := 0;   -- 20/08/2012 AVT 22374 - C?digo frecuencia liberaci?n/reembolso de Reservas VF:17
      SELF.cresrea := 0;   -- 20/08/2012 AVT 22374 - Reserva/Dep?stio a cuenta de la reaseguradora (0-No, 1-Si)
      SELF.cconrec := 0;   -- 20/08/2012 AVT 22374 - Cl?usula control de reclamos
      SELF.fgarpri := NULL;   -- 20/08/2012 AVT 22374 - Fecha garant?a de pago de primas
      SELF.fgardep := NULL;   -- 20/08/2012 AVT 22374 - Fecha garant?a de pago de depositos
      SELF.tidfcom := NULL;
      RETURN;
   END ob_iax_cuacesfac;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_CUACESFAC" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CUACESFAC" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_CUACESFAC" TO "PROGRAMADORESCSI";
