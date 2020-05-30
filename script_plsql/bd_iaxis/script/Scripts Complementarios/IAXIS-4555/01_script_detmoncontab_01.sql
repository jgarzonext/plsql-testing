DELETE from detmodconta_interf where nlinea in (612,613,614,615,620,621,622,623,625,626,627,632,633,680,681,682,699);
--
Insert into DETMODCONTA_INTERF (SMODCON,CEMPRES,NLINEA,TTIPPAG,CCUENTA,TSELDIA,CLAENLACE,TLIBRO,TIPOFEC) values (1,24,612,2,'512105','SELECT SUBSTR(#cuenta,7,9) coletilla, ''Costo Del Siniestro Cumplimiento'' descrip,
NVL(s.isinretpag, 0) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division_sin(SI.nsinies,s.sidepag,s.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(NVL(p.SPERSON_ACRE,0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_siniestros.f_valida_ind_iva(S.SIDEPAG,S.CCONPAG,#codescenario),0), 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac, per_personas p
WHERE s.nsinies = si.nsinies
AND sg.cramo = #cramo
AND s.cconpag = #cconpag
AND sg.sseguro = si.sseguro
AND p.sperson  = s.sperson
AND s.isinretpag IS NOT NULL
AND TO_CHAR(s.falta, ''YYYY'') = TO_CHAR( f_sysdate  , ''YYYY'')
AND si.sseguro = ac.sseguro(+)
AND (ac.cagente = sg.cagente 
     OR ac.cagente is null)
AND(ac.nmovimi IS NULL
OR(ac.nmovimi = (SELECT MAX(nmovimi)
                            FROM age_corretaje ac2
                            WHERE ac2.sseguro = ac.sseguro
                            AND ac2.nmovimi <= si.nmovimi)))
AND s.sidepag = #idpago','1',null,1);
Insert into DETMODCONTA_INTERF (SMODCON,CEMPRES,NLINEA,TTIPPAG,CCUENTA,TSELDIA,CLAENLACE,TLIBRO,TIPOFEC) values (1,24,613,2,'255288','SELECT SUBSTR(#cuenta , 7 , 9 ) coletilla, ''Siniestros Liquidados Por Pagar'' descrip,
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
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(NVL(p.SPERSON_ACRE,0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
AND s.sidepag = #idpago','1',null,1);
Insert into DETMODCONTA_INTERF (SMODCON,CEMPRES,NLINEA,TTIPPAG,CCUENTA,TSELDIA,CLAENLACE,TLIBRO,TIPOFEC) values (1,24,614,2,'512105','SELECT SUBSTR(#cuenta,7,9) coletilla, ''Otros gastos'' descrip,
NVL(s.iotrosgaspag, 0) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division_sin(SI.nsinies,s.sidepag,s.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(NVL(p.SPERSON_ACRE,0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(''GD'', 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac, per_personas p
WHERE s.nsinies = si.nsinies
AND sg.cramo = #cramo
AND s.cconpag = #cconpag
AND sg.sseguro = si.sseguro
AND p.sperson  = s.sperson
AND (ac.cagente = sg.cagente 
     OR ac.cagente is null)
AND s.isinretpag IS NOT NULL
AND TO_CHAR(s.falta, ''YYYY'') = TO_CHAR( f_sysdate  , ''YYYY'')
AND si.sseguro = ac.sseguro(+)
AND(ac.nmovimi IS NULL
OR(ac.nmovimi = (SELECT MAX(nmovimi)
                            FROM age_corretaje ac2
                            WHERE ac2.sseguro = ac.sseguro
                            AND ac2.nmovimi <= si.nmovimi)))
AND s.sidepag = #idpago','1',null,1);
Insert into DETMODCONTA_INTERF (SMODCON,CEMPRES,NLINEA,TTIPPAG,CCUENTA,TSELDIA,CLAENLACE,TLIBRO,TIPOFEC) values (1,24,615,2,'255288','SELECT SUBSTR(#cuenta , 7 , 9 ) coletilla, ''Siniestros Liquidados Por Pagar'' descrip,
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
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(NVL(p.SPERSON_ACRE,0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
AND s.sidepag = #idpago','1',null,1);
Insert into DETMODCONTA_INTERF (SMODCON,CEMPRES,NLINEA,TTIPPAG,CCUENTA,TSELDIA,CLAENLACE,TLIBRO,TIPOFEC) values (1,24,620,2,'512105','SELECT SUBSTR(#cuenta,7,9) coletilla, ''Gasto En Atencion Del Siniestro Cumplimiento'' descrip,
 pac_corretaje.f_impcor_agente(NVL(sp.ipago, 0), ac.cagente, si.sseguro, si.nmovimi) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division_sin(SI.nsinies,s.sidepag,s.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(NVL(p.SPERSON_ACRE,0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(''GD'', 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
 FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac, sin_solidaridad_pago sp, per_personas p
 WHERE s.nsinies = si.nsinies
AND sg.cramo = #cramo
AND s.cconpag = #cconpag
AND sg.sseguro = si.sseguro
AND s.isinretpag IS NOT NULL
AND p.sperson = s.sperson
AND sp.tliquida = 59
AND sp.nsinies = s.nsinies
AND sp.sidepag = s.sidepag
AND TO_CHAR(s.falta, ''YYYY'') = TO_CHAR(f_sysdate, ''YYYY'')
AND (ac.cagente = sg.cagente 
     OR ac.cagente is null)
AND si.sseguro = ac.sseguro(+)
AND(ac.nmovimi IS NULL
        OR(ac.nmovimi = (SELECT MAX(nmovimi)
        FROM age_corretaje ac2
        WHERE ac2.sseguro = ac.sseguro
        AND ac2.nmovimi <= si.nmovimi)))
AND EXISTS (SELECT sp1.sidepag
              FROM sin_solidaridad_pago sp1
             WHERE sp1.sidepag = s.sidepag
               AND sp1.nsinies = s.nsinies)
AND s.sidepag = #idpago','1',null,1);
Insert into DETMODCONTA_INTERF (SMODCON,CEMPRES,NLINEA,TTIPPAG,CCUENTA,TSELDIA,CLAENLACE,TLIBRO,TIPOFEC) values (1,24,621,2,'167688','SELECT SUBSTR(#cuenta ,7 ,9) coletilla, ''Coaseguradores Cuenta Corriente Cedidos'' descrip,
  NVL(sp.ipago, 0) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division_sin(SI.nsinies,s.sidepag,s.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(NVL(p.SPERSON_DEUD,0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(''GD'', 2, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(s.iivapag, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(NVL(SUBSTR(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),4,sysdate),1,2),''0''), 2, ''0'')
|| LPAD(NVL(SUBSTR(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),4,sysdate),3,4),''0''), 2, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(s.ireteicapag, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
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
 FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac, sin_solidaridad_pago sp,
 sin_tramita_destinatario sd, sin_recibos_compensados sr , per_personas p
 WHERE s.nsinies = si.nsinies
 AND sg.cramo = #cramo
AND s.cconpag = #cconpag
 AND s.sidepag = sr.sidepag_new (+)
 AND sg.sseguro = si.sseguro
 AND p.sperson = sp.sperson
 AND sp.tliquida = 96
 AND sp.nsinies = s.nsinies
 AND sp.sidepag = s.sidepag
 AND sd.nsinies = s.nsinies
 AND sd.ntramit = s.ntramit
 AND sd.sperson = s.sperson
 AND s.isinretpag IS NOT NULL
 AND (ac.cagente = sg.cagente 
     OR ac.cagente is null)
 AND si.sseguro = ac.sseguro(+)
 AND(ac.nmovimi IS NULL
 OR(ac.nmovimi = (SELECT MAX(nmovimi)
                              FROM age_corretaje ac2
                              WHERE ac2.sseguro = ac.sseguro
                              AND ac2.nmovimi <= si.nmovimi)))
AND EXISTS (SELECT sp1.sidepag
            FROM sin_solidaridad_pago sp1
           WHERE sp1.sidepag = s.sidepag
             AND sp1.nsinies = s.nsinies)
AND s.sidepag = #idpago','1',null,1);
Insert into DETMODCONTA_INTERF (SMODCON,CEMPRES,NLINEA,TTIPPAG,CCUENTA,TSELDIA,CLAENLACE,TLIBRO,TIPOFEC) values (1,24,622,2,'512105','SELECT SUBSTR(#cuenta,7,9) coletilla, ''Gasto En Atencion Del Siniestro Cumplimiento'' descrip,
 NVL(sp.ipago, 0) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division_sin(SI.nsinies,s.sidepag,s.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(NVL(p.SPERSON_ACRE,0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(''GD'', 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
 FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac, sin_solidaridad_pago sp, per_personas p
 WHERE s.nsinies = si.nsinies
AND sg.cramo = #cramo
AND s.cconpag = #cconpag
AND sg.sseguro = si.sseguro
AND s.isinretpag IS NOT NULL
AND p.sperson = s.sperson
AND sp.tliquida = 59
AND sp.nsinies = s.nsinies
AND sp.sidepag = s.sidepag
AND TO_CHAR(s.falta, ''YYYY'') = TO_CHAR(f_sysdate, ''YYYY'')
AND (ac.cagente = sg.cagente 
     OR ac.cagente is null)
AND si.sseguro = ac.sseguro(+)
AND(ac.nmovimi IS NULL
        OR(ac.nmovimi = (SELECT MAX(nmovimi)
        FROM age_corretaje ac2
        WHERE ac2.sseguro = ac.sseguro
        AND ac2.nmovimi <= si.nmovimi)))
AND EXISTS (SELECT sp1.sidepag
              FROM sin_solidaridad_pago sp1
             WHERE sp1.sidepag = s.sidepag
               AND sp1.nsinies = s.nsinies)
AND s.sidepag = #idpago','1',null,1);
Insert into DETMODCONTA_INTERF (SMODCON,CEMPRES,NLINEA,TTIPPAG,CCUENTA,TSELDIA,CLAENLACE,TLIBRO,TIPOFEC) values (1,24,623,2,'255288','SELECT SUBSTR(#cuenta , 7 , 9 ) coletilla, ''Siniestros Liquidados Por Pagar'' descrip,
NVL(sp.ipago, 0) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division_sin(SI.nsinies,s.sidepag,s.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(NVL(p.SPERSON_ACRE,0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac, sin_tramita_destinatario sd, sin_recibos_compensados sr , per_personas p,
     sin_solidaridad_pago sp
WHERE s.nsinies = si.nsinies
AND sg.cramo = #cramo
AND s.cconpag = #cconpag
AND s.sidepag = sr.sidepag_new (+)
AND p.sperson = sp.sperson
AND sp.nsinies = s.nsinies
AND sp.sidepag = s.sidepag
AND sp.tliquida = 95
AND sg.sseguro = si.sseguro
AND sd.nsinies = s.nsinies
AND sd.ntramit = s.ntramit
AND sd.sperson = s.sperson
AND s.isinretpag IS NOT NULL
AND (ac.cagente = sg.cagente 
     OR ac.cagente is null)
AND si.sseguro = ac.sseguro(+)
AND(ac.nmovimi IS NULL
        OR(ac.nmovimi = (SELECT MAX(nmovimi)
        FROM age_corretaje ac2
        WHERE ac2.sseguro = ac.sseguro
        AND ac2.nmovimi <= si.nmovimi)))
AND EXISTS (SELECT sp1.sidepag
            FROM sin_solidaridad_pago sp1
           WHERE sp1.sidepag = s.sidepag
             AND sp1.nsinies = s.nsinies)
AND s.sidepag = #idpago','1',null,1);
Insert into DETMODCONTA_INTERF (SMODCON,CEMPRES,NLINEA,TTIPPAG,CCUENTA,TSELDIA,CLAENLACE,TLIBRO,TIPOFEC) values (1,24,625,2,'512105','SELECT SUBSTR(#cuenta,7,9) coletilla, ''Otros gastos'' descrip,
pac_corretaje.f_impcor_agente(NVL(s.iotrosgaspag, 0) , ac.cagente, si.sseguro,si.nmovimi) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division_sin(SI.nsinies,s.sidepag,s.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(NVL(p.SPERSON_ACRE,0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(''GD'', 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac, per_personas p
 WHERE s.nsinies = si.nsinies
AND sg.cramo = #cramo
AND s.cconpag = #cconpag
 AND sg.sseguro = si.sseguro
AND p.sperson  = s.sperson
 AND s.isinretpag IS NOT NULL
AND TO_CHAR(s.falta, ''YYYY'') = TO_CHAR( f_sysdate  , ''YYYY'')
 AND si.sseguro = ac.sseguro(+)
 AND(ac.nmovimi IS NULL
 OR(ac.nmovimi = (SELECT MAX(nmovimi)
                              FROM age_corretaje ac2
                              WHERE ac2.sseguro = ac.sseguro
                              AND ac2.nmovimi <= si.nmovimi)))
AND s.sidepag = #idpago','1',null,1);
Insert into DETMODCONTA_INTERF (SMODCON,CEMPRES,NLINEA,TTIPPAG,CCUENTA,TSELDIA,CLAENLACE,TLIBRO,TIPOFEC) values (1,24,626,2,'512105','SELECT SUBSTR(#cuenta,7,9) coletilla, ''Gasto En Atencion Del Siniestro Cumplimiento'' descrip,
     NVL(s.isinretpag, 0) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division_sin(SI.nsinies,s.sidepag,s.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(NVL(p.SPERSON_ACRE,0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_siniestros.f_valida_ind_iva(S.SIDEPAG,S.CCONPAG,#codescenario),0), 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
 FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac, per_personas p
 WHERE s.nsinies = si.nsinies
AND sg.cramo = #cramo
AND s.cconpag = #cconpag
AND sg.sseguro = si.sseguro
AND p.sperson = s.sperson
AND s.isinretpag IS NOT NULL
AND TO_CHAR(s.falta, ''YYYY'') = TO_CHAR(f_sysdate, ''YYYY'')
and (ac.cagente = sg.cagente or ac.cagente is null)
AND si.sseguro = ac.sseguro(+)
AND(ac.nmovimi IS NULL
        OR(ac.nmovimi = (SELECT MAX(nmovimi)
        FROM age_corretaje ac2
        WHERE ac2.sseguro = ac.sseguro
        AND ac2.nmovimi <= si.nmovimi)))
AND s.sidepag = #idpago','1',null,1);
Insert into DETMODCONTA_INTERF (SMODCON,CEMPRES,NLINEA,TTIPPAG,CCUENTA,TSELDIA,CLAENLACE,TLIBRO,TIPOFEC) values (1,24,627,2,'167588','SELECT SUBSTR(#cuenta , 7 , 9 ) coletilla, ''Siniestros Liquidados Por Pagar'' descrip,
NVL(s.isinretpag, 0)+NVL(s.iivapag, 0) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division_sin(SI.nsinies,s.sidepag,s.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(NVL(p.SPERSON_DEUD,0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_siniestros.f_valida_ind_iva(S.SIDEPAG,S.CCONPAG,#codescenario),0), 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
AND s.sidepag = sr.sidepag_new (+)
AND p.sperson = s.sperson
AND sg.sseguro = si.sseguro
AND sd.nsinies = s.nsinies
AND sd.ntramit = s.ntramit
AND sd.sperson = s.sperson
AND s.isinretpag IS NOT NULL
AND AC.CAGENTE  = SG.CAGENTE 
AND si.sseguro = ac.sseguro(+)
AND(ac.nmovimi IS NULL
        OR(ac.nmovimi = (SELECT MAX(nmovimi)
        FROM age_corretaje ac2
        WHERE ac2.sseguro = ac.sseguro
        AND ac2.nmovimi <= si.nmovimi)))
AND s.sidepag = #idpago','1',null,1);
Insert into DETMODCONTA_INTERF (SMODCON,CEMPRES,NLINEA,TTIPPAG,CCUENTA,TSELDIA,CLAENLACE,TLIBRO,TIPOFEC) values (1,24,632,2,'512105','SELECT SUBSTR(#cuenta,7,9) coletilla, ''Gasto En Atencion Del Siniestro Cumplimiento'' descrip,
 pac_corretaje.f_impcor_agente(NVL(sp.ipago, 0), ac.cagente, si.sseguro, si.nmovimi) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division_sin(SI.nsinies,s.sidepag,s.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(NVL(p.SPERSON_ACRE,0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_siniestros.f_valida_ind_iva(S.SIDEPAG,S.CCONPAG,#codescenario),0), 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
 FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac, sin_solidaridad_pago sp, per_personas p
 WHERE s.nsinies = si.nsinies
AND sg.cramo = #cramo
AND s.cconpag = #cconpag
AND sg.sseguro = si.sseguro
AND s.isinretpag IS NOT NULL
AND p.sperson = s.sperson
AND sp.tliquida = 58
AND sp.nsinies = s.nsinies
AND sp.sidepag = s.sidepag
AND TO_CHAR(s.falta, ''YYYY'') = TO_CHAR(f_sysdate, ''YYYY'')
AND (ac.cagente = sg.cagente 
     OR ac.cagente is null)
AND si.sseguro = ac.sseguro(+)
AND(ac.nmovimi IS NULL
        OR(ac.nmovimi = (SELECT MAX(nmovimi)
        FROM age_corretaje ac2
        WHERE ac2.sseguro = ac.sseguro
        AND ac2.nmovimi <= si.nmovimi)))
AND EXISTS (SELECT sp1.sidepag
              FROM sin_solidaridad_pago sp1
             WHERE sp1.sidepag = s.sidepag
               AND sp1.nsinies = s.nsinies)
AND s.sidepag = #idpago','1',null,1);
Insert into DETMODCONTA_INTERF (SMODCON,CEMPRES,NLINEA,TTIPPAG,CCUENTA,TSELDIA,CLAENLACE,TLIBRO,TIPOFEC) values (1,24,633,2,'255288','SELECT SUBSTR(#cuenta , 7 , 9 ) coletilla, ''Siniestros Liquidados Por Pagar'' descrip,
NVL(s.isinretpag, 0) + nvl(s.iotrosgaspag,0) + NVL(s.iivapag, 0) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division_sin(SI.nsinies,s.sidepag,s.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(NVL(p.SPERSON_ACRE,0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_siniestros.f_valida_ind_iva(S.SIDEPAG,S.CCONPAG,#codescenario),0), 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac, sin_tramita_destinatario sd, sin_recibos_compensados sr , per_personas p
WHERE s.nsinies = si.nsinies
AND sg.cramo = #cramo
AND s.cconpag = #cconpag
AND s.sidepag = sr.sidepag_new (+)
AND p.sperson = s.sperson
AND sg.sseguro = si.sseguro
AND sd.nsinies = s.nsinies
AND sd.ntramit = s.ntramit
AND sd.sperson = s.sperson
AND s.isinretpag IS NOT NULL
AND (ac.cagente = sg.cagente 
     OR ac.cagente is null)
AND si.sseguro = ac.sseguro(+)
AND(ac.nmovimi IS NULL
        OR(ac.nmovimi = (SELECT MAX(nmovimi)
        FROM age_corretaje ac2
        WHERE ac2.sseguro = ac.sseguro
        AND ac2.nmovimi <= si.nmovimi)))
AND EXISTS (SELECT sp1.sidepag
            FROM sin_solidaridad_pago sp1
           WHERE sp1.sidepag = s.sidepag
             AND sp1.nsinies = s.nsinies)
AND s.sidepag = #idpago','1',null,1);
Insert into DETMODCONTA_INTERF (SMODCON,CEMPRES,NLINEA,TTIPPAG,CCUENTA,TSELDIA,CLAENLACE,TLIBRO,TIPOFEC) values (1,24,680,2,'512105','SELECT SUBSTR(#cuenta,7,9) coletilla, ''Costo Del Siniestro Cumplimiento'' descrip,
 NVL(sp.ipago, 0) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division_sin(SI.nsinies,s.sidepag,s.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(NVL(p.SPERSON_ACRE,0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_siniestros.f_valida_ind_iva(S.SIDEPAG,S.CCONPAG,#codescenario),0), 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac, sin_solidaridad_pago sp, per_personas p
WHERE s.nsinies = si.nsinies
AND sg.cramo = #cramo
AND s.cconpag = #cconpag
AND sg.sseguro = si.sseguro
AND p.sperson = s.sperson
AND sp.tliquida = 58
AND sp.nsinies = s.nsinies
AND sp.sidepag = s.sidepag
AND s.isinretpag IS NOT NULL
AND TO_CHAR(s.falta, ''YYYY'') = TO_CHAR( f_sysdate  , ''YYYY'')
AND (ac.cagente = sg.cagente 
     OR ac.cagente is null)
AND si.sseguro = ac.sseguro(+)
AND(ac.nmovimi IS NULL
OR(ac.nmovimi = (SELECT MAX(nmovimi)
                            FROM age_corretaje ac2
                            WHERE ac2.sseguro = ac.sseguro
                            AND ac2.nmovimi <= si.nmovimi)))
AND EXISTS (SELECT sp1.sidepag
            FROM sin_solidaridad_pago sp1
           WHERE sp1.tliquida = 58
             AND sp1.sidepag = s.sidepag
             AND sp1.nsinies = s.nsinies)
AND s.sidepag = #idpago','1',null,1);
Insert into DETMODCONTA_INTERF (SMODCON,CEMPRES,NLINEA,TTIPPAG,CCUENTA,TSELDIA,CLAENLACE,TLIBRO,TIPOFEC) values (1,24,681,2,'167688','SELECT SUBSTR(#cuenta , 7 , 9 ) coletilla, ''Coaseguradores Cuenta Corriente Cedidos'' descrip,
NVL(sp.ipago, 0) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division_sin(SI.nsinies,s.sidepag,s.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(NVL(p.SPERSON_DEUD,0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac, sin_solidaridad_pago sp, per_personas p
WHERE s.nsinies = si.nsinies
AND sg.cramo = #cramo
AND s.cconpag = #cconpag
AND sg.sseguro = si.sseguro
AND p.sperson = sp.sperson
AND sp.tliquida = 95
AND sp.nsinies = s.nsinies
AND sp.sidepag = s.sidepag
AND s.isinretpag IS NOT NULL
AND TO_CHAR(s.falta, ''YYYY'') = TO_CHAR( f_sysdate  , ''YYYY'')
AND (ac.cagente = sg.cagente 
     OR ac.cagente is null)
AND si.sseguro = ac.sseguro(+)
AND(ac.nmovimi IS NULL
OR(ac.nmovimi = (SELECT MAX(nmovimi)
                            FROM age_corretaje ac2
                            WHERE ac2.sseguro = ac.sseguro
                            AND ac2.nmovimi <= si.nmovimi)))
AND EXISTS (SELECT sp1.sidepag
            FROM sin_solidaridad_pago sp1
           WHERE sp1.tliquida = 95
             AND sp1.sidepag = s.sidepag
             AND sp1.nsinies = s.nsinies)
AND s.sidepag = #idpago','1',null,1);
Insert into DETMODCONTA_INTERF (SMODCON,CEMPRES,NLINEA,TTIPPAG,CCUENTA,TSELDIA,CLAENLACE,TLIBRO,TIPOFEC) values (1,24,682,2,'167588','SELECT SUBSTR(#cuenta , 7 , 9 ) coletilla, ''Siniestros Liquidados Por Pagar'' descrip,
   NVL(sp.ipago, 0) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division_sin(SI.nsinies,s.sidepag,s.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(NVL(p.SPERSON_DEUD,0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_siniestros.f_valida_ind_iva(S.SIDEPAG,S.CCONPAG,#codescenario),0), 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
 FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac, sin_tramita_destinatario sd, sin_recibos_compensados sr , per_personas p
      ,sin_solidaridad_pago sp
 WHERE s.nsinies = si.nsinies
 AND sg.cramo = #cramo
 AND s.cconpag = #cconpag
 AND s.sidepag = sr.sidepag_new (+)
 AND p.sperson = sp.sperson
 AND sg.sseguro = si.sseguro
 AND sd.nsinies = s.nsinies 
 and sp.sidepag = s.sidepag
 AND sp.tliquida = 58
 AND sp.nsinies = s.nsinies
 AND sd.ntramit = s.ntramit
 AND sd.sperson = s.sperson
 AND s.isinretpag IS NOT NULL
 AND (ac.cagente = sg.cagente 
     OR ac.cagente is null)
 AND si.sseguro = ac.sseguro(+)
 AND(ac.nmovimi IS NULL
          OR(ac.nmovimi = (SELECT MAX(nmovimi)
          FROM age_corretaje ac2
          WHERE ac2.sseguro = ac.sseguro
          AND ac2.nmovimi <= si.nmovimi)))
AND EXISTS (SELECT sp1.sidepag
            FROM sin_solidaridad_pago sp1
           WHERE sp1.tliquida = 58
             AND sp1.sidepag = s.sidepag
             AND sp1.nsinies = s.nsinies)
AND s.sidepag = #idpago','1',null,1);
Insert into DETMODCONTA_INTERF (SMODCON,CEMPRES,NLINEA,TTIPPAG,CCUENTA,TSELDIA,CLAENLACE,TLIBRO,TIPOFEC) values (1,24,699,2,'167688','SELECT SUBSTR(#cuenta , 7 , 9 ) coletilla, ''Coaseguradores Cuenta Corriente Cedidos'' descrip,
  NVL(sp.ipago, 0) importe,
   LPAD (#codescenario, 3, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division_sin(SI.nsinies,s.sidepag,s.cagente),0), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0'')
|| LPAD(NVL(p.SPERSON_DEUD,0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_siniestros.f_valida_ind_iva(S.SIDEPAG,S.CCONPAG,#codescenario),0), 2, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(s.iivapag, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(#cuenta),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(NVL(SUBSTR(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),4,sysdate),1,2),''0''), 2, ''0'')
|| LPAD(NVL(SUBSTR(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),4,sysdate),3,4),''0''), 2, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(NVL(s.ireteicapag, 0), ac.cagente, si.sseguro,si.nmovimi), 23, ''0'')
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
 FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac, sin_solidaridad_pago sp,
 sin_tramita_destinatario sd, sin_recibos_compensados sr , per_personas p
 WHERE s.nsinies = si.nsinies
 AND sg.cramo = #cramo
AND s.cconpag = #cconpag
 AND s.sidepag = sr.sidepag_new (+)
 AND sg.sseguro = si.sseguro
 AND p.sperson = sp.sperson
 AND sp.tliquida = 95
 AND sp.nsinies = s.nsinies
 AND sp.sidepag = s.sidepag
 AND sd.nsinies = s.nsinies
 AND sd.ntramit = s.ntramit
 AND sd.sperson = s.sperson
 AND s.isinretpag IS NOT NULL
 AND (ac.cagente = sg.cagente 
     OR ac.cagente is null)
 AND si.sseguro = ac.sseguro(+)
 AND(ac.nmovimi IS NULL
 OR(ac.nmovimi = (SELECT MAX(nmovimi)
                              FROM age_corretaje ac2
                              WHERE ac2.sseguro = ac.sseguro
                              AND ac2.nmovimi <= si.nmovimi)))
AND EXISTS (SELECT sp1.sidepag
            FROM sin_solidaridad_pago sp1
           WHERE sp1.sidepag = s.sidepag
             AND sp1.nsinies = s.nsinies)
AND s.sidepag = #idpago','1',null,1);
