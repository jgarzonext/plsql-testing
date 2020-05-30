DECLARE
	
	v_contexto NUMBER := 0;
	v_select   VARCHAR2(4000) := "BEGIN
   SELECT COUNT (1)
     INTO :mi_cambio
     FROM ((SELECT c.cagente, c.ppartici, c.pcomisi, c.islider
              FROM age_corretaje c
             WHERE c.sseguro = :pssegpol
               AND c.nmovimi = (SELECT MAX(c1.nmovimi)
                                FROM age_corretaje c1
                               WHERE c1.sseguro = c.sseguro)
            MINUS
            SELECT c.cagente, c.ppartici, c.pcomisi, c.islider
              FROM estage_corretaje c
             WHERE c.sseguro = :psseguro
               AND c.nmovimi = :pnmovimi)
           UNION
           (SELECT c.cagente, c.ppartici, c.pcomisi, c.islider
              FROM estage_corretaje c
             WHERE c.sseguro = :psseguro
               AND c.nmovimi = :pnmovimi
            MINUS
            SELECT c.cagente, c.ppartici, c.pcomisi, c.islider
              FROM age_corretaje c
             WHERE c.sseguro = :pssegpol
               AND c.nmovimi = (SELECT MAX(c1.nmovimi)
                                FROM age_corretaje c1
                               WHERE c1.sseguro = c.sseguro))); END;"
	
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
		
	-- Movimientos cocorretaje
	DELETE pds_supl_validacio where cconfig = 'conf_825_80007_suplemento_tf' and nselect = 1;
	DELETE pds_supl_validacio where cconfig = 'conf_825_80008_suplemento_tf' and nselect = 1;
	DELETE pds_supl_validacio where cconfig = 'conf_825_80009_suplemento_tf' and nselect = 1;
	DELETE pds_supl_validacio where cconfig = 'conf_825_80010_suplemento_tf' and nselect = 1;
	
	
	-- Movimientos cocorretaje
	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_825_80007_suplemento_tf', 1, v_select);
	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_825_80008_suplemento_tf', 1, v_select);
	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_825_80009_suplemento_tf', 1, v_select);
	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_825_80010_suplemento_tf', 1, v_select);
	
	
	COMMIT;
	
END;
/
