/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script actualiza la tabla axis_literales.          
********************************************************************************************************************** */
   DECLARE 
   V_EMPRESA             SEGUROS.CEMPRES%TYPE := 24;
   v_contexto            NUMBER; 
   BEGIN 
      SELECT pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(v_empresa, 'USER_BBDD')) INTO v_contexto   
        FROM DUAL; 
    
	     --
UPDATE axis_literales
SET TLITERA = 'Activos (Pesos)'
WHERE SLITERA = 108957;

UPDATE axis_literales
SET TLITERA = 'Egresos mensuales (Pesos)'
WHERE SLITERA = 9909625;

UPDATE axis_literales
SET TLITERA = 'Pasivo (Pesos)'
WHERE SLITERA = 9909626;
		   --
   COMMIT;
   END;
/
