/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script inserta en la tabla regimen_fiscal.          
********************************************************************************************************************** */
   DECLARE 
   V_EMPRESA             SEGUROS.CEMPRES%TYPE := 24;
   v_contexto            NUMBER; 
   BEGIN 
      SELECT pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(v_empresa, 'USER_BBDD')) INTO v_contexto   
        FROM DUAL; 

	     --
		 delete from regimen_fiscal
		   where ctipper = 1
		   and cregfiscal = 13;
		 
         insert into regimen_fiscal (ctipper, cregfiscal)
			values (1, 13);
		 --
   COMMIT;
   END;
/
