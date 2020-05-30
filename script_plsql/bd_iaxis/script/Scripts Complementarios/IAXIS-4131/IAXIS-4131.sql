/* Formatted on 19/12/2019 17:30*/
/* **************************** 19/12/2019 17:30 **********************************************************************
Versin           Descripcin
01.               -Este script adiciona la columna CMONICAPRIE en la tabla SIN_TRAMITA_AMPARO.
02.               -Adiciona la palabra afectados a AXIS_LITERALES
IAXIS-4131        03/01/2020 Isaura Duarte
***********************************************************************************************************************/

ALTER TABLE SIN_TRAMITA_AMPARO DROP COLUMN CMONICAPRIE;

ALTER TABLE SIN_TRAMITA_AMPARO ADD CMONICAPRIE Varchar2(4) default NULL;
COMMENT ON COLUMN "SIN_TRAMITA_AMPARO"."CMONICAPRIE" IS 'Moneda del Valor Asegurado';

update AXIS_LITERALES
set tlitera = 'Listado de amparos Afectados'
WHERE CIDIOMA = 8
and slitera = 9901156;


