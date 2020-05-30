/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script actualiza la tabla axis_literales y se inserta registros con idioma 8.          
********************************************************************************************************************** */
   DECLARE 
   V_EMPRESA             SEGUROS.CEMPRES%TYPE := 24;
   v_contexto            NUMBER; 
   BEGIN 
      SELECT pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(v_empresa, 'USER_BBDD')) INTO v_contexto   
        FROM DUAL; 
    
	  BEGIN
	     --
         DELETE 
            FROM axis_literales 
           WHERE slitera = 89906156
		    AND cidioma = 8; 
         --
		 insert into axis_literales (cidioma, slitera, tlitera)
		 values (8, 89906156, '¿Alguno de los administradores (Representantes legales, miembros de la Junta Directiva) es una persona publicamente expuesta?');
	     --
	  EXCEPTION 
          WHEN DUP_VAL_ON_INDEX THEN 
          null; 
      END;
			  
      BEGIN 
          -- 
          DELETE 
            FROM axis_literales 
           WHERE slitera = 89906155
		    AND cidioma = 8; 
         --
		 insert into axis_literales (cidioma, slitera, tlitera)
		 values (8, 89906155, '¿Por su cargo o actividad, alguno de los administradores(Representantes legales, miembros de la Junta Directiva) administra recursos publicos?');
		 --
	  EXCEPTION 
          WHEN DUP_VAL_ON_INDEX THEN 
          null; 
      END; 
	  
	update axis_literales
	   set TLITERA = '¿Es usted sujeto de obligaciones tributarias en otro país o grupo de países?'
      where slitera = 89906153
       and cidioma = 8;
		   --
   COMMIT;
   END;
/
