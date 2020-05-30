/* Formatted on 02/01/2019 11:00*/
/* **************************** 02/01/2019 11:00 **********************************************************************
Versión           Descripción
01.               -Se actualiza la consulta para extraer los pagadores alternativos. Afecta el nodo </pagadores> de la 
                   interfaz I017.
TCS460            02/01/2019 Daniel Rodríguez
***********************************************************************************************************************/
BEGIN
  UPDATE map_tabla m
     SET m.tfrom =
      '(SELECT p.sperson_rel linea FROM per_pagador_alt p WHERE p.sperson = pac_map.f_valor_parametro(''|'',''#lineaini'',101,''#cmapead'') AND p.cestado = 1)'
   WHERE m.ctabla = 101707;
--
COMMIT;
--
EXCEPTION
  WHEN OTHERS THEN
    --
	ROLLBACK;
    dbms_output.put_line('Error mientras se actualizaba la tabla map_tabla: ' || SQLERRM);
    -- 
END;	