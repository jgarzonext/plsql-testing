
DELETE FROM axis_literales
	WHERE slitera IN (89906275, 89906276);

DELETE 
  FROM AXIS_CODLITERALES 
 WHERE SLITERA IN (89906275, 89906276);

INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)  
     VALUES  
            (89906275, 3); 
            
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)  
     VALUES  
            (89906276, 3); 		
            
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (1, 89906275, 'Al seleccionar un convenio debe escoger la comisión convenio'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (2, 89906275, 'Al seleccionar un convenio debe escoger la comisión convenio'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (8, 89906275, 'Al seleccionar un convenio debe escoger la comisión convenio');
            
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (1, 89906276, 'Debe seleccionar un convenio para que la comisión convenio sea valida'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (2, 89906276, 'Debe seleccionar un convenio para que la comisión convenio sea valida');  
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (8, 89906276, 'Debe seleccionar un convenio para que la comisión convenio sea valida');  
		
   COMMIT;
   
/

