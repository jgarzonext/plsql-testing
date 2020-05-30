--------------------------------------------------------
--  DDL for Type OB_IAX_SIMRESCATE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "AXIS"."OB_IAX_SIMRESCATE" AS OBJECT
/******************************************************************************
   NOMBRE:       OB_IAX_SIMRESCATE
   PROP�SITO:  Contiene la informaci�n de la simulaci�n de un rescate de una p�liza - riesgo

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/08/2007   ACC                1. Creaci�n del objeto.
******************************************************************************/
(
    DATOSECON    OB_IAX_DATOSECONOMICOS,
    IMPCAPRIS    NUMBER ,--    IMPORTE DE LA PROVISI�N PARA EL RESCATE
    IMPPENALI    NUMBER ,--    IMPORTE DE PENALIZACI�N
    IMPRESCATE    NUMBER ,--    VALOR BRUTO DEL RESCATE
    IMPPRIMASCONS    NUMBER ,--    PRIMAS SATISFECHAS
    IMPRENDBRUTO    NUMBER ,--    PLUSVALIA
    PCTREDUCCION    NUMBER ,--    % DE REDUCCI�N
    IMPREDUCCION    NUMBER ,--    REDUCCI�N
    IMPREGTRANS    NUMBER ,--    RED. DISP. TRANS.
    IMPRCM    NUMBER ,--    RCM
    PCTPCTRETEN    NUMBER ,--    % RETENCI�N
    IMPRETENCION    NUMBER ,--    IMPORTE RETENCI�N
    IMPRESNETO    NUMBER ,--    VALOR RESCATE NETO
    /* */
    CONSTRUCTOR FUNCTION OB_IAX_SIMRESCATE  RETURN SELF AS RESULT
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "AXIS"."OB_IAX_SIMRESCATE" AS
    CONSTRUCTOR FUNCTION OB_IAX_SIMRESCATE  RETURN SELF AS RESULT IS
    BEGIN
        SELF.ImpCapris:=NULL;
        SELF.ImpPenali:=NULL;
        SELF.ImpRescate:=NULL;
        SELF.ImpPrimasCons:=NULL;
        SELF.ImpRendBruto:=NULL;
        SELF.PctReduccion:=NULL;
        SELF.ImpReduccion:=NULL;
        SELF.ImpRegtrans:=NULL;
        SELF.ImpRcm:=NULL;
        SELF.PctPctReten:=NULL;
        SELF.ImpRetencion:=NULL;
        SELF.ImpResneto:=NULL;
        RETURN;
    END;
END;

/

  GRANT EXECUTE ON "AXIS"."OB_IAX_SIMRESCATE" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIMRESCATE" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."OB_IAX_SIMRESCATE" TO "PROGRAMADORESCSI";
