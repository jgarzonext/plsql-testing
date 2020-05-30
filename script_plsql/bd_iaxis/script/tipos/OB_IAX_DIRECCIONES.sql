--------------------------------------------------------
--  DDL for Type OB_IAX_DIRECCIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_DIRECCIONES" AS OBJECT
/******************************************************************************
NOMBRE:       OB_IAX_DIRECCIONES
PROP¿SITO:  Contiene la informaci¿n de les direcciones

REVISIONES:
Ver        Fecha        Autor             Descripci¿n
---------  ----------  -------  ------------------------------------
1.0        01/08/2007   ACC      1. Creaci¿n del objeto.
2.0        01/06/2009   NMM      2. Bug 10501.Augmentem longitud tpais.
3.0        16/02/2010   AMC      3. Se a¿aden nuevos campos
4.0        27/09/2011   AMC      4. Se a¿aden nuevos campos
5.0        20/05/2015   MNUSTES  1. 33977-0201044 Precision de los campos cprovin, cpoblac
******************************************************************************/
(
   cdomici        NUMBER,   --C¿digo de domicilio
   tdomici        VARCHAR2(1000),   --Domicilio
   cpostal        VARCHAR2(30),   --C¿digo postal
   cprovin        NUMBER,   --C¿digo de provincia Bug 33977-0201044 20/05/2015 - precision NUMBER
   tprovin        VARCHAR2(30),   --Descripci¿n provincia
   cpoblac        NUMBER,   --C¿digo de poblaci¿n Bug 33977-0201044 20/05/2015 - precision NUMBER
   tpoblac        VARCHAR2(50),   --Descripci¿n poblaci¿n
   cpais          NUMBER(5),   --C¿digo de pa¿s
   -- Mantis 10501.01/06/2009.NMM.Augmentar longitud de tpais.
   tpais          VARCHAR2(100),   --Descripci¿n del pa¿s
   --JRh 02
   ctipdir        NUMBER(2),
   ttipdir        VARCHAR2(100),
   csiglas        NUMBER(2),
   tsiglas        VARCHAR2(100),
   tnomvia        VARCHAR2(200),
   nnumvia        NUMBER(5),
   tcomple        VARCHAR2(100),
   -- Bug 12668 - 16/02/2010 - AMC
   cciudad        NUMBER(5),   -- c¿digo ciudad para chile
   fgisx          FLOAT,   -- coordenada gis x (gps)
   fgisy          FLOAT,   -- coordenada gis y (gps)
   fgisz          FLOAT,   -- coordenada gis z (gps)
   cvalida        NUMBER(2),   -- c¿digo validaci¿n direcci¿n. valor fijo 1006.
   -- Fi Bug 12668 - 16/02/2010 - AMC

   -- Bug 18940/92686 - 27/09/2011 - AMC
   cviavp         NUMBER(2),   -- C¿digo de via predio - via principal
   clitvp         NUMBER(2),   -- C¿digo de literal predio - via principal
   cbisvp         NUMBER(2),   -- C¿digo BIS predio - via principal
   corvp          NUMBER(2),   -- C¿digo orientaci¿n predio - via principal
   nviaadco       NUMBER(5),   -- N¿mero de via adyacente predio - coordenada
   clitco         NUMBER(2),   -- C¿digo de literal predio - coordenada
   corco          NUMBER(2),   -- C¿digo orientaci¿n predio - coordenada
   nplacaco       NUMBER(5),   -- N¿mero consecutivo placa predio - ccordenada
   cor2co         NUMBER(2),   -- C¿digo orientaci¿n predio 2 - coordenada
   cdet1ia        NUMBER(2),   -- C¿digo detalle 1 - informaci¿n adicional
   tnum1ia        VARCHAR2(100),   -- N¿mero predio 1 - informacion adicional
   cdet2ia        NUMBER(2),   -- C¿digo detalle 2 - informaci¿n adicional
   tnum2ia        VARCHAR2(100),   -- N¿mero predio 2 - informacion adicional
   cdet3ia        NUMBER(2),   -- C¿digo detalle 3 - informaci¿n adicional
   tnum3ia        VARCHAR2(100),   -- N¿mero predio 3 - informacion adicional
   -- Fi Bug 18940/92686 - 27/09/2011 - AMC

   -- Bug 24780/130907 - 04/12/2012 - AMC
   localidad      VARCHAR2(3000),   -- Descripci¿n de la localidad
   talias         VARCHAR2(200),    -- Alias NIT Unico - BUG CONF-441 - 14/12/2016 - JAEG
   nueva          NUMBER,
   fdefecto       NUMBER,   -- Direccio¿n fiscal por defecto
   -- Fi Bug 24780/130907 - 04/12/2012 - AMC

   --Direcci¿n completa
   MEMBER PROCEDURE get_direccion(pssolicit IN NUMBER, pnriesgo IN NUMBER, direc OUT VARCHAR2),
   CONSTRUCTOR FUNCTION ob_iax_direcciones
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_DIRECCIONES" AS
   /******************************************************************************
      NOM:        OB_IAX_DIRECCIONES
      DESCRIPCI¿: Contiene la informaci¿n de les direcciones.

      REVISIONES:
      Ver        Fecha        Autor             Descripci¿n
      ---------  ----------  -------  ------------------------------------
      1.0        01/08/2007   ACC      1. Creaci¿n del objeto.
      2.0        01/06/2009   NMM      2. Bug 10501.Augmentem longitud tpais.
   ******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_direcciones
      RETURN SELF AS RESULT IS
   BEGIN
      --SELF.cdomici := 0;
      SELF.tdomici := '';
      SELF.cpostal := '';
      --SELF.cprovin := 0;
      SELF.tprovin := '';
      --SELF.cpoblac := 0;
      SELF.tpoblac := '';
      --SELF.cpais := 0;
      SELF.tpais := '';
      SELF.talias := '';
      RETURN;
   END;
   --Direcci¿n completa
   MEMBER PROCEDURE get_direccion(pssolicit IN NUMBER, pnriesgo IN NUMBER, direc OUT VARCHAR2) IS
   BEGIN
      pac_mdobj_prod.p_get_direccion(SELF, pssolicit, pnriesgo, direc);
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_DIRECCIONES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIRECCIONES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_DIRECCIONES" TO "PROGRAMADORESCSI";
