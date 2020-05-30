--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMI_PAGO_GAR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMI_PAGO_GAR" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMI_PAGO_GAR
   PROP¿SITO:  Contiene la informaci¿n del siniestro

   REVISIONES:
   Ver        Fecha        Autor             Descripci¿n
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/02/2009   XPL                1. Creaci¿n del objeto.
   2.0        03/11/2011   MDS                2. A¿adir columnas preteiva,preteica,ireteiva,ireteica,ireteivapag,ireteicappag,pica,iica,iicapag
   3.0        04/03/2016   JTT                3. Se cambia de NUMBER a NUMBER(3) los campos pReteIVA, pReteICA
******************************************************************************/
(
   sidepag        NUMBER(8),   --Secuencia Identificador Pago
   norden         NUMBER(4),   --Orden PK
   reserva        ob_iax_sin_trami_reserva,   --reserva seleccionada
   fperini        DATE,   --Fecha Periodo Inicio
   fperfin        DATE,   --Fecha Periodo Fin
   cmonres        VARCHAR2(3),   --C¿digo Moneda Reserva
   tmonres        VARCHAR2(100),   --DES moneda reserva
   isinret        NUMBER,   --Importe Sin Retenci¿n
   iiva           NUMBER,   --Importe IVA
   isuplid        NUMBER,   --Importe Suplido
   iretenc        NUMBER,   --Importe Retenci¿n
   ifranq         NUMBER,   --Importe Franquicia Pagada
   pretenc        NUMBER(6, 3),   --Porcentaje Retenci¿n
   piva           NUMBER(6, 3),   --Porcentaje IVA
   iresrcm        NUMBER,
   iresred        NUMBER,
   importe        NUMBER,   --Import isinret - isuplid
   ineta          NUMBER,   --Import importe + iiva + iretenc
   cmonpag        VARCHAR2(3),   --C¿digo Moneda Pago
   tmonpag        VARCHAR2(100),   --Des Moneda Pago
   isinretpag     NUMBER,   -- importe bruto
   iivapag        NUMBER,   --Importe IVA Moneda Pago
   isuplidpag     NUMBER,   --Importe Suplido Moneda Pago
   iretencpag     NUMBER,   --Importe Retenci¿n Moneda Pago
   ifranqpag      NUMBER,   --Importe Franquicia Moneda Pago
   cconpag        NUMBER(4),   --concepto del pago(det. 803)
   tconpag        VARCHAR2(100),   -- desc concepto del pago(det. 803)
   fcambio        DATE,   --Fecha de cambio
   cusualt        VARCHAR2(20),   --C¿digo Usuario Alta
   falta          DATE,   --Fecha Alta
   cusumod        VARCHAR2(20),   --C¿digo Usuario Modificaci¿n
   fmodifi        DATE,   --Fecha Modificaci¿n
   esmodif        NUMBER(1),   --el pago es modificable 1 si, 0 no
   preteiva       NUMBER,   -- Porcentaje de retenci¿n sobre el IVA
   preteica       NUMBER,   -- Porcentaje de retenci¿n sobre el ICA
   ireteiva       NUMBER,   -- Importe de retenci¿n sobre el IVA
   ireteica       NUMBER,   -- Importe de retenci¿n sobre el ICA
   ireteivapag    NUMBER,   -- Importe de retenci¿n sobre el IVA Moneda Pago
   ireteicapag    NUMBER,   -- Importe de retenci¿n sobre el ICA Moneda Pago
   pica           NUMBER(6, 3),   -- Porcentaje ICA
   iica           NUMBER,   -- Importe ICA
   iicapag        NUMBER,   -- Importe ICA Moneda Pago
   piva_ctipind   NUMBER,   -- Tipo indicador IVA
   pretenc_ctipind NUMBER,   -- Tipo indicador RETEFUENTE
   preteiva_ctipind NUMBER,   -- Tipo indicador RETEIVA
   preteica_ctipind NUMBER,   -- Tipo indicador RETEIVA
   idres          NUMBER,   -- Identificador de reserva
   iotrosgas      NUMBER, --Importe otros gastos
   iotrosgaspag   NUMBER, --Importe otros gastos Moneda Pago
   ibaseipoc      NUMBER, --Importe base impuesto Ipoconsumo
   ibaseipocpag   NUMBER, --Importe base impuesto Ipoconsumo Moneda Pago
   pipoconsumo      NUMBER(6,3), --Porcentaje  impuesto Ipoconsumo
   iipoconsumo      NUMBER, --Importe Impuesto Ipoconsumo
   iipoconsumopag   NUMBER, --Importe Impuesto Ipoconsumo Moneda Pago
   pipoconsumo_tipind NUMBER,
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_pago_gar
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMI_PAGO_GAR" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_pago_gar
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sidepag := NULL;
      SELF.reserva := ob_iax_sin_trami_reserva();
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_PAGO_GAR" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_PAGO_GAR" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_PAGO_GAR" TO "PROGRAMADORESCSI";
