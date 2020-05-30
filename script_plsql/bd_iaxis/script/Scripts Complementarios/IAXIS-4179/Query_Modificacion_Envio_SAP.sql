///////////////////////////////////////////////////////////////////////////////////////////////////////////////
--Omitir campo fecha de la cabecera
update map_xml
set ttag = ' '
where cmapead = 'I031S'  
and tpare = 'cabecera'
and norden = 103
and nordfill = 5;
commit;

--Modificacion Cabecera
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
             || idpago
             || ''|''
             || idpago
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
    ROWNUM = 1
)'
where ctabla = 100311
and tdescrip = 'CABECERA';
commit;

--modificacion Detalles
update map_tabla
set tfrom = '(select (SELECT TIPLIQ FROM axis.TIPO_LIQUIDACION WHERE CUENTA =  ccuenta || ccoletilla) || ''|'' || NULL || ''|'' || NULL || ''|'' || iapunte || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, axis.ff_buscadatosSAP(10,ccuenta || ccoletilla), 2)) || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || SUBSTR(otros, axis.ff_buscadatosSAP(1,ccuenta || ccoletilla), 4) || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, axis.ff_buscadatosSAP(8,ccuenta || ccoletilla), 1)) || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 156, 2)) || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 158, 23)) || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 181, 23)) || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 154, 2)) || ''|'' || NULL || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 222, 10)) || ''|'' || NULL || ''|'' || SUBSTR(otros, axis.ff_buscadatosSAP(2,ccuenta || ccoletilla), 4) || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, axis.ff_buscadatosSAP(3,ccuenta || ccoletilla), 10)) || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || tapunte || ''|'' || NULL || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, axis.ff_buscadatosSAP(4,ccuenta || ccoletilla), 10)) || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, axis.ff_buscadatosSAP(5,ccuenta || ccoletilla), 20)) || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, axis.ff_buscadatosSAP(6,ccuenta || ccoletilla), 2)) || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, axis.ff_buscadatosSAP(7,ccuenta || ccoletilla), 18)) || ''|'' || TO_CHAR(fefeadm, ''yyyy-mm-dd'') || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 298, 15)) || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 313, 10)) || ''|'' || NULL || ''|'' || TRIM(leading ''0'' FROM SUBSTR(otros, 323, 1)) || ''|'' || NULL || ''|'' || PAC_ADM.F_GET_POSICION_RETAPLICA_SAP(TRIM(leading ''0'' FROM SUBSTR(otros, 324, 17))) || ''|'' || NULL || ''|'' || NULL linea FROM contab_asient_interf WHERE (idpago = pac_map.f_valor_parametro(''|'', ''#lineaini'', 14, ''#cmapead'') OR pac_map.f_valor_parametro(''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL) AND sinterf = pac_map.f_valor_parametro(''|'', ''#lineaini'', 10, ''#cmapead'') AND ttippag = pac_map.f_valor_parametro(''|'', ''#lineaini'', 12, ''#cmapead'')) '
where ctabla = 100312
and tdescrip = 'DETALLE';
commit;

--modificacion porcentajes
update map_tabla
set tfrom = '(select (axis.ff_buscadatosIndSAP(3, (select sseguro from seguros where npoliza = (SELECT TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 259, 19))  
                                                                                                                           FROM contab_asient_interf a
                                                                                                                           WHERE (   a.idpago = pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'')
                                          OR pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL)
                                        AND a.sinterf = pac_map.f_valor_parametro (''|'', ''#lineaini'', 10, ''#cmapead'')
                                        AND a.ttippag = pac_map.f_valor_parametro (''|'', ''#lineaini'', 12, ''#cmapead'')
                                        AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf))
))) linea from dual  )'
where ctabla = 100313
and tdescrip = 'PORCENTAJES';
commit;

--modificacion intermediarios
update map_tabla
set tfrom = '(select (axis.ff_buscadatosIndSAP(2, (select sseguro from seguros where npoliza = (SELECT TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 259, 19))  
                                                                                                                           FROM contab_asient_interf a
                                                                                                                           WHERE (   a.idpago = pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'')
                                          OR pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL)
                                        AND a.sinterf = pac_map.f_valor_parametro (''|'', ''#lineaini'', 10, ''#cmapead'')
                                        AND a.ttippag = pac_map.f_valor_parametro (''|'', ''#lineaini'', 12, ''#cmapead'')
                                        AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf))
))) linea from dual  )'
where ctabla = 100314
and tdescrip = 'INTERMEDIARIOS';
commit;

--modificacion consorcios
update map_tabla
set tfrom = '(select b.sperson_rel|| ''|'' ||b.pparticipacion linea from tomadores a, per_personas_rel b where a.sseguro = ((select sseguro from seguros where npoliza = (SELECT     TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 259, 19))

   FROM contab_asient_interf a
  WHERE (   a.idpago =
                  pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'')
         OR pac_map.f_valor_parametro (''|'', ''#lineaini'', 14, ''#cmapead'') IS NULL
        )
    AND a.sinterf = pac_map.f_valor_parametro (''|'', ''#lineaini'', 10, ''#cmapead'')
    AND a.ttippag = pac_map.f_valor_parametro (''|'', ''#lineaini'', 12, ''#cmapead'')
    AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf)))) and a.sperson = b.sperson and a.cagrupa = b.cagrupa )'
where ctabla = 100315
and tdescrip = 'CONSORCIOS';
commit;	

--modificacion consulta para generar producto en la parametrizacion de cuentas
update detmodconta_interf set tseldia = 
'SELECT ''0100'' coletilla, ''Primas Netas por Recaudar Negocios Directos (1)'' descrip,
   NVL(vm.iprinet, v.iprinet) importe,
   LPAD (260, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1684050100),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1684050100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(r.nrecibo, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg, tomadores t, per_personas p
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND v.nrecibo = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.ctipcoa in (0,1) -- 0 Directa, 1 Coa Cedido
 AND r.ctiprec in (0,14) -- DIRECTA, DESCANCELACION
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 1 and ttippag =4 and ccuenta =168405;
update detmodconta_interf set tseldia = 
'SELECT ''0101'' coletilla, ''Primas emitidas  cumplimiento (1)'' descrip,
   NVL(vm.iprinet, v.iprinet) importe,
   LPAD (260, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121050101),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(axis.ff_buscadatosIndSAP(1,SG.SSEGURO),0), 2, ''0'')
|| LPAD(NVL(vm.iprinet,v.iprinet), 23, ''0'')
|| LPAD(NVL(vm.iips,v.iips), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121050101),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(r.nrecibo, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg, tomadores t, per_personas p
 WHERE m.nrecibo = r.nrecibo
   AND m.cestrec = 0
   AND m.cestant = 0
   AND vm.nrecibo(+) = r.nrecibo
   AND v.nrecibo = r.nrecibo
   AND r.sseguro = sg.sseguro
   AND t.sseguro = sg.sseguro
   AND NVL(r.sperson, t.sperson) = p.sperson
   AND sg.cramo = 801
   AND sg.ctipcoa in (0,1) -- 0 Directa, 1 Coa Cedido
   AND r.ctiprec = 0 -- Suplemento EMISION,MOD. POSITIVA, DESCANCELACION
   AND m.fmovfin IS NULL
   AND r.cestaux in (0,1)
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 2 and ttippag =4 and ccuenta =412105;
update detmodconta_interf set tseldia = 
'SELECT ''0200'' coletilla,''Iva por recaudar primas Netas (1)'' descrip,
   NVL(vm.itotimp,v.itotimp) importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1684050200),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1684050200),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(r.nrecibo, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg, tomadores t, per_personas p
 WHERE m.nrecibo = r.nrecibo
   AND m.cestrec = 0
   AND m.cestant = 0
   AND vm.nrecibo(+) = r.nrecibo
   AND v.nrecibo = r.nrecibo
   AND r.sseguro = sg.sseguro
   AND t.sseguro = sg.sseguro
   AND NVL(r.sperson, t.sperson) = p.sperson
   AND sg.ctipcoa in (0,1) -- DIRECTA
   AND r.ctiprec in (0,14) -- DIRECTA, DESCANCELACION
   AND m.fmovfin IS NULL
   AND r.cestaux in (0,1)
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 3 and ttippag =4 and ccuenta =168405;
update detmodconta_interf set tseldia = 
'SELECT ''0300'' coletilla,''Gastos de emisión primas por recaudar (1)'' descrip,
   NVL(vm.iderreg,v.iderreg) importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1684050300),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1684050300),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(r.nrecibo, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
   GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg, tomadores t, per_personas p
 WHERE m.nrecibo = r.nrecibo
   AND m.cestrec = 0
   AND m.cestant = 0
   AND vm.nrecibo(+) = r.nrecibo
   AND v.nrecibo = r.nrecibo
   AND r.sseguro = sg.sseguro
   AND t.sseguro = sg.sseguro
   AND NVL(r.sperson, t.sperson) = p.sperson
   AND r.ctiprec in (0,14) -- DIRECTA, DESCANCELACION
   AND sg.ctipcoa = 0 -- DIRECTA, COA CEDIDO
   AND m.fmovfin IS NULL
   AND r.cestaux in (0,1)
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 4 and ttippag =4 and ccuenta =168405;
update detmodconta_interf set tseldia = 
'SELECT ''0100'' coletilla,''Gastos de expedición (1)'' descrip,
   NVL(vm.iderreg,v.iderreg) importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4195950100),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(axis.ff_buscadatosIndSAP(1,SG.SSEGURO),0), 2, ''0'')
|| LPAD(NVL(vm.iderreg,v.iderreg), 23, ''0'')
|| LPAD(NVL(vm.itotimp - vm.iips,v.itotimp - v.iips), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4195950100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(r.nrecibo, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
  GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg, tomadores t, per_personas p
 WHERE m.nrecibo = r.nrecibo
   AND m.cestrec = 0
   AND m.cestant = 0
   AND vm.nrecibo(+) = r.nrecibo
   AND v.nrecibo = r.nrecibo
   AND r.sseguro = sg.sseguro
   AND t.sseguro = sg.sseguro
   AND to_Char(m.fmovdia,''dd/mm/yyyy'') >= to_Char(r.fefecto,''dd/mm/yyyy'')
   AND to_Char(m.fmovdia,''yyyy'') >= to_Char(r.fefecto,''yyyy'')
   AND NVL(r.sperson, t.sperson) = p.sperson
   AND r.ctiprec in (0,14) -- DIRECTA, DESCANCELACION
   AND sg.ctipcoa = 0 -- DIRECTA, COA CEDIDO
   AND m.fmovfin IS NULL
   AND r.cestaux in (0,1)
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 5 and ttippag =4 and ccuenta =419595;
update detmodconta_interf set tseldia = 
'SELECT ''0101'' coletilla,''Descancelaciones Cumplimiento '' descrip,
   NVL(vm.iprinet, v.iprinet) importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121550101),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(axis.ff_buscadatosIndSAP(1,SG.SSEGURO),0), 2, ''0'')
|| LPAD(NVL(vm.iprinet,v.iprinet), 23, ''0'')
|| LPAD(NVL(vm.itotimp,v.itotimp), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121550101),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(r.nrecibo, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg, tomadores t, per_personas p
 WHERE m.nrecibo = r.nrecibo
   AND m.cestrec = 0
   AND m.cestant = 0
   AND vm.nrecibo(+) = r.nrecibo
   AND v.nrecibo = r.nrecibo
   AND r.sseguro = sg.sseguro
   AND t.sseguro = sg.sseguro
   AND NVL(r.sperson, t.sperson) = p.sperson
   AND sg.cramo = 801
   AND sg.ctipcoa in (0,1)
   AND r.ctiprec = 14 -- DESCANCELACION
   AND m.fmovfin IS NULL
   AND r.cestaux in (0,1)
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 6 and ttippag =4 and ccuenta =412155;
update detmodconta_interf set tseldia = 
'SELECT ''0100'' coletilla,''Primas Netas por Recaudar Negocios Directos Coa Aceptado'' descrip,
   NVL(vm.iprinet, v.iprinet) importe,
   LPAD (262, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1684100100),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1684100100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(r.nrecibo, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg, tomadores t, per_personas p
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND v.nrecibo = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.ctipcoa = 8 -- coa aceptado
 AND r.ctiprec = 0 -- Alta
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 7 and ttippag =4 and ccuenta =168410;
update detmodconta_interf set tseldia = 
'SELECT ''0101'' coletilla,''Primas emitidas Coa Aceptado Cumplimiento '' descrip,
   NVL(vm.iprinet, v.iprinet) importe,
   LPAD (262, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121400101),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121400101),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(r.nrecibo, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg, tomadores t, per_personas p
 WHERE m.nrecibo = r.nrecibo
   AND m.cestrec = 0
   AND m.cestant = 0
   AND vm.nrecibo(+) = r.nrecibo
   AND v.nrecibo = r.nrecibo
   AND r.sseguro = sg.sseguro
   AND t.sseguro = sg.sseguro
   AND NVL(r.sperson, t.sperson) = p.sperson
   AND sg.cramo = 801
   AND sg.ctipcoa = 8 -- coa Aceptado
   AND r.ctiprec = 0 -- Alta POSITIVA
   AND m.fmovfin IS NULL
   AND r.cestaux in (0,1)
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 8 and ttippag =4 and ccuenta =412140;
update detmodconta_interf set tseldia = 
'SELECT ''0100'' coletilla, ''Prima neta parte Coasegurador(es) Cedido  (25)'' descrip,
   pac_coa.f_impcoa_ccomp(sg.sseguro,cta.ccompani,m.fmovdia,vm.icednet)importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1684150100),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1684150100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(r.nrecibo, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, ctacoaseguro cta,
 companias c, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND  r.cagente = a.cagente
 and cta.sseguro = sg.sseguro
 and c.ccompani = cta.ccompani
 and cta.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.ctipcoa in (1) -- Coa Ced
 AND r.ctiprec in (0,14)
 and cta.cimport in (1)   -- 1.prima
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 9 and ttippag =4 and ccuenta =168415;
update detmodconta_interf set tseldia = 
'SELECT ''0100'' coletilla,''Primas por recaudar Coasegurador(es) Cedido (25)'' descrip,
   pac_coa.f_impcoa_ccomp(sg.sseguro,cta.ccompani,m.fmovdia,vm.icednet)importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(2590700100),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(2590700100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(r.nrecibo, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, ctacoaseguro cta,
 companias c, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND  r.cagente = a.cagente
 and cta.sseguro = sg.sseguro
 and c.ccompani = cta.ccompani
 and cta.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.ctipcoa in (1) -- Coa Ced
 AND r.ctiprec = 0
 and cta.cimport in (1)   -- 1.prima
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 10 and ttippag =4 and ccuenta =259070;
update detmodconta_interf set tseldia = 
'SELECT ''0101'' coletilla,''Descancelaciones Cumplimiento '' descrip,
   NVL(vm.iprinet, v.iprinet) importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121550101),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121550101),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(r.nrecibo, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg, tomadores t, per_personas p
 WHERE m.nrecibo = r.nrecibo
   AND m.cestrec = 0
   AND m.cestant = 0
   AND vm.nrecibo(+) = r.nrecibo
   AND v.nrecibo = r.nrecibo
   AND r.sseguro = sg.sseguro
   AND t.sseguro = sg.sseguro
   AND NVL(r.sperson, t.sperson) = p.sperson
   AND sg.cramo = 801
   AND sg.ctipcoa in (0,1)
   AND r.ctiprec = 14 -- DESCANCELACION
   AND m.fmovfin IS NULL
   AND r.cestaux in (0,1)
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 11 and ttippag =4 and ccuenta =412155;
update detmodconta_interf set tseldia = 
'SELECT ''0100'' coletilla, ''Primas Netas por Recaudar Negocios Directos (H)'' descrip,
   NVL(vm.iprinet, v.iprinet) importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1684050100),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1684050100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(r.nrecibo, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg, tomadores t, per_personas p
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND v.nrecibo = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.ctipcoa in (0,1) -- 0 Directa, 1 Coa Cedido
 AND r.ctiprec in (14) -- DIRECTA, DESCANCELACION
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 12 and ttippag =4 and ccuenta =168405;
update detmodconta_interf set tseldia = 
'SELECT ''0200'' coletilla,''Primas emitidas  Resp Civil '' descrip,
   NVL(vm.iprinet, v.iprinet) importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121050200),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(axis.ff_buscadatosIndSAP(1,SG.SSEGURO),0), 2, ''0'')
|| LPAD(NVL(vm.iprinet,v.iprinet), 23, ''0'')
|| LPAD(NVL(vm.iips,v.iips), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121050200),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(r.nrecibo, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg, tomadores t, per_personas p
 WHERE m.nrecibo = r.nrecibo
   AND m.cestrec = 0
   AND m.cestant = 0
   AND vm.nrecibo(+) = r.nrecibo
   AND v.nrecibo = r.nrecibo
   AND r.sseguro = sg.sseguro
   AND t.sseguro = sg.sseguro
   AND NVL(r.sperson, t.sperson) = p.sperson
   AND sg.cramo = 802
   AND sg.ctipcoa in (0,1) -- 0 Directa, 1 Coa Cedido
   AND r.ctiprec = 0 -- Suplemento EMISION,MOD. POSITIVA, DESCANCELACION
   AND m.fmovfin IS NULL
   AND r.cestaux in (0,1)
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 30 and ttippag =4 and ccuenta =412105;
update detmodconta_interf set tseldia = 
'SELECT ''0200'' coletilla,''Descancelaciones Resp Civil '' descrip,
   NVL(vm.iprinet, v.iprinet) importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121550200),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(axis.ff_buscadatosIndSAP(1,SG.SSEGURO),0), 2, ''0'')
|| LPAD(NVL(vm.iprinet,v.iprinet), 23, ''0'')
|| LPAD(NVL(vm.itotimp,v.itotimp), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121550200),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(r.nrecibo, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg, tomadores t, per_personas p
 WHERE m.nrecibo = r.nrecibo
   AND m.cestrec = 0
   AND m.cestant = 0
   AND vm.nrecibo(+) = r.nrecibo
   AND v.nrecibo = r.nrecibo
   AND r.sseguro = sg.sseguro
   AND t.sseguro = sg.sseguro
   AND NVL(r.sperson, t.sperson) = p.sperson
   AND sg.cramo = 802
   AND sg.ctipcoa in (0,1)
   AND r.ctiprec = 14 -- DESCANCELACION
   AND m.fmovfin IS NULL
   AND r.cestaux in (0,1)
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 31 and ttippag =4 and ccuenta =412155;
update detmodconta_interf set tseldia = 
'SELECT ''0200'' coletilla,''Primas emitidas Coa Aceptado Resp Civil '' descrip,
   NVL(vm.iprinet, v.iprinet) importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121400200),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121400200),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(r.nrecibo, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg, tomadores t, per_personas p
 WHERE m.nrecibo = r.nrecibo
   AND m.cestrec = 0
   AND m.cestant = 0
   AND vm.nrecibo(+) = r.nrecibo
   AND v.nrecibo = r.nrecibo
   AND r.sseguro = sg.sseguro
   AND t.sseguro = sg.sseguro
   AND NVL(r.sperson, t.sperson) = p.sperson
   AND sg.cramo = 802
   AND sg.ctipcoa = 8 -- coa Aceptado
   AND r.ctiprec = 0 -- Alta POSITIVA
   AND m.fmovfin IS NULL
   AND r.cestaux in (0,1)
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 32 and ttippag =4 and ccuenta =412140;
update detmodconta_interf set tseldia = 
'SELECT ''0200'' coletilla,''Descancelaciones Resp Civil '' descrip,
   NVL(vm.iprinet, v.iprinet) importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121550200),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(NVL(vm.iprinet,v.iprinet), 23, ''0'')
|| LPAD(NVL(vm.itotimp,v.itotimp), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121550200),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(r.nrecibo, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg, tomadores t, per_personas p
 WHERE m.nrecibo = r.nrecibo
   AND m.cestrec = 0
   AND m.cestant = 0
   AND vm.nrecibo(+) = r.nrecibo
   AND v.nrecibo = r.nrecibo
   AND r.sseguro = sg.sseguro
   AND t.sseguro = sg.sseguro
   AND NVL(r.sperson, t.sperson) = p.sperson
   AND sg.cramo = 802
   AND sg.ctipcoa in (0,1)
   AND r.ctiprec = 14 -- DESCANCELACION
   AND m.fmovfin IS NULL
   AND r.cestaux in (0,1)
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 33 and ttippag =4 and ccuenta =412155;
update detmodconta_interf set tseldia = 
'SELECT ''0300'' coletilla,''Primas emitidas  TRC '' descrip,
   NVL(vm.iprinet, v.iprinet) importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121050300),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(axis.ff_buscadatosIndSAP(1,SG.SSEGURO),0), 2, ''0'')
|| LPAD(NVL(vm.iprinet,v.iprinet), 23, ''0'')
|| LPAD(NVL(vm.iips,v.iips), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121050300),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(r.nrecibo, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg, tomadores t, per_personas p
 WHERE m.nrecibo = r.nrecibo
   AND m.cestrec = 0
   AND m.cestant = 0
   AND vm.nrecibo(+) = r.nrecibo
   AND v.nrecibo = r.nrecibo
   AND r.sseguro = sg.sseguro
   AND t.sseguro = sg.sseguro
   AND NVL(r.sperson, t.sperson) = p.sperson
   AND sg.cramo = 804
   AND sg.ctipcoa in (0,1) -- 0 Directa, 1 Coa Cedido
   AND r.ctiprec = 0 -- Suplemento EMISION,MOD. POSITIVA, DESCANCELACION
   AND m.fmovfin IS NULL
   AND r.cestaux in (0,1)
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 40 and ttippag =4 and ccuenta =412105;
update detmodconta_interf set tseldia = 
'SELECT ''0300'' coletilla,''Descancelaciones TRC '' descrip,
   NVL(vm.iprinet, v.iprinet) importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121550300),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(axis.ff_buscadatosIndSAP(1,SG.SSEGURO),0), 2, ''0'')
|| LPAD(NVL(vm.iprinet,v.iprinet), 23, ''0'')
|| LPAD(NVL(vm.itotimp,v.itotimp), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121550300),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(r.nrecibo, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg, tomadores t, per_personas p
 WHERE m.nrecibo = r.nrecibo
   AND m.cestrec = 0
   AND m.cestant = 0
   AND vm.nrecibo(+) = r.nrecibo
   AND v.nrecibo = r.nrecibo
   AND r.sseguro = sg.sseguro
   AND t.sseguro = sg.sseguro
   AND NVL(r.sperson, t.sperson) = p.sperson
   AND sg.cramo = 804
   AND sg.ctipcoa in (0,1)
   AND r.ctiprec = 14 -- DESCANCELACION
   AND m.fmovfin IS NULL
   AND r.cestaux in (0,1)
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 41 and ttippag =4 and ccuenta =412155;
update detmodconta_interf set tseldia = 
'SELECT ''0300'' coletilla,''Primas emitidas Coa Aceptado TRC '' descrip,
   NVL(vm.iprinet, v.iprinet) importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121400300),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121400300),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(r.nrecibo, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg, tomadores t, per_personas p
 WHERE m.nrecibo = r.nrecibo
   AND m.cestrec = 0
   AND m.cestant = 0
   AND vm.nrecibo(+) = r.nrecibo
   AND v.nrecibo = r.nrecibo
   AND r.sseguro = sg.sseguro
   AND t.sseguro = sg.sseguro
   AND NVL(r.sperson, t.sperson) = p.sperson
   AND sg.cramo = 804
   AND sg.ctipcoa = 8 -- coa Aceptado
   AND r.ctiprec = 0 -- Alta POSITIVA
   AND m.fmovfin IS NULL
   AND r.cestaux in (0,1)
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 42 and ttippag =4 and ccuenta =412140;
update detmodconta_interf set tseldia = 
'SELECT ''0300'' coletilla,''Descancelaciones TRC '' descrip,
   NVL(vm.iprinet, v.iprinet) importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121550300),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(NVL(vm.iprinet,v.iprinet), 23, ''0'')
|| LPAD(NVL(vm.itotimp,v.itotimp), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121550300),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(r.nrecibo, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg, tomadores t, per_personas p, age_corretaje ac
 WHERE m.nrecibo = r.nrecibo
   AND m.cestrec = 0
   AND m.cestant = 0
   AND vm.nrecibo(+) = r.nrecibo
   AND v.nrecibo = r.nrecibo
   AND r.sseguro = sg.sseguro
   AND t.sseguro = sg.sseguro
   AND NVL(r.sperson, t.sperson) = p.sperson
   AND sg.cramo = 804
   AND sg.ctipcoa in (0,1)
   AND r.ctiprec = 14 -- DESCANCELACION
   AND m.fmovfin IS NULL
   AND r.cestaux in (0,1)
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 43 and ttippag =4 and ccuenta =412155;
update detmodconta_interf set tseldia = 
'SELECT ''0100'' coletilla, ''Primas Netas por Recaudar Negocios Directos (1)'' descrip,
   vm.iprinet importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1684050100),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1684050100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.cagente = a.cagente
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
  -- AND sg.cramo = 801
 AND sg.ctipcoa in (0,1) -- DIRECTA
 AND r.ctiprec =  1 -- Suplemento EMISION,MOD. POSITIVA,
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 200 and ttippag =4 and ccuenta =168405;
update detmodconta_interf set tseldia = 
'SELECT ''0101'' coletilla,''Primas emitidas  cumplimiento (1)'' descrip,
   vm.iprinet importe,
   LPAD (260, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121050101),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_primas_emitidas(T.SPERSON,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121050101),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.cagente = a.cagente
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 801
 AND sg.ctipcoa in (0,1) -- DIRECTA
 AND r.ctiprec = 1
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 201 and ttippag =4 and ccuenta =412105;
update detmodconta_interf set tseldia = 
'SELECT ''0200'' coletilla,''Iva por recaudar primas Netas (1)'' descrip,
   vm.iips importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1684050100),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1684050100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p,agentes a
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.cagente = a.cagente
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
  -- AND sg.cramo = 801
 AND sg.ctipcoa in (0,1) -- DIRECTA,CEDIDO
 AND r.ctiprec =  1
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 202 and ttippag =4 and ccuenta =168405;
update detmodconta_interf set tseldia = 
'SELECT ''0100'' coletilla, ''Primas Netas por Recaudar Negocios Directos (3)'' descrip,
   pac_corretaje.f_impcor_agente(NVL(vm.iprinet, v.iprinet), ac.cagente, sg.sseguro,   r.nmovimi) importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1684050100),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1684050100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg,tomadores t, per_personas p, age_corretaje ac, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND v.nrecibo = r.nrecibo
 AND sg.sseguro = ms.sseguro
 AND ms.nmovimi = r.nmovimi
 AND ms.cmotmov = 281
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson AND sg.sseguro = ac.sseguro(+)
 AND(ac.nmovimi IS NULL OR(ac.nmovimi = (SELECT MAX(nmovimi) FROM age_corretaje ac2 WHERE ac2.sseguro = ac.sseguro AND ac2.nmovimi <= r.nmovimi)))
  -- AND sg.cramo = 801
 AND sg.ctipcoa in (0,1)
 AND r.ctiprec = 9 -- MOD. NEGATIVA
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 204 and ttippag =4 and ccuenta =168405;
update detmodconta_interf set tseldia = 
'SELECT ''0101'' coletilla,''Primas emitidas  cumplimiento (3)'' descrip,
   vm.iprinet importe,
   LPAD (258, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121050101),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_primas_emitidas(T.SPERSON,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121050101),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg,tomadores t, per_personas p,  movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND v.nrecibo = r.nrecibo
 AND sg.sseguro = ms.sseguro
 AND ms.nmovimi = r.nmovimi
 AND ms.cmotmov = 281
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 801
 AND sg.ctipcoa in (0,1)
 AND r.ctiprec = 9 -- MOD. NEGATIVA
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 205 and ttippag =4 and ccuenta =412105;
update detmodconta_interf set tseldia = 
'SELECT ''0200'' coletilla,''Iva por recaudar primas Netas (3)'' descrip,
   pac_corretaje.f_impcor_agente(NVL(vm.iips,v.iips), ac.cagente, sg.sseguro,   r.nmovimi) importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1684050100),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1684050100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg,tomadores t, per_personas p, age_corretaje ac, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND v.nrecibo = r.nrecibo
 AND sg.sseguro = ms.sseguro
 AND ms.nmovimi = r.nmovimi
 AND ms.cmotmov = 281
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson AND sg.sseguro = ac.sseguro(+)
 AND(ac.nmovimi IS NULL OR(ac.nmovimi = (SELECT MAX(nmovimi) FROM age_corretaje ac2 WHERE ac2.sseguro = ac.sseguro AND ac2.nmovimi <= r.nmovimi)))
 --AND sg.cramo = 801
 AND sg.ctipcoa in (0,1)
 AND r.ctiprec = 9 -- MOD. NEGATIVA
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 206 and ttippag =4 and ccuenta =168405;
update detmodconta_interf set tseldia = 
'SELECT ''0100'' coletilla, ''Primas Netas por Recaudar Negocios Directos (3)'' descrip,
   vm.iprinet importe,
   LPAD (80, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1684050100),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1684050100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg,tomadores t, per_personas p, age_corretaje ac, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND sg.sseguro = ms.sseguro
  and ms.cmotmov in (306,666)
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
  -- AND sg.cramo = 801
 AND sg.ctipcoa in (0,1)
 AND r.ctiprec = 9 -- MOD. NEGATIVA
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 207 and ttippag =4 and ccuenta =168405;
update detmodconta_interf set tseldia = 
'SELECT ''0200'' coletilla,''Iva por recaudar primas Netas (3)'' descrip,
   vm.iips importe,
   LPAD (80, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1684050200),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1684050200),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg,tomadores t, per_personas p, age_corretaje ac, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND sg.sseguro = ms.sseguro
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 and ms.cmotmov in (306,666)
 AND NVL(r.sperson, t.sperson) = p.sperson AND sg.sseguro = ac.sseguro(+)
 AND(ac.nmovimi IS NULL OR(ac.nmovimi = (SELECT MAX(nmovimi) FROM age_corretaje ac2 WHERE ac2.sseguro = ac.sseguro AND ac2.nmovimi <= r.nmovimi)))
 --AND sg.cramo = 801
 AND sg.ctipcoa in (0,1)
 AND r.ctiprec = 9 -- MOD. NEGATIVA
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 209 and ttippag =4 and ccuenta =168405;
update detmodconta_interf set tseldia = 
'SELECT ''0100'' coletilla, ''Primas Netas por Recaudar Negocios Directos (3)'' descrip,
   vm.iprinet importe,
   LPAD (99, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1684050100),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1684050100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg,tomadores t, per_personas p, age_corretaje ac, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 2
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND v.nrecibo = r.nrecibo
 AND sg.sseguro = ms.sseguro
 and ms.cmotmov in (306,666)
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson AND sg.sseguro = ac.sseguro(+)
 AND(ac.nmovimi IS NULL OR(ac.nmovimi = (SELECT MAX(nmovimi) FROM age_corretaje ac2 WHERE ac2.sseguro = ac.sseguro AND ac2.nmovimi <= r.nmovimi)))
  -- AND sg.cramo = 801
 AND sg.ctipcoa in (0,1)
 AND r.ctiprec in (0,9)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 210 and ttippag =4 and ccuenta =168405;
update detmodconta_interf set tseldia = 
'SELECT ''0200'' coletilla,''Iva por recaudar primas Netas (3)'' descrip,
   pac_corretaje.f_impcor_agente(NVL(vm.iips,v.iips), ac.cagente, sg.sseguro,   r.nmovimi) importe,
   LPAD (99, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1684050200),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1684050200),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg,tomadores t, per_personas p, age_corretaje ac, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 2
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND v.nrecibo = r.nrecibo
 AND sg.sseguro = ms.sseguro
  and ms.cmotmov in (306,666)
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson AND sg.sseguro = ac.sseguro(+)
 AND(ac.nmovimi IS NULL OR(ac.nmovimi = (SELECT MAX(nmovimi) FROM age_corretaje ac2 WHERE ac2.sseguro = ac.sseguro AND ac2.nmovimi <= r.nmovimi)))
 --AND sg.cramo = 801
 AND sg.ctipcoa in (0,1)
 AND r.ctiprec in (0,9)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 212 and ttippag =4 and ccuenta =168405;
update detmodconta_interf set tseldia = 
'SELECT ''0101'' coletilla,''Cancelaciones y/o anulaciones cumplimiento (5)'' descrip,
   vm.iprinet importe,
   LPAD (99, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121550101),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_primas_emitidas(SG.SSEGURO,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121550101),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg,tomadores t, per_personas p, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 2
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND v.nrecibo = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 and ms.cmotmov in (306,666)
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 801
 AND sg.ctipcoa in (0,1)
 AND r.ctiprec in (0,9)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 and sg.npoliza IN (
      select s.npoliza
        from seguros s, movrecibo mv , recibos rb
       where mv.nrecibo = rb.nrecibo
         AND rb.sseguro = s.sseguro
         and to_Char(s.femisio,''yyyy'') <> to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''dd/mm/yyyy'') > to_Char(rb.fefecto,''dd/mm/yyyy'')
         AND to_Char(mv.fmovdia,''yyyy'') = to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''mm'') in (''01'',''02''))
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 216 and ttippag =4 and ccuenta =412155;
update detmodconta_interf set tseldia = 
'SELECT ''0100'' coletilla, ''Primas Netas por Recaudar Negocios Directos '' descrip,
   vm.iprinet importe,
   LPAD (03, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1684050100),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1684050100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, agentes a, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 2
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.cagente = a.cagente
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.sseguro = ms.sseguro
 and MS.cmotmov  = (321)
  -- AND sg.cramo = 801
 AND sg.ctipcoa in (0,1)
 AND r.ctiprec IN (0,1)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 217 and ttippag =4 and ccuenta =168405;
update detmodconta_interf set tseldia = 
'SELECT ''0101'' coletilla,''Primas emitidas  cumplimiento '' descrip,
   vm.iprinet importe,
   LPAD (03, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121050101),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_primas_emitidas(T.SPERSON,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121050101),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, agentes a, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 2
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.cagente = a.cagente
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.sseguro = ms.sseguro
 and MS.cmotmov  = (321)
 AND sg.cramo = 801
 AND sg.ctipcoa in (0,1)
 AND r.ctiprec IN (0,1)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 218 and ttippag =4 and ccuenta =412105;
update detmodconta_interf set tseldia = 
'SELECT ''0200'' coletilla,''Iva por recaudar primas Netas '' descrip,
   vm.iips importe,
   LPAD (03, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1684050200),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1684050200),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p,agentes a, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 2
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.cagente = a.cagente
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.sseguro = ms.sseguro
 and MS.cmotmov  = (321)
  -- AND sg.cramo = 801
 AND sg.ctipcoa in (0,1)
 AND r.ctiprec IN (0,1)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 219 and ttippag =4 and ccuenta =168405;
update detmodconta_interf set tseldia = 
'SELECT ''0100'' coletilla, ''Primas por recaudar Coasegurador(es) Aceptado (17,18)'' descrip,
   vm.iprinet importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1684100100),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1684100100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm,  seguros sg, tomadores t, per_personas p
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
  -- AND sg.cramo = 801
 AND sg.ctipcoa = 8
 AND r.ctiprec in (1) -- Suplemento MOD. POSITIVA,
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 220 and ttippag =4 and ccuenta =168410;
update detmodconta_interf set tseldia = 
'SELECT ''0101'' coletilla,''Coasegurador(es) Aceptado cumplimiento(17,18)'' descrip,
   vm.iprinet importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121400101),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121400101),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm,  seguros sg, tomadores t, per_personas p
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 801
 AND sg.ctipcoa = 8
 AND r.ctiprec in (1) -- Suplemento MOD. POSITIVA,
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 221 and ttippag =4 and ccuenta =412140;
update detmodconta_interf set tseldia = 
'SELECT ''0100'' coletilla, ''Primas por recaudar Coasegurador(es) Aceptado (19)'' descrip,
   vm.iprinet importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1684100100),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1684100100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm,  seguros sg, tomadores t, per_personas p,  movseguro ms, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.cagente = a.cagente
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 AND MS.cmotmov  IN (281,666,700)
 AND NVL(r.sperson, t.sperson) = p.sperson
  -- AND sg.cramo = 801
 AND sg.ctipcoa = 8
 AND r.ctiprec = 9
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 222 and ttippag =4 and ccuenta =168410;
update detmodconta_interf set tseldia = 
'SELECT ''0101'' coletilla,''Coasegurador(es) Aceptado cumplimiento(19)'' descrip,
   vm.iprinet importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121400101),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121400101),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm,  seguros sg, tomadores t, per_personas p,  movseguro ms, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 AND r.cagente = a.cagente
 AND MS.cmotmov  IN (281,666,700)
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 801
 AND sg.ctipcoa = 8
 AND r.ctiprec = 9
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 223 and ttippag =4 and ccuenta =412140;
update detmodconta_interf set tseldia = 
'SELECT ''0100'' coletilla, ''Primas por recaudar Coasegurador(es) Aceptado (19)'' descrip,
   vm.iprinet importe,
   LPAD (80, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1684100100),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1684100100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm,  seguros sg, tomadores t, per_personas p,  movseguro ms, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 AND r.cagente = a.cagente
 AND MS.cmotmov  IN (306)
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 801
 AND sg.ctipcoa = 8
 AND r.ctiprec = 9
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 224 and ttippag =4 and ccuenta =168410;
update detmodconta_interf set tseldia = 
'SELECT ''0101'' coletilla,''Coasegurador(es) Aceptado cumplimiento (19)'' descrip,
   vm.iprinet importe,
   LPAD (80, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121400101),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121400101),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm,  seguros sg, tomadores t, per_personas p,  movseguro ms ,agentes a
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 AND MS.cmotmov  IN (306)
 AND r.cagente = a.cagente
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 801
 AND sg.ctipcoa = 8
 AND r.ctiprec = 9
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 225 and ttippag =4 and ccuenta =412140;
update detmodconta_interf set tseldia = 
'SELECT ''0100'' coletilla, ''Primas por recaudar Coasegurador(es) Aceptado (19)'' descrip,
   vm.iprinet importe,
   LPAD (99, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1684100100),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1684100100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm,  seguros sg, tomadores t, per_personas p,  movseguro ms, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 2
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 and MS.cmotmov  NOT IN (324,321)
 AND r.cagente = a.cagente
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 801
 AND sg.ctipcoa = 8
 AND r.ctiprec in (0,1)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 228 and ttippag =4 and ccuenta =168410;
update detmodconta_interf set tseldia = 
'SELECT ''0101'' coletilla,''Coasegurador(es) Aceptado cumplimiento (19)'' descrip,
   vm.iprinet importe,
   LPAD (99, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121400101),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121400101),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
FROM movrecibo m, recibos r, vdetrecibos_monpol vm,  seguros sg, tomadores t, per_personas p,  movseguro ms, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 2
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 and MS.cmotmov  NOT IN (324,321)
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 801
 AND sg.ctipcoa = 8
 AND r.ctiprec in (0,1)
 AND m.fmovfin IS NULL
 AND r.cagente = a.cagente
 AND r.cestaux in (0,1)
 and sg.npoliza NOT IN (
      select s.npoliza
        from seguros s, movrecibo mv , recibos rb
       where mv.nrecibo = rb.nrecibo
         AND rb.sseguro = s.sseguro
         and to_Char(s.femisio,''yyyy'') <> to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''dd/mm/yyyy'') > to_Char(rb.fefecto,''dd/mm/yyyy'')
         AND to_Char(mv.fmovdia,''yyyy'') = to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''mm'') in (''01'',''02''))
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 229 and ttippag =4 and ccuenta =412140;
update detmodconta_interf set tseldia = 
'SELECT ''0101'' coletilla,''Cancelaciones y/o anulaciones cumplimiento (21)'' descrip,
   vm.iprinet importe,
   LPAD (99, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121550101),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121550101),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm,  seguros sg, tomadores t, per_personas p,  movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 2
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 and MS.cmotmov  NOT IN (324,321)
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 801
 AND sg.ctipcoa = 8
 AND r.ctiprec in (0,1)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 and sg.npoliza IN (
      select s.npoliza
        from seguros s, movrecibo mv , recibos rb
       where mv.nrecibo = rb.nrecibo
         AND rb.sseguro = s.sseguro
         and to_Char(s.femisio,''yyyy'') <> to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''dd/mm/yyyy'') > to_Char(rb.fefecto,''dd/mm/yyyy'')
         AND to_Char(mv.fmovdia,''yyyy'') = to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''mm'') in (''01'',''02''))
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 230 and ttippag =4 and ccuenta =412155;
update detmodconta_interf set tseldia = 
'SELECT ''0100'' coletilla, ''Prima neta parte Coasegurador(es) Cedido  (25)'' descrip,
   pac_coa.f_impcoa_ccomp(sg.sseguro,cta.ccompani,m.fmovdia,vm.icednet)importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1684150100),''C''), 1, ''0'')
|| LPAD(c.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1684150100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(c.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, ctacoaseguro cta,
 companias c, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND  r.cagente = a.cagente
 and cta.sseguro = sg.sseguro
 and c.ccompani = cta.ccompani
 and cta.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
  -- AND sg.cramo = 801
 AND sg.ctipcoa = 1
 AND r.ctiprec = 1
 and cta.cimport = 1    -- 1.prima
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 241 and ttippag =4 and ccuenta =168415;
update detmodconta_interf set tseldia = 
'SELECT ''0100'' coletilla,''Primas por recaudar Coasegurador(es) Cedido (25)'' descrip,
    pac_coa.f_impcoa_ccomp(sg.sseguro,cta.ccompani,m.fmovdia,vm.icednet)importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(2590700100),''C''), 1, ''0'')
|| LPAD(c.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(2590700100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(c.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, ctacoaseguro cta,
 companias c, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND  r.cagente = a.cagente
 and cta.sseguro = sg.sseguro
 and c.ccompani = cta.ccompani
 and cta.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
  -- AND sg.cramo = 801
 AND sg.ctipcoa in (1)
 AND r.ctiprec = 1
 and cta.cimport in (0,1)   -- 1.prima
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 242 and ttippag =4 and ccuenta =259070;
update detmodconta_interf set tseldia = 
'SELECT ''0100'' coletilla, ''Prima neta parte Coasegurador(es) Cedido  (25)'' descrip,
   pac_coa.f_impcoa_ccomp(sg.sseguro,cta.ccompani,m.fmovdia,vm.icednet)importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1684150100),''C''), 1, ''0'')
|| LPAD(c.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1684150100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(c.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, ctacoaseguro cta,
 companias c, agentes a, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND  r.cagente = a.cagente
 and cta.sseguro = sg.sseguro
 and c.ccompani = cta.ccompani
 and cta.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND sg.sseguro = ms.sseguro
 AND ms.nmovimi = r.nmovimi
 AND ms.cmotmov = 281
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
  -- AND sg.cramo = 801
 AND sg.ctipcoa = 1
 AND r.ctiprec = 9
 and cta.cimport = 1    -- 1.prima
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 254 and ttippag =4 and ccuenta =168415;
update detmodconta_interf set tseldia = 
'SELECT ''0100'' coletilla,''Primas por recaudar Coasegurador(es) Cedido (25)'' descrip,
    pac_coa.f_impcoa_ccomp(sg.sseguro,cta.ccompani,m.fmovdia,vm.icednet)importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(2590700100),''C''), 1, ''0'')
|| LPAD(c.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(2590700100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(c.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, ctacoaseguro cta,
 companias c, agentes a, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND  r.cagente = a.cagente
 and cta.sseguro = sg.sseguro
 and c.ccompani = cta.ccompani
 and cta.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND sg.sseguro = ms.sseguro
 AND ms.nmovimi = r.nmovimi
 AND ms.cmotmov = 281
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
  -- AND sg.cramo = 801
 AND sg.ctipcoa in (1)
 AND r.ctiprec = 9
 and cta.cimport in (0,1)   -- 1.prima
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 255 and ttippag =4 and ccuenta =259070;
update detmodconta_interf set tseldia = 
'SELECT ''0100'' coletilla, ''Prima neta parte Coasegurador(es) Cedido  (25)'' descrip,
   pac_coa.f_impcoa_ccomp(sg.sseguro,cta.ccompani,m.fmovdia,vm.icednet)importe,
   LPAD (80, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1684150100),''C''), 1, ''0'')
|| LPAD(c.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1684150100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(c.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, ctacoaseguro cta,
 companias c, agentes a, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND  r.cagente = a.cagente
 and cta.sseguro = sg.sseguro
 and c.ccompani = cta.ccompani
 and cta.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 and ms.cmotmov in (306,666)
 AND NVL(r.sperson, t.sperson) = p.sperson
 -- AND sg.cramo = 801
 AND sg.ctipcoa = 1
 AND r.ctiprec = 9
 and cta.cimport = 1    -- 1.prima
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 258 and ttippag =4 and ccuenta =168415;
update detmodconta_interf set tseldia = 
'SELECT ''0100'' coletilla,''Primas por recaudar Coasegurador(es) Cedido (25)'' descrip,
    pac_coa.f_impcoa_ccomp(sg.sseguro,cta.ccompani,m.fmovdia,vm.icednet)importe,
   LPAD (80, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(2590700100),''C''), 1, ''0'')
|| LPAD(c.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(2590700100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(c.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, ctacoaseguro cta,
 companias c, agentes a, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND  r.cagente = a.cagente
 and cta.sseguro = sg.sseguro
 and c.ccompani = cta.ccompani
 and cta.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 and ms.cmotmov in (306,666)
 AND NVL(r.sperson, t.sperson) = p.sperson
 -- AND sg.cramo = 801
 AND sg.ctipcoa = 1
 AND r.ctiprec = 9
 and cta.cimport = 1    -- 1.prima
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 259 and ttippag =4 and ccuenta =259070;
update detmodconta_interf set tseldia = 
'SELECT ''0100'' coletilla,''Primas por recaudar Coasegurador(es) Cedido '' descrip,
    pac_coa.f_impcoa_ccomp(sg.sseguro,cta.ccompani,m.fmovdia,vm.icednet)importe,
   LPAD (03, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(2590700100),''C''), 1, ''0'')
|| LPAD(c.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(2590700100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(c.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, ctacoaseguro cta,movseguro ms,
 companias c, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND  r.cagente = a.cagente
 and cta.sseguro = sg.sseguro
 and c.ccompani = cta.ccompani
 and cta.nrecibo = r.nrecibo
 AND m.cestrec = 2
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 and MS.cmotmov  = (321)
 AND NVL(r.sperson, t.sperson) = p.sperson
  -- AND sg.cramo = 801
 AND sg.ctipcoa = 1
 AND r.ctiprec IN (0,1)
 and cta.cimport in (0,1)   -- 1.prima
 and cta.cdebhab = 1
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 262 and ttippag =4 and ccuenta =259070;
update detmodconta_interf set tseldia = 
'SELECT ''0100'' coletilla, ''Prima neta parte Coasegurador(es) Cedido '' descrip,
   pac_coa.f_impcoa_ccomp(sg.sseguro,cta.ccompani,m.fmovdia,vm.icednet)importe,
   LPAD (03, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1684150100),''C''), 1, ''0'')
|| LPAD(c.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1684150100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(c.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, ctacoaseguro cta,movseguro ms,
 companias c, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND  r.cagente = a.cagente
 and cta.sseguro = sg.sseguro
 and c.ccompani = cta.ccompani
 and cta.nrecibo = r.nrecibo
 AND m.cestrec = 2
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 and MS.cmotmov  = (321)
 AND NVL(r.sperson, t.sperson) = p.sperson
  -- AND sg.cramo = 801
 AND sg.ctipcoa in (0,1)
 AND r.ctiprec IN (0,1)
 and cta.cimport = 1    -- 1.prima
 and cta.cdebhab = 2
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 263 and ttippag =4 and ccuenta =168415;
update detmodconta_interf set tseldia = 
'SELECT ''0101'' coletilla,''Primas emitidas  cumplimiento (3)'' descrip,
   vm.iprinet importe,
   LPAD (80, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121050101),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_primas_emitidas(T.SPERSON,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121050101),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg,tomadores t, per_personas p, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
  and ms.cmotmov in (306,666)
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 801
 AND sg.ctipcoa in (0,1)
 AND r.ctiprec = 9 -- MOD. NEGATIVA
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 276 and ttippag =4 and ccuenta =412105;
update detmodconta_interf set tseldia = 
'SELECT ''0101'' coletilla,''Primas emitidas  cumplimiento (3)'' descrip,
   vm.iprinet importe,
   LPAD (99, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121050101),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_primas_emitidas(T.SPERSON,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121050101),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg,tomadores t, per_personas p, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 2
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND v.nrecibo = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 and ms.cmotmov in (306,666)
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 801
 AND sg.ctipcoa in (0,1)
 AND r.ctiprec in (0,9)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 and sg.npoliza not IN (
      select s.npoliza
        from seguros s, movrecibo mv , recibos rb
       where mv.nrecibo = rb.nrecibo
         AND rb.sseguro = s.sseguro
         and to_Char(s.femisio,''yyyy'') <> to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''dd/mm/yyyy'') > to_Char(rb.fefecto,''dd/mm/yyyy'')
         AND to_Char(mv.fmovdia,''yyyy'') = to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''mm'') in (''01'',''02''))
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 277 and ttippag =4 and ccuenta =412105;
update detmodconta_interf set tseldia = 
'SELECT ''0100'' coletilla, ''Prima neta parte Coasegurador(es) Cedido  (25)'' descrip,
   pac_coa.f_impcoa_ccomp(sg.sseguro,cta.ccompani,m.fmovdia,vm.icednet)importe,
   LPAD (99, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1684150100),''C''), 1, ''0'')
|| LPAD(c.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1684150100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(c.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, ctacoaseguro cta,
 companias c, agentes a, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND  r.cagente = a.cagente
 and cta.sseguro = sg.sseguro
 and c.ccompani = cta.ccompani
 and cta.nrecibo = r.nrecibo
 AND m.cestrec = 2
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
  AND sg.sseguro = ms.sseguro
 and ms.cmotmov in (306,666)
 AND NVL(r.sperson, t.sperson) = p.sperson
  -- AND sg.cramo = 801
 AND sg.ctipcoa = 1
 AND r.ctiprec in (0,9)
 and cta.cimport = 1    -- 1.prima
 and cta.cdebhab= 2
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 288 and ttippag =4 and ccuenta =168415;
update detmodconta_interf set tseldia = 
'SELECT ''0100'' coletilla,''Primas por recaudar Coasegurador(es) Cedido (25)'' descrip,
    pac_coa.f_impcoa_ccomp(sg.sseguro,cta.ccompani,m.fmovdia,vm.icednet)importe,
   LPAD (99, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(2590700100),''C''), 1, ''0'')
|| LPAD(c.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(2590700100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(c.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, ctacoaseguro cta,
 companias c, agentes a, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND  r.cagente = a.cagente
 and cta.sseguro = sg.sseguro
 and c.ccompani = cta.ccompani
 and cta.nrecibo = r.nrecibo
 AND m.cestrec = 2
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
  AND sg.sseguro = ms.sseguro
 and ms.cmotmov in (306,666)
 AND NVL(r.sperson, t.sperson) = p.sperson
 -- AND sg.cramo = 801
 AND sg.ctipcoa in (1)
 AND r.ctiprec in (0,9)
 and cta.cimport in (0,1)   -- 1.prima
 and cta.cdebhab= 1
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 289 and ttippag =4 and ccuenta =259070;
update detmodconta_interf set tseldia = 
'SELECT ''0200'' coletilla,''Primas emitidas  Resposabilidad civil '' descrip,
   vm.iprinet importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121050200),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121050200),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.cagente = a.cagente
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 802
 AND sg.ctipcoa in (0,1) -- DIRECTA,CEDIDO
 AND r.ctiprec = 1
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 400 and ttippag =4 and ccuenta =412105;
update detmodconta_interf set tseldia = 
'SELECT ''0200'' coletilla,''Primas emitidas  Resposabilidad civil '' descrip,
   vm.iprinet importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121050200),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121050200),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg,tomadores t, per_personas p
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND v.nrecibo = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 802
 AND sg.ctipcoa in (0,1)
 AND r.ctiprec = 9 -- MOD. NEGATIVA
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 401 and ttippag =4 and ccuenta =412105;
update detmodconta_interf set tseldia = 
'SELECT ''0200'' coletilla,''Primas emitidas  Resposabilidad civil '' descrip,
   vm.iprinet importe,
   LPAD (80, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121050200),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121050200),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg,tomadores t, per_personas p, age_corretaje ac, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
  and ms.cmotmov in (306,666)
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 802
 AND sg.ctipcoa in (0,1)
 AND r.ctiprec = 9 -- MOD. NEGATIVA
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 402 and ttippag =4 and ccuenta =412105;
update detmodconta_interf set tseldia = 
'SELECT ''0200'' coletilla,''Primas emitidas  Resposabilidad civil '' descrip,
   vm.iprinet importe,
   LPAD (99, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121050200),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121050200),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg,tomadores t, per_personas p, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 2
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND v.nrecibo = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 and ms.cmotmov in (306,666)
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 802
 AND sg.ctipcoa in (0,1)
 AND r.ctiprec in (0,9)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 and sg.npoliza not IN (
      select s.npoliza
        from seguros s, movrecibo mv , recibos rb
       where mv.nrecibo = rb.nrecibo
         AND rb.sseguro = s.sseguro
         and to_Char(s.femisio,''yyyy'') <> to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''dd/mm/yyyy'') > to_Char(rb.fefecto,''dd/mm/yyyy'')
         AND to_Char(mv.fmovdia,''yyyy'') = to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''mm'') in (''01'',''02''))
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 403 and ttippag =4 and ccuenta =412105;
update detmodconta_interf set tseldia = 
'SELECT ''0200'' coletilla,''Cancelaciones y/o anulaciones Resposabilidad civil '' descrip,
   vm.iprinet importe,
   LPAD (99, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121050200),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121050200),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg,tomadores t, per_personas p, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 2
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND v.nrecibo = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 and ms.cmotmov in (306,666)
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 802
 AND sg.ctipcoa in (0,1)
 AND r.ctiprec in (0,9)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 and sg.npoliza IN (
      select s.npoliza
        from seguros s, movrecibo mv , recibos rb
       where mv.nrecibo = rb.nrecibo
         AND rb.sseguro = s.sseguro
         and to_Char(s.femisio,''yyyy'') <> to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''dd/mm/yyyy'') > to_Char(rb.fefecto,''dd/mm/yyyy'')
         AND to_Char(mv.fmovdia,''yyyy'') = to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''mm'') in (''01'',''02''))
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 404 and ttippag =4 and ccuenta =412155;
update detmodconta_interf set tseldia = 
'SELECT ''0200'' coletilla,''Primas emitidas  Resposabilidad civil '' descrip,
   vm.iprinet importe,
   LPAD (03, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121050200),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121050200),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, agentes a, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 2
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.cagente = a.cagente
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.sseguro = ms.sseguro
 and MS.cmotmov  = (321)
 AND sg.cramo = 802
  AND sg.ctipcoa in (0,1)
 AND r.ctiprec IN (0,1)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 405 and ttippag =4 and ccuenta =412105;
update detmodconta_interf set tseldia = 
'SELECT ''0200'' coletilla,''Coasegurador(es) Aceptado Resposabilidad civil'' descrip,
   vm.iprinet importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121400200),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121400200),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm,  seguros sg, tomadores t, per_personas p
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 802
 AND sg.ctipcoa = 8
 AND r.ctiprec in (1) -- Suplemento MOD. POSITIVA,
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 420 and ttippag =4 and ccuenta =412140;
update detmodconta_interf set tseldia = 
'SELECT ''0200'' coletilla,''Coasegurador(es) Aceptado Resposabilidad civil'' descrip,
   vm.iprinet importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121400200),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121400200),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm,  seguros sg, tomadores t, per_personas p,  movseguro ms, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 AND r.cagente = a.cagente
 AND MS.cmotmov  IN (281,666,700)
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 802
 AND sg.ctipcoa = 8
 AND r.ctiprec = 9
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 421 and ttippag =4 and ccuenta =412140;
update detmodconta_interf set tseldia = 
'SELECT ''0200'' coletilla,''Coasegurador(es) Aceptado Resposabilidad civil '' descrip,
   vm.iprinet importe,
   LPAD (80, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121400200),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121400200),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm,  seguros sg, tomadores t, per_personas p,  movseguro ms ,agentes a
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 AND MS.cmotmov  IN (306)
 AND r.cagente = a.cagente
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 802
 AND sg.ctipcoa = 8
 AND r.ctiprec = 9
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 422 and ttippag =4 and ccuenta =412140;
update detmodconta_interf set tseldia = 
'SELECT ''0200'' coletilla,''Coasegurador(es) Aceptado Resposabilidad civil '' descrip,
   vm.iprinet importe,
   LPAD (99, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121400200),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121400200),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
FROM movrecibo m, recibos r, vdetrecibos_monpol vm,  seguros sg, tomadores t, per_personas p,  movseguro ms, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 2
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 and MS.cmotmov  NOT IN (324,321)
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 802
 AND sg.ctipcoa = 8
 AND r.ctiprec in (0,1)
 AND m.fmovfin IS NULL
 AND r.cagente = a.cagente
 AND r.cestaux in (0,1)
 and sg.npoliza NOT IN (
      select s.npoliza
        from seguros s, movrecibo mv , recibos rb
       where mv.nrecibo = rb.nrecibo
         AND rb.sseguro = s.sseguro
         and to_Char(s.femisio,''yyyy'') <> to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''dd/mm/yyyy'') > to_Char(rb.fefecto,''dd/mm/yyyy'')
         AND to_Char(mv.fmovdia,''yyyy'') = to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''mm'') in (''01'',''02''))
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 423 and ttippag =4 and ccuenta =412140;
update detmodconta_interf set tseldia = 
'SELECT ''0200'' coletilla,''Cancelaciones y/o anulaciones Resposabilidad civil '' descrip,
   vm.iprinet importe,
   LPAD (99, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121550200),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121550200),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm,  seguros sg, tomadores t, per_personas p,  movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 2
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 and MS.cmotmov  NOT IN (324,321)
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 802
 AND sg.ctipcoa = 8
 AND r.ctiprec in (0,1)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 and sg.npoliza IN (
      select s.npoliza
        from seguros s, movrecibo mv , recibos rb
       where mv.nrecibo = rb.nrecibo
         AND rb.sseguro = s.sseguro
         and to_Char(s.femisio,''yyyy'') <> to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''dd/mm/yyyy'') > to_Char(rb.fefecto,''dd/mm/yyyy'')
         AND to_Char(mv.fmovdia,''yyyy'') = to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''mm'') in (''01'',''02''))
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 424 and ttippag =4 and ccuenta =412155;
update detmodconta_interf set tseldia = 
'SELECT ''0300'' coletilla,''Primas emitidas  T.R.C '' descrip,
   vm.iprinet importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121050300),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121050300),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.cagente = a.cagente
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 804
 AND sg.ctipcoa in (0,1) -- DIRECTA,CEDIDO
 AND r.ctiprec = 1
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 440 and ttippag =4 and ccuenta =412105;
update detmodconta_interf set tseldia = 
'SELECT ''0300'' coletilla,''Primas emitidas  T.R.C '' descrip,
   vm.iprinet importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121050300),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121050300),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg,tomadores t, per_personas p
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND v.nrecibo = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 804
 AND sg.ctipcoa in (0,1)
 AND r.ctiprec = 9 -- MOD. NEGATIVA
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 441 and ttippag =4 and ccuenta =412105;
update detmodconta_interf set tseldia = 
'SELECT ''0300'' coletilla,''Primas emitidas  T.R.C '' descrip,
   vm.iprinet importe,
   LPAD (80, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121050300),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121050300),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg,tomadores t, per_personas p, age_corretaje ac, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
  and ms.cmotmov in (306,666)
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 804
 AND sg.ctipcoa in (0,1)
 AND r.ctiprec = 9 -- MOD. NEGATIVA
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 442 and ttippag =4 and ccuenta =412105;
update detmodconta_interf set tseldia = 
'SELECT ''0300'' coletilla,''Primas emitidas  T.R.C '' descrip,
   vm.iprinet importe,
   LPAD (99, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121050300),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121050300),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg,tomadores t, per_personas p, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 2
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND v.nrecibo = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 and ms.cmotmov in (306,666)
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 804
 AND sg.ctipcoa in (0,1)
 AND r.ctiprec in (0,9)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 and sg.npoliza not IN (
      select s.npoliza
        from seguros s, movrecibo mv , recibos rb
       where mv.nrecibo = rb.nrecibo
         AND rb.sseguro = s.sseguro
         and to_Char(s.femisio,''yyyy'') <> to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''dd/mm/yyyy'') > to_Char(rb.fefecto,''dd/mm/yyyy'')
         AND to_Char(mv.fmovdia,''yyyy'') = to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''mm'') in (''01'',''02''))
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 443 and ttippag =4 and ccuenta =412105;
update detmodconta_interf set tseldia = 
'SELECT ''0300'' coletilla,''Cancelaciones y/o anulaciones T.R.C '' descrip,
   vm.iprinet importe,
   LPAD (99, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121050300),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121050300),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg,tomadores t, per_personas p, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 2
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND v.nrecibo = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 and ms.cmotmov in (306,666)
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 804
 AND sg.ctipcoa in (0,1)
 AND r.ctiprec in (0,9)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 and sg.npoliza IN (
      select s.npoliza
        from seguros s, movrecibo mv , recibos rb
       where mv.nrecibo = rb.nrecibo
         AND rb.sseguro = s.sseguro
         and to_Char(s.femisio,''yyyy'') <> to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''dd/mm/yyyy'') > to_Char(rb.fefecto,''dd/mm/yyyy'')
         AND to_Char(mv.fmovdia,''yyyy'') = to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''mm'') in (''01'',''02''))
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 444 and ttippag =4 and ccuenta =412155;
update detmodconta_interf set tseldia = 
'SELECT ''0300'' coletilla,''Primas emitidas  T.R.C '' descrip,
   vm.iprinet importe,
   LPAD (03, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121050300),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121050300),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, agentes a, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 2
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.cagente = a.cagente
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.sseguro = ms.sseguro
 and MS.cmotmov  = (321)
 AND sg.cramo = 804
  AND sg.ctipcoa in (0,1)
 AND r.ctiprec IN (0,1)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 445 and ttippag =4 and ccuenta =412105;
update detmodconta_interf set tseldia = 
'SELECT ''0300'' coletilla,''Coasegurador(es) Aceptado T.R.C'' descrip,
   vm.iprinet importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121400300),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121400300),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm,  seguros sg, tomadores t, per_personas p
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 804
 AND sg.ctipcoa = 8
 AND r.ctiprec in (1) -- Suplemento MOD. POSITIVA,
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 460 and ttippag =4 and ccuenta =412140;
update detmodconta_interf set tseldia = 
'SELECT ''0300'' coletilla,''Coasegurador(es) Aceptado T.R.C'' descrip,
   vm.iprinet importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121400300),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121400300),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm,  seguros sg, tomadores t, per_personas p,  movseguro ms, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 AND r.cagente = a.cagente
 AND MS.cmotmov  IN (281,666,700)
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 804
 AND sg.ctipcoa = 8
 AND r.ctiprec = 9
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 461 and ttippag =4 and ccuenta =412140;
update detmodconta_interf set tseldia = 
'SELECT ''0300'' coletilla,''Coasegurador(es) Aceptado T.R.C '' descrip,
   vm.iprinet importe,
   LPAD (80, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121400300),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121400300),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm,  seguros sg, tomadores t, per_personas p,  movseguro ms ,agentes a
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 AND MS.cmotmov  IN (306)
 AND r.cagente = a.cagente
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 804
 AND sg.ctipcoa = 8
 AND r.ctiprec = 9
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 462 and ttippag =4 and ccuenta =412140;
update detmodconta_interf set tseldia = 
'SELECT ''0300'' coletilla,''Coasegurador(es) Aceptado T.R.C '' descrip,
   vm.iprinet importe,
   LPAD (99, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121400300),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121400300),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
FROM movrecibo m, recibos r, vdetrecibos_monpol vm,  seguros sg, tomadores t, per_personas p,  movseguro ms, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 2
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 and MS.cmotmov  NOT IN (324,321)
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 804
 AND sg.ctipcoa = 8
 AND r.ctiprec in (0,1)
 AND m.fmovfin IS NULL
 AND r.cagente = a.cagente
 AND r.cestaux in (0,1)
 and sg.npoliza NOT IN (
      select s.npoliza
        from seguros s, movrecibo mv , recibos rb
       where mv.nrecibo = rb.nrecibo
         AND rb.sseguro = s.sseguro
         and to_Char(s.femisio,''yyyy'') <> to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''dd/mm/yyyy'') > to_Char(rb.fefecto,''dd/mm/yyyy'')
         AND to_Char(mv.fmovdia,''yyyy'') = to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''mm'') in (''01'',''02''))
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 463 and ttippag =4 and ccuenta =412140;
update detmodconta_interf set tseldia = 
'SELECT ''0300'' coletilla,''Cancelaciones y/o anulaciones T.R.C '' descrip,
   vm.iprinet importe,
   LPAD (99, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121550300),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(vm.iprinet, 23, ''0'')
|| LPAD(vm.iips, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121550300),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(axis.ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm,  seguros sg, tomadores t, per_personas p,  movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 2
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 and MS.cmotmov  NOT IN (324,321)
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 804
 AND sg.ctipcoa = 8
 AND r.ctiprec in (0,1)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 and sg.npoliza IN (
      select s.npoliza
        from seguros s, movrecibo mv , recibos rb
       where mv.nrecibo = rb.nrecibo
         AND rb.sseguro = s.sseguro
         and to_Char(s.femisio,''yyyy'') <> to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''dd/mm/yyyy'') > to_Char(rb.fefecto,''dd/mm/yyyy'')
         AND to_Char(mv.fmovdia,''yyyy'') = to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''mm'') in (''01'',''02''))
   AND r.nrecibo = #idpago' where cempres = 24 and nlinea = 464 and ttippag =4 and ccuenta =412155;
   
--modificacion tabla map_detalle
update map_detalle
set nposicion = 0    
where cmapead = 'I031S'
   and norden = 221;
commit;

--modificacion de parametrizacion de homologacion de prodcutos
--disposiciones legales
update CNVPRODUCTOS_EXT
set cnv_spr = '5|50100'
where sproduc = 80009;
commit;
	
--disposiciones legales ca
insert into CNVPRODUCTOS_EXT  values (80010, '5|54100', 'AXIS', sysdate, null,null);
commit;

--particular ca
update CNVPRODUCTOS_EXT
set cnv_spr = '5|14200'
where sproduc = 8013;
commit;

--ecopetrol ca
update CNVPRODUCTOS_EXT
set cnv_spr = '5|14300'
where sproduc = 8029;
commit;

--ecopetrol ca
update CNVPRODUCTOS_EXT
set cnv_spr = '5|14300'
where sproduc = 8029;
commit;

--servicios publicos ca
update CNVPRODUCTOS_EXT
set cnv_spr = '5|14115'
where sproduc = 8021;
commit;

--particular ca me
update CNVPRODUCTOS_EXT
set cnv_spr = '5|114200'
where sproduc = 8014;
commit;

--ecopetrol ca me
update CNVPRODUCTOS_EXT
set cnv_spr = '5|114300'
where sproduc = 8030;
commit;

--servicios publicos ca me
update CNVPRODUCTOS_EXT
set cnv_spr = '5|114115'
where sproduc = 8023;
commit;

--particular
update CNVPRODUCTOS_EXT
set cnv_spr = '5|10200'
where sproduc = 8009;
commit;

--ecopetrol
update CNVPRODUCTOS_EXT
set cnv_spr = '5|10300'
where sproduc = 8025;
commit;

--servicios publicos
update CNVPRODUCTOS_EXT
set cnv_spr = '5|10115'
where sproduc = 8017;
commit;

--GARANTIA UNICA M.EXTRANJE
update CNVPRODUCTOS_EXT
set cnv_spr = '5|110105'
where sproduc = 8002;
commit;

--PARTICULAR M. EXTRANJERA
update CNVPRODUCTOS_EXT
set cnv_spr = '5|110200'
where sproduc = 8010;
commit;

--ECOPETROL M. EXTRANJ.
update CNVPRODUCTOS_EXT
set cnv_spr = '5|110300'
where sproduc = 8027;
commit;

--EMP. SER. PUBLICOS M.EXTR
update CNVPRODUCTOS_EXT
set cnv_spr = '5|110105'
where sproduc = 8003;
commit;

--SUBSID. FAMILIAR VIVIENDA
update CNVPRODUCTOS_EXT
set cnv_spr = '5|10400'
where sproduc = 80011;
commit;
 
 /*Grants paquete y sinonimo para ff_buscadatosSAP*/
GRANT EXECUTE ON AXIS.ff_buscadatosSAP TO R_AXIS;
CREATE OR REPLACE SYNONYM AXIS00.ff_buscadatosSAP FOR AXIS.ff_buscadatosSAP;

 /*Grants paquete y sinonimo para ff_buscadatosIndSAP*/
GRANT EXECUTE ON AXIS.ff_buscadatosIndSAP TO R_AXIS;
CREATE OR REPLACE SYNONYM AXIS00.ff_buscadatosIndSAP FOR AXIS.ff_buscadatosIndSAP;

/ 