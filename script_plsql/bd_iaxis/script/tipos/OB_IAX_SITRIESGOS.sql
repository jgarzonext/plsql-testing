--------------------------------------------------------
--  DDL for Type OB_IAX_SITRIESGOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SITRIESGOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SITRIESGOS
   PROP¿SITO:    Almacena la informaci¿n de los riesgos tipo domicilio para productos de hogar o comercios

   REVISIONES:
   Ver        Fecha        Autor             Descripci¿n
   ---------  ----------  ---------------  ------------------------------------
   1.0        11/07/2008   JRB              1. Creaci¿n del objeto.
   2.0        16/02/2010   AMC              2. Se a¿aden nuevos campos
   3.0        19/01/2011   ICV              3. 0015758: AGA005 - Dades complement¿ries a riscos Domicilis
   4.0        18/04/2012   AMC              4. Se a¿aden nuevos campos 20893/111636
   5.0        20/05/2015   MNUSTES          1. 33977-0201044 Precision de los campos cprovin, cpoblac
******************************************************************************/
(
   tdomici        VARCHAR2(4000),   --Descripci¿n del domicilio
   cprovin        NUMBER,   --C¿digo de la provincia Bug 33977-0201044 20/05/2015 - precision NUMBER
   tprovin        VARCHAR2(30),   --Descripci¿n de la provincia
   cpoblac        NUMBER,   --C¿digo de la poblaci¿n Bug 33977-0201044 20/05/2015 - precision NUMBER
   tpoblac        VARCHAR2(50),   --Descripci¿n de la poblaci¿n
   cpostal        VARCHAR2(30),   --C¿digo postal
   cpais          NUMBER(3),   --C¿digo del pais
   tpais          VARCHAR2(100),   --Descripci¿n del pais
   -- Bug 12668 - 16/02/2010 - AMC
   csiglas        NUMBER(2),   -- tipo de v¿a
   tnomvia        VARCHAR2(200),   -- descripci¿n v¿a
   nnumvia        NUMBER(10),   -- n¿mero v¿a
   tcomple        VARCHAR2(250),   -- descripci¿n complementaria
   cciudad        NUMBER(5),   -- c¿digo ciudad para chile
   fgisx          FLOAT,   -- coordenada gis x (gps)
   fgisy          FLOAT,   -- coordenada gis y (gps)
   fgisz          FLOAT,   -- coordenada gis z (gps)
   cvalida        NUMBER(2),
                          -- c¿digo validaci¿n direcci¿n. valor fijo 1006.
   -- Fi Bug 12668 - 16/02/2010 - AMC
   -- Bug 20893/111636 - 18/04/2012 - AMC
   iddirrie       NUMBER(10),
   domicilios     t_iax_dir_domicilios,
   -- Fi Bug 20893/111636 - 18/04/2012 - AMC
   cviavp NUMBER(2), -- 'C¿digo de via predio - via principal';
	 clitvp NUMBER(2), -- 'C¿digo de literal predio - via principal';
	 cbisvp NUMBER(2), --  'C¿digo BIS predio - via principal';
	 corvp NUMBER(2),  --  'C¿digo orientaci¿n predio - via principal';
	 nviaadco NUMBER(5),  --   'N¿mero de via adyacente predio - coordenada';
	 clitco NUMBER(2), --  'C¿digo de literal predio - coordenada';
	 corco NUMBER(2),  -- 'C¿digo orientaci¿n predio - coordenada';
	 nplacaco NUMBER(5),  -- 'N¿mero consecutivo placa predio - ccordenada';
	 cor2co NUMBER(2), --  'C¿digo orientaci¿n predio 2 - coordenada';
	 cdet1ia NUMBER(2),  --  'C¿digo detalle 1 - informaci¿n adicional';
	 tnum1ia VARCHAR2(100), --  'N¿mero predio 1 - informacion adicional';
	 cdet2ia NUMBER(2), --  'C¿digo detalle 2 - informaci¿n adicional';
	 tnum2ia VARCHAR2(100),  -- 'N¿mero predio 2 - informacion adicional';
	 cdet3ia NUMBER(2),   --  'C¿digo detalle 3 - informaci¿n adicional';
	 tnum3ia VARCHAR2(100),  -- 'N¿mero predio 3 - informacion adicional';
	 iddomici NUMBER(10),   -- 'Identificador domicilio';
	 localidad VARCHAR2(3000),   --  'Localidad';
	 fdefecto NUMBER,  -- 'Direcci¿n fiscal por defecto';
	 descripcion VARCHAR2(1000),  -- 'Descripci¿n';

   CONSTRUCTOR FUNCTION ob_iax_sitriesgos
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SITRIESGOS" AS
   CONSTRUCTOR FUNCTION ob_iax_sitriesgos
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.tdomici := NULL;
      SELF.tprovin := NULL;
      SELF.cpoblac := NULL;
      SELF.tpoblac := NULL;
      SELF.cpostal := NULL;
      SELF.cpais := NULL;
      SELF.tpais := NULL;
      -- Bug 12668 - 16/02/2010 - AMC
      SELF.csiglas := NULL;
      SELF.tnomvia := NULL;
      SELF.nnumvia := NULL;
      SELF.tcomple := NULL;
      SELF.cciudad := NULL;
      SELF.fgisx := NULL;
      SELF.fgisy := NULL;
      SELF.fgisz := NULL;
      SELF.cvalida := NULL;
      -- Fi Bug 12668 - 16/02/2010 - AMC

      -- Bug 20893/111636 - 18/04/2012 - AMC
      SELF.iddirrie := NULL;
      SELF.domicilios := NULL;
      -- Fi Bug 20893/111636 - 18/04/2012 - AMC

      SELF.cviavp := NULL;
      SELF.clitvp := NULL;
      SELF.cbisvp := NULL;
      SELF.corvp := NULL;
      SELF.nviaadco := NULL;
      SELF.clitco := NULL;
      SELF.corco := NULL;
      SELF.nplacaco := NULL;
      SELF.cor2co := NULL;
      SELF.cdet1ia := NULL;
      SELF.tnum1ia := NULL;
      SELF.cdet2ia := NULL;
      SELF.tnum2ia := NULL;
      SELF.cdet3ia := NULL;
      SELF.tnum3ia := NULL;
      SELF.iddomici := NULL;
      SELF.localidad := NULL;
      SELF.fdefecto := NULL;
      SELF.descripcion := NULL;

      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SITRIESGOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SITRIESGOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SITRIESGOS" TO "PROGRAMADORESCSI";
