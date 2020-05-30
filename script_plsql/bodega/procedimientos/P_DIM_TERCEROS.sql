CREATE OR REPLACE PROCEDURE P_DIM_TERCEROS IS 

	v_tercero_id	NUMBER;
	cont 			NUMBER;
	
	CURSOR cur_terceros IS
		SELECT /*+ INDEX_JOIN(PP) */ DISTINCT 
			axis.ff_desvalorfijo(724, 8, pr.ctippro) TER_ROLE_TERCERO, 
			axis.pac_isqlfor.f_persona(NULL, NULL, pp.sperson) TER_NOM_TERCERO, 
			axis.pac_isqlfor.f_dades_persona(pp.sperson, 8, 8, 'POL', NULL) TER_DOC_IDENT, 
			axis.pac_isqlfor.f_dades_persona(pp.sperson, 1, 8, 'POL', NULL) TER_NUM_DOC_IDENT, 
			DECODE(pr.ctippro, 1, 11, 6, 12, '') TER_CODROL, 
			pp.sperson TER_PERSONA 
		FROM axis.sin_prof_rol pr 
			INNER JOIN axis.sin_prof_profesionales pp 
				ON pr.sprofes = pp.sprofes + 0 
		ORDER BY pp.sperson DESC;

BEGIN

	SELECT MAX(tercero_id) INTO v_tercero_id FROM dim_terceros;
	
	FOR reg IN cur_terceros LOOP
	
		BEGIN
			SELECT COUNT(*)
			INTO cont
			FROM dim_terceros
			WHERE ter_num_doc_ident = reg.ter_num_doc_ident
			AND ter_codrol = reg.ter_codrol;
		EXCEPTION WHEN OTHERS THEN
			cont := 0;
		END;
		
		IF cont = 0 THEN
			
			v_tercero_id := v_tercero_id + 1;
			
			INSERT INTO dim_terceros(tercero_id, ter_role_tercero, ter_nom_tercero, ter_doc_ident, ter_num_doc_ident, ter_codrol, fecha_registro, estado, ter_persona)
				VALUES (v_tercero_id, reg.ter_role_tercero, reg.ter_nom_tercero, reg.ter_doc_ident, reg.ter_num_doc_ident, reg.ter_codrol, TRUNC(sysdate), 'ACTIVO', reg.ter_persona);
		
		END IF;
		
	END LOOP;
	
	COMMIT;

END P_DIM_TERCEROS;
/