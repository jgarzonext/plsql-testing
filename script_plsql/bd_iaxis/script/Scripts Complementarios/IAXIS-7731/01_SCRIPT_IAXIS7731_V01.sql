/* Formatted on 19/12/2019 17:30*/
/* **************************** 19/12/2019 17:30 **********************************************************************
Versi�n           Descripci�n
01.               -Este script adiciona la columna NDOCPAG en la tabla sin_tramita_movpago.
IAXIS-7731        19/12/2019 Daniel Rodr�guez
***********************************************************************************************************************/
ALTER TABLE "SIN_TRAMITA_MOVPAGO" ADD (NDOCPAG NUMBER);
COMMENT ON COLUMN "SIN_TRAMITA_MOVPAGO"."NDOCPAG" IS 'N�mero de documento de pago SAP';
/

