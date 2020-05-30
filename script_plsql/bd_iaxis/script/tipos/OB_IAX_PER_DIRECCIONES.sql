--------------------------------------------------------
--  DDL for Type OB_IAX_PER_DIRECCIONES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PER_DIRECCIONES" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PER_DIRECCIONES
   PROPOSITO:    Tabla con la dirección de la persona

   REVISIONES:
   Ver        Fecha        Autor             DescripciÃ³n
   ---------  ----------  ---------------  ------------------------------------
   1.0        16/02/2012   obIaxGenerator    1. CreaciÃ³n del objeto.
   2.0        20/05/2015   MNUSTES           1. 33977-0201044 Precision de los campos cprovin, cpoblac
******************************************************************************/
(
   sperson        NUMBER(10),   --Secuencia unica de identificacion de una persona
   cagente        NUMBER,   --Código agente
   tagente        VARCHAR2(100),   -- Código agente
   cdomici        NUMBER,   --Código domicilio
   ctipdir        NUMBER(2),   --Tipo de dirección. Valor fijo 191
   ttipdir        VARCHAR2(100),   -- Tipo de dirección. Valor fijo 191
   csiglas        NUMBER(2),   --Código siglas
   tsiglas        VARCHAR2(100),   -- Código siglas
   tnomvia        VARCHAR2(200),   --Nombre vía
   nnumvia        NUMBER(5),   --Número vía
   tcomple        VARCHAR2(100),   --Descripción complementaria
   tdomici        VARCHAR2(1000),   --Descripción dirección no normalizada
   cpostal        VARCHAR2(30),   --Código postal
   tpostal        VARCHAR2(100),   -- Código postal
   cpoblac        NUMBER,   --Código población Bug 33977-0201044 20/05/2015 - precision NUMBER
   tpoblac        VARCHAR2(100),   -- Código población
   cprovin        NUMBER,   --Código província Bug 33977-0201044 20/05/2015 - precision NUMBER
   tprovin        VARCHAR2(100),   -- Código província
   cusuari        VARCHAR2(20),   --Código usuario modificación registro
   tusuari        VARCHAR2(100),   -- Código usuario modificación registro
   fmovimi        DATE,   --Fecha modificación registro
   cviavp         NUMBER(2),   --Código de via predio - via principal
   tviavp         VARCHAR2(100),   -- Código de via predio - via principal
   clitvp         NUMBER(2),   --Código de literal predio - via principal
   tlitvp         VARCHAR2(100),   -- Código de literal predio - via principal
   cbisvp         NUMBER(2),   --Código BIS predio - via principal
   tbisvp         VARCHAR2(100),   -- Código BIS predio - via principal
   corvp          NUMBER(2),   --Código orientación predio - via principal
   torvp          VARCHAR2(100),   -- Código orientación predio - via principal
   nviaadco       NUMBER(5),   --Número de via adyacente predio - coordenada
   clitco         NUMBER(2),   --Código de literal predio - coordenada
   tlitco         VARCHAR2(100),   -- Código de literal predio - coordenada
   corco          NUMBER(2),   --Código orientación predio - coordenada
   torco          VARCHAR2(100),   -- Código orientación predio - coordenada
   nplacaco       NUMBER(5),   --Número consecutivo placa predio - ccordenada
   cor2co         NUMBER(2),   --Código orientación predio 2 - coordenada
   tor2co         VARCHAR2(100),   -- Código orientación predio 2 - coordenada
   cdet1ia        NUMBER(2),   --Código detalle 1 - información adicional
   tdet1ia        VARCHAR2(100),   -- Código detalle 1 - información adicional
   tnum1ia        VARCHAR2(100),   --Número predio 1 - informacion adicional
   cdet2ia        NUMBER(2),   --Código detalle 2 - información adicional
   tdet2ia        VARCHAR2(100),   -- Código detalle 2 - información adicional
   tnum2ia        VARCHAR2(100),   --Número predio 2 - informacion adicional
   cdet3ia        NUMBER(2),   --Código detalle 3 - información adicional
   tdet3ia        VARCHAR2(100),   -- Código detalle 3 - información adicional
   tnum3ia        VARCHAR2(100),   --Número predio 3 - informacion adicional
   iddomici       NUMBER(10),   --Identificador domicilio
   CONSTRUCTOR FUNCTION ob_iax_per_direcciones
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PER_DIRECCIONES" AS
   CONSTRUCTOR FUNCTION ob_iax_per_direcciones
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sperson := NULL;
      SELF.cagente := NULL;
      SELF.tagente := NULL;
      SELF.cdomici := NULL;
      SELF.ctipdir := NULL;
      SELF.ttipdir := NULL;
      SELF.csiglas := NULL;
      SELF.tsiglas := NULL;
      SELF.tnomvia := NULL;
      SELF.nnumvia := NULL;
      SELF.tcomple := NULL;
      SELF.tdomici := NULL;
      SELF.cpostal := NULL;
      SELF.tpostal := NULL;
      SELF.cpoblac := NULL;
      SELF.tpoblac := NULL;
      SELF.cprovin := NULL;
      SELF.tprovin := NULL;
      SELF.cusuari := NULL;
      SELF.tusuari := NULL;
      SELF.fmovimi := NULL;
      SELF.cviavp := NULL;
      SELF.tviavp := NULL;
      SELF.clitvp := NULL;
      SELF.tlitvp := NULL;
      SELF.cbisvp := NULL;
      SELF.tbisvp := NULL;
      SELF.corvp := NULL;
      SELF.torvp := NULL;
      SELF.nviaadco := NULL;
      SELF.clitco := NULL;
      SELF.tlitco := NULL;
      SELF.corco := NULL;
      SELF.torco := NULL;
      SELF.nplacaco := NULL;
      SELF.cor2co := NULL;
      SELF.tor2co := NULL;
      SELF.cdet1ia := NULL;
      SELF.tdet1ia := NULL;
      SELF.tnum1ia := NULL;
      SELF.cdet2ia := NULL;
      SELF.tdet2ia := NULL;
      SELF.tnum2ia := NULL;
      SELF.cdet3ia := NULL;
      SELF.tdet3ia := NULL;
      SELF.tnum3ia := NULL;
      SELF.iddomici := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PER_DIRECCIONES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PER_DIRECCIONES" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PER_DIRECCIONES" TO "R_AXIS";
