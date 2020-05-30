ALTER TABLE per_agr_marcas DISABLE CONSTRAINT per_agr_marcas_agr_marcas_fk;
/


DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	
	DELETE agr_marcas WHERE cmarca IN ('0067', '0200', '0201', '0202');
    
    INSERT INTO agr_marcas(cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, cconsorcio, casegurado, ccodeudor, cbenef, caccionista, cintermed, crepresen, capoderado, cpagador, cproveedor, cuser, falta) 
		VALUES (24, '0067', 'Situación Financiera Deteriorada', 0, 5, 89907048, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO agr_marcas(cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, cconsorcio, casegurado, ccodeudor, cbenef, caccionista, cintermed, crepresen, capoderado, cpagador, cproveedor, cuser, falta) 
        VALUES(24, '0200', 'Grupos Económicos Bloqueados', 0, 5, 89907049, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO agr_marcas(cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, cconsorcio, casegurado, ccodeudor, cbenef, caccionista, cintermed, crepresen, capoderado, cpagador, cproveedor, cuser, falta) 
        VALUES(24, '0201', 'Grupos Económicos Restringidos', 0, 5, 89907049, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO agr_marcas(cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, cconsorcio, casegurado, ccodeudor, cbenef, caccionista, cintermed, crepresen, capoderado, cpagador, cproveedor, cuser, falta) 
        VALUES(24, '0202', 'Grupos Económicos con Alerta', 0, 5, 89907049, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, f_user, f_sysdate);
	
    
	COMMIT;
	
END;
/


ALTER TABLE per_agr_marcas ENABLE CONSTRAINT per_agr_marcas_agr_marcas_fk;
/
