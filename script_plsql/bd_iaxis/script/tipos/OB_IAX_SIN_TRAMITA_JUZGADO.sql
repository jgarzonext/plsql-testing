--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMITA_JUZGADO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMITA_JUZGADO" AS OBJECT
/******************************************************************************
   NOMBRE:        OB_IAX_SIN_TRAMITA_JUZGADO
   PROPOSITO:     Tramitación judicial

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        04/11/2011   MDS              1. Creación del objeto.
   2.0        20/05/2015   MNUSTES          1. 33977-0201044 Precision de los campos cprovin, cpoblac
******************************************************************************/
(
   nsinies        VARCHAR2(14),   -- PK
   ntramit        NUMBER(3),   -- PK
   corgjud        NUMBER(2),
   torgjud        VARCHAR2(100),   -- descripción de código órgano judicial
   norgjud        VARCHAR2(10),
   trefjud        VARCHAR2(20),
   csiglas        NUMBER(2),
   tnomvia        VARCHAR2(200),
   nnumvia        NUMBER(5),
   tcomple        VARCHAR2(100),
   tdirec         VARCHAR2(100),
   cpais          NUMBER(3),
   cprovin        NUMBER,   -- Bug 33977-0201044 20/05/2015 - precision NUMBER
   tprovin        VARCHAR2(100),   -- descripción de provincia
   cpoblac        NUMBER,   -- Bug 33977-0201044 20/05/2015 - precision NUMBER
   cpostal        VARCHAR2(30),
   nlinjuz        NUMBER(6),   -- PK
   tasunto        VARCHAR2(30),
   nclasede       NUMBER(8),
   tclasede       VARCHAR2(100),   -- descripción de clase de demanda
   ntipopro       NUMBER(8),
   ttipopro       VARCHAR2(100),   -- descripción de tipo de procedimiento
   nprocedi       VARCHAR2(50),
   fnotiase       DATE,
   frecpdem       DATE,
   fnoticia       DATE,
   fcontase       DATE,
   fcontcia       DATE,
   faudprev       DATE,
   fjuicio        DATE,
   cmonjuz        VARCHAR2(3),
   cpleito        NUMBER(8),
   tpleito        VARCHAR2(100),   -- descripción de tipo de cuantia del pleito
   ipleito        NUMBER,
   iallana        NUMBER,
   isentenc       NUMBER,
   isentcap       NUMBER,
   isentind       NUMBER,
   isentcos       NUMBER,
   isentint       NUMBER,
   isentotr       NUMBER,
   cargudef       NUMBER(8),
   targudef       VARCHAR2(100),   -- descripción de argumentos de la defensa
   cresplei       NUMBER(8),
   tresplei       VARCHAR2(100),   -- descripción de resultado del pleito
   capelant       NUMBER(8),
   tapelant       VARCHAR2(100),   -- descripción de apelante
   thipoase       VARCHAR2(2000),
   thipoter       VARCHAR2(2000),
   ttipresp       VARCHAR2(2000),
   copercob       NUMBER(1),
   treasmed       VARCHAR2(2000),
   cestproc       NUMBER(8),
   testproc       VARCHAR2(100),   -- descripción de estado del proceso
   cetaproc       NUMBER(8),
   tetaproc       VARCHAR2(100),   -- descripción de etapa procesal
   tconcjur       VARCHAR2(2000),
   testrdef       VARCHAR2(2000),
   trecomen       VARCHAR2(2000),
   tobserv        VARCHAR2(80),
   fcancel        DATE,
   CONSTRUCTOR FUNCTION ob_iax_sin_tramita_juzgado
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMITA_JUZGADO" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_tramita_juzgado
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nsinies := NULL;
      SELF.ntramit := NULL;
      SELF.corgjud := NULL;
      SELF.torgjud := NULL;   -- descripción de código órgano judicial
      SELF.norgjud := NULL;
      SELF.trefjud := NULL;
      SELF.csiglas := NULL;
      SELF.tnomvia := NULL;
      SELF.nnumvia := NULL;
      SELF.tcomple := NULL;
      SELF.tdirec := NULL;
      SELF.cpais := NULL;
      SELF.cprovin := NULL;
      SELF.tprovin := NULL;   -- descripción de provincia
      SELF.cpoblac := NULL;
      SELF.cpostal := NULL;
      SELF.nlinjuz := NULL;
      SELF.tasunto := NULL;
      SELF.nclasede := NULL;
      SELF.tclasede := NULL;   -- descripción de clase de demanda
      SELF.ntipopro := NULL;
      SELF.ttipopro := NULL;   -- descripción de tipo de procedimiento
      SELF.nprocedi := NULL;
      SELF.fnotiase := NULL;
      SELF.frecpdem := NULL;
      SELF.fnoticia := NULL;
      SELF.fcontase := NULL;
      SELF.fcontcia := NULL;
      SELF.faudprev := NULL;
      SELF.fjuicio := NULL;
      SELF.cmonjuz := NULL;
      SELF.cpleito := NULL;
      SELF.tpleito := NULL;   -- descripción de tipo de cuantia del pleito
      SELF.ipleito := NULL;
      SELF.iallana := NULL;
      SELF.isentenc := NULL;
      SELF.isentcap := NULL;
      SELF.isentind := NULL;
      SELF.isentcos := NULL;
      SELF.isentint := NULL;
      SELF.isentotr := NULL;
      SELF.cargudef := NULL;
      SELF.targudef := NULL;   -- descripción de argumentos de la defensa
      SELF.cresplei := NULL;
      SELF.tresplei := NULL;   -- descripción de resultado del pleito
      SELF.capelant := NULL;
      SELF.tapelant := NULL;   -- descripción de apelante
      SELF.thipoase := NULL;
      SELF.thipoter := NULL;
      SELF.ttipresp := NULL;
      SELF.copercob := NULL;
      SELF.treasmed := NULL;
      SELF.cestproc := NULL;
      SELF.testproc := NULL;   -- descripción de estado del proceso
      SELF.cetaproc := NULL;
      SELF.tetaproc := NULL;   -- descripción de etapa procesal
      SELF.tconcjur := NULL;
      SELF.testrdef := NULL;
      SELF.trecomen := NULL;
      SELF.tobserv := NULL;
      SELF.fcancel := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITA_JUZGADO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITA_JUZGADO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITA_JUZGADO" TO "PROGRAMADORESCSI";
