--------------------------------------------------------
--  DDL for Type OB_IAX_RENTAIRR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_RENTAIRR" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_RENTASIRREG
   PROP�SITO:  Contiene la informaci�n de las rentas irregulares

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        06/09/2007   JRH               1. Creaci�n del objeto.
******************************************************************************/
(

    --sseguro     NUMBER,         -- c�digo seguros
    nriesgo     NUMBER,   -- n�mero de riesgo
    nmovimi     NUMBER,         -- n�mero de movimiento

    anyo         NUMBER,   -- a�o de la renta irregular
    mes1         NUMBER,   -- mes de la renta irregular
    mes2         NUMBER,   -- mes de la renta irregular
    mes3         NUMBER,   -- mes de la renta irregular
    mes4         NUMBER,   -- mes de la renta irregular
    mes5         NUMBER,   -- mes de la renta irregular
    mes6         NUMBER,   -- mes de la renta irregular
    mes7         NUMBER,   -- mes de la renta irregular
    mes8         NUMBER,   -- mes de la renta irregular
    mes9         NUMBER,   -- mes de la renta irregular
    mes10         NUMBER,   -- mes de la renta irregular
    mes11         NUMBER,   -- mes de la renta irregular
    mes12         NUMBER,   -- mes de la renta irregular

    importe     NUMBER ,     -- importe de la renta irregular

    CONSTRUCTOR FUNCTION OB_IAX_RENTAIRR  RETURN SELF AS RESULT

);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_RENTAIRR" AS

    CONSTRUCTOR FUNCTION OB_IAX_RENTAIRR  RETURN SELF AS RESULT IS
    BEGIN
       --SELF.sseguro :=NULL;
       SELF.nriesgo :=NULL;
       SELF.nmovimi :=NULL;
       SELF.mes1 :=NULL;
       SELF.mes2 :=NULL;
       SELF.mes3 :=NULL;
       SELF.mes4 :=NULL;
       SELF.mes5 :=NULL;
       SELF.mes6 :=NULL;
       SELF.mes7 :=NULL;
       SELF.mes8 :=NULL;
       SELF.mes9 :=NULL;
       SELF.mes10 :=NULL;
       SELF.mes11 :=NULL;
       SELF.mes12 :=NULL;
       SELF.anyo :=NULL;
       SELF.importe :=NULL;

       RETURN;
    END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_RENTAIRR" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_RENTAIRR" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_RENTAIRR" TO "PROGRAMADORESCSI";
