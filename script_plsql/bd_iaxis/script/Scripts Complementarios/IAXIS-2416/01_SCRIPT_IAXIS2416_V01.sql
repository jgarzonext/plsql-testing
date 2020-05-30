/* Formatted on 27/02/2019 11:00*/
/* **************************** 27/02/2019 11:00 **********************************************************************
Versión           Descripción
01.               -Este script actualiza el comportamiento del aviso 52 - "La Actividad-Producto seleccionada no aplica 
                   convenios verifique comisión o pregunta" de bloqueante a advertencia.
                  -Este script desactiva el aviso 53 - "La Actividad producto tiene convenio seleccione la pregunta(2913) 
				   del convenio a aplicar"
TCS-140            27/02/2019 Daniel Rodríguez.
***********************************************************************************************************************/
-- 
UPDATE cfg_rel_avisos c SET c.cbloqueo = 2 WHERE c.cempres = 24 AND c.cidrel = 733708 AND c.caviso = 52;
-- 
UPDATE avisos a SET a.cactivo = 1 WHERE a.cempres = 24 AND a.caviso = 53;
--
COMMIT;
