----- 29/01/2020 JRVG
update map_tabla mt 
set mt.tfrom = '(select decode(pp.sperson,pp.sperson_deud,lpad((nvl(pp.sperson_deud,pp.sperson)), 10, 0),nvl(pp.sperson_deud,pp.sperson)) linea
from per_personas pp where sperson in (select p.sperson_rel linea from per_pagador_alt p where p.sperson = pac_map.f_valor_parametro(''|'',''#lineaini'',101,''#cmapead'')and p.cestado = 1))',
mt.tdescrip = 'PAGADORES'
where mt.ctabla = 101707;

update map_tabla mt 
set mt.tfrom = '(SELECT pac_isqlfor.f_pais_abreviatura((select (d.cpais) 
from per_detper d 
where d.sperson = a.sperson)) || ''|'' || NULL || ''|'' || a.cprefix||a.tvalcon || ''|'' || DECODE(a.ctipcon, 6,3, NULL) as linea 
FROM per_contactos a
WHERE a.sperson = pac_map.f_valor_parametro(''|'',''#lineaini'',101,''#cmapead'') 
AND a.ctipcon IN (1, 6))',
mt.tdescrip = 'TELEFONOS'
where mt.ctabla = 101702;

commit;
/