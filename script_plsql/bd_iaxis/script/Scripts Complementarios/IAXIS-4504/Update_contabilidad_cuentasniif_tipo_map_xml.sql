
DECLARE
   --
   consulta  CLOB;
   --
BEGIN
   --
   consulta := '(select (ff_buscadatosIndSAP(3, (select sseguro from seguros where npoliza = (SELECT TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 259, 19))
FROM contab_asient_interf a
WHERE (a.idpago = pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'')            
OR pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL)            
AND a.sinterf = pac_map.f_valor_parametro (''|'', ''#lineaini'', 10, ''#cmapead'')            
AND a.ttippag = pac_map.f_valor_parametro (''|'', ''#lineaini'', 12, ''#cmapead'')
and a.ccuenta not in (''163040'',''192515'',''282005'',''515210'',''830505'',''819595'',''515225'',''512105'',''167688'',''255288'')
and rownum = 1
AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf))
)))
||decode((SELECT SUBSTR (a.otros, 0, 3)
FROM contab_asient_interf a
WHERE (a.idpago = pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'')            
OR pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL)            
AND a.sinterf = pac_map.f_valor_parametro (''|'', ''#lineaini'', 10, ''#cmapead'')            
AND a.ttippag = pac_map.f_valor_parametro (''|'', ''#lineaini'', 12, ''#cmapead'')
and a.ccuenta not in (''163040'',''192515'',''282005'',''515210'',''830505'',''819595'',''515225'',''512105'',''167688'',''255288'')
and rownum = 1),262,2,'''') linea from dual)';
   --
   UPDATE  map_tabla  
      SET tfrom = consulta 
    WHERE ctabla  = 100313;
   --
   update cuentasniif_tipo
      set tipo = 'D'
    where cta_niif in (2552880100,5121050101);
   --
   
   --
   update map_xml set ctablafills=null where ttag like 'nroSiniestro' AND TPARE='detalle';
   --
COMMIT; 
--
END;
/
