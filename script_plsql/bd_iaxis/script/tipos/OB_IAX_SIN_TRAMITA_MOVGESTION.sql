--------------------------------------------------------
--  DDL for Type OB_IAX_SIN_TRAMITA_MOVGESTION
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIN_TRAMITA_MOVGESTION" AS OBJECT
/******************************************************************************
   NOMBRE:     OB_IAX_SIN_TRAMITA_MOVGESTION
   PROPÓSITO:  Contiene la información de un movimiento de gestion de siniestros

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
    1.0       24/08/2011   ASN             Creacion
******************************************************************************/
(
   sgestio        NUMBER,   --'Clave tabla SIN_TRAMITA_GESTION';
   nmovges        NUMBER,   --'Numero de movimiento';
   ctipmov        NUMBER,   --'Codigo de Movimiento';
   ttipmov        VARCHAR2(100 BYTE),   --'Descripcion movimiento'
   cestges        NUMBER,   --'Estado de la gestion';
   testges        VARCHAR2(100 BYTE),   --'Descripcion estado'
   csubges        NUMBER,   --'Subestado de la gestion';
   tsubges        VARCHAR2(100 BYTE),   --'Descripcion subestado'
   tcoment        VARCHAR2(4000 BYTE),   --'Observaciones';
   fmovini        DATE,   --'Fecha del movimiento';
   fmovfin        DATE,   --'Fecha Fin. Es nulo en el ultimo movimiento';
   finicio        DATE,   --'Fecha de inicio prevista';
   fproxim        DATE,   --'Fecha prevista proximo movimiento';
   flimite        DATE,   --'Fecha limite de la gestion';
   faccion        DATE,   --'Fecha para reclamar';
   caccion        NUMBER,   --'Capacidad carga de trabajo si se reclama';
   nmaxava        NUMBER,   --'Total de avances permitidos';
   ntotava        NUMBER,   --'Total avances consumidos';
   cusualt        VARCHAR2(20),
   tdescri        VARCHAR2(500 BYTE),   --'Descripción';
   CONSTRUCTOR FUNCTION ob_iax_sin_tramita_movgestion
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIN_TRAMITA_MOVGESTION" AS
   CONSTRUCTOR FUNCTION ob_iax_sin_tramita_movgestion
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sgestio := NULL;
      SELF.nmovges := NULL;
      SELF.ctipmov := NULL;
      SELF.ttipmov := NULL;
      SELF.cestges := NULL;
      SELF.testges := NULL;
      SELF.csubges := NULL;
      SELF.tsubges := NULL;
      SELF.tcoment := NULL;
      SELF.fmovini := NULL;
      SELF.fmovfin := NULL;
      SELF.finicio := NULL;
      SELF.fproxim := NULL;
      SELF.flimite := NULL;
      SELF.faccion := NULL;
      SELF.caccion := NULL;
      SELF.nmaxava := NULL;
      SELF.ntotava := NULL;
      SELF.cusualt := NULL;
      SELF.tdescri := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITA_MOVGESTION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITA_MOVGESTION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIN_TRAMITA_MOVGESTION" TO "PROGRAMADORESCSI";
