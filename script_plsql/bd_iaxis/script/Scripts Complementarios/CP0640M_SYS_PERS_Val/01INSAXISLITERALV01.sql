/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script inserta en las tablas axis_codliterales y axis_literales.          
********************************************************************************************************************** */
   DECLARE 
   V_EMPRESA             SEGUROS.CEMPRES%TYPE := 24;
   v_contexto            NUMBER; 
   BEGIN 
      SELECT pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(v_empresa, 'USER_BBDD')) INTO v_contexto   
        FROM DUAL; 
    
	     --
DELETE FROM axis_literales
	WHERE slitera IN (89906207, 89906208, 89906209);

DELETE 
  FROM AXIS_CODLITERALES 
 WHERE SLITERA IN (89906207, 89906208, 89906209);

INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)  
     VALUES  
            (89906207, 3); 
            
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)  
     VALUES  
            (89906208, 3); 
            
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)  
     VALUES  
            (89906209, 3); 

INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (1, 89906207, 'Ingresos Mensuales (Pesos)'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (2, 89906207, 'Ingresos Mensuales (Pesos)'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (8, 89906207, 'Ingresos Mensuales (Pesos)');
            
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (1, 89906208, 'Patrimonio (Activos - Pasivos, Pesos)'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (2, 89906208, 'Patrimonio (Activos - Pasivos, Pesos)'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (8, 89906208, 'Patrimonio (Activos - Pasivos, Pesos)'); 
            
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (1, 89906209, 'Otros ingresos (Pesos)'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (2, 89906209, 'Otros ingresos (Pesos)'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (8, 89906209, 'Otros ingresos (Pesos)'); 
		   --
   COMMIT;
   END;
/
