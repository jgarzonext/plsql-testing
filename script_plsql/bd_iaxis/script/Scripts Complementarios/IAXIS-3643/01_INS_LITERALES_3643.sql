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
	WHERE slitera IN (89906307, 89906308);

DELETE 
  FROM AXIS_CODLITERALES 
 WHERE SLITERA IN (89906307, 89906308);

INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)  
     VALUES  
            (89906307, 3); 
            
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)  
     VALUES  
            (89906308, 3); 
            
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (1, 89906307, 'Estado Desde'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (2, 89906307, 'Estado Desde'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (8, 89906307, 'Estado Desde');
            
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (1, 89906308, 'Estado Hasta'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (2, 89906308, 'Estado Hasta');  
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (8, 89906308, 'Estado Hasta');  
		   --
   COMMIT;
   END;
/
