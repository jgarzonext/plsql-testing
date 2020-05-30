///////////////////////////////////////
--modificacion table map_tabla
--cabecera
update map_tabla
set tfrom = '( SELECT	
    linea	
FROM	
    (	
        SELECT substr(otros,1,3)	
             || ''|''	
             || ''|''	
             || TO_CHAR(fconta,''yyyy-MM-dd'')	
             || ''|''	
             || TRIM(LEADING ''0'' FROM substr(otros,4,4) )	
             || ''|''	
             || TO_CHAR(fefeadm,''yyyy-MM-dd'')	
             || ''|''	
             || TRIM(LEADING ''0'' FROM substr(otros,9,4) )	
             || ''|''	
             || idpago|| (select substr(a.rowid, -2,2 ) from contab_asient_interf a where a.idpago = c.idpago and a.ccuenta = 282005)	
             || ''|''	
             || idpago|| (select substr(a.rowid, -2,2 ) from contab_asient_interf a where a.idpago = c.idpago and a.ccuenta = 282005)	
             || ''|''	
             || NULL	
             || ''|''	
             || TRIM(LEADING ''0'' FROM substr(otros,14,4) )	
             || ''|''	
             || NULL	
             || ''|''	
             || NULL	
             || ''|''	
             || tlibro	
             || ''|''	
             || TRIM(LEADING ''0'' FROM substr(otros,18,15) )	
             || ''|''	
             || decode (pac_eco_tipocambio.f_cambio((SELECT ec.cmoneda  FROM monedas m, eco_codmonedas ec WHERE m.cidioma = 8 AND m.cmonint = ec.cmoneda AND m.cmoneda = (SELECT cmoneda FROM codidivisa WHERE cdivisa = (select cdivisa from productos where sproduc = (select sproduc from seguros WHERE SSEGURO = (select sseguro from seguros where npoliza = TRIM (LEADING ''0'' FROM SUBSTR (otros, 259, 19))))))), TRIM(LEADING ''0'' FROM substr(otros,9,4) ), fefeadm), 1, NULL, pac_eco_tipocambio.f_cambio((SELECT ec.cmoneda  FROM monedas m, eco_codmonedas ec WHERE m.cidioma = 8 AND m.cmonint = ec.cmoneda AND m.cmoneda = (SELECT cmoneda FROM codidivisa WHERE cdivisa = (select cdivisa from productos where sproduc = (select sproduc from seguros WHERE SSEGURO = (select sseguro from seguros where npoliza = TRIM (LEADING ''0'' FROM SUBSTR (otros, 259, 19))))))), TRIM(LEADING ''0'' FROM substr(otros,9,4) ), fefeadm))	
             || ''|''	
             ||decode ((SELECT ec.cmoneda  FROM monedas m, eco_codmonedas ec WHERE m.cidioma = pac_md_common.f_get_cxtidioma AND m.cmonint = ec.cmoneda AND m.cmoneda = (SELECT cmoneda FROM codidivisa WHERE cdivisa = (select cdivisa from productos where sproduc = (select sproduc from seguros WHERE SSEGURO = (select sseguro from seguros where npoliza = TRIM (LEADING ''0'' FROM SUBSTR (otros, 259, 19))))))), ''COP'', NULL,  DECODE((SELECT ec.cmoneda  FROM monedas m, eco_codmonedas ec WHERE m.cidioma = pac_md_common.f_get_cxtidioma AND m.cmonint = ec.cmoneda AND m.cmoneda = (SELECT cmoneda FROM codidivisa WHERE cdivisa = (select cdivisa from productos where sproduc = (select sproduc from seguros WHERE SSEGURO = (select sseguro from seguros where npoliza = TRIM (LEADING ''0'' FROM SUBSTR (otros, 259, 19))))))),''EUR'',''USD'',''USD''))	
             || ''|''	
             || TRIM(LEADING ''0'' FROM substr(otros,57,13) ) linea	
        FROM	
            contab_asient_interf c	
        WHERE	
            (	
                    idpago = pac_map.f_valor_parametro(	
                        ''|'',	
                        ''#lineaini'',	
14,	
                        ''#cmapead''	
                    )	
                OR	
                    pac_map.f_valor_parametro(	
                        ''|'',	
                        ''#lineaini'',	
14,	
                        ''#cmapead''	
                    ) IS NULL	
            ) AND	
                sinterf = pac_map.f_valor_parametro(	
                    ''|'',	
                    ''#lineaini'',	
10,	
                    ''#cmapead''	
                )	
            AND	
                ttippag = pac_map.f_valor_parametro(	
                    ''|'',	
                    ''#lineaini'',	
12,	
                    ''#cmapead''	
                )	
        ORDER BY fefeadm	
    ) a	
WHERE	
    ROWNUM = 1	)'
where ctabla = 100311
and tdescrip = 'CABECERA';
commit;
--detalle
update map_tabla
set tfrom = '(select (SELECT TIPLIQ FROM axis.TIPO_LIQUIDACION WHERE CUENTA =  ccuenta || ccoletilla) || ''|'' || NULL || ''|'' || NULL || ''|'' || iapunte || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, axis.ff_buscadatosSAP(10,ccuenta || ccoletilla), 2)) || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || SUBSTR(otros, axis.ff_buscadatosSAP(1,ccuenta || ccoletilla), 4) || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, axis.ff_buscadatosSAP(8,ccuenta || ccoletilla), 1)) || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 156, 2)) || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 158, 23)) || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 181, 23)) || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 154, 2)) || ''|'' || NULL || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 222, 10)) || ''|'' || NULL || ''|'' || SUBSTR(otros, axis.ff_buscadatosSAP(2,ccuenta || ccoletilla), 4) || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, axis.ff_buscadatosSAP(3,ccuenta || ccoletilla), 10)) || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || tapunte || ''|'' || NULL || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, axis.ff_buscadatosSAP(4,ccuenta || ccoletilla), 10)) || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, axis.ff_buscadatosSAP(5,ccuenta || ccoletilla), 20)) || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, axis.ff_buscadatosSAP(6,ccuenta || ccoletilla), 2)) || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, axis.ff_buscadatosSAP(7,ccuenta || ccoletilla), 18)) || ''|'' || TO_CHAR(fefeadm, ''yyyy-mm-dd'') || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 298, 15)) || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 313, 10)) || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 323, 1)) || ''|'' || NULL || ''|'' || PAC_ADM.F_GET_POSICION_RETAPLICA_SAP(TRIM(leading ''0'' FROM SUBSTR(otros, 324, 17))) || ''|'' || NULL || ''|'' || NULL linea FROM contab_asient_interf WHERE (idpago = pac_map.f_valor_parametro(''|'', ''#lineaini'', 14, ''#cmapead'') OR pac_map.f_valor_parametro(''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL) AND sinterf = pac_map.f_valor_parametro(''|'', ''#lineaini'', 10, ''#cmapead'') AND ttippag = pac_map.f_valor_parametro(''|'', ''#lineaini'', 12, ''#cmapead'')) '
where ctabla = 100312
and tdescrip = 'DETALLE';
commit;
--porcentajes
update map_tabla
set tfrom = '(select (axis.ff_buscadatosIndSAP(3, (select sseguro from seguros where npoliza = (SELECT TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 259, 19))  						
                                                                                                                           FROM contab_asient_interf a						
                                                                                                                           WHERE (   a.idpago = pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'')						
                                          OR pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL)						
                                        AND a.sinterf = pac_map.f_valor_parametro (''|'', ''#lineaini'', 10, ''#cmapead'')						
                                        AND a.ttippag = pac_map.f_valor_parametro (''|'', ''#lineaini'', 12, ''#cmapead'')						
                                        and a.ccuenta not in (''282005'',''515210'')						
                                        AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf))						
))) linea from dual  )'
where ctabla = 100313
and tdescrip = 'PORCENTAJES';
commit;			
--intermediarios
update map_tabla
set tfrom = '(select  a.sperson|| ''|'' ||b.ppartici linea						
      from agentes a, age_corretaje b						
   where a.cagente = b.cagente						
     and b.sseguro  = (select sseguro 						
                              from seguros 						
                              where npoliza = (SELECT TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 259, 19))						
                                                       FROM contab_asient_interf a						
                                                      WHERE (   a.idpago = pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') OR pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL ) 						
                                                      AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf) ))						
     and AXIS.ff_buscadatosIndSAP (2,(select sseguro from seguros where npoliza = (SELECT TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 259, 19))						
                                                                                                                                   FROM contab_asient_interf a						
                                                                                                                                   WHERE (   a.idpago = pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') OR pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL ) 						
                                                                                                                                   AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf) ))    ) <> 0						
     UNION						
     select  a.sperson|| ''|'' ||100 linea  						
     from agentes a						
     where a.cagente = (select b.cagente from seguros b where b.sseguro =  (select sseguro 						
                              from seguros 						
                              where npoliza = (SELECT TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 259, 19))						
                                                       FROM contab_asient_interf a						
                                                      WHERE (   a.idpago = pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') OR pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL ) 						
                                                      AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf) ))                 )  						
             and AXIS.ff_buscadatosIndSAP (2,(select sseguro from seguros where npoliza = (SELECT TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 259, 19))						
                                                                                                                                   FROM contab_asient_interf a						
                                                                                                                                   WHERE (   a.idpago = pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') OR pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL ) 						
                                                                                                                                   AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf) ))    ) = 0    )'
where ctabla = 100314
and tdescrip = 'INTERMEDIARIOS';
commit;				
--consorcio
update map_tabla
set tfrom = '(select b.sperson_rel|| ''|'' ||b.pparticipacion linea from tomadores a, per_personas_rel b where a.sseguro = ((select sseguro from seguros where npoliza = (SELECT     TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 259, 19))						
						
   FROM contab_asient_interf a						
  WHERE (   a.idpago =						
                  pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'')						
         OR pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL						
        )						
    AND a.sinterf = pac_map.f_valor_parametro (''|'', ''#lineaini'', 10, ''#cmapead'')						
    AND a.ttippag = pac_map.f_valor_parametro (''|'', ''#lineaini'', 12, ''#cmapead'')						
    AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf)))) and a.sperson = b.sperson and a.cagrupa = b.cagrupa )	'
where ctabla = 100315
and tdescrip = 'CONSORCIO';
commit;			
--coaseguro
update map_tabla
set tfrom = '(select a.sperson||''|''||b.pcescoa linea						
from companias a, coacedido b						
where a.ccompani = b.ccompan						
and b.sseguro =  (select sseguro 						
                              from seguros 						
                              where npoliza = (SELECT TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 259, 19))						
                                                       FROM contab_asient_interf a						
                                                      WHERE (   a.idpago = pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') OR pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL ) 						
                                                      AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf) ))						
and AXIS.ff_buscadatosIndSAP (5,(select sseguro from seguros where npoliza = (SELECT TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 259, 19))						
                                                                                                                                   FROM contab_asient_interf a						
                                                                                                                                   WHERE (   a.idpago = pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') OR pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL ) 						
                                                                                                                                   AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf) ))) = 1						
union						
select a.sperson||''|''||(100-b.ploccoa) linea						
from companias a, coacuadro b						
where a.ccompani = b.ccompan						
and b.sseguro =  (select sseguro 						
                              from seguros 						
                              where npoliza = (SELECT TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 259, 19))						
                                                       FROM contab_asient_interf a						
                                                      WHERE (   a.idpago = pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') OR pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL ) 						
                                                      AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf) ))						
and AXIS.ff_buscadatosIndSAP (5,(select sseguro from seguros where npoliza = (SELECT TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 259, 19))						
                                                                                                                                   FROM contab_asient_interf a						
                                                                                                                                   WHERE (   a.idpago = pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') OR pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL ) 						
                                                                                                                                   AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf) ))) = 8 )'
where ctabla = 100316
and tdescrip = 'COASEGUROS';
commit;																																		   
--MODIFICACION TABLA MAP_XML
update map_xml set ttag = 'codEscenario', ctablafills = '' where cmapead = 'I031S' and tpare = 'cabecera' and nordfill = 4 and norden = 102;
update map_xml set ttag = ' ', ctablafills = '' where cmapead = 'I031S' and tpare = 'cabecera' and nordfill = 5 and norden = 103;
update map_xml set ttag = 'fecDoc', ctablafills = '' where cmapead = 'I031S' and tpare = 'cabecera' and nordfill = 6 and norden = 104;
update map_xml set ttag = 'sociedad', ctablafills = '' where cmapead = 'I031S' and tpare = 'cabecera' and nordfill = 7 and norden = 105;
update map_xml set ttag = 'fecContable', ctablafills = '' where cmapead = 'I031S' and tpare = 'cabecera' and nordfill = 8 and norden = 106;
update map_xml set ttag = 'moneda', ctablafills = '' where cmapead = 'I031S' and tpare = 'cabecera' and nordfill = 9 and norden = 107;
update map_xml set ttag = 'refUniPago', ctablafills = '' where cmapead = 'I031S' and tpare = 'cabecera' and nordfill = 10 and norden = 108;
update map_xml set ttag = 'numUnico', ctablafills = '' where cmapead = 'I031S' and tpare = 'cabecera' and nordfill = 11 and norden = 109;
update map_xml set ttag = 'motivoanulacion', ctablafills = '' where cmapead = 'I031S' and tpare = 'cabecera' and nordfill = 12 and norden = 110;
update map_xml set ttag = 'ejercicio', ctablafills = '' where cmapead = 'I031S' and tpare = 'cabecera' and nordfill = 13 and norden = 111;
update map_xml set ttag = 'fecha_base', ctablafills = '' where cmapead = 'I031S' and tpare = 'cabecera' and nordfill = 14 and norden = 112;
update map_xml set ttag = 'compensar', ctablafills = '' where cmapead = 'I031S' and tpare = 'cabecera' and nordfill = 15 and norden = 113;
update map_xml set ttag = 'ledger', ctablafills = '' where cmapead = 'I031S' and tpare = 'cabecera' and nordfill = 16 and norden = 114;
update map_xml set ttag = 'kursf', ctablafills = '' where cmapead = 'I031S' and tpare = 'cabecera' and nordfill = 17 and norden = 115;
update map_xml set ttag = 'tasPac', ctablafills = '' where cmapead = 'I031S' and tpare = 'cabecera' and nordfill = 18 and norden = 116;
update map_xml set ttag = 'monUsd', ctablafills = '' where cmapead = 'I031S' and tpare = 'cabecera' and nordfill = 19 and norden = 117;
update map_xml set ttag = 'origen', ctablafills = '' where cmapead = 'I031S' and tpare = 'cabecera' and nordfill = 20 and norden = 118;
update map_xml set ttag = 'tipoLiquidacion', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 1 and norden = 130;
update map_xml set ttag = 'numdeudorcuenta', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 2 and norden = 131;
update map_xml set ttag = 'monUsd', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 3 and norden = 132;
update map_xml set ttag = 'valor', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 4 and norden = 133;
update map_xml set ttag = 'indicadorIva', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 5 and norden = 134;
update map_xml set ttag = 'importe_iva', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 6 and norden = 135;
update map_xml set ttag = 'importe_iva_cop', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 7 and norden = 136;
update map_xml set ttag = 'importe_base_iva', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 8 and norden = 137;
update map_xml set ttag = 'condPago', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 9 and norden = 138;
update map_xml set ttag = 'fecha_base', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 10 and norden = 139;
update map_xml set ttag = 'viaPago', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 11 and norden = 140;
update map_xml set ttag = 'bloqueo_pago', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 12 and norden = 141;
update map_xml set ttag = 'ind_retencion', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 13 and norden = 142;
update map_xml set ttag = 'baseRet', ctablafills = '0' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 14 and norden = 143;
update map_xml set ttag = 'imp_base_ret_l', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 15 and norden = 144;
update map_xml set ttag = 'imp_retencion', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 16 and norden = 145;
update map_xml set ttag = 'imp_ret_mon_l', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 17 and norden = 146;
update map_xml set ttag = 'grupocentrocosto', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 20 and norden = 149;
update map_xml set ttag = 'centrocosto', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 21 and norden = 150;
update map_xml set ttag = 'centrobeneficio', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 22 and norden = 151;
update map_xml set ttag = 'division', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 23 and norden = 152;
update map_xml set ttag = 'codigomaterial', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 24 and norden = 153;
update map_xml set ttag = 'punto', ctablafills = '0' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 25 and norden = 154;
update map_xml set ttag = 'numpoliza', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 26 and norden = 155;
update map_xml set ttag = 'numsimulacion', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 27 and norden = 156;
update map_xml set ttag = 'cdp', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 28 and norden = 157;
update map_xml set ttag = 'crp', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 29 and norden = 158;
update map_xml set ttag = 'elemento_pep', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 30 and norden = 159;
update map_xml set ttag = 'numinversion', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 31 and norden = 160;
update map_xml set ttag = 'tercero', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 32 and norden = 161;
update map_xml set ttag = 'sucursal', ctablafills = '0' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 33 and norden = 162;
update map_xml set ttag = 'tdescri', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 34 and norden = 163;
update map_xml set ttag = 'deposito', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 35 and norden = 164;
update map_xml set ttag = 'numUnico', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 36 and norden = 165;
update map_xml set ttag = 'poscrp', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 37 and norden = 166;
update map_xml set ttag = 'pospres', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 38 and norden = 167;
update map_xml set ttag = 'cgestor', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 39 and norden = 168;
update map_xml set ttag = 'referencia3', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 40 and norden = 169;
update map_xml set ttag = 'ctabancaria', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 41 and norden = 170;
update map_xml set ttag = 'codbanco', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 42 and norden = 171;
update map_xml set ttag = 'codsucursalbanc', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 43 and norden = 172;
update map_xml set ttag = 'ciudad', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 44 and norden = 173;
update map_xml set ttag = 'pagadorAlt', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 45 and norden = 174;
update map_xml set ttag = 'naturalezaContable', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 46 and norden = 175;
update map_xml set ttag = 'impBaseRetE', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 47 and norden = 176;
update map_xml set ttag = 'impRetMonE', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 48 and norden = 177;
update map_xml set ttag = 'segmento', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 49 and norden = 178;
update map_xml set ttag = 'referencia1', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 50 and norden = 179;
update map_xml set ttag = 'referencia2', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 51 and norden = 180;
update map_xml set ttag = 'zzcliente', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 52 and norden = 181;
update map_xml set ttag = 'zzproved', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 53 and norden = 182;
update map_xml set ttag = 'poliza', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 54 and norden = 183;
update map_xml set ttag = 'region', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 55 and norden = 184;
update map_xml set ttag = 'producto', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 56 and norden = 185;
update map_xml set ttag = 'fecIniPol', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 57 and norden = 186;
update map_xml set ttag = 'siniestro', ctablafills = '0' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 58 and norden = 187;
update map_xml set ttag = 'certificado', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 59 and norden = 188;
update map_xml set ttag = 'posicion', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 60 and norden = 189;
update map_xml set ttag = 'compensar', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 61 and norden = 190;
update map_xml set ttag = 'cme', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 62 and norden = 191;
update map_xml set ttag = 'retAplica', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 63 and norden = 192;
update map_xml set ttag = 'claveConta', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 64 and norden = 193;
update map_xml set ttag = 'zzxref1', ctablafills = '' where cmapead = 'I031S' and tpare = 'detalle' and nordfill = 65 and norden = 194;
update map_xml set ttag = 'porcComisionNegocio', ctablafills = '' where cmapead = 'I031S' and tpare = 'porcentajes' and nordfill = 1 and norden = 221;
update map_xml set ttag = 'porcAdmonCoaseguro', ctablafills = '' where cmapead = 'I031S' and tpare = 'porcentajes' and nordfill = 2 and norden = 222;
update map_xml set ttag = 'intermediario', ctablafills = '100314' where cmapead = 'I031S' and tpare = 'porcentajes' and nordfill = 3 and norden = 223;
update map_xml set ttag = 'coaseguro', ctablafills = '100315' where cmapead = 'I031S' and tpare = 'porcentajes' and nordfill = 4 and norden = 224;
update map_xml set ttag = 'consorcio', ctablafills = '100316' where cmapead = 'I031S' and tpare = 'porcentajes' and nordfill = 5 and norden = 225;
update map_xml set ttag = 'codigoIntermediario', ctablafills = '' where cmapead = 'I031S' and tpare = 'intermediario' and nordfill = 1 and norden = 224;
update map_xml set ttag = 'porcPartcIntermediario', ctablafills = '' where cmapead = 'I031S' and tpare = 'intermediario' and nordfill = 2 and norden = 225;
update map_xml set ttag = 'intermediario', ctablafills = '', tpare = 'intermediarios1' where cmapead = 'I031S' and tpare = 'intermediarios' and nordfill = 1 and norden = '';
update map_xml set ttag = 'codigoCoaseguro', ctablafills = '' where cmapead = 'I031S' and tpare = 'Coaseguro' and nordfill = 1 and norden = 227;
update map_xml set ttag = 'porcPartcCoaseguro', ctablafills = '' where cmapead = 'I031S' and tpare = 'Coaseguro' and nordfill = 2 and norden = 228;
update map_xml set ttag = 'Coaseguro', ctablafills = '', tpare = 'Coaseguro1' where cmapead = 'I031S' and tpare = 'Coaseguros' and nordfill = 1 and norden = '';
update map_xml set ttag = 'personaRel', ctablafills = '' where cmapead = 'I031S' and tpare = 'consorcio' and nordfill = 1 and norden = 230;
update map_xml set ttag = 'porcPartcConsorc', ctablafills = '' where cmapead = 'I031S' and tpare = 'consorcio' and nordfill = 2 and norden = 231;
update map_xml set ttag = 'consorcio', ctablafills = '', tpare = 'Consorcio1' where cmapead = 'I031S' and tpare = 'Consorcio' and nordfill = 1 and norden = '';
commit;
--MODIFICACION TABLA MAP_XML
update map_detalle set nposicion = 0 where cmapead = 'I031S' and norden = 221;
commit;
--modificacion cuenta 5152100100
update detmodconta_interf
set tseldia = 'SELECT ''0100'' coletilla, ''Remuneración a favor de intermediarios cumplimiento (23)'' descrip,							
   pac_corretaje.f_impcor_agente(NVL(vm.icombru, v.icombru), a.cagente, sg.sseguro,   r.nmovimi) importe,							
   decode(ff_buscadatosIndSAP(8, SG.SSEGURO),1,248,decode(ff_buscadatosIndSAP(6, SG.SSEGURO),1, LPAD (255, 3, ''0''), LPAD (256, 3, ''0'') ))							
|| LPAD(1000, 4, ''0'')							
|| LPAD(''COP'', 5, ''0'')							
|| LPAD(0, 2, ''0'')							
|| LPAD(0, 4, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')							
|| LPAD(''WIAXIS'', 12, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_tipo(5152100100),''C''), 1, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_persona(null,a.cagente,null,null),0), 10, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')							
||decode(ff_buscadatosIndSAP(6, SG.SSEGURO),1, LPAD(0, 2, ''0''),LPAD(NVL(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),1,sysdate),0), 2, ''0''))							
|| LPAD(pac_corretaje.f_impcor_agente(vm.icombru, ac.cagente, sg.sseguro,   r.nmovimi), 23, ''0'')							
|| LPAD(pac_corretaje.f_impcor_agente((vm.iimp_1 - vm.iimp_5), ac.cagente, sg.sseguro,   r.nmovimi), 23, ''0'')							
|| LPAD(''Z001'', 4, ''0'')							
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')							
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(5152100100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')							
|| LPAD(0, 2, ''0'')							
|| LPAD(0, 2, ''0'')							
|| LPAD(0, 23, ''0'')							
|| LPAD(0, 23, ''0'')							
|| LPAD(a.cagente || r.nrecibo, 18, ''0'')							
|| LPAD(0, 10, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,a.cagente,null,null),null,null,null),0), 12, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')							
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')							
|| LPAD(0, 15, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')							
|| LPAD(0, 1, ''0'')							
|| LPAD(0, 17, ''0'') otros,							
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha							
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg, tomadores t,							
 per_personas p, age_corretaje ac,movseguro ms, agentes a							
 WHERE m.nrecibo = r.nrecibo							
 --AND NVL(ac.cagente, r.cagente) = a.cagente							
 AND NVL(a.cagente, r.cagente) = a.cagente							
 AND m.cestrec = 0							
 AND m.cestant = 0							
 AND vm.nrecibo(+) = r.nrecibo							
 AND v.nrecibo = r.nrecibo							
 AND sg.sseguro = ms.sseguro							
 AND ms.nmovimi = r.nmovimi							
 AND r.sseguro = sg.sseguro							
 AND t.sseguro = sg.sseguro							
 AND NVL(r.sperson, t.sperson) = p.sperson AND sg.sseguro = ac.sseguro(+)							
 AND(ac.nmovimi IS NULL OR(ac.nmovimi = (SELECT MAX(nmovimi) FROM age_corretaje ac2 WHERE ac2.sseguro = ac.sseguro AND ac2.nmovimi <= r.nmovimi)))							
 --AND to_Char(m.fmovdia,''dd/mm/yyyy'') >= to_Char(r.fefecto,''dd/mm/yyyy'')							
 --AND to_Char(sg.femisio,''dd/mm/yyyy'') >= to_Char(sg.fefecto,''dd/mm/yyyy'')-- retro,actual							
 AND sg.cramo = 801							
 AND sg.ctipcoa IN (0,1)							
 AND r.ctiprec = 0							
 AND a.ctipage IN (3,5,6,7,4)							
 AND m.fmovfin IS NULL							
 AND r.cestaux in (0,1)							
 AND r.nrecibo = #pidmov							
 AND a.cagente = #idpago							'
where cempres = 24
and nlinea = 13
and ttippag = 21
and ccuenta = 515210;
commit;
--modificacion cuenta 282005
update detmodconta_interf
set tseldia = 'SELECT ''0200'' coletilla,''Provisiones, obligaciones a favor de intermediarios seguros (Comisiones año actual)(23)'' descrip,							
   pac_corretaje.f_impcor_agente( vm.icombru + vm.iimp_1 , ac.cagente, sg.sseguro,   r.nmovimi) importe,							
   LPAD (256, 3, ''0'')							
|| LPAD(1000, 4, ''0'')							
|| LPAD(''COP'', 5, ''0'')							
|| LPAD(0, 2, ''0'')							
|| LPAD(0, 4, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')							
|| LPAD(''WIAXIS'', 12, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_tipo(2820050200),''C''), 1, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_persona(null,a.cagente,null,null),0), 10, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')							
|| LPAD(0, 2, ''0'')							
|| LPAD(0, 23, ''0'')							
|| LPAD(0, 23, ''0'')							
|| LPAD(''Z001'', 4, ''0'')							
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')							
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(2820050200),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')							
|| LPAD(0, 2, ''0'')							
|| LPAD(0, 2, ''0'')							
|| LPAD(0, 23, ''0'')							
|| LPAD(0, 23, ''0'')							
|| LPAD(a.cagente || r.nrecibo, 18, ''0'')							
|| LPAD(0, 10, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,a.cagente,null,null),null,null,null),0), 12, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')							
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')							
|| LPAD(0, 15, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')							
|| LPAD(0, 1, ''0'')							
|| LPAD((''P'' || lpad(substr(r.nrecibo,-9,9),9,''0'') || lpad(substr(a.cagente,-7,7),7,''0'')), 17, ''0'') otros,							
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha							
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg, tomadores t,							
 per_personas p, age_corretaje ac,movseguro ms, agentes a							
 WHERE m.nrecibo = r.nrecibo							
 AND NVL(ac.cagente, r.cagente) = a.cagente							
 AND m.cestrec = 0							
 AND m.cestant = 0							
 AND vm.nrecibo(+) = r.nrecibo							
 AND v.nrecibo = r.nrecibo							
 AND sg.sseguro = ms.sseguro							
 AND ms.nmovimi = r.nmovimi							
 AND r.sseguro = sg.sseguro							
 AND t.sseguro = sg.sseguro							
 AND NVL(r.sperson, t.sperson) = p.sperson AND sg.sseguro = ac.sseguro(+)							
 AND(ac.nmovimi IS NULL OR(ac.nmovimi = (SELECT MAX(nmovimi) FROM age_corretaje ac2 WHERE ac2.sseguro = ac.sseguro AND ac2.nmovimi <= r.nmovimi)))							
 AND to_Char(m.fmovdia,''dd/mm/yyyy'') >= to_Char(r.fefecto,''dd/mm/yyyy'')							
 -- AND sg.cramo = 801							
 AND sg.ctipcoa IN (0,1)							
 AND r.ctiprec = 0							
 AND a.ctipage = 4							
 AND m.fmovfin IS NULL							
 AND r.cestaux in (0,1)							
 AND r.nrecibo = #pidmov							
 AND a.cagente = #idpago'
 where cempres = 24
and nlinea = 15
and ttippag = 21
and ccuenta = 282005;
commit;
--modificacion cuenta 2519053005
update detmodconta_interf
set tseldia = 'SELECT ''3005'' coletilla,''Ret fte.Comisiones(25)'' descrip,							
   pac_corretaje.f_impcor_agente(vm.iimp_9, ac.cagente, sg.sseguro, r.nmovimi) importe,							
   LPAD (260, 3, ''0'')							
|| LPAD(1000, 4, ''0'')							
|| LPAD(''COP'', 5, ''0'')							
|| LPAD(0, 2, ''0'')							
|| LPAD(0, 4, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')							
|| LPAD(''WIAXIS'', 12, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_tipo(2519053005),''C''), 1, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_persona(null,a.cagente,null,null),0), 10, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')							
|| LPAD(0, 2, ''0'')							
|| LPAD(0, 23, ''0'')							
|| LPAD(0, 23, ''0'')							
|| LPAD(''Z001'', 4, ''0'')							
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')							
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(2519053005),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')							
|| LPAD(NVL(SUBSTR(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),2,sysdate),1,2),''0''), 2, ''0'')							
|| LPAD(NVL(SUBSTR(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),2,sysdate),3,4),''0''), 2, ''0'')							
|| LPAD(pac_corretaje.f_impcor_agente(NVL(vm.icombru, v.icombru), ac.cagente, sg.sseguro,   r.nmovimi), 23, ''0'')							
|| LPAD(pac_corretaje.f_impcor_agente(vm.iimp_9, ac.cagente, sg.sseguro, r.nmovimi), 23, ''0'')							
|| LPAD(a.cagente || r.nrecibo, 18, ''0'')							
|| LPAD(0, 10, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,a.cagente,null,null),null,null,null),0), 12, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')							
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')							
|| LPAD(0, 15, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')							
|| LPAD(0, 1, ''0'')							
|| LPAD((''H'' || lpad(substr(r.nrecibo,-9,9),9,''0'') || lpad(substr(a.cagente,-7,7),7,''0'')), 17, ''0'') otros,							
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha							
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg, tomadores t,							
 per_personas p, age_corretaje ac,movseguro ms, agentes a							
 WHERE m.nrecibo = r.nrecibo							
 AND NVL(ac.cagente, r.cagente) = a.cagente							
 AND m.cestrec = 0							
 AND m.cestant = 0							
 AND vm.nrecibo(+) = r.nrecibo							
 AND v.nrecibo = r.nrecibo							
 AND sg.sseguro = ms.sseguro							
 AND ms.nmovimi = r.nmovimi							
 AND r.sseguro = sg.sseguro							
 AND t.sseguro = sg.sseguro							
 AND NVL(r.sperson, t.sperson) = p.sperson AND sg.sseguro = ac.sseguro(+)							
 AND(ac.nmovimi IS NULL OR(ac.nmovimi = (SELECT MAX(nmovimi) FROM age_corretaje ac2 WHERE ac2.sseguro = ac.sseguro AND ac2.nmovimi <= r.nmovimi)))							
 AND to_Char(m.fmovdia,''dd/mm/yyyy'') >= to_Char(r.fefecto,''dd/mm/yyyy'')							
 --AND sg.cramo = 801							
 AND a.ctipage = 20							
 AND sg.ctipcoa IN (0,1)							
 AND r.ctiprec = 0							
 AND m.fmovfin IS NULL							
 AND r.cestaux in (0,1)							
 AND r.nrecibo = #pidmov							
 AND a.cagente = #idpago'
  where cempres = 24
and nlinea = 18
and ttippag = 21
and ccuenta = 251905;
commit;
--modificacion cuenta 1630400100
update detmodconta_interf
set tseldia = 'SELECT ''0100'' coletilla, ''Iva desc dir. sobre Comisiones (DB) (23)'' descrip,							
  pac_corretaje.f_impcor_agente((vm.iimp_1 - vm.iimp_5), ac.cagente, sg.sseguro,   r.nmovimi) importe,							
   LPAD (260, 3, ''0'')							
|| LPAD(1000, 4, ''0'')							
|| LPAD(''COP'', 5, ''0'')							
|| LPAD(0, 2, ''0'')							
|| LPAD(0, 4, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')							
|| LPAD(''WIAXIS'', 12, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_tipo(1630400100),''C''), 1, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_persona(null,a.cagente,null,null),0), 10, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')							
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),1,sysdate),0), 2, ''0'')							
|| LPAD(0, 23, ''0'')							
|| LPAD(0, 23, ''0'')							
|| LPAD(''Z001'', 4, ''0'')							
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')							
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1630400100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')							
|| LPAD(0, 2, ''0'')							
|| LPAD(0, 2, ''0'')							
|| LPAD(0, 23, ''0'')							
|| LPAD(0, 23, ''0'')							
|| LPAD(a.cagente || r.nrecibo, 18, ''0'')							
|| LPAD(0, 10, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,a.cagente,null,null),null,null,null),0), 12, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')							
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')							
|| LPAD(0, 15, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')							
|| LPAD(0, 1, ''0'')							
|| LPAD(0, 17, ''0'') otros,							
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha							
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg, tomadores t, per_personas p, age_corretaje ac,							
 companias c, agentes a							
 WHERE m.nrecibo = r.nrecibo							
 AND NVL(ac.cagente, r.cagente) = a.cagente							
 AND m.cestrec = 0							
 AND m.cestant = 0							
 AND vm.nrecibo(+) = r.nrecibo							
 AND v.nrecibo = r.nrecibo							
 AND r.sseguro = sg.sseguro							
 AND t.sseguro = sg.sseguro							
 AND NVL(r.sperson, t.sperson) = p.sperson AND sg.sseguro = ac.sseguro(+)							
 AND(ac.nmovimi IS NULL OR(ac.nmovimi = (SELECT MAX(nmovimi) FROM age_corretaje ac2 WHERE ac2.sseguro = ac.sseguro AND ac2.nmovimi <= r.nmovimi)))							
  -- AND sg.cramo = 801							
 AND sg.ctipcoa IN (0,1)							
 AND a.ctipage = 20							
 AND r.ctiprec =  0							
 and c.ccompani = 1							
 AND m.fmovfin IS NULL							
 AND r.cestaux in (0,1)							
 AND r.nrecibo = #pidmov							
 AND a.cagente = #idpago'
   where cempres = 24
and nlinea = 16
and ttippag = 21
and ccuenta = 163040;
commit;
--modificacion cuenta 1925150100
update detmodconta_interf
set tseldia = 'SELECT ''0100'' coletilla, ''Gastos pagados por anticipado comisiones intermediarios (24)'' descrip,							
   pac_corretaje.f_impcor_agente(NVL(vm.icombru, v.icombru), ac.cagente, sg.sseguro,   r.nmovimi) importe,							
   LPAD (248, 3, ''0'')							
|| LPAD(1000, 4, ''0'')							
|| LPAD(''COP'', 5, ''0'')							
|| LPAD(0, 2, ''0'')							
|| LPAD(0, 4, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')							
|| LPAD(''WIAXIS'', 12, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_tipo(1925150100),''C''), 1, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_persona(null,a.cagente,null,null),0), 10, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')							
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),1,sysdate),0), 2, ''0'')							
|| LPAD(pac_corretaje.f_impcor_agente(vm.icombru, ac.cagente, sg.sseguro,   r.nmovimi), 23, ''0'')							
|| LPAD(pac_corretaje.f_impcor_agente((vm.iimp_1 - vm.iimp_5), ac.cagente, sg.sseguro,   r.nmovimi), 23, ''0'')							
|| LPAD(''Z001'', 4, ''0'')							
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')							
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1925150100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')							
|| LPAD(0, 2, ''0'')							
|| LPAD(0, 2, ''0'')							
|| LPAD(0, 23, ''0'')							
|| LPAD(0, 23, ''0'')							
|| LPAD(a.cagente || r.nrecibo, 18, ''0'')							
|| LPAD(0, 10, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,a.cagente,null,null),null,null,null),0), 12, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')							
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')							
|| LPAD(0, 15, ''0'')							
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')							
|| LPAD(0, 1, ''0'')							
|| LPAD(0, 17, ''0'') otros,							
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha							
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg, tomadores t,							
 per_personas p, age_corretaje ac,movseguro ms, agentes a							
 WHERE m.nrecibo = r.nrecibo							
 AND NVL(ac.cagente, r.cagente) = a.cagente							
 AND m.cestrec = 0							
 AND m.cestant = 0							
 AND vm.nrecibo(+) = r.nrecibo							
 AND v.nrecibo = r.nrecibo							
 AND sg.sseguro = ms.sseguro							
 AND ms.nmovimi = r.nmovimi							
 AND r.sseguro = sg.sseguro							
 AND t.sseguro = sg.sseguro							
 AND NVL(r.sperson, t.sperson) = p.sperson AND sg.sseguro = ac.sseguro(+)							
 AND(ac.nmovimi IS NULL OR(ac.nmovimi = (SELECT MAX(nmovimi) FROM age_corretaje ac2 WHERE ac2.sseguro = ac.sseguro AND ac2.nmovimi <= r.nmovimi)))							
 --AND to_Char(m.fmovdia,''dd/mm/yyyy'') >= to_Char(r.fefecto,''dd/mm/yyyy'')							
 AND to_Char(sg.femisio,''dd/mm/yyyy'') < to_Char(sg.fefecto,''dd/mm/yyyy'')-- vig futura							
  -- AND sg.cramo = 801							
 AND sg.ctipcoa IN (0,1)							
 AND r.ctiprec = 0							
 AND a.ctipage IN (3,4,5,6,7)							
 AND m.fmovfin IS NULL							
 AND r.cestaux in (0,1)							
 AND r.nrecibo = #pidmov							
 AND a.cagente = #idpago'
   where cempres = 24
and nlinea = 14
and ttippag = 21
and ccuenta = 192515;
commit; 
--modificacion tabla parempresas
update parempresas set tvalpar = 'DVALBUENA' where cempres = 24 and cparam = 'CWSCQA_USER';
update parempresas set tvalpar = 'Lukas9106+' where cempres = 24 and cparam = 'CWSCQA_PASS';
commit;
--insert de tipos liquidacion
insert into axis.TIPO_LIQUIDACION values ('4121050102', 32);
commit;
insert into axis.TIPO_LIQUIDACION values ('4121400102', 128);
commit;
/

 