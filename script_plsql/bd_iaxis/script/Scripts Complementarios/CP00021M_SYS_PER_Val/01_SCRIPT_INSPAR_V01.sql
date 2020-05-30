/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script inserta en la tabla PAREMPRESAS el registro para el parámetro PER_VAL_TELEF.          
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
            FROM PAREMPRESAS 
           WHERE CPARAM = 'PER_VAL_TELEF'; 
         --  
           INSERT INTO PAREMPRESAS (CEMPRES, CPARAM, NVALPAR)
           VALUES (24, 'PER_VAL_TELEF', 1);
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
           WHERE codigo = '01_SCRIPT_INSPAR_V01'; 
          -- 
          INSERT INTO log_instalacion (fecha, usuario, error, codigo, titulo, modulos)  
               VALUES  
                      (f_sysdate, f_user, NULL, '01_SCRIPT_INSPAR_V01', 'Validar campo Contactos en Mantenimiento de Personas', 'PAC_PERSONA.f_set_contacto'); 
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
