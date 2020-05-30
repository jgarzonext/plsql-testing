/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script actualiza en la tabla axis_literales el literal 9909621.          
********************************************************************************************************************** */
   DECLARE 
   V_EMPRESA             SEGUROS.CEMPRES%TYPE := 24;
   v_contexto            NUMBER; 
   BEGIN 
      SELECT pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(v_empresa, 'USER_BBDD')) INTO v_contexto   
        FROM DUAL; 

       BEGIN
         --  
           update axis_literales
			set tlitera = '¿Por su cargo o actividad, administra recursos públicos?'
			where slitera = 9909621; 
		   --
		   COMMIT;
		   --
            EXCEPTION 
                 WHEN DUP_VAL_ON_INDEX THEN 
                 null; 
              END;
			  
       BEGIN 
          -- 
          DELETE 
            FROM log_instalacion 
           WHERE codigo = '01_LITERALES_V01'; 
          -- 
          INSERT INTO log_instalacion (fecha, usuario, error, codigo, titulo, modulos)  
               VALUES  
                      (f_sysdate, f_user, NULL, '01_LITERALES_V01', 'Actualiza literal', 'axis_literales'); 
          -- 
          COMMIT; 
          -- 
       EXCEPTION 
          WHEN OTHERS THEN 
          ROLLBACK;
          raise_application_error (-20201, 'Error en script');
       END;
   COMMIT;
   END;
/
