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
	WHERE slitera IN (89906241, 89906242, 89906243, 89906244);

DELETE 
  FROM AXIS_CODLITERALES 
 WHERE SLITERA IN (89906241, 89906242, 89906243, 89906244);

INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)  
     VALUES  
            (89906241, 3); 
            
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)  
     VALUES  
            (89906242, 3); 
            
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)  
     VALUES  
            (89906243, 3);
            
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)  
     VALUES  
            (89906244, 3);
			

INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (1, 89906241, 'Porcentaje de interés'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (2, 89906241, 'Porcentaje de interés'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (8, 89906241, 'Porcentaje de interés'); 
            
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (1, 89906242, 'Fecha de la obligación'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (2, 89906242, 'Fecha de la obligación'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (8, 89906242, 'Fecha de la obligación'); 
            
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (1, 89906243, 'Tipo de cuenta'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (2, 89906243, 'Tipo de cuenta'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (8, 89906243, 'Tipo de cuenta'); 
            
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (1, 89906244, 'No de cuenta'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (2, 89906244, 'No de cuenta'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (8, 89906244, 'No de cuenta'); 
			
		   --
   COMMIT;
   END;
/
