--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMI_RESERVA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMI_RESERVA" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMI_RESERVA
   PROP�SITO:  Contiene la informaci�n del siniestro

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/02/2009   XPL                1. Creaci�n del objeto.
   2.0        16/12/2009   AMC                2. Se a�ade el campo IPREREC
   3.0        09/11/2010   DRA                3. 0016506: CRE - Pantallas de siniestros nuevo m�dulo
   4.0        20/11/2012   JMF                0024774 MDP_S001-SIN - Preparacion Pruebas R2
******************************************************************************/
(
   nsinies        VARCHAR2(14),   --N�mero Siniestro
   ntramit        NUMBER(3),   --N�mero Tramitaci�n Siniestro
   ctipres        NUMBER(2),   --C�digo Tipo Reserva
   ttipres        VARCHAR2(100),   --Des tipo reserva
   nmovres        NUMBER(4),   --N�mero Movimiento Reserva
   cgarant        NUMBER(4),   --C�digo Garant�a
   tgarant        VARCHAR2(120),   --Des garantia
   ccalres        NUMBER(1),   --C�digo C�lculo Reserva (Manual/Autom�tico)
   tcalres        VARCHAR2(100),   --des calculo reserva
   fmovres        DATE,   --Fecha Movimiento Reserva
   cmonres        VARCHAR2(3),   --C�digo Moneda Reserva (tabla monedas)
   tmonres        VARCHAR2(100),   --des moneda reserva
   cmonresint     VARCHAR2(100),   --Moneda reserva (tabla eco_codmonedas )
   ireserva       NUMBER,   --Importe Reserva
   ipago          NUMBER,   --Importe Pago
   iingreso       NUMBER,   --Importe Ingreso
   irecobro       NUMBER,   --Importe Recobro
   icaprie        NUMBER,   --Importe capital risc
   ivalactual     NUMBER,   --Importe valoracion actual : (IRESERVA + IPAGO ) -(IINGRESO + IRECOBRO )
   ipenali        NUMBER,   --Importe penalitzaci�
   fresini        DATE,   --Fecha Inicio Reserva
   fresfin        DATE,   --Fecha Fin Reserva
   fultpag        DATE,   --fecha ultimo pago
   sidepag        NUMBER(8),   --Secuencia Identificador Pago
   sproces        NUMBER(10),   --Secuencia Proceso
   fcontab        DATE,   --Fecha Contabilidad
   cusualt        VARCHAR2(80),   --C�digo Usuario Alta
   falta          DATE,   --Fecha Alta
   cusumod        VARCHAR2(80),   --C�digo Usuario Modificaci�n
   fmodifi        DATE,   --Fecha Modificaci�n
   iprerec        NUMBER,   --Importe previsi�n de recobro que tenemos
   ndias          NUMBER,   -- N�mero de dias entre la FRESFIN i FRESINI + 1  -- BUG16506:DRA:09/11/2010
   ctipgas        NUMBER,   --Tipo de reserva de gastos --BUG 18935/88970 - 09/08/2011 - JRB.
   ttipgas        VARCHAR2(100),   --des Tipo de reserva de gastos --BUG 18935/88970 - 09/08/2011 - JRB.
   ireserva_moncia NUMBER,   -- Importe reserva en la moneda de la empresa -- BUG 18423/103648 - 16/01/2012 - JMP
   ipago_moncia   NUMBER,   -- Importe pago en la moneda de la empresa -- BUG 18423/103648 - 16/01/2012 - JMP
   iingreso_moncia NUMBER,   -- Importe ingreso en la moneda de la empresa -- BUG 18423/103648 - 16/01/2012 - JMP
   irecobro_moncia NUMBER,   -- Importe recobro en la moneda de la empresa -- BUG 18423/103648 - 16/01/2012 - JMP
   icaprie_moncia NUMBER,   -- Importe capital riesgo en la moneda de la empresa -- BUG 18423/103648 - 16/01/2012 - JMP
   ipenali_moncia NUMBER,   -- Importe penalizaci�n en la moneda de la empresa -- BUG 18423/103648 - 16/01/2012 - JMP
   iprerec_moncia NUMBER,   -- Previsi�n de recobro en la moneda de la empresa -- BUG 18423/103648 - 16/01/2012 - JMP
   fcambio        DATE,   -- Fecha empleada para el c�lculo de los contravalores -- BUG 18423/103648 - 16/01/2012 - JMP
   icapgar        NUMBER,   --capital garantia
   cselecc        NUMBER(1),   -- garantia es seleccionable en reservas -- BUG 0024774 - 20/11/2012 - JMF
   ifranq         NUMBER,   -- Importe franquicia
   ifranq_moncia  NUMBER,   -- Importe franquicia en la moneda de la empresa
   itotimp        NUMBER,   -- Importe total impuestos -- BUG 0024637- 21/11/2013 - NSS
   itotimp_moncia NUMBER,   -- Importe total impuestos en la moneda de la empresa -- BUG 0024637- 21/11/2013 - NSS
   itotret        NUMBER,   -- Importe total retenciones -- BUG 0024637- 20/03/2014 - NSS
   itotret_moncia NUMBER,   -- Importe total retenciones en la moneda de la empresa -- BUG 0024637- 20/03/2014 - NSS
   iva_ctipind    NUMBER,   -- Tipo indicador IVA -- BUG 0024637- 20/03/2014 - NSS
   retenc_ctipind NUMBER,   -- Tipo indicador RETEFUENTE -- BUG 0024637- 20/03/2014 - NSS
   reteiva_ctipind NUMBER,   -- Tipo indicador RETEIVA -- BUG 0024637- 20/03/2014 - NSS
   reteica_ctipind NUMBER,   -- Tipo indicador RETEICA-- BUG 0024637- 20/03/2014 - NSS
   cmovres        NUMBER,   -- Motivo de movimiento de la reserva --0031294/0174788: NSS: 26/05/2014
   idres          NUMBER,   -- Identificador de reserva - BUG 0031294 - 26/06/2014 - JTT
   itasacambio    NUMBER,   --tasa de cambio entre la moneda de la reserva y la moneda de la compa��a
   ttiptrans      VARCHAR2(500),   --Descripci�n del tipo de transacci�n
   ivaltrans      NUMBER,   --Valor de transacci�n
   csolidaridad   NUMBER(1),
   csolidaridad_modif  NUMBER(1),
   ivalreex       NUMBER,    -- valor de Reexpresion 5454
   ivaltran_moncia NUMBER,   -- valor de transaccion en pesos 5454
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_reserva
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMI_RESERVA" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_reserva
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sidepag := NULL;
      SELF.cselecc := NULL;   -- BUG 0024774 - 20/11/2012 - JMF
      SELF.ifranq := NULL;
      SELF.ifranq_moncia := NULL;
      SELF.itotimp := NULL;   -- BUG 0024637- 21/11/2013 - NSS
      SELF.itotimp_moncia := NULL;   -- BUG 0024637- 21/11/2013 - NSS
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_RESERVA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_RESERVA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_RESERVA" TO "PROGRAMADORESCSI";
