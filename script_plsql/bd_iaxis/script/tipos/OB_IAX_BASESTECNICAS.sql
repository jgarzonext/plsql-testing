--------------------------------------------------------
--  DDL for Type OB_IAX_BASESTECNICAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_BASESTECNICAS" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_BASESTECNICAS
   PROP¿SITO:  Contiene informaci¿n de las bases t¿cnicas

   REVISIONES:
   Ver        Fecha        Autor             Descripci¿n
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/12/2009   APD                1. Creaci¿n del objeto.
   2.0        30/07/2010   JRH                2. 0015587: CEM - Rentas - Inter¿s m¿nimo en consulta p¿liza
******************************************************************************/
(
   sseguro        NUMBER,   --Identificador del seguro
   fecrevi        DATE,   --Fecha de revision
   fecreviant     DATE,   --Fecha de revision anterior
   intpol         NUMBER,   --Interes de la poliza
   intpolini      NUMBER,   --Interes inicial de la poliza
   fvencimcapgar  DATE,   --Fecha de vencimiento para capitales garantizados
   intgarantias   t_iax_inttecgarantias,
   tabmortgar     t_iax_tabmortgar,
   gastos         t_iax_gastos,
   intseguro      t_iax_intertecseg,
   -- Bug 15587 - JRH - 30/07/2010 - 0015587: CEM - Rentas - Inter¿s m¿nimo en consulta p¿liza
   intpolmin      NUMBER,
   -- Fi Bug 15587 - JRH - 30/07/2010
   CONSTRUCTOR FUNCTION ob_iax_basestecnicas
      RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_BASESTECNICAS" AS
/******************************************************************************
   NOMBRE:       OB_IAX_BASESTECNICAS
   PROP¿SITO:  Contiene informaci¿n de las bases t¿cnicas

   REVISIONES:
   Ver        Fecha        Autor             Descripci¿n
   ---------  ----------  ---------------  ------------------------------------
   1.0        14/12/2009   APD                1. Creaci¿n del objeto.
   2.0        30/07/2010   JRH                2. 0015587: CEM - Rentas - Inter¿s m¿nimo en consulta p¿liza
******************************************************************************/
   CONSTRUCTOR FUNCTION ob_iax_basestecnicas
      RETURN SELF AS RESULT IS
   BEGIN
      SELF.sseguro := NULL;
      SELF.fecrevi := NULL;
      SELF.fecreviant := NULL;
      SELF.intpol := NULL;
      SELF.intpolini := NULL;
      SELF.fvencimcapgar := NULL;
      SELF.intgarantias := NULL;
      SELF.tabmortgar := NULL;
      SELF.gastos := NULL;
      SELF.intseguro := NULL;
      -- Bug 15587 - JRH - 30/07/2010 - 0015587: CEM - Rentas - Inter¿s m¿nimo en consulta p¿liza
      SELF.intpolmin := NULL;
      -- Fi Bug 15587 - JRH - 30/07/2010
      RETURN;
   END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_BASESTECNICAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BASESTECNICAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_BASESTECNICAS" TO "PROGRAMADORESCSI";
