/* Formatted on 19/02/2020 12:30*/
/* **************************** 19/02/2020 12:30 **********************************************************************
Versi�n           Descripci�n
01.               -Se agrega el �ndice 'PER_PERSONAS_REL_INDEX' para la tabla PER_PERSONAS_REL
IAXIS-11903        19/02/2020 Daniel Rodr�guez
***********************************************************************************************************************/
BEGIN 
  pac_skip_ora.p_comprovadrop('PER_PERSONAS_REL_INDEX','INDEX');
EXCEPTION 
  WHEN OTHERS THEN
    NULL;
END;
/ 
-- Crear el �ndice
CREATE INDEX PER_PERSONAS_REL_INDEX on PER_PERSONAS_REL (SPERSON_REL);
/

