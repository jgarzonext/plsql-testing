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
	WHERE slitera = 89906316;

DELETE 
  FROM AXIS_CODLITERALES 
 WHERE slitera = 89906316;

INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)  
     VALUES  
            (89906316, 3);         
            
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (1, 89906316, 'Este tomador tiene @@ polizas con 60 dias de madurez o mas.'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (2, 89906316, 'Este tomador tiene @@ polizas con 60 dias de madurez o mas.'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (8, 89906316, 'Este tomador tiene @@ polizas con 60 dias de madurez o mas.');
			
DELETE FROM axis_literales
	WHERE slitera = 89906317;

DELETE 
  FROM AXIS_CODLITERALES 
 WHERE slitera = 89906317;

INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)  
     VALUES  
            (89906317, 3);         
            
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (1, 89906317, 'Estatus Poliza'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (2, 89906317, 'Estatus Poliza'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (8, 89906317, 'Estatus Poliza');
			
			
            
   COMMIT;
   END;
   /