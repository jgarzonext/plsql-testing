/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script actualiza la tabla codparam_per para el parámetro PER_ING_TARJPROF.          
********************************************************************************************************************** */
   DECLARE 
   V_EMPRESA             SEGUROS.CEMPRES%TYPE := 24;
   v_contexto            NUMBER; 
   BEGIN 
      SELECT pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(v_empresa, 'USER_BBDD')) INTO v_contexto   
        FROM DUAL; 

	     --
         UPDATE codparam_per
		   SET ctipper = 0,  cvisible = 0
		  WHERE CPARAM = 'PER_ING_TARJPROF';
		   --
   COMMIT;
   END;
/
