/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script borra de la tabla DETVALORES_DEP para algunos atributos.          
********************************************************************************************************************** */
   DECLARE 
   V_EMPRESA             SEGUROS.CEMPRES%TYPE := 24;
   v_contexto            NUMBER; 
   BEGIN 
      SELECT pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(v_empresa, 'USER_BBDD')) INTO v_contexto   
        FROM DUAL; 

	     --
         DELETE FROM DETVALORES_DEP d
			WHERE d.CEMPRES = 24
			AND d.CVALOR = 85
			AND d.CATRIBU = 1
			AND d.CVALORDEP = 672
			AND d.CATRIBUDEP in (38, 44);
		 --
   COMMIT;
   END;
/
