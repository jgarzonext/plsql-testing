--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMITACION
--------------------------------------------------------
BEGIN
    PAC_SKIP_ORA.p_comprovadrop('OB_IAX_SIN_TRAMITACION','TYPE');
END;
/
  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMITACION" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMITACION
   PROP¿¿¿¿¿SITO:  Contiene la informaci¿¿n del siniestro

   REVISIONES:
   Ver        Fecha        Autor             Descripci¿¿¿¿n
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/02/2009   XPL                1. Creaci¿¿¿¿n del objeto.
   2.0        26/04/2011   ICV                2. 0018331: 0018311: LCOL701 - Desarrollo Tr¿¿mites Sinientros. Tablas y objetos.
   3.0        08/11/2011   MDS                3. 0019821: LCOL_S001-SIN - Tramitaci¿¿n judicial
   4.0        24/10/2012   JMF                0023536 LCOL_S001-SIN - Tramitaci¿n Otros
   5.0        08/10/2013   HRE                4. Bug 0028462: HRE - Cambio dimension campo NPOLIZA
******************************************************************************/
(
   nsinies        VARCHAR2(14),   --N¿¿mero Siniestro
   ntramit        NUMBER(3),   --N¿¿mero tramitaci¿¿n Siniestro
   ctramit        NUMBER(4),   --C¿¿digo tipus tramitaci¿¿n
   ttramit        VARCHAR2(100),   --Des tipus tramitaci¿¿n
   ctcausin       NUMBER(2),   --C¿¿digo Tipo Da¿¿¿¿o
   ttcausin       VARCHAR2(100),   --Des tipo da¿¿¿¿o
   cculpab        NUMBER(2),   --C¿¿digo Responsabilidad
   tculpab        VARCHAR2(500),   --Des  Responsabilidad
   cinform        NUMBER(1),   --Indicador tramitaci¿¿n Informativa
   tinform        VARCHAR2(100),   --Desc. INdicador tramitaci¿¿n Informativa
   cusualt        VARCHAR2(20),   --C¿¿digo Usuario Alta
   falta          DATE,   --Fecha Alta
   cusumod        VARCHAR2(20),   --C¿¿digo Usuario Modificaci¿¿n
   fmodifi        DATE,   --Fecha Modificaci¿¿n
   ctiptra        NUMBER,
   cborrab        NUMBER,
   ttiptra        VARCHAR2(200),
   detalle        ob_iax_sin_trami_detalle,   -- detall de la tramitacio
   movimientos    t_iax_sin_trami_movimiento,
   localizaciones t_iax_sin_trami_localiza,
   danyos         t_iax_sin_trami_dano,
   reservas       t_iax_sin_trami_reserva,
   destinatarios  t_iax_sin_trami_destinatario,
   recobros       t_iax_sin_trami_pago,
   pagos          t_iax_sin_trami_pago,
   agenda         t_iax_sin_trami_agenda,
   personasrel    t_iax_sin_trami_personarel,
   documentos     t_iax_sin_trami_documento,
   recobros_ofi   t_iax_sin_trami_pago,
   pagos_ofi      t_iax_sin_trami_pago,
   gestiones      t_iax_sin_tramita_gestion,
   --BUG17539 - JTS - 09/02/2011
   ccompani       NUMBER(4),   --codi companyia
   tcompani       VARCHAR2(200),   --desc. companyia
   npoliza        NUMBER,   --num. polissa, -- Bug 28462 - 08/10/2013 - HRE - Cambio de dimension NPOLIZA
   cpolcia        VARCHAR2(40),   -- num.polissa contraria
   iperit         NUMBER(10),   --import peritatge
   nsincia        VARCHAR2(50),   --sinistre companyia
   --Fi BUG17539
   --Bug.: 18331 - ICV - 26/04/2011
   ntramte        NUMBER,
                            --N¿¿mero Tr¿¿mite
   --Fi Bug.: 18331
   -- BUG 19821 - MDS - 08/11/2011
   juzgados       t_iax_sin_tramita_juzgado,
   -- Bug 20340/109094 - AMC - 15/03/2012
   demandantes    t_iax_sin_tramita_demand,
   demandados     t_iax_sin_tramita_demand,
   -- Fi Bug 20340/109094 - AMC - 15/03/2012

   -- BUG 0023536 - 24/10/2012 - JMF
   csubtiptra     NUMBER(3),   -- codigo subtipo tramitaci¿n vf_dep.1090
   tsubtiptra     VARCHAR2(100),   -- texto subtipo tramitaci¿n vf_dep.1090
   -- Fin BUG 19821 - MDS - 08/11/2011
   nradica        VARCHAR2(20),   --Numero de radicado proceso judicial
   citaciones t_iax_sin_trami_citaciones,
   amparos       t_iax_sin_trami_amparo,
   CONSTRUCTOR FUNCTION ob_iax_sin_tramitacion
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMITACION" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_tramitacion
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nsinies := NULL;
      SELF.detalle := ob_iax_sin_trami_detalle();
      SELF.movimientos := t_iax_sin_trami_movimiento();
      SELF.localizaciones := t_iax_sin_trami_localiza();
      SELF.danyos := t_iax_sin_trami_dano();
      SELF.reservas := t_iax_sin_trami_reserva();
      SELF.gestiones := t_iax_sin_tramita_gestion();
      SELF.destinatarios := t_iax_sin_trami_destinatario();
      SELF.recobros := t_iax_sin_trami_pago();
      SELF.pagos := t_iax_sin_trami_pago();
      SELF.agenda := t_iax_sin_trami_agenda();
      SELF.documentos := t_iax_sin_trami_documento();
      SELF.recobros_ofi := t_iax_sin_trami_pago();
      SELF.pagos_ofi := t_iax_sin_trami_pago();
      SELF.personasrel := t_iax_sin_trami_personarel();
      --BUG17539 - JTS - 09/02/2011
      SELF.ccompani := NULL;
      SELF.tcompani := NULL;
      SELF.npoliza := NULL;
      SELF.cpolcia := NULL;
      SELF.iperit := NULL;
      SELF.nsincia := NULL;
      --Fi BUG17539
      --Bug.: 18331 - ICV - 26/04/2011
      SELF.ntramte := NULL;   --N¿¿mero Tr¿¿mite
         --Fi Bug.: 18331
      -- BUG 19821 - MDS - 08/11/2011
      SELF.juzgados := t_iax_sin_tramita_juzgado();
      -- Bug 20340/109094 - AMC - 15/03/2012
      SELF.demandantes := t_iax_sin_tramita_demand();
      SELF.demandados := t_iax_sin_tramita_demand();
      -- Fi Bug 20340/109094 - AMC - 15/03/2012
      -- Fin BUG 19821 - MDS - 08/11/2011
      -- BUG 0023536 - 24/10/2012 - JMF
      SELF.csubtiptra := NULL;
      SELF.tsubtiptra := NULL;
      SELF.nradica := NULL;
      SELF.citaciones := t_iax_sin_trami_citaciones();
	  SELF.amparos := t_iax_sin_trami_amparo();
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITACION" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITACION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITACION" TO "R_AXIS";
