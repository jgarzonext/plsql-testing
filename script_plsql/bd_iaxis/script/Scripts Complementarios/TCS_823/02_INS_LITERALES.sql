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
	WHERE slitera IN (89906232, 89906233, 89906234, 89906235);

DELETE 
  FROM AXIS_CODLITERALES 
 WHERE SLITERA IN (89906232, 89906233, 89906234, 89906235);

INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)  
     VALUES  
            (89906232, 3); 
            
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)  
     VALUES  
            (89906233, 3); 
            
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)  
     VALUES  
            (89906234, 3);
            
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)  
     VALUES  
            (89906235, 3);

INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (1, 89906232, 'No se puede cambiar la clase de contragarantía'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (2, 89906232, 'No se puede cambiar la clase de contragarantía'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (8, 89906232, 'No se puede cambiar la clase de contragarantía'); 
            
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (1, 89906233, 'No se puede cambiar la moneda de la contragarantía'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (2, 89906233, 'No se puede cambiar la moneda de la contragarantía'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (8, 89906233, 'No se puede cambiar la moneda de la contragarantía'); 
            
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (1, 89906234, 'No se puede cambiar los datos de Auxiliar'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (2, 89906234, 'No se puede cambiar los datos de Auxiliar'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (8, 89906234, 'No se puede cambiar los datos de Auxiliar'); 
            
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (1, 89906235, 'No se puede cambiar el estado de la contragarantía'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (2, 89906235, 'No se puede cambiar el estado de la contragarantía'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (8, 89906235, 'No se puede cambiar el estado de la contragarantía'); 
		   --
   COMMIT;
   END;
/
