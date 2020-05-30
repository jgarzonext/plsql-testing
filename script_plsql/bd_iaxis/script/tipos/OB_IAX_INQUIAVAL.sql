--------------------------------------------------------
--  DDL for Type OB_IAX_INQUIAVAL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_INQUIAVAL" UNDER ob_iax_personas(
   sseguro        NUMBER,   --  Número consecutivo de seguro asignado automáticamente.
--SPERSON    NUMBER(10),   -- Identificador único de la Personas
   nmovimi        NUMBER(4),   -- Número de movimiento
   nriesgo        NUMBER(5),   --- Numero de riesgo
   ctipfig        NUMBER(5),   --TIPO DE FIGURA. DETVALOR XXX
   cdomici        NUMBER,   --Código de domicilio
   iingrmen       NUMBER,   --NUMBER(13, 2),   --Ingresos mensuales
   iingranual     NUMBER,   --NUMBER(13, 2),   -- Ingresos anuales
   ffecini        DATE,   --Fecha de alta en la póliza
   ffecfin        DATE,   --Fecha de baja
   ctipcontrato   NUMBER(3),   --TIPO DE CONTRATO LABORAL. DETVALOR XXX
   csitlaboral    NUMBER(3),   --SITUACION LABORAL. DETVALOR XXX
   csupfiltro     NUMBER(1),   --La figura ha pasado 'ASNEF', '0'- No '1'-Si
   CONSTRUCTOR FUNCTION ob_iax_inquiaval
      RETURN SELF AS RESULT
)
;
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_INQUIAVAL" AS
   CONSTRUCTOR FUNCTION ob_iax_inquiaval
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sseguro := NULL;
      -- SELF.SPERSON := NULL;
      SELF.nmovimi := NULL;
      SELF.nriesgo := NULL;
      SELF.ctipfig := NULL;
      SELF.cdomici := NULL;
      SELF.iingrmen := NULL;
      SELF.iingranual := NULL;
      SELF.ffecini := NULL;
      SELF.ffecfin := NULL;
      SELF.ctipcontrato := NULL;
      SELF.csitlaboral := NULL;
      SELF.csupfiltro := 0;
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_INQUIAVAL" TO "PROGRAMADORESCSI";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INQUIAVAL" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_INQUIAVAL" TO "R_AXIS";
