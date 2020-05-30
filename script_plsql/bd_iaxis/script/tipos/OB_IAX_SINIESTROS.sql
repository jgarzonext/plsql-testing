BEGIN
    PAC_SKIP_ORA.p_comprovadrop('OB_IAX_SINIESTROS','TYPE');
END;
/
--------------------------------------------------------
--  DDL for Type OB_IAX_SINIESTROS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SINIESTROS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_SINIESTROS
   PROP¿SITO:  Contiene la informaci¿n del siniestro

   REVISIONES:
   Ver        Fecha        Autor             Descripci¿n
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/02/2009   XPL                1. Creaci¿n del objeto.
   2.0        25/05/2010   JRH                2. 0014185 ENSA101 - Proceso de carga del fichero (beneficio definido)
   4.0        30/10/2010   JRH                4. BUG 15669 : Campos nuevos
   5.0        26/04/2011   ICV                5. 0018331: 0018311: LCOL701 - Desarrollo Tr¿mites Sinientros. Tablas y objetos.
   6.0        21/10/2011   JMP                6. 0019832 LCOL_S001-SIN - Carpeta de siniestro
   7.0        20/12/2011   ETM                7.0019896: LCOL_S001-SIN - Declarante del siniestro--a¿adir nuevos campos 2nombre, telefono movil, email del declarante
   8.0        07/05/2012   MDS                8. 0021855: MDP_S001-SIN - Detalle fraude
   9.0        22/05/2012   MDS                9. 0021817: MDP_S001-SIN - Agente en el alta de siniestros
  10.0        05/11/2012   JMF                0023643: MDP_S001-SIN - Ocultar tramite global
  11.0        15/11/2012   JMF                0024675 LCOL_S010-SIN - Marca salvamentos
  12.0        01/07/2013   RCL              12. 0024697: LCOL_T031-Tama¿o del campo SSEGURO
******************************************************************************/
(
-- model vell de dades de sinistre

   --   nsinies        NUMBER,   --N¿mero del siniestro
--   sseguro        NUMBER,   --C¿digo del seguro
--   nriesgo        NUMBER,   --Riesgo siniestrado
--   triesgo        VARCHAR2(1000),   --Descripci¿n del riesgo
--   fsinies        DATE,   --Fecha de ocurrencia del siniestro
--   hsinies        VARCHAR2(5),   --Hora de ocurrencia del siniestro
--   fnotifi        DATE,   --Fecha de notificaci¿n del siniestro
   ctrami         NUMBER,   --C¿digo del tramitador
   cestsin        NUMBER,   --C¿digo del estado del siniestro (VF. 6)
   testsin        VARCHAR2(100),   --Descripci¿n del estado del siniestro
--   tsinies        VARCHAR2(1000),   --Descripci¿n del siniestro
--   cmotsin        NUMBER,   --C¿digo del motivo del siniestro
--   tmotsin        VARCHAR2(100),   --Descripci¿n del motivo del siniestro
--   ccausin        NUMBER,   --C¿digo del la causa del siniestro
--   tcausin        VARCHAR2(100),   --Descripci¿n de la causa del siniestro (VF. 684)
--   cculpab        NUMBER,   --C¿digo de la culpabilidad del siniestro (VF. 801)
--   tculpab        VARCHAR2(100),   --Descripci¿n de la culpabilidad de ocurrencia del siniestro
   tzonaocu       VARCHAR2(1000),   --Zona de ocurrencia del siniestro
   nsubest        NUMBER,   --C¿digo de subestado VF.665
   tsubest        VARCHAR2(100),   --Descripci¿n del subestado
   pagos          t_iax_pagosini,   --Pagos del siniestro
   garantias      t_iax_garansini,   --Garantias del siniestro
   documentacion  t_iax_documentacion,   --Documentaci¿n necesaria para la gesti¿n del siniestro
------------------------------------------------------------------------------------------------------
-- nou model de dades de sinistre
   nsinies        VARCHAR2(14),   --N¿mero Siniestro
   sseguro        NUMBER,   --Secuencia Seguro
   nriesgo        NUMBER(6),   --N¿mero Riesgo
   triesgo        VARCHAR2(1000),   --Descripci¿n del riesgo
   nmovimi        NUMBER(4),   --N¿mero Movimiento Seguro
   fsinies        DATE,   --Fecha Ocurrencia Siniestro
   hsinies        VARCHAR2(5),   --hora ocurrencia sinistre
   fnotifi        DATE,   --Fecha Notificaci¿n Siniestro
   ccausin        NUMBER(4),   --C¿digo Causa Siniestro
   tcausin        VARCHAR2(400),   --descripci¿n causa siniestro  (VF. 684)
   cmotsin        NUMBER(4),   --C¿digo Motivo Siniestro
   tmotsin        VARCHAR2(400),   --Descripci¿n motivo siniestro
   cevento        VARCHAR2(20),   --C¿digo Evento Siniestro
   tevento        VARCHAR2(400),   --Descripci¿n motivo siniestro  (VF. 801)
   cculpab        NUMBER(1),   --C¿digo Culpabilidad
   tculpab        VARCHAR2(400),   --Descripci¿n responsabilidad
   creclama       NUMBER(2),   --C¿digo reclamaci¿n VF 200011
   treclama       VARCHAR2(400),   --Descripci¿n reclamaci¿n
   nasegur        NUMBER(6),   --N¿mero asegurado (producto 2 cabezas)
   cmeddec        NUMBER(2),   --C¿digo Medio declaraci¿n
   tmeddec        VARCHAR2(200),   -- Descripci¿n medio declaraci¿n
   ctipdec        NUMBER(2),   --C¿digo Tipo Declarante
   ttipdec        VARCHAR2(200),   -- Descripci¿n Tipo Declarante
   tnomdec        VARCHAR2(60),   --Nombre Declarante
   tnom1dec       VARCHAR2(60),   --Nombre Declarante
   tnom2dec       VARCHAR2(60),   --Nombre2 Declarante
   tape1dec       VARCHAR2(60),   --Primer Apellido Declarante
   tape2dec       VARCHAR2(60),   --Segundo Apellido Declarante
   tteldec        VARCHAR2(100),   --Tel¿fono Declarante
   tmovildec      VARCHAR2(100),   --Tel¿fono movil Declarante
   temaildec      VARCHAR2(100),   --email del Declarante
   tsinies        VARCHAR2(2000),   --Descripci¿n Siniestro
   ctipide        NUMBER,   --Codi tipus identificador
   ttipide        VARCHAR2(100),   --Descripci¿ tipus identificador
   dec_sperson    NUMBER,   --codi persona de bbdd(declarant)
   nnumide        VARCHAR2(100),   --num. identificatiu
   cusualt        VARCHAR2(20),   --C¿digo Usuario Alta
   falta          DATE,   --Fecha Alta
   cusumod        VARCHAR2(20),   --C¿digo Usuario Modificaci¿n
   fmodifi        DATE,   --Fecha Modificaci¿n
   tramitaciones  t_iax_sin_tramitacion,   --ctramit <> 0
   movimientos    t_iax_sin_movsiniestro,
   agenda         t_iax_sin_trami_agenda,   --ctramit = 0
   localiza       ob_iax_sin_trami_localiza,   --ctramit = 0
   -- Bug 0014185 - JRH - 15/06/2010 - Alta Siniestro
   cnivel         NUMBER(1),
   sperson2       NUMBER(10),
   -- Fi Bug 0014185 - JRH - 15/06/2010
   nsincia        VARCHAR2(50),   -- Bug 14587 - PFA - 13/08/2010 - Campo siniestro compa¿ia
   -- Bug 0015669 - JRH - 30/09/2010 - Alta prestaciones
   -- Bug 0024708 - JTT - 27/02/2014 - El campo NPRESIN ha de ser siempre superior al tama¿o de NSINIES
   npresin        VARCHAR2(20),
   ccompani       NUMBER(3),   --compa¿ia
   tcompani       VARCHAR2(200),
   tnivel         VARCHAR2(50),
   tperson2       VARCHAR2(50),
   fechapp        DATE,
   -- Fi Bug 0015669 - JRH - 30/09/2010
   cpolcia        VARCHAR2(40),   --BUG17539 - JTS - 09/02/2011
   iperit         NUMBER,   --BUG17539 - JTS - 09/02/2011
   --Bug.: 18331 - ICV - 26/04/2011
   tramites       t_iax_sin_tramite,
   -- Bug 18748: LCOL701-Campo fraude en alta/modificaci?n/consulta de siniestros
   cfraude        NUMBER(2),
   tfraude        VARCHAR2(100),
   --Fi Bug.: 18331
   -- Bug 18932 - JRB - 02/09/2011
   referencias    t_iax_siniestro_referencias,
   ccarpeta       NUMBER(1),   -- BUG 19832 - 21/10/2011 - JMP
   defraudadores  t_iax_defraudadores,   -- Bug 21855 - MDS - 07/05/2012
   -- Ini Bug 21817 - MDS - 22/05/2012
   cagente        NUMBER,
   tagente        VARCHAR2(400),   -- descripci¿n del agente del siniestro
   -- Fin Bug 21817 - MDS - 22/05/2012
   ireserva9999   NUMBER,   -- BUG 0023643 - 05/11/2012 - JMF
   csalvam        NUMBER(1),   -- BUG 0024675 - 15/11/2012 - JMF
   fdeteccion     DATE,
   solidaridad    NUMBER(1),
   tdetpreten    VARCHAR2(4000),
   preguntas      t_iax_sin_preguntas,   --BUG 25800 - 28/02/2013 - NSS
   CONSTRUCTOR FUNCTION ob_iax_siniestros
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SINIESTROS" AS
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_SINIESTROS
   PROP¿SITO:  Contiene la informaci¿n del siniestro

   REVISIONES:
   Ver        Fecha        Autor             Descripci¿n
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/02/2009   XPL                1. Creaci¿n del objeto.
   2.0        25/05/2010   JRH                2. 0014185 ENSA101 - Proceso de carga del fichero (beneficio definido)
   3.0        21/10/2011   JMP                3. 0019832 LCOL_S001-SIN - Carpeta de siniestro
   4.0        07/05/2012   MDS                4. 0021855: MDP_S001-SIN - Detalle fraude
   5.0        22/05/2012   MDS                9. 0021817: MDP_S001-SIN - Agente en el alta de siniestros
   6.0        05/11/2012   JMF                0023643: MDP_S001-SIN - Ocultar tramite global
   7.0        15/11/2012   JMF                0024675 LCOL_S010-SIN - Marca salvamentos
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_siniestros
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nsinies := NULL;
      SELF.sseguro := NULL;
      SELF.nriesgo := NULL;
      SELF.triesgo := NULL;
      SELF.fsinies := NULL;
      SELF.hsinies := NULL;
      SELF.fnotifi := NULL;
      SELF.ctrami := NULL;
      SELF.cestsin := NULL;
      SELF.tsinies := '';
      SELF.cmotsin := NULL;
      SELF.ccausin := NULL;
      SELF.cculpab := NULL;
      SELF.tzonaocu := '';
      SELF.nsubest := NULL;
      SELF.tsubest := '';
      SELF.pagos := NULL;
      SELF.garantias := NULL;
      SELF.documentacion := NULL;
      SELF.ctipide := NULL;
      SELF.ttipide := NULL;
      SELF.nnumide := NULL;
      -- Bug 0014185 - JRH - 15/06/2010 - Alta Siniestro
      SELF.cnivel := NULL;
      SELF.sperson2 := NULL;
      -- Fi Bug 0014185 - JRH - 15/06/2010
        /*   SELF.tramitaciones := t_iax_sin_tramitacion();
           SELF.movimientos := t_iax_sin_movsiniestro();
           SELF.agenda := t_iax_sin_trami_agenda();
           SELF.localiza := ob_iax_sin_trami_localiza();*/

      -- Bug 0015669 - JRH - 30/09/2010 - Alta prestaciones
      SELF.tnivel := NULL;
      SELF.tperson2 := NULL;
      SELF.fechapp := NULL;
      -- Fi Bug 0015669 - JRH - 30/09/2010
      SELF.cpolcia := NULL;   --BUG17539 - JTS - 09/02/2011
      SELF.iperit := NULL;   --BUG17539 - JTS - 09/02/2011
      -- Bug 18748: LCOL701-Campo fraude en alta/modificaci?n/consulta de siniestros
      SELF.cfraude := NULL;
      SELF.tfraude := NULL;
      SELF.ccarpeta := NULL;
      SELF.defraudadores := NULL;   -- Bug 21855 - MDS - 07/05/2012
      -- Ini Bug 21817 - MDS - 22/05/2012
      SELF.cagente := NULL;
      SELF.tagente := NULL;
      -- Fin Bug 21817 - MDS - 22/05/2012
      SELF.ireserva9999 := NULL;   -- BUG 0023643 - 05/11/2012 - JMF
      SELF.csalvam := NULL;   -- BUG 0024675 - 15/11/2012 - JMF
      SELF.preguntas := NULL;   -- BUG 0025800- 28/02/2013 - NSS
      SELF.FDETECCION := NULL;
      SELF.solidaridad := NULL;
	  SELF.tdetpreten := '';
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SINIESTROS" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SINIESTROS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SINIESTROS" TO "R_AXIS";
