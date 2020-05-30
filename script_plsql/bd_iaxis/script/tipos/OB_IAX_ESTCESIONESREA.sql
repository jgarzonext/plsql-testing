--------------------------------------------------------
--  DDL for Type OB_IAX_ESTCESIONESREA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_ESTCESIONESREA" AS OBJECT(
   scesrea        NUMBER(8),
   ncesion        NUMBER(6),
   icesion        NUMBER,
   icapces        NUMBER,
   sseguro        NUMBER,
   ssegpol        NUMBER,
   npoliza        NUMBER,
   ncertif        NUMBER,
   nversio        NUMBER(2),
   scontra        NUMBER(6),
   contrato       VARCHAR2(50),   -- Camp nou descriptiu (CONTRATOS)
   ctramo         NUMBER(2),
   ttramo         VARCHAR2(100),   -- Camp nou descriptiu (DETVALORES)
   sfacult        NUMBER(6),
   nriesgo        NUMBER(6),
   icomisi        NUMBER,
   scumulo        NUMBER(6),
   cgarant        NUMBER(4),
   amparo         VARCHAR2(120),   -- Camp nou descriptiu (GARANGEN)
   spleno         NUMBER(6),
   nsinies        NUMBER,
   fefecto        DATE,
   fvencim        DATE,
   fcontab        DATE,
   pcesion        NUMBER(8, 5),
   sproces        NUMBER,
   cgenera        NUMBER(2),
   fgenera        DATE,
   fregula        DATE,
   fanulac        DATE,
   nmovimi        NUMBER(4),
   movimiento     VARCHAR2(100),   -- Camp nou descriptiu (DETVALORES)
   sidepag        NUMBER(8),
   ipritarrea     NUMBER,
   psobreprima    NUMBER(8, 5),
   cdetces        NUMBER(1),
   ipleno         NUMBER,
   icapaci        NUMBER,
   nmovigen       NUMBER(6),
   iextrap        NUMBER(19, 12),
   iextrea        NUMBER,
   nreemb         NUMBER(8),
   nfact          NUMBER(8),
   nlinea         NUMBER(4),
   itarifrea      NUMBER(15, 4),
   icomext        NUMBER,
   total_pcesion  NUMBER,
   total_icesion  NUMBER,
   total_icapces  NUMBER,
   falta          DATE,
   cusualt        VARCHAR2(32),
   fmodifi        DATE,
   cusumod        VARCHAR2(32),
   ctipomov       VARCHAR2(20),
   ctrampa        NUMBER(2, 0),
   CONSTRUCTOR FUNCTION ob_iax_estcesionesrea
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_ESTCESIONESREA" AS
   CONSTRUCTOR FUNCTION ob_iax_estcesionesrea
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.scesrea := NULL;
      SELF.ncesion := NULL;
      SELF.icesion := NULL;
      SELF.icapces := NULL;
      SELF.sseguro := NULL;
      SELF.nversio := NULL;
      SELF.scontra := NULL;
      SELF.ctramo := NULL;
      SELF.sfacult := NULL;
      SELF.nriesgo := NULL;
      SELF.icomisi := NULL;
      SELF.scumulo := NULL;
      SELF.cgarant := NULL;
      SELF.spleno := NULL;
      SELF.nsinies := NULL;
      SELF.fefecto := NULL;
      SELF.fvencim := NULL;
      SELF.fcontab := NULL;
      SELF.pcesion := NULL;
      SELF.sproces := NULL;
      SELF.cgenera := NULL;
      SELF.fgenera := NULL;
      SELF.fregula := NULL;
      SELF.fanulac := NULL;
      SELF.nmovimi := NULL;
      SELF.sidepag := NULL;
      SELF.ipritarrea := NULL;
      SELF.psobreprima := NULL;
      SELF.cdetces := NULL;
      SELF.ipleno := NULL;
      SELF.icapaci := NULL;
      SELF.nmovigen := NULL;
      SELF.iextrap := NULL;
      SELF.iextrea := NULL;
      SELF.nreemb := NULL;
      SELF.nfact := NULL;
      SELF.nlinea := NULL;
      SELF.itarifrea := NULL;
      SELF.icomext := NULL;
      SELF.falta := NULL;
      SELF.cusualt := NULL;
      SELF.fmodifi := NULL;
      SELF.cusumod := NULL;
      SELF.ctipomov:=NULL;
	  SELF.ctrampa:=NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_ESTCESIONESREA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_ESTCESIONESREA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_ESTCESIONESREA" TO "PROGRAMADORESCSI";
