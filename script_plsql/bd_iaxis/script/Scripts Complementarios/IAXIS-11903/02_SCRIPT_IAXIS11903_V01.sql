/* Formatted on 11/02/2020 17:30*/
/* **************************** 11/02/2020 17:30 **********************************************************************
Versi�n           Descripci�n
01.               -Se actualizan los productos que tendr�n configuraci�n para prima m�nima en endosos.
IAXIS-11903        11/02/2020 Daniel Rodr�guez
***********************************************************************************************************************/
BEGIN 
  pac_skip_ora.p_comprovadrop('CESREA_NUK_8','INDEX');
EXCEPTION 
  WHEN OTHERS THEN
    NULL;
END;
/ 
-- Crear el �ndice
CREATE INDEX CESREA_NUK_8 ON CESIONESREA (SSEGURO, TRUNC(FGENERA));
/

