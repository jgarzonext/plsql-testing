begin
delete detmodconta_interf
where nlinea in (701,706,704,705,636,637,711,710);

commit;
Insert into DETMODCONTA_INTERF
   (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, 
    TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
 Values
   (1, 24, 704, 1, '251905', 
    'SELECT ''3004'' coletilla, ''Ret Fte. Honorarios'' descrip,
pac_corretaje.f_impcor_agente(NVL(null, 0), ac.cagente, si.sseguro,si.nmovimi) importe,
   LPAD (07, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(2519053004),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,sg.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),1,sysdate),0), 2, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0)+NVL(s.iivapag, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(null, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(2519053004),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(NVL(SUBSTR(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),2,sysdate),1,2),''0''), 2, ''0'')
|| LPAD(NVL(SUBSTR(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),2,sysdate),3,4),''0''), 2, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0)+NVL(s.iivapag, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(null, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL((select pp.nnumide from per_personas pp where pp.sperson = s.sperson),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(s.nsinies, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
TRUNC(s.falta) fecha
FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac, sin_tramita_destinatario sd, sin_recibos_compensados sr
WHERE s.nsinies = si.nsinies
AND sg.cramo = 801
AND s.cconpag = 329
AND s.sidepag = sr.sidepag_new (+)
AND sg.sseguro = si.sseguro
AND sd.nsinies = s.nsinies
AND sd.ntramit = s.ntramit
AND sd.sperson = s.sperson
AND s.isinretpag IS NOT NULL
AND si.sseguro = ac.sseguro(+)
AND(ac.nmovimi IS NULL
        OR(ac.nmovimi = (SELECT MAX(nmovimi)
        FROM age_corretaje ac2
        WHERE ac2.sseguro = ac.sseguro
        AND ac2.nmovimi <= si.nmovimi)))
AND (sg.ctipcoa <> 8 OR sg.ctipcoa IS NULL)
AND EXISTS (select pr.sperson from per_regimenfiscal pr
                      where pr.sperson = s.sperson
                      and pr.cregfiscal in (1))
AND EXISTS (SELECT spg.sidepag
                        FROM sin_tramita_pago_gar spg, sin_tramita_reserva sr
                        WHERE spg.sidepag = s.sidepag
                        AND sr.nsinies =  s.nsinies
                        AND sr.nmovres = spg.nmovres
                        AND sr.csolidaridad = 0)
AND s.sidepag = #idpago', '1', '0L1L', 1);
Insert into DETMODCONTA_INTERF
   (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, 
    TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
 Values
   (1, 24, 705, 1, '251905', 
    'SELECT ''8002'' coletilla, ''Ica Retenido Por Honorarios'' descrip,
pac_corretaje.f_impcor_agente(NVL(null, 0), ac.cagente, si.sseguro,si.nmovimi) importe,
   LPAD (07, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(2519058002),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,sg.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),1,sysdate),0), 2, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0)+NVL(s.iivapag, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(null, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(2519058002),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(NVL(SUBSTR(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),4,sysdate),1,2),''0''), 2, ''0'')
|| LPAD(NVL(SUBSTR(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),4,sysdate),3,4),''0''), 2, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0)+NVL(s.iivapag, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(null, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL((select pp.nnumide from per_personas pp where pp.sperson = s.sperson),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(s.nsinies, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
TRUNC(s.falta) fecha
FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac, sin_tramita_destinatario sd, sin_recibos_compensados sr
WHERE s.nsinies = si.nsinies
AND sg.cramo = 801
AND s.cconpag = 329
AND s.sidepag = sr.sidepag_new (+)
AND sg.sseguro = si.sseguro
AND sd.nsinies = s.nsinies
AND sd.ntramit = s.ntramit
AND sd.sperson = s.sperson
AND s.isinretpag IS NOT NULL
AND si.sseguro = ac.sseguro(+)
AND(ac.nmovimi IS NULL
        OR(ac.nmovimi = (SELECT MAX(nmovimi)
        FROM age_corretaje ac2
        WHERE ac2.sseguro = ac.sseguro
        AND ac2.nmovimi <= si.nmovimi)))
AND (sg.ctipcoa <> 8 OR sg.ctipcoa IS NULL)
AND EXISTS (select pr.sperson from per_regimenfiscal pr
                      where pr.sperson = s.sperson
                      and pr.cregfiscal in (1))
AND EXISTS (SELECT spg.sidepag
                        FROM sin_tramita_pago_gar spg, sin_tramita_reserva sr
                        WHERE spg.sidepag = s.sidepag
                        AND sr.nsinies =  s.nsinies
                        AND sr.nmovres = spg.nmovres
                        AND sr.csolidaridad = 0)
AND s.sidepag = #idpago', '1', '0L1L', 1);
Insert into DETMODCONTA_INTERF
   (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, 
    TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
 Values
   (1, 24, 706, 1, '255288', 
    'SELECT ''0100'' coletilla, ''Siniestros Liquidados Por Pagar'' descrip,
 pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0)+NVL(s.iivapag, 0), ac.cagente, si.sseguro,si.nmovimi) importe,
   LPAD (07, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(2552880100),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,sg.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),1,sysdate),0), 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(2552880100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL((select pp.nnumide from per_personas pp where pp.sperson = s.sperson),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(s.nsinies, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 TRUNC(s.falta) fecha
 FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac, sin_tramita_destinatario sd, sin_recibos_compensados sr
 WHERE s.nsinies = si.nsinies
 AND sg.cramo = 801
 AND s.cconpag = 329
 AND s.sidepag = sr.sidepag_new (+)
 AND sg.sseguro = si.sseguro
 AND sd.nsinies = s.nsinies
 AND sd.ntramit = s.ntramit
 AND sd.sperson = s.sperson
 AND s.isinretpag IS NOT NULL
 AND si.sseguro = ac.sseguro(+)
 AND(ac.nmovimi IS NULL
          OR(ac.nmovimi = (SELECT MAX(nmovimi)
          FROM age_corretaje ac2
          WHERE ac2.sseguro = ac.sseguro
          AND ac2.nmovimi <= si.nmovimi)))
AND (sg.ctipcoa <> 8 OR sg.ctipcoa IS NULL)
AND EXISTS (select pr.sperson from per_regimenfiscal pr
                      where pr.sperson = s.sperson
                      and pr.cregfiscal in (1))
AND EXISTS (SELECT spg.sidepag
                        FROM sin_tramita_pago_gar spg, sin_tramita_reserva sr
                        WHERE spg.sidepag = s.sidepag
                        AND sr.nsinies =  s.nsinies
                        AND sr.nmovres = spg.nmovres
                        AND sr.csolidaridad = 0)
AND s.sidepag = #idpago', '1', '0L1L', 1);

Insert into DETMODCONTA_INTERF
   (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, 
    TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
 Values
   (1, 24, 701, 1, '512105', 
    'SELECT ''0102'' coletilla, ''Gasto En Atencion Del Siniestro Cumplimiento'' descrip,
    pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0)+NVL(s.iivapag, 0), ac.cagente, si.sseguro, si.nmovimi) importe,
   LPAD (07, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(5121050102),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,sg.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),1,sysdate),0), 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(5121050102),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL((select pp.nnumide from per_personas pp where pp.sperson = s.sperson),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(s.nsinies, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 TRUNC(s.falta) fecha
 FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac
 WHERE s.nsinies = si.nsinies
AND sg.cramo = 801
AND s.cconpag = 329
AND sg.sseguro = si.sseguro
AND s.isinretpag IS NOT NULL
AND TO_CHAR(s.falta, ''YYYY'') = TO_CHAR(f_sysdate, ''YYYY'')
AND si.sseguro = ac.sseguro(+)
AND(ac.nmovimi IS NULL
        OR(ac.nmovimi = (SELECT MAX(nmovimi)
        FROM age_corretaje ac2
        WHERE ac2.sseguro = ac.sseguro
        AND ac2.nmovimi <= si.nmovimi)))
AND (sg.ctipcoa <> 8 OR sg.ctipcoa IS NULL)
AND EXISTS (select pr.sperson from per_regimenfiscal pr
                      where pr.sperson = s.sperson
                      and pr.cregfiscal in (1))
AND EXISTS (SELECT spg.sidepag
                        FROM sin_tramita_pago_gar spg, sin_tramita_reserva sr
                        WHERE spg.sidepag = s.sidepag
                        AND sr.nsinies =  s.nsinies
                        AND sr.nmovres = spg.nmovres
                        AND sr.csolidaridad = 0)
AND s.sidepag = #idpago', '1', '0L1L', 1);

Insert into DETMODCONTA_INTERF
   (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, 
    TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
 Values
   (1, 24, 636, 1, '251905', 
    'SELECT ''3004'' coletilla, ''Ret Fte. Honorarios'' descrip,
pac_corretaje.f_impcor_agente(NVL(null, 0), ac.cagente, si.sseguro,si.nmovimi) importe,
   LPAD (07, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(2519053004),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,sg.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),1,sysdate),0), 2, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0)+NVL(s.iivapag, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(null, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(2519053004),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(NVL(SUBSTR(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),2,sysdate),1,2),''0''), 2, ''0'')
|| LPAD(NVL(SUBSTR(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),2,sysdate),3,4),''0''), 2, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0)+NVL(s.iivapag, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(null, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL((select pp.nnumide from per_personas pp where pp.sperson = s.sperson),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(s.nsinies, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
TRUNC(s.falta) fecha
FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac, sin_tramita_destinatario sd, sin_recibos_compensados sr
WHERE s.nsinies = si.nsinies
AND sg.cramo = 801
AND s.cconpag = 326
AND s.sidepag = sr.sidepag_new (+)
AND sg.sseguro = si.sseguro
AND sd.nsinies = s.nsinies
AND sd.ntramit = s.ntramit
AND sd.sperson = s.sperson
AND s.isinretpag IS NOT NULL
AND si.sseguro = ac.sseguro(+)
AND(ac.nmovimi IS NULL
        OR(ac.nmovimi = (SELECT MAX(nmovimi)
        FROM age_corretaje ac2
        WHERE ac2.sseguro = ac.sseguro
        AND ac2.nmovimi <= si.nmovimi)))
AND (sg.ctipcoa <> 8 OR sg.ctipcoa IS NULL)
AND EXISTS (select pr.sperson from per_regimenfiscal pr
                      where pr.sperson = s.sperson
                      and pr.cregfiscal in (1))
AND EXISTS (SELECT spg.sidepag
                        FROM sin_tramita_pago_gar spg, sin_tramita_reserva sr
                        WHERE spg.sidepag = s.sidepag
                        AND sr.nsinies =  s.nsinies
                        AND sr.nmovres = spg.nmovres
                        AND sr.csolidaridad = 0)
AND s.sidepag = #idpago', '1', '0L1L', 1);
Insert into DETMODCONTA_INTERF
   (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, 
    TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
 Values
   (1, 24, 637, 1, '251905', 
    'SELECT ''8002'' coletilla, ''Ica Retenido Por Honorarios'' descrip,
pac_corretaje.f_impcor_agente(NVL(null, 0), ac.cagente, si.sseguro,si.nmovimi) importe,
   LPAD (07, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(2519058002),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,sg.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),1,sysdate),0), 2, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0)+NVL(s.iivapag, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(null, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(2519058002),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(NVL(SUBSTR(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),4,sysdate),1,2),''0''), 2, ''0'')
|| LPAD(NVL(SUBSTR(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),4,sysdate),3,4),''0''), 2, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0)+NVL(s.iivapag, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(null, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL((select pp.nnumide from per_personas pp where pp.sperson = s.sperson),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(s.nsinies, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
TRUNC(s.falta) fecha
FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac, sin_tramita_destinatario sd, sin_recibos_compensados sr
WHERE s.nsinies = si.nsinies
AND sg.cramo = 801
AND s.cconpag = 326
AND s.sidepag = sr.sidepag_new (+)
AND sg.sseguro = si.sseguro
AND sd.nsinies = s.nsinies
AND sd.ntramit = s.ntramit
AND sd.sperson = s.sperson
AND s.isinretpag IS NOT NULL
AND si.sseguro = ac.sseguro(+)
AND(ac.nmovimi IS NULL
        OR(ac.nmovimi = (SELECT MAX(nmovimi)
        FROM age_corretaje ac2
        WHERE ac2.sseguro = ac.sseguro
        AND ac2.nmovimi <= si.nmovimi)))
AND (sg.ctipcoa <> 8 OR sg.ctipcoa IS NULL)
AND EXISTS (select pr.sperson from per_regimenfiscal pr
                      where pr.sperson = s.sperson
                      and pr.cregfiscal in (1))
AND EXISTS (SELECT spg.sidepag
                        FROM sin_tramita_pago_gar spg, sin_tramita_reserva sr
                        WHERE spg.sidepag = s.sidepag
                        AND sr.nsinies =  s.nsinies
                        AND sr.nmovres = spg.nmovres
                        AND sr.csolidaridad = 0)
AND s.sidepag = #idpago', '1', '0L1L', 1);
COMMIT;

delete detmodconta_interf
where nlinea in (632,633,707,712, 713);

Insert into DETMODCONTA_INTERF
   (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, 
    TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
 Values
   (1, 24, 632, 1, '512105', 
    'SELECT ''0102'' coletilla, ''Gasto En Atencion Del Siniestro Cumplimiento'' descrip,
 pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0)+NVL(s.iivapag, 0), ac.cagente, si.sseguro, si.nmovimi) importe,
   LPAD (07, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(5121050102),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,sg.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),1,sysdate),0), 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(5121050102),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL((select pp.nnumide from per_personas pp where pp.sperson = s.sperson),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(s.nsinies, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
TRUNC(s.falta) fecha
 FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac
 WHERE s.nsinies = si.nsinies
AND sg.cramo = 801
AND s.cconpag = 326
AND sg.sseguro = si.sseguro
AND s.isinretpag IS NOT NULL
AND TO_CHAR(s.falta, ''YYYY'') = TO_CHAR(f_sysdate, ''YYYY'')
AND si.sseguro = ac.sseguro(+)
AND(ac.nmovimi IS NULL
        OR(ac.nmovimi = (SELECT MAX(nmovimi)
        FROM age_corretaje ac2
        WHERE ac2.sseguro = ac.sseguro
        AND ac2.nmovimi <= si.nmovimi)))
AND sg.ctipcoa = 0
AND EXISTS (select pr.sperson from per_regimenfiscal pr
                      where pr.sperson = s.sperson
                      and pr.cregfiscal in (1))
AND EXISTS (SELECT spg.sidepag
                        FROM sin_tramita_pago_gar spg, sin_tramita_reserva sr
                        WHERE spg.sidepag = s.sidepag
                        AND sr.nsinies =  s.nsinies
                        AND sr.nmovres = spg.nmovres
                        AND sr.csolidaridad = 0)
AND s.sidepag = #idpago', '1', '0L1L', 1);
Insert into DETMODCONTA_INTERF
   (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, 
    TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
 Values
   (1, 24, 633, 1, '255288', 
    'SELECT ''0100'' coletilla, ''Siniestros Liquidados Por Pagar'' descrip,
pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0)+NVL(s.iivapag, 0), ac.cagente, si.sseguro,si.nmovimi) importe,
   LPAD (07, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(2552880100),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,sg.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),1,sysdate),0), 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(2552880100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL((select pp.nnumide from per_personas pp where pp.sperson = s.sperson),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(s.nsinies, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
TRUNC(s.falta) fecha
FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac, sin_tramita_destinatario sd, sin_recibos_compensados sr
WHERE s.nsinies = si.nsinies
AND sg.cramo = 801
AND s.cconpag = 326
AND s.sidepag = sr.sidepag_new (+)
AND sg.sseguro = si.sseguro
AND sd.nsinies = s.nsinies
AND sd.ntramit = s.ntramit
AND sd.sperson = s.sperson
AND s.isinretpag IS NOT NULL
AND si.sseguro = ac.sseguro(+)
AND(ac.nmovimi IS NULL
        OR(ac.nmovimi = (SELECT MAX(nmovimi)
        FROM age_corretaje ac2
        WHERE ac2.sseguro = ac.sseguro
        AND ac2.nmovimi <= si.nmovimi)))
AND sg.ctipcoa = 0
AND EXISTS (select pr.sperson from per_regimenfiscal pr
                      where pr.sperson = s.sperson
                      and pr.cregfiscal in (1))
AND EXISTS (SELECT spg.sidepag
                        FROM sin_tramita_pago_gar spg, sin_tramita_reserva sr
                        WHERE spg.sidepag = s.sidepag
                        AND sr.nsinies =  s.nsinies
                        AND sr.nmovres = spg.nmovres
                        AND sr.csolidaridad = 0)
AND s.sidepag = #idpago', '1', '0L1L', 1);

Insert into DETMODCONTA_INTERF
   (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, 
    TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
 Values
   (1, 24, 707, 1, '512105', 
    'SELECT ''0102'' coletilla, ''Gasto En Atencion Del Siniestro Cumplimiento'' descrip,
     pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0)+NVL(s.iivapag, 0), ac.cagente, si.sseguro, si.nmovimi) importe,
   LPAD (07, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(5121050102),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,sg.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),1,sysdate),0), 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(5121050102),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL((select pp.nnumide from per_personas pp where pp.sperson = s.sperson),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(s.nsinies, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 TRUNC(s.falta) fecha
 FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac
 WHERE s.nsinies = si.nsinies
AND sg.cramo = 801
AND s.cconpag = 326
AND sg.sseguro = si.sseguro
AND s.isinretpag IS NOT NULL
AND TO_CHAR(s.falta, ''YYYY'') = TO_CHAR(f_sysdate, ''YYYY'')
AND si.sseguro = ac.sseguro(+)
AND(ac.nmovimi IS NULL
        OR(ac.nmovimi = (SELECT MAX(nmovimi)
        FROM age_corretaje ac2
        WHERE ac2.sseguro = ac.sseguro
        AND ac2.nmovimi <= si.nmovimi)))
AND nvl(sg.ctipcoa,0) = 1
AND EXISTS (select pr.sperson from per_regimenfiscal pr
                      where pr.sperson = s.sperson
                      and pr.cregfiscal in (1))
AND EXISTS (SELECT spg.sidepag
                        FROM sin_tramita_pago_gar spg, sin_tramita_reserva sr
                        WHERE spg.sidepag = s.sidepag
                        AND sr.nsinies =  s.nsinies
                        AND sr.nmovres = spg.nmovres
                        AND sr.csolidaridad = 1)
AND s.sidepag = #idpago', '1', '0L1L', 1);

Insert into DETMODCONTA_INTERF
   (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, 
    TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
 Values
   (1, 24, 712, 1, '167688', 
    'SELECT ''0100'' coletilla, ''Coaseguradores Cuenta Corriente Cedidos'' descrip,
nvl((select pac_corretaje.f_impcor_agente(NVL(sum(cc.imovimi), 0), ac.cagente, si.sseguro, si.nmovimi)
      from ctacoaseguro cc where s.sidepag = cc.sidepag
      AND s.nsinies = cc.nsinies
      AND s.ntramit = cc.ntramit
      and cc.cmovimi = 10
      group by ac.cagente, si.sseguro),0) importe,
   LPAD (07, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(1676880100),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,sg.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),1,sysdate),0), 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(1676880100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL((select pp.nnumide from per_personas pp where pp.sperson = s.sperson),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(s.nsinies, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 TRUNC(s.falta) fecha
 FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac,
 sin_tramita_destinatario sd, sin_recibos_compensados sr
 WHERE s.nsinies = si.nsinies
 AND sg.cramo = 801
AND s.cconpag = 326
 AND s.sidepag = sr.sidepag_new (+)
 AND sg.sseguro = si.sseguro
 AND sd.nsinies = s.nsinies
 AND sd.ntramit = s.ntramit
 AND sd.sperson = s.sperson
 AND s.isinretpag IS NOT NULL
 AND si.sseguro = ac.sseguro(+)
 AND(ac.nmovimi IS NULL
 OR(ac.nmovimi = (SELECT MAX(nmovimi)
                              FROM age_corretaje ac2
                              WHERE ac2.sseguro = ac.sseguro
                              AND ac2.nmovimi <= si.nmovimi)))
AND nvl(sg.ctipcoa,0) = 1
AND EXISTS (select pr.sperson from per_regimenfiscal pr
                      where pr.sperson = s.sperson
                      and pr.cregfiscal in (1))
AND EXISTS (SELECT spg.sidepag
                        FROM sin_tramita_pago_gar spg, sin_tramita_reserva sr
                        WHERE spg.sidepag = s.sidepag
                        AND sr.nsinies =  s.nsinies
                        AND sr.nmovres = spg.nmovres
                        AND sr.csolidaridad = 1)
AND s.sidepag = #idpago', '1', '0L1L', 1);
COMMIT;


Insert into DETMODCONTA_INTERF
   (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, 
    TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
 Values
   (1, 24, 713, 1, '255288', 
    'SELECT ''0100'' coletilla, ''Siniestros Liquidados Por Pagar'' descrip,
 pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0)+NVL(s.iivapag, 0), ac.cagente, si.sseguro,si.nmovimi)+
 nvl((select pac_corretaje.f_impcor_agente(NVL(sum(cc.imovimi), 0), ac.cagente, si.sseguro, si.nmovimi)
      from ctacoaseguro cc where s.sidepag = cc.sidepag
      AND s.nsinies = cc.nsinies
      AND s.ntramit = cc.ntramit
      and cc.cmovimi = 10
      group by ac.cagente, si.sseguro),0)importe,
   LPAD (07, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(2552880100),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,sg.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),1,sysdate),0), 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(2552880100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL((select pp.nnumide from per_personas pp where pp.sperson = s.sperson),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(s.nsinies, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 TRUNC(s.falta) fecha
 FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac, sin_tramita_destinatario sd, sin_recibos_compensados sr
 WHERE s.nsinies = si.nsinies
 AND sg.cramo = 801
 AND s.cconpag = 326
 AND s.sidepag = sr.sidepag_new (+)
 AND sg.sseguro = si.sseguro
 AND sd.nsinies = s.nsinies
 AND sd.ntramit = s.ntramit
 AND sd.sperson = s.sperson
 AND s.isinretpag IS NOT NULL
 AND si.sseguro = ac.sseguro(+)
 AND(ac.nmovimi IS NULL
          OR(ac.nmovimi = (SELECT MAX(nmovimi)
          FROM age_corretaje ac2
          WHERE ac2.sseguro = ac.sseguro
          AND ac2.nmovimi <= si.nmovimi)))
AND nvl(sg.ctipcoa,0) = 1
AND EXISTS (select pr.sperson from per_regimenfiscal pr
                      where pr.sperson = s.sperson
                      and pr.cregfiscal in (1))
AND EXISTS (SELECT spg.sidepag
                        FROM sin_tramita_pago_gar spg, sin_tramita_reserva sr
                        WHERE spg.sidepag = s.sidepag
                        AND sr.nsinies =  s.nsinies
                        AND sr.nmovres = spg.nmovres
                        AND sr.csolidaridad = 1)
AND s.sidepag = #idpago', '1', '0L1L', 1);

Insert into DETMODCONTA_INTERF
   (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, 
    TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
 Values
   (1, 24, 711, 1, '251905', 
    'SELECT ''8002'' coletilla, ''Ica Retenido Por Honorarios'' descrip,
pac_corretaje.f_impcor_agente(NVL(null, 0), ac.cagente, si.sseguro,si.nmovimi) importe,
   LPAD (07, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(2519058002),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,sg.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),1,sysdate),0), 2, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0)+NVL(s.iivapag, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(null, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(2519058002),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(NVL(SUBSTR(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),4,sysdate),1,2),''0''), 2, ''0'')
|| LPAD(NVL(SUBSTR(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),4,sysdate),3,4),''0''), 2, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0)+NVL(s.iivapag, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(null, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL((select pp.nnumide from per_personas pp where pp.sperson = s.sperson),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(s.nsinies, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
TRUNC(s.falta) fecha
FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac, sin_tramita_destinatario sd, sin_recibos_compensados sr
WHERE s.nsinies = si.nsinies
AND sg.cramo = 801
AND s.cconpag = 326
AND s.sidepag = sr.sidepag_new (+)
AND sg.sseguro = si.sseguro
AND sd.nsinies = s.nsinies
AND sd.ntramit = s.ntramit
AND sd.sperson = s.sperson
AND s.isinretpag IS NOT NULL
AND si.sseguro = ac.sseguro(+)
AND(ac.nmovimi IS NULL
        OR(ac.nmovimi = (SELECT MAX(nmovimi)
        FROM age_corretaje ac2
        WHERE ac2.sseguro = ac.sseguro
        AND ac2.nmovimi <= si.nmovimi)))
AND (sg.ctipcoa <> 8 OR sg.ctipcoa IS NULL)
AND EXISTS (select pr.sperson from per_regimenfiscal pr
                      where pr.sperson = s.sperson
                      and pr.cregfiscal in (1))
AND EXISTS (SELECT spg.sidepag
                        FROM sin_tramita_pago_gar spg, sin_tramita_reserva sr
                        WHERE spg.sidepag = s.sidepag
                        AND sr.nsinies =  s.nsinies
                        AND sr.nmovres = spg.nmovres
                        AND sr.csolidaridad = 1)
AND s.sidepag = #idpago', '1', '0L1L', 1);

Insert into DETMODCONTA_INTERF
   (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, 
    TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
 Values
   (1, 24, 710, 1, '251905', 
    'SELECT ''3004'' coletilla, ''Ret Fte. Honorarios'' descrip,
pac_corretaje.f_impcor_agente(NVL(null, 0), ac.cagente, si.sseguro,si.nmovimi) importe,
   LPAD (07, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(2519053004),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,sg.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),1,sysdate),0), 2, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0)+NVL(s.iivapag, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(null, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(2519053004),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(NVL(SUBSTR(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),2,sysdate),1,2),''0''), 2, ''0'')
|| LPAD(NVL(SUBSTR(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),2,sysdate),3,4),''0''), 2, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0)+NVL(s.iivapag, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(null, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL((select pp.nnumide from per_personas pp where pp.sperson = s.sperson),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(s.nsinies, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
TRUNC(s.falta) fecha
FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac, sin_tramita_destinatario sd, sin_recibos_compensados sr
WHERE s.nsinies = si.nsinies
AND sg.cramo = 801
AND s.cconpag = 326
AND s.sidepag = sr.sidepag_new (+)
AND sg.sseguro = si.sseguro
AND sd.nsinies = s.nsinies
AND sd.ntramit = s.ntramit
AND sd.sperson = s.sperson
AND s.isinretpag IS NOT NULL
AND si.sseguro = ac.sseguro(+)
AND(ac.nmovimi IS NULL
        OR(ac.nmovimi = (SELECT MAX(nmovimi)
        FROM age_corretaje ac2
        WHERE ac2.sseguro = ac.sseguro
        AND ac2.nmovimi <= si.nmovimi)))
AND (sg.ctipcoa <> 8 OR sg.ctipcoa IS NULL)
AND EXISTS (select pr.sperson from per_regimenfiscal pr
                      where pr.sperson = s.sperson
                      and pr.cregfiscal in (1))
AND EXISTS (SELECT spg.sidepag
                        FROM sin_tramita_pago_gar spg, sin_tramita_reserva sr
                        WHERE spg.sidepag = s.sidepag
                        AND sr.nsinies =  s.nsinies
                        AND sr.nmovres = spg.nmovres
                        AND sr.csolidaridad = 1)
AND s.sidepag = #idpago', '1', '0L1L', 1);

commit;
end;
/