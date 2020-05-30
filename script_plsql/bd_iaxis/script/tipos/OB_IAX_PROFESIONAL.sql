--------------------------------------------------------
--  DDL for Type OB_IAX_PROFESIONAL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PROFESIONAL" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_PROFESIONAL
   PROPÓSITO:  Contiene la información del profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        13/11/2012   JDS                1. Creación del objeto.
   2.0        16/01/2013   NSS                2. Añadir todos los campos necesarios al objeto
******************************************************************************/
(
   sprofes        NUMBER,   --Código del profesionaL
   sperson        NUMBER,   --Clave de personas
   ctipide        NUMBER,
   ttipide        VARCHAR2(100),
   ctipper        NUMBER,
   nnumide        VARCHAR2(50),
   tnombre        VARCHAR2(180),   --Nombre y apellidos
   nregmer        VARCHAR2(20),   --Número de registro mercantil
   fregmer        DATE,   --Fecha registro mercantil
   cdomici        NUMBER,   --Dirección fiscal
   tdomici        VARCHAR2(1000),
   cmodcon        NUMBER,   --Contacto preferente. (PER_CONTACTOS.CMODCON)
   ttelcli        VARCHAR2(100),   --Teléfono contacto cliente (PER_CONTACTOS.CMODCON)
   nlimite        NUMBER,   --Limite de cuantia peritable
   cnoasis        NUMBER,   --Marca exclusion siniestros de asistencia
   ROLES          t_iax_prof_roles,
   contactos      t_iax_prof_contactos,
   contactos_per  t_iax_prof_contactos_per,
   representantes t_iax_prof_repre,
   cuentas        t_iax_prof_ccc,   --cuentas corrientes del profesional
   estados        t_iax_prof_estados,
   zonas          t_iax_prof_zonas,
   sedes          t_iax_prof_sedes,
   observaciones  t_iax_prof_observaciones,
   carga          t_iax_prof_carga_permitida,
   carga_real     t_iax_prof_carga_real,
   descartados    t_iax_prof_descartados,
   seguimiento    t_iax_prof_seguimiento,
   documentacion  t_iax_prof_documentacion,
   convenios      t_iax_prof_conve,
   impuestos      t_iax_prof_impuestos,   --0024637/0147756: (POSAN500-AN-Sin) Analisis Desarrollo: Siniestros : NSS : 25/02/2014
   --contratos      T_IAX_CONTRATO,

   -------------------------------------------------------------------------------
   CONSTRUCTOR FUNCTION ob_iax_profesional
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PROFESIONAL" AS
/******************************************************************************
   NOMBRE:     OB_IAX_PROFESIONAL
   PROPÓSITO:  Contiene los datos relacionados con un profesional

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/11/2012   JDS                1. Creación del objeto.
   2.0        16/01/2013   NSS                2. Añadir todos los campos necesarios al objeto
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_profesional
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sprofes := NULL;
      SELF.sperson := NULL;
      SELF.ctipide := NULL;
      SELF.ttipide := NULL;
      SELF.ctipper := NULL;
      SELF.nnumide := NULL;
      SELF.tnombre := NULL;
      SELF.nregmer := NULL;
      SELF.fregmer := NULL;
      SELF.cdomici := NULL;
      SELF.tdomici := NULL;
      SELF.cmodcon := NULL;
      SELF.ttelcli := NULL;
      SELF.nlimite := NULL;
      SELF.cnoasis := NULL;
      SELF.ROLES := NULL;
      SELF.contactos := NULL;
      SELF.contactos_per := NULL;
      SELF.representantes := NULL;
      SELF.cuentas := NULL;
      SELF.estados := NULL;
      SELF.zonas := NULL;
      SELF.sedes := NULL;
      SELF.observaciones := NULL;
      SELF.carga := NULL;
      SELF.carga_real := NULL;
      SELF.descartados := NULL;
      SELF.seguimiento := NULL;
      SELF.documentacion := NULL;
      SELF.convenios := NULL;
      SELF.impuestos := NULL;   --0024637/0147756: (POSAN500-AN-Sin) Analisis Desarrollo: Siniestros : NSS : 25/02/2014
      --SELF.contratos := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PROFESIONAL" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROFESIONAL" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PROFESIONAL" TO "PROGRAMADORESCSI";
