DROP TYPE  OB_IAX_COMPANIAS FORCE;
--------------------------------------------------------
--  DDL for Type OB_IAX_COMPANIAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_COMPANIAS" AS OBJECT
/******************************************************************************
   NOMBRE:    OB_IAX_COMPANIAS
   PROPOSITO:    Compañías

   REVISIONES:
   Ver        Fecha        Autor             DescripciÃƒÂ³n
   ---------  ----------  ---------------  ------------------------------------
   1.0        09/07/2012   JRB              1. CreaciÃƒÂ³n del objeto.
   2.0        03/05/2013   KBR              2. 25822 - RSA003 Gestión de compañías reaseguradoras (Nota. 143771)
   3.0        05/02/2014   AGG              2. 25822 - RSA003 Gestión de compañías reaseguradoras (Nota. 143771)
******************************************************************************/
(
   sperson        NUMBER(10),
   nnumide        VARCHAR2(100),
   tnombre        VARCHAR2(100),
   ccompani       NUMBER,
   tcompani       VARCHAR2(60),   -- Se adapta el tamaño del campo del tipo al de la tabla
   cpais          NUMBER(3),
   tpais          VARCHAR2(100),
   ctipiva        NUMBER(2),
   ccomisi        VARCHAR2(12),
   cunespa        VARCHAR2(4),
   ffalta         DATE,
   fbaja          DATE,
   cusuari        VARCHAR2(20),
   fmovimi        DATE,
   ccontable      NUMBER(5),
   ctipcom        NUMBER(2),
   ttipcom        VARCHAR2(100),
   cafili         NUMBER(1),
   ccasamat       VARCHAR2(15),   -- BUG 25832 - 25/01/2013 JDS
   csuperfinan    VARCHAR2(15),   -- BUG 25832 - 25/01/2013 JDS
   cdian          VARCHAR2(15),   -- BUG 25832 - 25/01/2013 JDS
   ccalifi        NUMBER(2),
   tcalifi        VARCHAR2(100),
   centicalifi    NUMBER(2),
   tenticalifi    VARCHAR2(100),
   nanycalif      NUMBER(4),
   npatrimonio    NUMBER,
   gastdef        NUMBER,   -- Bug 23183/120117 - 22/10/2012 - AMC
   pimpint        NUMBER(5, 2),   -- BUG 25832 - 25/01/2013 JDS
   ctramtax       NUMBER(3),   -- 25822 KBR 03052013
   cinverfas      NUMBER(1),   -- Bug 32034 - SHA - 11/08/2014
   cresidfisc     NUMBER(1),   --CONFCC-5
   fresfini       DATE,   --CONFCC-5
   fresffin       DATE,   --CONFCC-5
   ctiprea        NUMBER(2),--IAXIS-4823
   CONSTRUCTOR FUNCTION ob_iax_companias
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_COMPANIAS" AS
   CONSTRUCTOR FUNCTION ob_iax_companias
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sperson := NULL;
      SELF.nnumide := NULL;
      SELF.tnombre := NULL;
      SELF.ccompani := NULL;
      SELF.tcompani := NULL;
      SELF.cpais := NULL;
      SELF.tpais := NULL;
      SELF.ctipiva := NULL;
      SELF.ccomisi := NULL;
      SELF.cunespa := NULL;
      SELF.ffalta := NULL;
      SELF.fbaja := NULL;
      SELF.cusuari := NULL;
      SELF.fmovimi := NULL;
      SELF.ccontable := NULL;
      SELF.ctipcom := NULL;
      SELF.ttipcom := NULL;
      SELF.cafili := NULL;
      SELF.ccasamat := NULL;
      SELF.csuperfinan := NULL;
      SELF.cdian := NULL;
      SELF.ccalifi := NULL;
      SELF.tcalifi := NULL;
      SELF.centicalifi := NULL;
      SELF.tenticalifi := NULL;
      SELF.nanycalif := NULL;
      SELF.npatrimonio := NULL;
      SELF.gastdef := NULL;   -- Bug 23183/120117 - 22/10/2012 - AM
      SELF.pimpint := NULL;   -- BUG 25832 - 25/01/2013 JDS
      SELF.ctramtax := NULL;   -- 25822 KBR 03052013
      SELF.cinverfas := 0;   -- Bug 32034 - SHA - 11/08/2014
	  SELF.cresidfisc := NULL; --CONFCC-5
      SELF.fresfini  := NULL;  --CONFCC-5
      SELF.fresffin  := NULL;  --CONFCC-5
	  SELF.ctiprea  := NULL;  --IAXIS-4823
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_COMPANIAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_COMPANIAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_COMPANIAS" TO "PROGRAMADORESCSI";
