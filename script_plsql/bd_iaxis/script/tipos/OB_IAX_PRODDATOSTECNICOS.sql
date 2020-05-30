--------------------------------------------------------
--  DDL for Type OB_IAX_PRODDATOSTECNICOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_PRODDATOSTECNICOS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_PRODDATOSTECNICOS
   PROPÓSITO:  Contiene información de la datos tecnicos del producto

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        01/04/2008   ACC                1. Creación del objeto.
   2.0        16/05/2008   AMC                2. Se añaden nuevos campos
******************************************************************************/
(
    NNIIGAR NUMBER,        -- Interes a nivel de garantia
    NNIGGAR NUMBER,        -- Gastos a nivel de garantia
    CTABLA  NUMBER,        -- SELECT DISTINCT(GARANPRO.CTABLA). Si todos iguales mostrar, si no poner 'Definido a nivel de garantía'
    TTABLA  VARCHAR2(100), -- Descripción de la tabla

    TNNIIGAR VARCHAR2(100),       -- Descripción del nivel en que se aplican los interés técnicos. Valor fijo 287
    TNNIGGAR VARCHAR2(100),       -- Descripción del nivel en que se aplican los gastos técnicos. Valor fijo 287
    CMODINT  NUMBER,       -- Los intereses son modificables en póliza. Check por defecto no. Valores: 0:No, 1:si
    CINTREV  NUMBER,       -- Indica si por defecto en renovación aplicar el interés del producto. Solo tiene validez si cmodint = 1, Check por defecto no. Valores: 0:No, 1:si

    NCODINT     NUMBER(6),	                --Código cuadro Interés Técnico
    TCODINT	VARCHAR2(50),	                --Descripción del cuadro de interés Técnico asignado
    INTERESPROD T_IAX_INTERTECPROD,

    CONSTRUCTOR FUNCTION OB_IAX_PRODDATOSTECNICOS RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_PRODDATOSTECNICOS" AS

    CONSTRUCTOR FUNCTION OB_IAX_PRODDATOSTECNICOS RETURN SELF AS RESULT IS
    BEGIN
            SELF.NNIIGAR := NULL;
        RETURN;
    END;

END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODDATOSTECNICOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODDATOSTECNICOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_PRODDATOSTECNICOS" TO "PROGRAMADORESCSI";
