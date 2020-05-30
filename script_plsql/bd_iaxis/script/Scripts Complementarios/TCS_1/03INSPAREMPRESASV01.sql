/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script inserta en la tabla parempresas.          
********************************************************************************************************************** */
   DECLARE 
   V_EMPRESA             SEGUROS.CEMPRES%TYPE := 24;
   v_contexto            NUMBER; 
   BEGIN 
      SELECT pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(v_empresa, 'USER_BBDD')) INTO v_contexto   
        FROM DUAL; 
    
	     --
   INSERT INTO parempresas (cempres, cparam, nvalpar)
    VALUES (v_empresa, 'CODAGENTEAUT', 1);      
         --
   COMMIT;
   END;
/