--------------------------------------------------------
--  DDL for Type OB_IAX_PLANPENSIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PLANPENSIONES" AS OBJECT(
--****************************************************************************
--   NOMBRE:       OB_IAX_PLANPENSIONES
--   PROP�SITO:  Contiene informaci�n de planpensiones
--
--   REVISIONES:
--   Ver        Fecha        Autor             Descripci�n
--   ---------  ----------  ---------------  ------------------------------------
--   1.0        24/12/2009   XP                 1.0 Creaci�n del objeto.
--   2.0        05/11/2009   JGM                1.1 Recreaci�n del objeto.
--   3.0        21-10-2011   JGR                3. 0018944: LCOL_P001 - PER - Tarjetas (nota 0095276) en desarrollo AXIS3181
--******************************************************************************
   faltare        DATE,
   fadmisi        DATE,
   tmodali        VARCHAR2(250),
   tsistem        VARCHAR2(250),
   tfondo         VARCHAR2(250),
   cbancar        VARCHAR2(50),
   tbanco         VARCHAR2(250),
   cmodali        NUMBER(2),
   csistem        NUMBER(2),
   icomdep        NUMBER,   --NUMBER(9, 3),
   icomges        NUMBER,   --NUMBER(9, 3),
   cmespag        NUMBER(2),
   ctipren        NUMBER(2),
   cperiod        NUMBER(2),
   ivalorl        NUMBER,   --NUMBER(15, 2),
   clapla         NUMBER(4),
   npartot        NUMBER(15, 6),
   ccodsn         VARCHAR2(10),
   fbajare        DATE,
   coddgs         VARCHAR2(10),   --    C�digo DGS del Plan
   clistblanc     NUMBER(1),
-------------------
   ccodpla        NUMBER(6),   --    C�digo AXIS del Plan de Pensiones
   tnompla        VARCHAR2(100),   --    Nombre del Plan de Pensiones
   ccodgs         VARCHAR2(10),   --    C�digo DGS del Plan
   ccodfon        NUMBER(6),   --    C�digo AXIS del Fondo de Pensiones
   cfondgs        VARCHAR2(10),   --    C�digo DGS del Fondo de Pensiones
   spersfon       NUMBER(10),   --    C�digo de Persona del Fondo de Pensiones
   nniffon        VARCHAR2(14),   --    N�mero del Nif del Fondo de pensiones
   tnomfon        VARCHAR2(100),   --    Nombre del Fondo de pensiones
   ctipban        NUMBER(3),   --    C�digo del tipo de cuenta del Fondo
   cbanfon        VARCHAR2(50),   --    Cuenta del Fondo de pensiones
   ccodges        NUMBER(6),   --    C�digo de Gestora de Pensiones
   cgesdgs        VARCHAR2(10),   --    C�digo DGS de la Gestora de Pensiones
   spersges       NUMBER(10),   --    C�digo de persona de la Gestora de pensiones
   nnifges        VARCHAR2(14),   --    C�digo de NIF de la Gestora de pensiones
   tnomges        VARCHAR2(100),   --    Nombre de la Gestiroa de pensiones
   ccoddep        NUMBER(4),   --    C�digo de la entitdad depositaria
   tnomdep        VARCHAR2(100),   --    Nombre de la entidad depositaria
   spersdep       NUMBER(10),   --    C�digo de persona de la entidad depositaria
   ccomerc        NUMBER(1),   --    Indica si se comercializa o no el Plan
   sproduc        NUMBER(6),   --    C�digo del producto del Plan (S�lo plan de pensiones)
   CONSTRUCTOR FUNCTION ob_iax_planpensiones
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PLANPENSIONES" AS
   CONSTRUCTOR FUNCTION ob_iax_planpensiones
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.ccoddep := NULL;
      SELF.ccodfon := NULL;
      SELF.ccodges := NULL;
      SELF.ccodgs := NULL;
      SELF.ccodpla := NULL;
      SELF.ccodsn := NULL;
      SELF.ccomerc := NULL;
      SELF.cfondgs := NULL;
      SELF.cgesdgs := NULL;
      SELF.clapla := NULL;
      SELF.cmespag := NULL;
      SELF.cmodali := NULL;
      SELF.coddgs := NULL;
      SELF.cperiod := NULL;
      SELF.csistem := NULL;
      SELF.ctipban := NULL;
      SELF.ctipren := NULL;
      SELF.fadmisi := NULL;
      SELF.faltare := NULL;
      SELF.fbajare := NULL;
      SELF.icomdep := NULL;
      SELF.icomges := NULL;
      SELF.ivalorl := NULL;
      SELF.nniffon := NULL;
      SELF.nnifges := NULL;
      SELF.npartot := NULL;
      SELF.spersdep := NULL;
      SELF.spersfon := NULL;
      SELF.spersges := NULL;
      SELF.sproduc := NULL;
      SELF.tbanco := NULL;
      SELF.tfondo := NULL;
      SELF.tmodali := NULL;
      SELF.tnomdep := NULL;
      SELF.tnomfon := NULL;
      SELF.tnomges := NULL;
      SELF.tnompla := NULL;
      SELF.tsistem := NULL;
      SELF.clistblanc := NULL;
      RETURN;
   END ob_iax_planpensiones;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PLANPENSIONES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PLANPENSIONES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PLANPENSIONES" TO "PROGRAMADORESCSI";
