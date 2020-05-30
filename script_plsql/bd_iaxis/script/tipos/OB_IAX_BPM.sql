--------------------------------------------------------
--  DDL for Type OB_IAX_BPM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BPM" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_BPM
   PROPÓSITO:  Contiene la información de los casos bpm

   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/10/2013   AMC                1. Creación del objeto.
******************************************************************************/
(
   nnumcaso       NUMBER,
   cusuasignado   VARCHAR2(32),
   ctipoproceso   NUMBER(3),
   cestado        NUMBER(3),
   cestadoenvio   NUMBER(3),
   falta          DATE,
   fbaja          DATE,
   cusualt        VARCHAR2(32),
   fmodifi        DATE,
   cusumod        VARCHAR2(32),
   sproduc        NUMBER,
   cmotmov        NUMBER(5),
   ctipide        NUMBER(3),
   nnumide        VARCHAR2(50),
   tnomcom        VARCHAR2(300),
   npoliza        NUMBER(8),
   ncertif        NUMBER(6),
   nmovimi        NUMBER(4),
   nnumcasop      NUMBER,
   ncaso_bpm      NUMBER,
   nsolici_bpm    NUMBER,
   ctipmov_bpm    NUMBER(3),
   caprobada_bpm  NUMBER(3),
   CONSTRUCTOR FUNCTION ob_iax_bpm
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_BPM" AS
   CONSTRUCTOR FUNCTION ob_iax_bpm
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.nnumcaso := NULL;
      SELF.cusuasignado := NULL;
      SELF.ctipoproceso := NULL;
      SELF.cestado := NULL;
      SELF.cestadoenvio := NULL;
      SELF.falta := NULL;
      SELF.fbaja := NULL;
      SELF.cusualt := NULL;
      SELF.fmodifi := NULL;
      SELF.cusumod := NULL;
      SELF.sproduc := NULL;
      SELF.cmotmov := NULL;
      SELF.ctipide := NULL;
      SELF.nnumide := NULL;
      SELF.tnomcom := NULL;
      SELF.npoliza := NULL;
      SELF.ncertif := NULL;
      SELF.nmovimi := NULL;
      SELF.nnumcasop := NULL;
      SELF.ncaso_bpm := NULL;
      SELF.nsolici_bpm := NULL;
      SELF.ctipmov_bpm := NULL;
      SELF.caprobada_bpm := NULL;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_BPM" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BPM" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BPM" TO "PROGRAMADORESCSI";
