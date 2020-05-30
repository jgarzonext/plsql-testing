-- 2020/01/14  JRV

update map_tabla mt 
set mt.tfrom = '(SELECT pac_isqlfor.f_pais_abreviatura((select (d.cpais) 
from per_detper d 
where d.sperson = a.sperson)) || ''|'' || NULL || ''|'' || a.cprefix||a.tvalcon || ''|'' || DECODE(a.ctipcon, 6,NULL, NULL) as linea 
FROM per_contactos a
WHERE a.sperson = pac_map.f_valor_parametro(''|'',''#lineaini'',101,''#cmapead'') 
AND a.ctipcon IN (1, 6))',
mt.tdescrip = 'TELEFONOS'
where mt.ctabla = 101702;

commit;
/
