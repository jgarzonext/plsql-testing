--Actualizacion query tag bancos
update map_tabla
set tfrom = '(SELECT pac_isqlfor.f_pais_abreviatura(d.cpais) || ''|'' || t.cbanco || ''|'' || substr(p.cbancar,5,16) || ''|'' || d.tnombre1 || ''|'' || DECODE(t.ctipcc, 1, 02, 3, 01, NULL) || ''|'' || ''X'' || ''|'' || ''X'' linea
FROM per_ccc p, tipos_cuenta t, per_detper d WHERE p.sperson = pac_map.f_valor_parametro(''|'',''#lineaini'',101,''#cmapead'') AND p.ctipban = t.ctipban AND p.sperson = d.sperson AND pac_ccc.f_estarjeta(t.ctipcc, t.ctipban) = 0 )'
where ctabla = 101703;