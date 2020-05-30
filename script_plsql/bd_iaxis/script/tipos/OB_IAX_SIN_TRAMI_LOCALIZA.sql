--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMI_LOCALIZA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMI_LOCALIZA" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMI_LOCALIZA
   PROPÓSITO:  Contiene la información del siniestro

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/02/2009   XPL                1. Creación del objeto.
   2.0        20/05/2015   MNUSTES            1. 33977-0201044 Precision de los campos cprovin, cpoblac
******************************************************************************/
(
   nsinies        VARCHAR2(14),   --Número Siniestro
   ntramit        NUMBER(3),   --Número Tramitación Siniestro
   nlocali        NUMBER(3),   --Número Localización Siniestro
   sperson        NUMBER(10),   --Secuencia Persona
   tnombre        VARCHAR2(100),   --Nombre persona
   csiglas        NUMBER(2),   --Código Tipo Vía
   tsiglas        VARCHAR2(100),   --Des Siglas
   tnomvia        VARCHAR2(200),   --Nombre Vía
   nnumvia        NUMBER(5),   --Número Vía
   tcomple        VARCHAR2(100),   --Descripción Complementaria
   tlocali        VARCHAR2(100),   --Dirección no normalizada
   cpais          NUMBER(3),   --Código País
   tpais          VARCHAR2(200),   -- Desc. Pais
   cprovin        NUMBER,   --Código Província Bug 33977-0201044 20/05/2015 - precision NUMBER
   tprovin        VARCHAR2(200),   --Desc Provin
   cpoblac        NUMBER,   --Código Población Bug 33977-0201044 20/05/2015 - precision NUMBER
   tpoblac        VARCHAR2(200),   --Desc Poblacio
   cpostal        VARCHAR2(30),   --Código Postal
   cusualt        VARCHAR2(20),   --Código Usuario Alta
   falta          DATE,   --Fecha Alta
   cusubaj        VARCHAR2(20),   --Código Usuario Baja
   fbaja          DATE,   --Fecha Baja
   -- Bug 120154/98048 - 15/11/2011 - AMC
   cviavp         NUMBER(2),   -- Código de via predio - via principal
   clitvp         NUMBER(2),   -- Código de literal predio - via principal
   cbisvp         NUMBER(2),   -- Código BIS predio - via principal
   corvp          NUMBER(2),   -- Código orientación predio - via principal
   nviaadco       NUMBER(5),   -- Número de via adyacente predio - coordenada
   clitco         NUMBER(2),   -- Código de literal predio - coordenada
   corco          NUMBER(2),   -- Código orientación predio - coordenada
   nplacaco       NUMBER(5),   -- Número consecutivo placa predio - ccordenada
   cor2co         NUMBER(2),   -- Código orientación predio 2 - coordenada
   cdet1ia        NUMBER(2),   -- Código detalle 1 - información adicional
   tnum1ia        VARCHAR2(100),   -- Número predio 1 - informacion adicional
   cdet2ia        NUMBER(2),   -- Código detalle 2 - información adicional
   tnum2ia        VARCHAR2(100),   -- Número predio 2 - informacion adicional
   cdet3ia        NUMBER(2),   -- Código detalle 3 - información adicional
   tnum3ia        VARCHAR2(100),   -- Número predio 3 - informacion adicional
   tdomici        VARCHAR2(1000),   --Domicilio
   -- Fi Bug 120154/98048 - 15/11/2011 - AMC
   localidad      VARCHAR2(3000),   -- Descripcion de la localidad
   -- Bug 24780/130907 - 05/12/2012 - AMC
   tviavp         VARCHAR2(100),   --Des Código de via predio - via principal BUG 29889/164612:NSS;29/01/2013
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_localiza
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMI_LOCALIZA" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_localiza
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nsinies := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_LOCALIZA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_LOCALIZA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_LOCALIZA" TO "PROGRAMADORESCSI";
