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
	WHERE slitera in (89906211, 89906212);

DELETE 
  FROM AXIS_CODLITERALES 
 WHERE SLITERA in (89906211, 89906212);

INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)  
     VALUES  
            (89906211, 3); 
            
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)  
     VALUES  
            (89906212, 4); 

INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (1, 89906211, 'Eliminar Cuadro Comisión'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (2, 89906211, 'Eliminar Cuadro Comisión'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (8, 89906211, 'Eliminar Cuadro Comisión');
            
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (1, 89906212, 'El cuadro de comisión ya existe con el codigo $1'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (2, 89906212, 'El cuadro de comisión ya existe con el codigo $1'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (8, 89906212, 'El cuadro de comisión ya existe con el codigo $1');
		   --
   COMMIT;
   END;
/