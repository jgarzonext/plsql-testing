--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMI_DETALLE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMI_DETALLE" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIN_TRAMI_DETALLE
   PROPÓSITO:  Contiene la información del siniestro

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/02/2009   XPL                1. Creación del objeto.
   2.0        06/07/2010   AMC                2. Bug 15260 - Se modifica cpolcia a VARCHAR2(40)
   3.0        22/09/2010   AMC                3. Bug 16043 - Se modifica desctramit a VARCHAR2(500) y tdescdireccion a VARCHAR2(100)
   4.0        24/10/2012   JMF                0023540 LCOL_S001-SIN - Tramitación lesionados
******************************************************************************/
(
   nsinies        VARCHAR2(14),   --Número Siniestro
   ntramit        NUMBER(3),   --Número Tramitación Siniestro
   ctramit        NUMBER(4),   --Código tipus Tramitación
   ttramit        VARCHAR2(200),   --Des tipus Tramitación
   ctiptra        NUMBER(4),   --codi tipus tramitació
   ttiptra        VARCHAR2(200),   --Des tipus Tramitación
   desctramit     VARCHAR2(500),   --desc. tramitacio
   persona        ob_iax_personas,   --persona tramitacio
--Persona
   cestper        NUMBER,   --codi estat persona
   testper        VARCHAR2(200),   -- Desc. estat de la persona
-- direccion
   tdescdireccion VARCHAR2(100),   --descripció de la direcció
   direccion      ob_iax_direcciones,   --direccio
--conductor
   ctipcon        NUMBER,   --tipo conductor
   ttipcon        VARCHAR2(200),   --desc tipo conductor
   ctipcar        NUMBER,   --tipo permiso
   ttipcar        VARCHAR2(200),   --desc tipo permiso
   fcarnet        DATE,   --data permis
   calcohol       NUMBER,   --alcoholemia 1/0 S/N
-- vehiculo
   ctipmat        NUMBER,   --codi tipus matricula
   ttipmat        VARCHAR2(200),   --desc tipus matricula
   cmatric        VARCHAR2(12),   --Matricula vehiculo
   cmarca         VARCHAR2(5),   -- codi marca
   tmarca         VARCHAR2(200),   -- desc marca
   cmodelo        NUMBER,   --codi model
   tmodelo        VARCHAR2(200),   -- desc. model
   cversion       VARCHAR2(11),   --Código de Versión de Vehículo
   tversion       VARCHAR2(200),   --desc  Versión de Vehículo
   nanyo          NUMBER(4),   -- Año del modelo
   codmotor       VARCHAR2(100),   -- Motor
   cchasis        VARCHAR2(100),   -- Chasis
   nbastid        VARCHAR2(20),   -- VIN
   ccilindraje    NUMBER,   -- Cilindraje
   ireclam        NUMBER,   --NUMBER(15, 2),   -- Importe reclamado
   iindemn        NUMBER,   --NUMBER(15, 2),   -- Importe indemnizado
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_detalle
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMI_DETALLE" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_trami_detalle
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nsinies := NULL;
      SELF.ntramit := NULL;
      SELF.ctramit := NULL;
      SELF.ttramit := NULL;
      SELF.ctiptra := NULL;
      SELF.ttiptra := NULL;
      SELF.desctramit := NULL;
      SELF.persona := NULL;
      SELF.cestper := NULL;
      SELF.testper := NULL;
      SELF.tdescdireccion := NULL;
      SELF.direccion := NULL;
      SELF.ctipcon := NULL;
      SELF.ttipcon := NULL;
      SELF.ctipcar := NULL;
      SELF.ttipcar := NULL;
      SELF.fcarnet := NULL;
      SELF.calcohol := NULL;
      SELF.ctipmat := NULL;
      SELF.ttipmat := NULL;
      SELF.cmatric := NULL;
      SELF.cmarca := NULL;
      SELF.tmarca := NULL;
      SELF.cmodelo := NULL;
      SELF.tmodelo := NULL;
      SELF.cversion := NULL;
      SELF.tversion := NULL;
      SELF.nanyo := NULL;
      SELF.codmotor := NULL;
      SELF.cchasis := NULL;
      SELF.nbastid := NULL;
      SELF.ccilindraje := NULL;
      SELF.ireclam := NULL;
      SELF.iindemn := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_DETALLE" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_DETALLE" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMI_DETALLE" TO "R_AXIS";
