insert into map_xml values ('I031S', 'intermediario', 3, 'tipoInterm', null, null, 232);
insert into map_xml values ('I031S', 'intermediario', 4, 'Regimen', null, null, 233);
commit;
insert into map_detalle values ('I031S', 232, 1,2, 'tipoInterm');
insert into map_detalle values ('I031S', 233, 1,3, 'Regimen');
commit;
insert into map_det_tratar values ('I031S', 0,0,1, 'tipoInterm', 1, null, 232, 'E');
insert into map_det_tratar values ('I031S', 0,0,1, 'Regimen', 1, null, 233, 'E');
commit;
update map_tabla
set tfrom = '(select  a.sperson|| ''|'' ||b.ppartici|| ''|'' ||decode(a.ctipage, 3, ''A'', 5,''A'',6,''A'',7,''A'',4,''C'') linea																																						
      from agentes a, age_corretaje b																																						
   where a.cagente = b.cagente																																						
     and b.sseguro  = (select sseguro 																																						
                              from seguros 																																						
                              where npoliza = (SELECT TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 259, 19))																																						
                                                       FROM contab_asient_interf a																																						
                                                      WHERE (   a.idpago = pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') OR pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL ) 																																						
                                                      AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf) 																																						
													  and rownum = 1))																									
     and AXIS.ff_buscadatosIndSAP (2,(select sseguro from seguros where npoliza = (SELECT TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 259, 19))																																						
                                                                                                                                   FROM contab_asient_interf a																																						
                                                                                                                                   WHERE (   a.idpago = pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') OR pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL ) 																																						
                                                                                                                                   AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf) 																																						
																																   and rownum = 1))    ) <> 0						
     UNION																																						
     select a.sperson|| ''|'' ||100|| ''|'' ||decode(a.ctipage, 3, ''A'', 5,''A'',6,''A'',7,''A'',4,''C'')  linea  																																						
     from agentes a																																						
     where a.cagente = (select b.cagente from seguros b where b.sseguro =  (select sseguro 																																						
                              from seguros 																																						
                              where npoliza = (SELECT TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 259, 19))																																						
                                                       FROM contab_asient_interf a																																						
                                                      WHERE (   a.idpago = pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') OR pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL ) 																																						
                                                      AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf) 																																						
													  and rownum = 1))                 )  																									
             and AXIS.ff_buscadatosIndSAP (2,(select sseguro from seguros where npoliza = (SELECT TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 259, 19))																																						
                                                                                                                                   FROM contab_asient_interf a																																						
                                                                                                                                   WHERE (   a.idpago = pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') OR pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL ) 																																						
                                                                                                                                   AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf)																																						
																																	and rownum = 1	 ))    ) = 0    )	'
where ctabla = 100314
and tdescrip = 'INTERMEDIARIOS';
commit;																																	
