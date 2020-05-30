--------------------------------------------------------
--  DDL for Type OB_IAX_PRODGARANPROCAP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODGARANPROCAP" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODGARANPROCAP
   PROPÓSITO:  Contiene información de las actividades del producto
                garantias lista de capitales

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        15/04/2008   ACC                1. Creación del objeto.
******************************************************************************/
(

    NORDEN NUMBER,      -- Número orden
    ICAPITAL NUMBER,    -- Importe capital
    CDEFECTO NUMBER,    -- Indicador de Valor por Defecto: 1=Si, 0=No


    CONSTRUCTOR FUNCTION OB_IAX_PRODGARANPROCAP RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODGARANPROCAP" AS

    CONSTRUCTOR FUNCTION OB_IAX_PRODGARANPROCAP RETURN SELF AS RESULT IS
    BEGIN
            SELF.NORDEN := NULL;
        RETURN;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODGARANPROCAP" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODGARANPROCAP" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODGARANPROCAP" TO "PROGRAMADORESCSI";
