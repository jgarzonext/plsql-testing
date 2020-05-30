--
DELETE  FROM detmodconta_interf WHERE cempres = 24 AND nlinea = 615;
--
insert into detmodconta_interf (SMODCON, CEMPRES, NLINEA, TTIPPAG, CCUENTA, TSELDIA, CLAENLACE, TLIBRO, TIPOFEC)
values (1, 24, 615, 2, '255288', 'SELECT ''0100'' coletilla, ''Siniestros Liquidados Por Pagar'' descrip,
NVL(s.isinretpag, 0) + NVL(s.iivapag, 0) + nvl(s.iotrosgaspag,0) importe,
    LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division_sin(SI.nsinies,s.sidepag,s.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(2552880100),''C''), 1, ''0'')
|| LPAD(NVL(p.SPERSON_ACRE,0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(2552880100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(pac_contab_conf.f_persona(null,nvl(si.cagente,sg.cagente),null,null),null,null,null),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(s.nsinies, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),1), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
 TRUNC(s.falta) fecha
 FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac, sin_tramita_destinatario sd, sin_recibos_compensados sr, per_personas p
 WHERE s.nsinies = si.nsinies
 AND sg.cramo = #cramo
 AND s.cconpag = #cconpag
 AND sd.ctipdes = s.ctipdes
 AND s.sidepag = sr.sidepag_new (+)
 AND p.sperson  = s.sperson
 AND sg.sseguro = si.sseguro
 AND sd.nsinies = s.nsinies
 AND sd.ntramit = s.ntramit 
 AND (ac.cagente = sg.cagente 
     OR ac.cagente is null)
 AND sd.sperson = s.sperson
 AND s.isinretpag IS NOT NULL
 AND si.sseguro = ac.sseguro(+)
 AND(ac.nmovimi IS NULL
          OR(ac.nmovimi = (SELECT MAX(nmovimi)
          FROM age_corretaje ac2
          WHERE ac2.sseguro = ac.sseguro
          AND ac2.nmovimi <= si.nmovimi)))
AND s.sidepag = #idpago', '1', null, 1);
