--Actualizacion tabla MAP_TABLA
--Actualizacion query tag indicadores
update map_tabla
set tfrom = '(select a.ccindid || ''|'' || a.cindsap || ''|'' || d.cregfiscal || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL linea
from tipos_indicadores a, per_personas b, per_indicadores c, per_regimenfiscal d
where b.sperson = pac_map.f_valor_parametro(''|'',''#lineaini'',101,''#cmapead'') AND c.sperson(+) = b.sperson AND c.ctipind = a.ctipind AND d.sperson(+) = b.sperson)'
where ctabla = 101705;
