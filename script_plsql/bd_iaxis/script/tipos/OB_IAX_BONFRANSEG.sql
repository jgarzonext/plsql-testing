--------------------------------------------------------
--  DDL for Type OB_IAX_BONFRANSEG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BONFRANSEG" AS OBJECT
/******************************************************************************
   NOMBRE:               OB_IAX_BONFRANSEG
   PROPÓSITO:  Contiene la información de las franquicias de una póliza

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2012   JRH                1. Creación del objeto.
******************************************************************************/
(
   sseguro        NUMBER,
   --    Número consecutivo de seguro asignado automáticamente
   nriesgo        NUMBER,   --        Número de riesgo
   cgrup          NUMBER,   --        Código de Grupo de Bonus/Franquícias
   tgrup          VARCHAR2(200),
   --    Descripción del Grupo de Bonus/Franquícias
   csubgrup       NUMBER,   --        Código Subgrupo Bonus/Franquícias
   tsubgrup       VARCHAR2(200),
   --        Descripción Subgrupo de Bonus/Franquícias
   cnivel         NUMBER,
   --    Código Nivel dentro del Subgrupo de Bonus/Franquícias
   tnivel         VARCHAR2(200),
   --        Descripción Nivel en Grupo/Subgrupo Bonus/Franquícias
   cversion       NUMBER,   --        Código de Versión
   nmovimi        NUMBER,   --        Número de movimiento
   finiefe        DATE,   --        Fecha inicio de efecto
   ctipgrup       VARCHAR2(1),   --        Tipo de grupo B=Bonus, F=Franq
   cvalor1        NUMBER,
   --        1=Porcentaje; 2=Importe Fijo; 3=Descripción; 4 = SMMLV
   tvalor1        VARCHAR2(200),
   --        1=Porcentaje; 2=Importe Fijo; 3=Descripción; 4 = SMMLV
   impvalor1      NUMBER,   --            Importe expresado según cvalor
   cvalor2        VARCHAR2(2),
   --        1=Porcentaje; 2=Importe Fijo; 3=Descripción; 4 = SMMLV'
   tvalor2        VARCHAR2(200),
   --            1=Porcentaje; 2=Importe Fijo; 3=Descripción; 4 = SMMLV
   impvalor2      NUMBER,   --            Importe expresado según cvalor
   cimpmin        VARCHAR2(2),
   --            1=Porcentaje; 2=Importe Fijo; 3=Descripción; 4 = SMMLV'
   timpmin        VARCHAR2(200),
   --            1=Porcentaje; 2=Importe Fijo; 3=Descripción; 4 = SMMLV
   impmin         NUMBER,   --        Importe expresado según cvalor
   cimpmax        VARCHAR2(2),
   --        1=Porcentaje; 2=Importe Fijo; 3=Descripción; 4 = SMMLV'
   timpmax        VARCHAR2(200),
   --            1=Porcentaje; 2=Importe Fijo; 3=Descripción; 4 = SMMLV
   impmax         NUMBER,   --        Importe expresado según cvalor
   ffinefe        DATE,   --        Fecha inicio de efecto
   cusualt        VARCHAR2(20),   --        Usuario creación
   falta          DATE,   --Fecha creación
   cusumod        VARCHAR2(20),   --        Usuario modificación
   fmodifi        DATE,   --    Fecha modificación
   ctipvisgrup    NUMBER,
   ttipvisgrup    VARCHAR2(200),
   ctipgrupsubgrup NUMBER,
   cniveldefecto  NUMBER,   --Nivel por defecto original
   CONSTRUCTOR FUNCTION ob_iax_bonfranseg
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_BONFRANSEG" AS
   CONSTRUCTOR FUNCTION ob_iax_bonfranseg
      RETURN SELF AS RESULT IS
   BEGIN
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_BONFRANSEG" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BONFRANSEG" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BONFRANSEG" TO "PROGRAMADORESCSI";
