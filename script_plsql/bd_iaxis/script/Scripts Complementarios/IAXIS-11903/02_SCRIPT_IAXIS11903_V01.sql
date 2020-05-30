/* Formatted on 11/02/2020 17:30*/
/* **************************** 11/02/2020 17:30 **********************************************************************
Versión           Descripción
01.               -Se actualizan los productos que tendrán configuración para prima mínima en endosos.
IAXIS-11903        11/02/2020 Daniel Rodríguez
***********************************************************************************************************************/
BEGIN 
  pac_skip_ora.p_comprovadrop('CESREA_NUK_8','INDEX');
EXCEPTION 
  WHEN OTHERS THEN
    NULL;
END;
/ 
-- Crear el índice
CREATE INDEX CESREA_NUK_8 ON CESIONESREA (SSEGURO, TRUNC(FGENERA));
/

