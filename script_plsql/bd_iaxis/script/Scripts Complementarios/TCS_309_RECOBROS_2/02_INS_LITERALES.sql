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
	WHERE slitera IN (89906245, 89906246, 89906067);

DELETE 
  FROM AXIS_CODLITERALES 
 WHERE SLITERA (89906245, 89906246, 89906067);

INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)  
     VALUES  
            (89906245, 3); 
			
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)  
     VALUES  
            (89906246, 3); 
			
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA)  
     VALUES  
            (89906067, 3); 
            

INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (1, 89906245, 'Texto Persona Natural o Jurídica'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (2, 89906245, 'Texto Persona Natural o Jurídica'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (8, 89906245, 'Texto Persona Natural o Jurídica'); 		

INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (1, 89906246, 'Si existe Repr. Legal diligencie "identificado con Nit":'); 
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (2, 89906246, 'Si existe Repr. Legal diligencie "identificado con Nit":');  
INSERT INTO axis_literales (cidioma, slitera, tlitera)  
     VALUES  
            (8, 89906246, 'Si existe Repr. Legal diligencie "identificado con Nit":'); 	

insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (8, 89906067, 'Busqueda de antecedentes');
 
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (1, 89906067, 'Cerca d antecedents');
 
insert into axis_literales (CIDIOMA, SLITERA, TLITERA)
values (2, 89906067, 'Busqueda de antecedentes');			
		   --
   COMMIT;
   END;
/
