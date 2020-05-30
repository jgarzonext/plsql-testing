/* Formatted on 21/05/2020 17:30*/
/* **************************** 21/05/2020 17:30 **********************************************************************
Versión           Descripción
01.               -Este script agrega la columna IFACCEDINI a la tabla cuafacul
IAXIS-5361         21/05/2020 Daniel Rodríguez
***********************************************************************************************************************/
DECLARE
   v_contexto NUMBER := 0;
BEGIN
   v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24, 'USER_BBDD'));
END;
/

BEGIN
  EXECUTE IMMEDIATE 'ALTER TABLE cuafacul DROP COLUMN IFACCEDINI';
EXCEPTION
  WHEN OTHERS THEN
    IF (SQLCODE = -00904) THEN
      dbms_output.put_line('La columna IFACCEDINI no existe en la tabla cuafacul. Ignorar este mensaje cuando se ejecute el lanzador varias veces.');
    ELSE
      dbms_output.put_line('ERROR...' || '. Descripción del Error-> ' ||
                           SQLERRM || ' - ' ||
                           dbms_utility.format_error_backtrace);
    END IF;
END;
/
    
ALTER TABLE CUAFACUL ADD IFACCEDINI NUMBER;
COMMENT ON COLUMN CUAFACUL.IFACCEDINI IS 'Importe cedido inicial de facultativo (cálculo automático de aplicación)'; 
/

