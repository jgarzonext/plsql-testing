DECLARE
	v_contexto NUMBER := 0;
BEGIN

    v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
    
    DELETE per_agr_marcas WHERE cmarca IN ('0043', '0044', '0068', '0098', '0110');
	
	DELETE agr_marcas;
	
	INSERT INTO agr_marcas (cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, casegurado, cbenef, cintermed, cconsorcio, cproveedor, ccodeudor, caccionista, crepresen, capoderado, cpagador, cuser, falta) 
		VALUES (24, '0025', 'Alta Siniestralidad', 1, 3, 9909340, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, f_user, f_sysdate);
	INSERT INTO agr_marcas (cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, casegurado, cbenef, cintermed, cconsorcio, cproveedor, ccodeudor, caccionista, crepresen, capoderado, cpagador, cuser, falta) 
		VALUES (24, '0011', 'Bridger', 0, 4, 9909337,  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, f_user, f_sysdate);
	INSERT INTO agr_marcas (cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, casegurado, cbenef, cintermed, cconsorcio, cproveedor, ccodeudor, caccionista, crepresen, capoderado, cpagador, cuser, falta) 
		VALUES (24, '0099', 'Cartera Castigada (Deudas confisco)', 1, 1, 9909338, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO agr_marcas (cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, casegurado, cbenef, cintermed, cconsorcio, cproveedor, ccodeudor, caccionista, crepresen, capoderado, cpagador, cuser, falta) 
		VALUES (24, '0033', 'Cartera Primera Alerta', 0, 5, 9909338, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO agr_marcas (cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, casegurado, cbenef, cintermed, cconsorcio, cproveedor, ccodeudor, caccionista, crepresen, capoderado, cpagador, cuser, falta) 
		VALUES (24, '0031', 'Cartera Segunda Alerta ', 1, 1, 9909338, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO agr_marcas (cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, casegurado, cbenef, cintermed, cconsorcio, cproveedor, ccodeudor, caccionista, crepresen, capoderado, cpagador, cuser, falta) 
		VALUES (24, '0101', 'Casos Críticos y/o Especiales por sus antecedentes para pago de contado', 1, 1, 9909338, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO agr_marcas (cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, casegurado, cbenef, cintermed, cconsorcio, cproveedor, ccodeudor, caccionista, crepresen, capoderado, cpagador, cuser, falta) 
		VALUES (24, '0032', 'Cheque devuelto', 1, 1, 9909338, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO agr_marcas (cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, casegurado, cbenef, cintermed, cconsorcio, cproveedor, ccodeudor, caccionista, crepresen, capoderado, cpagador, cuser, falta) 
		VALUES (24, '0041', 'Clientes PEP', 0, 8, 9909336, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, f_user, f_sysdate);
	INSERT INTO agr_marcas (cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, casegurado, cbenef, cintermed, cconsorcio, cproveedor, ccodeudor, caccionista, crepresen, capoderado, cpagador, cuser, falta) 
		VALUES (24, '0049', 'Formulario de Conocimiento del Cliente Desactualizado', 0, 5, 9909331, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO agr_marcas (cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, casegurado, cbenef, cintermed, cconsorcio, cproveedor, ccodeudor, caccionista, crepresen, capoderado, cpagador, cuser, falta) 
		VALUES (24, '0052', 'Formulario de Conocimiento del Cliente Devuelto', 0, 5, 9909335, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO agr_marcas (cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, casegurado, cbenef, cintermed, cconsorcio, cproveedor, ccodeudor, caccionista, crepresen, capoderado, cpagador, cuser, falta) 
		VALUES (24, '0048', 'Formulario de Conocimiento del Cliente Pendiente', 0, 5, 9909332, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO agr_marcas (cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, casegurado, cbenef, cintermed, cconsorcio, cproveedor, ccodeudor, caccionista, crepresen, capoderado, cpagador, cuser, falta) 
		VALUES (24, '0113', 'Ley de insolvencia', 0, 7, 89906215, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO agr_marcas (cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, casegurado, cbenef, cintermed, cconsorcio, cproveedor, ccodeudor, caccionista, crepresen, capoderado, cpagador, cuser, falta) 
		VALUES (24, '0066', 'Monitoreo Analista de Clientes', 0, 7, 89906216, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, f_user, f_sysdate);
	INSERT INTO agr_marcas (cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, casegurado, cbenef, cintermed, cconsorcio, cproveedor, ccodeudor, caccionista, crepresen, capoderado, cpagador, cuser, falta) 
		VALUES (24, '0026', 'Monitoreo Indemnizaciones', 1, 3, 9909340, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO agr_marcas (cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, casegurado, cbenef, cintermed, cconsorcio, cproveedor, ccodeudor, caccionista, crepresen, capoderado, cpagador, cuser, falta) 
		VALUES (24, '0045', 'Pendiente Contragarantía', 0, 5, 89906217, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO agr_marcas (cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, casegurado, cbenef, cintermed, cconsorcio, cproveedor, ccodeudor, caccionista, crepresen, capoderado, cpagador, cuser, falta) 
		VALUES (24, '0015', 'Política de suscripción', 0, 5, 9909339, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO agr_marcas (cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, casegurado, cbenef, cintermed, cconsorcio, cproveedor, ccodeudor, caccionista, crepresen, capoderado, cpagador, cuser, falta) 
		VALUES (24, '0020', 'Retención de primas', 1, 2, 89906218, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO agr_marcas (cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, casegurado, cbenef, cintermed, cconsorcio, cproveedor, ccodeudor, caccionista, crepresen, capoderado, cpagador, cuser, falta) 
		VALUES (24, '0201', 'Scoring perfil de riesgo alto', 0, 8, NULL, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO agr_marcas (cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, casegurado, cbenef, cintermed, cconsorcio, cproveedor, ccodeudor, caccionista, crepresen, capoderado, cpagador, cuser, falta) 
		VALUES (24, '0200', 'Scoring perfil de riesgo extremo ', 2, 4, NULL, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO agr_marcas (cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, casegurado, cbenef, cintermed, cconsorcio, cproveedor, ccodeudor, caccionista, crepresen, capoderado, cpagador, cuser, falta) 
		VALUES (24, '0050', 'Tercero Incluido en lista Internacional (Clinton/ONU/Otras)', 2, 4, 9909334, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, f_user, f_sysdate);
	INSERT INTO agr_marcas (cempres, cmarca, descripcion, caacion, carea, slitera, ctomador, casegurado, cbenef, cintermed, cconsorcio, cproveedor, ccodeudor, caccionista, crepresen, capoderado, cpagador, cuser, falta) 
		VALUES (24, '0040', 'Tercero Incluido en lista Local', 0, 5, 9909333, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, f_user, f_sysdate);
    
    COMMIT;
	
END;