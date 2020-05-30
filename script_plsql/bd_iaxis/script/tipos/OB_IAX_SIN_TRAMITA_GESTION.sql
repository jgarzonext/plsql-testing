--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMITA_GESTION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMITA_GESTION" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_SIN_TRAMITA_GESTION
   PROPÓSITO:  Contiene la información de una gestion de siniestros

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
    1.0       24/08/2011   ASN             Creacion
******************************************************************************/
(
   sseguro        VARCHAR2(14 BYTE),   --'Clave de seguros';
   nsinies        VARCHAR2(14 BYTE),   --'Numero de siniestro';
   ntramit        NUMBER,   --'Numero tramitacion';
   nlocali        NUMBER,   --'Numero de localizacion';
   cgarant        NUMBER,   --'Codigo de garantia';
   sgestio        NUMBER,   --'Secuencial. Codigo unico de gestion (PK)';
   ctipreg        NUMBER,   --'Tipo Registro. 0-Varios 1-Peritaje 2-Gasto Sanitario 3-Mesa Repuestos.';
   ctipges        NUMBER,   --'Tipo Gestion.';
   ttipges        VARCHAR2(100),   --'Descripcion tipo gestion';
   sprofes        NUMBER,   --'Clave de la tabla Profesionales';
   tnompro        VARCHAR2(250 BYTE),   --'Nombre del profesional'
   ctippro        NUMBER,   --'Tipo profesional'
   csubpro        NUMBER,   --'Subtipo profesional'
   tsubpro        VARCHAR2(100),   --'Descripcion subtipo profesional'
   spersed        NUMBER,   --'Clave de la sede (sperson)';
   tnomsed        VARCHAR2(120 BYTE),   --'Nombre de la sede'
   sconven        NUMBER,   --'Numero de Convenio';
   ccancom        NUMBER,   --'Canal de comunicacion';
   ccomdef        NUMBER,   --'Comunicacion por defecto (Mant. Proveedores) 0-No 1-Si';
   trefext        VARCHAR2(100 BYTE),   --'Referencia externa';
   tobserv        VARCHAR2(4000 BYTE),   --'Observaciones'
   cestges        NUMBER,   -- Estat de lúltim moviment
   csubges        NUMBER,   -- Subestat de lúltim moviment
   fgestio        DATE,   -- Fecha gestio
   servicios      t_iax_sin_tramita_detgestion,
   movimientos    t_iax_sin_tramita_movgestion,
   CONSTRUCTOR FUNCTION ob_iax_sin_tramita_gestion
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMITA_GESTION" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_tramita_gestion
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sseguro := NULL;
      SELF.nsinies := NULL;
      SELF.ntramit := NULL;
      SELF.nlocali := NULL;
      SELF.cgarant := NULL;
      SELF.sgestio := NULL;
      SELF.ctipreg := NULL;
      SELF.ctipges := NULL;
      SELF.ttipges := NULL;
      SELF.sprofes := NULL;
      SELF.tnompro := NULL;
      SELF.ctippro := NULL;
      SELF.csubpro := NULL;
      SELF.tsubpro := NULL;
      SELF.spersed := NULL;
      SELF.tnomsed := NULL;
      SELF.sconven := NULL;
      SELF.ccancom := NULL;
      SELF.ccomdef := NULL;
      SELF.trefext := NULL;
      SELF.tobserv := NULL;
      SELF.cestges := NULL;
      SELF.csubges := NULL;
      SELF.fgestio := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITA_GESTION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITA_GESTION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITA_GESTION" TO "PROGRAMADORESCSI";
