update map_tabla mt 
set mt.tfrom = 
'(SELECT pac_isqlfor_conf.f_grupo_cuentas(pac_map.f_valor_parametro(''|'',''#lineaini'',102,''#cmapead''), p.sperson) || ''|'' || 1000 || ''|'' || pac_isqlfor_conf.f_num_cuenta(pac_map.f_valor_parametro(''|'',''#lineaini'',102,''#cmapead''), p.sperson) || ''|'' || DECODE(p.CTIPIDE, 37, SUBSTR(p.nnumide, 1, 9), p.nnumide) || ''|'' || SUBSTR(d.tnombre || '' '' || d.tapelli1 || '' '' || d.tapelli2, 1, 40) || ''|'' || CASE WHEN length(d.tnombre || '' '' || d.tapelli1 || '' '' || d.tapelli2) > 40 THEN SUBSTR(d.tnombre || '' '' || d.tapelli1 || '' '' || d.tapelli2, 41) ELSE NULL END || ''|'' || CASE WHEN p.ctipper = 1 THEN DECODE(p.ctipper,1,d.tnombre1 || DECODE(d.tnombre2, NULL, '''', '','' || d.tnombre2),NULL) ELSE SUBSTR(d.tapelli1,1, 39) END || ''|'' || DECODE(p.ctipper, 1, d.tapelli1 || DECODE(d.tapelli2, NULL, '''', '','' || d.tapelli2), SUBSTR(d.tapelli1,1, 39)) || ''|'' || REPLACE(substr(c.tdomici,1,59), '''''''') || ''|'' || NULL || ''|'' ||  pac_isqlfor.f_poblacion(p.sperson, c.cdomici) || ''|'' || NULL || ''|'' || pac_isqlfor.f_pais_abreviatura(d.cpais) || ''|'' || TO_CHAR(LPAD(c.cprovin, 2, 0)) || ''|'' || ''S'' || ''|'' || CASE WHEN p.ctipide in (36) THEN p.nnumide || p.tdigitoide ELSE p.nnumide END || ''|'' || NULL || ''|'' || pac_isqlfor_conf.f_num_cuenta(pac_map.f_valor_parametro(''|'',''#lineaini'',102,''#cmapead''), p.sperson) || ''|'' || pac_isqlfor_conf.f_grupo_cuentas(pac_map.f_valor_parametro(''|'',''#lineaini'',102,''#cmapead''), p.sperson) || ''|'' || p.sperson || ''|'' || (SELECT concat(''Z'', lpad(nvalpar, 3, 0)) FROM per_parpersonas pp WHERE pp.cagente = p.cagente AND pp.sperson = p.sperson AND pp.cparam = ''COND_PAGO'') || ''|'' || (SELECT concat(''Z'', lpad(nvalpar, 3, 0)) FROM per_parpersonas pp WHERE pp.cagente = p.cagente AND pp.sperson = p.sperson AND pp.cparam = ''COND_PAGO_ABONO'') || ''|'' || pac_isqlfor_conf.f_vias_pago(pac_map.f_valor_parametro(''|'',''#lineaini'',102,''#cmapead''), p.sperson) || ''|'' || NULL || ''|'' || CASE WHEN (SELECT COUNT(*) FROM lre_personas l WHERE p.nnumide = l.nnumide) > 0 THEN ''X'' ELSE NULL END || ''|'' || CASE WHEN (SELECT COUNT(*) FROM lre_personas l WHERE p.nnumide = l.nnumide) > 0 THEN ''X'' ELSE NULL END || ''|'' || (SELECT cvalemp FROM int_codigos_emp pp WHERE pp.cvalaxis = p.ctipide AND pp.ccodigo = ''TIPOIDEN_FICLISEXT'') || ''|'' || DECODE(p.ctipper, 1, ''PN'', 2, ''PJ'') || ''|'' || DECODE(pac_map.f_valor_parametro(''|'',''#lineaini'',104,''#cmapead''), ''1'', p.nnumide || p.tdigitoide, ''X'') || ''|'' ||  NULL || ''|'' || ''X'' || ''|'' || CASE WHEN LENGTH(TO_CHAR(f.cciiu)) < 5 THEN LPAD(f.cciiu, 4, 0) ELSE TO_CHAR(f.cciiu) END || ''|'' || (SELECT tvalpar FROM per_parpersonas pp WHERE pp.cagente = p.cagente AND pp.sperson = p.sperson AND pp.cparam = ''CODIGO_GARMIN'') || ''|'' || (SELECT tvalpar FROM per_parpersonas pp WHERE pp.cagente = p.cagente AND pp.sperson = p.sperson AND pp.cparam = ''BRIGDER'') || ''|'' || (SELECT fvalpar FROM per_parpersonas pp WHERE pp.cagente = p.cagente AND pp.sperson = p.sperson AND pp.cparam = ''BRIGDER_FI'') || ''|'' || (SELECT fvalpar FROM per_parpersonas pp WHERE pp.cagente = p.cagente AND pp.sperson = p.sperson AND pp.cparam = ''BRIGDER_FF'') || ''|'' || DECODE(s.cauttradat, 1, ''SI'', ''NO'') || ''|'' || NULL || ''|'' || (SELECT DECODE(tvalpar, 1, ''X'', NULL) FROM per_parpersonas pp WHERE pp.cagente = p.cagente AND pp.sperson = p.sperson AND pp.cparam = ''EXEN_CIRCULAR'') || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL linea FROM per_personas p, per_detper d, lre_personas l, fin_general f, per_direcciones c, datsarlatf s WHERE p.sperson = pac_map.f_valor_parametro(''|'',''#lineaini'',101,''#cmapead'') AND d.sperson(+) = p.sperson AND f.sperson(+) = p.sperson AND c.sperson(+) = p.sperson AND c.cdomici(+) = 1 AND l.nnumide(+) = p.nnumide AND (S.SPERSON(+) = P.SPERSON and ROWNUM =1))'
where ctabla = 101700;

Commit;
/