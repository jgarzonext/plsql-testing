/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script inserta y actualiza en la tabla DETVALORES para algunos valores del cvalor 1045.          
********************************************************************************************************************** */
   DECLARE 
   V_EMPRESA             SEGUROS.CEMPRES%TYPE := 24;
   v_contexto            NUMBER; 
   BEGIN 
      SELECT pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(v_empresa, 'USER_BBDD')) INTO v_contexto   
        FROM DUAL; 

	     --
         delete from DETVALORES d
          where d.CVALOR = 1045
          and d.CATRIBU = 13;

        insert into detvalores (cvalor, cidioma, catribu, tatribu)
			values (1045, 8, 13, 'Régimen Personas del exterior');
		insert into detvalores (cvalor, cidioma, catribu, tatribu)
			values (1045, 1, 13, 'Régimen Personas del exterior');
		insert into detvalores (cvalor, cidioma, catribu, tatribu)
			values (1045, 2, 13, 'Régimen Personas del exterior');

		update DETVALORES d
			set d.TATRIBU = 'Régimen simplificado'
		  where d.CVALOR = 1045
		  and d.CATRIBU = 1
		  and d.CIDIOMA = 8;

		update DETVALORES d
			set d.TATRIBU = 'Régimen Común'
		  where d.CVALOR = 1045
		  and d.CATRIBU = 2
		  and d.CIDIOMA = 8;

		update DETVALORES d
			set d.TATRIBU = 'Régimen Gran contribuyente'
		  where d.CVALOR = 1045
		  and d.CATRIBU = 4
		  and d.CIDIOMA = 8;

		update DETVALORES d
			set d.TATRIBU = 'Régimen Común, Auto-retenedor'
		  where d.CVALOR = 1045
		  and d.CATRIBU = 6
		  and d.CIDIOMA = 8;

		update DETVALORES d
			set d.TATRIBU = 'Régimen Gran contribuyente, Auto-retenedor'
		  where d.CVALOR = 1045
		  and d.CATRIBU = 8
		  and d.CIDIOMA = 8;

		update DETVALORES d
			set d.TATRIBU = 'Régimen Especial'
		  where d.CVALOR = 1045
		  and d.CATRIBU = 10
		  and d.CIDIOMA = 8;

		update DETVALORES d
			set d.TATRIBU = 'Régimen Empresa del estado'
		  where d.CVALOR = 1045
		  and d.CATRIBU = 11
		  and d.CIDIOMA = 8;

		update DETVALORES d
			set d.TATRIBU = 'Régimen Empresas del exterior'
		  where d.CVALOR = 1045
		  and d.CATRIBU = 12
		  and d.CIDIOMA = 8;
		 --
   COMMIT;
   END;
/
