--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMI_PAGO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMI_PAGO" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMI_PAGO
   PROP¿SITO:  Contiene la informaci¿n del siniestro

   REVISIONES:
   Ver        Fecha        Autor             Descripci¿n
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/02/2009   XPL                1. Creaci¿n del objeto.
   2.0        08/10/2009   DCT                2. A¿adir columnas ctipdes, sperson y ctransfer
   3.0        20/11/2009   AMC                3. A¿adir columna sidepagtemp
   4.0        21-10-2011   JGR                4. 0018944: LCOL_P001 - PER - Tarjetas (nota 0095276) en desarrollo AXIS3181
   5.0        03/11/2011   MDS                5. A¿adir columnas ireteiva,ireteica,ireteivapag,ireteicappag,iica,iicapag
   6.0        28/09/2012   AMC                6. A¿adir columnas cagente y npersrel , Bug 22256/122456 - 28/09/2012 - AMC
   7.0        16/03/2015   JBENITEZ           7. a¿adir columna ncheque  Bug 35098/200436
   8.0        20/04/2015   JBA               8. 35098/200436:  numero de cheque

******************************************************************************/
(
   -- Bug 35098/200436 - 16/03/2015 - JBENITEZ ncheque
   sidepag        NUMBER,   --Secuencia Identificador Pago
   nsinies        VARCHAR2(14),   --N¿mero Siniestro
   ntramit        NUMBER,   --N¿mero Tramitaci¿n Siniestro
   ctipdes        NUMBER,   --C¿digo Tipo Destinatario
   sperson        NUMBER,   --Secuencia Persona
   ctippag        NUMBER,   --C¿digo Tipo Pago
   ttippag        VARCHAR2(100),   --Desc. Tipo Pago
   cconpag        NUMBER,   --C¿digo Concepto Pago
   tconpag        VARCHAR2(100),   --Desc. COncepto Pago
   ccauind        NUMBER,   --C¿digo Causa Indemnizaci¿n
   tcauind        VARCHAR2(100),   --Desc. Causa Indemnizaci¿n
   cforpag        NUMBER,   --C¿digo Forma Pago
   tforpag        VARCHAR2(100),   --DEsc. Forma PAgo
   fordpag        DATE,   --Fecha Orden Pago
   ctipban        NUMBER,   --C¿digo Tipo Cuenta Bancaria
   ttipban        VARCHAR2(100),   --Desc. Tipo Cuenta Bancaria
   cbancar        VARCHAR2(50),   --C¿digo Cuenta Bancaria
   cmonres        VARCHAR2(3),   --C¿digo Moneda Reserva
   tmonres        VARCHAR2(100),   --Desc. Moneda Reserva
   isinret        NUMBER,   --Importe Sin Retenci¿n
   iretenc        NUMBER,   --Importe Retenci¿n
   iiva           NUMBER,   --Importe IVA
   isuplid        NUMBER,   --Importe Suplido
   ifranq         NUMBER,   --Importe Franquicia Pagada
   iresred        NUMBER,   --Importe Rendimiento Reducido (Vida)
   iresrcm        NUMBER,   --Importe Rendimiento (Vida)
   cmonpag        VARCHAR2(3),   --C¿digo Moneda Pago
   tmonpag        VARCHAR2(100),   --Desc Moneda Pago
   isinretpag     NUMBER,   --Importe Sin Retenci¿n Moneda Pago
   iretencpag     NUMBER,   --Importe Retenci¿n Moneda Pago
   iivapag        NUMBER,   --Importe IVA Moneda Pago
   isuplidpag     NUMBER,   --Importe Suplido Moneda Pago
   ifranqpag      NUMBER,   --Importe Franquicia Moneda Pago
   fcambio        DATE,   --Fecha de cambio
   nfacref        VARCHAR2(100),   --N¿mero Factura/Referencia
   ffacref        DATE,   --Fecha Factura/Referencia
   cusualt        VARCHAR2(20),   --C¿digo Usuario Alta
   falta          DATE,   --Fecha Alta
   cusumod        VARCHAR2(20),   --C¿digo Usuario Modificaci¿n
   fmodifi        DATE,   --Fecha Modificaci¿n
   ctransfer      NUMBER,   --C¿digo Transferencia V.F. 922
   sidepagtemp    NUMBER,   -- Nos indica si el sidepag es el definitivo o no. 0 real - 1 Temporal.
   cultpag        NUMBER,   --¿ltimo pago 0=No 1=S¿
   ncheque        VARCHAR2(50),   --numero cheque
   destinatari    ob_iax_sin_trami_destinatario,   --destinatari
   movpagos       t_iax_sin_trami_movpago,   --Coleccion movimientos de pagos
   pagogar        t_iax_sin_trami_pago_gar,   --coleccion pago garantias
   ireteiva       NUMBER,   -- Importe de retenci¿n sobre el IVA
   ireteica       NUMBER,   -- Importe de retenci¿n sobre el ICA
   ireteivapag    NUMBER,   -- Importe de retenci¿n sobre el IVA Moneda Pago
   ireteicapag    NUMBER,   -- Importe de retenci¿n sobre el ICA Moneda Pago
   iica           NUMBER,   -- Importe ICA
   iicapag        NUMBER,   -- Importe ICA Moneda Pago
   -- Bug 22256/122456 - 28/09/2012 - AMC
   cagente        NUMBER,   -- C¿digo del agente/mediador
   npersrel       NUMBER,   -- C¿digo persona relacionada/perjudicada
   cdomici        NUMBER,   -- Domicilio de env¿o
   ctributacion   NUMBER,   -- Tipo de tributaci¿n
   -- Fi Bug 22256/122456 - 28/09/2012 - AMC
   -- Bug 24708/155502 - 10/10/2013- NSS
   cbanco         NUMBER,   -- Codigo banco giro bancario
   cofici         NUMBER,   -- Codigo oficina del banco del giro bancario
   -- Fi Bug 24708/155502 - 10/10/2013- NSS
   cciudad        NUMBER,   -- C¿digo ciudad giro bancario Bug 29224/166661 - 24/02/2014- NSS
   dciudad        VARCHAR2(100),   -- Descripcion C¿digo ciudad giro bancario Bug 36947/210499 - 04/08/2015- NSS
   presentador	   ob_iax_personas,
   tobserva	      VARCHAR2(1000),
   iotrosgas	   NUMBER,
   iotrosgaspag   NUMBER,
   ibaseipoc	   NUMBER,
   ibaseipocpag   NUMBER,
   iipoconsumo	   NUMBER,
   iipoconsumopag	NUMBER,
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_pago
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMI_PAGO" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_pago
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sidepag := NULL;
      SELF.destinatari := ob_iax_sin_trami_destinatario();
      SELF.movpagos := t_iax_sin_trami_movpago();
      SELF.pagogar := t_iax_sin_trami_pago_gar();
      SELF.presentador := ob_iax_personas();
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_PAGO" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_PAGO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_PAGO" TO "R_AXIS";
