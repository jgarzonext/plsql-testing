--modificacion cuenta 2820050200
update detmodconta_interf
set tseldia = 'SELECT ''0200'' coletilla,''Provisiones, obligaciones a favor de intermediarios seguros (Comisiones año actual)(23)'' descrip,
decode(ff_buscadatosIndSAP(6,SG.SSEGURO),1, pac_corretaje.f_impcor_agente(NVL(vm.icombru, v.icombru), ac.cagente, sg.sseguro,   r.nmovimi), pac_corretaje.f_impcor_agente( vm.icombru + vm.iimp_1 , ac.cagente, sg.sseguro,   r.nmovimi) ) importe,
LPAD (decode(ff_buscadatosIndSAP(6,SG.SSEGURO),1,255,256), 3, ''0'') 
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
 --AND to_Char(m.fmovdia,''dd/mm/yyyy'') >= to_Char(r.fefecto,''dd/mm/yyyy'')
 AND sg.ctipcoa IN (0,1,8)
 AND r.ctiprec = 0
 AND a.ctipage IN (3,4,5,6,7)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
  AND r.nrecibo = #idpago
 AND a.cagente = #pidmov'
 where smodcon = 1
 and cempres = 24
 and nlinea = 15
 and ttippag = 21
 and ccuenta = 282005;
 commit;
 --
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
 and trunc(sg.femisio) < trunc(sg.fefecto)-- vig futura	
  -- AND sg.cramo = 801	
 AND sg.ctipcoa IN (0,1,8)	
 AND r.ctiprec = 0	
 AND a.ctipage IN (3,4,5,6,7)	
 AND m.fmovfin IS NULL	
 AND r.cestaux in (0,1)	
 AND r.nrecibo = #idpago	 
 AND a.cagente = #pidmov'
 where smodcon = 1
 and cempres = 24
 and nlinea = 14
 and ttippag = 21
 and ccuenta = 192515;
 commit; 
 --modificacion cuenta 2820050200
update detmodconta_interf
set tseldia = 'SELECT ''0200'' coletilla,''Provisiones, obligaciones a favor de intermediarios seguros (Comisiones año actual)(23)'' descrip,
decode(ff_buscadatosIndSAP(6,SG.SSEGURO),1, pac_corretaje.f_impcor_agente(NVL(vm.icombru, v.icombru), ac.cagente, sg.sseguro,   r.nmovimi), pac_corretaje.f_impcor_agente( vm.icombru + vm.iimp_1 , ac.cagente, sg.sseguro,   r.nmovimi) ) importe,
LPAD (decode(ff_buscadatosIndSAP(6,SG.SSEGURO),1,255,256), 3, ''0'') 
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
 and trunc(sg.femisio) < trunc(sg.fefecto)-- vig futura 
 AND sg.ctipcoa IN (0,1)
 AND r.ctiprec = 0
 AND a.ctipage IN (3,4,5,6,7)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
  AND r.nrecibo = #idpago
 AND a.cagente = #pidmov'
 where smodcon = 1
 and cempres = 24
 and nlinea = 21
 and ttippag = 21
 and ccuenta = 282005;
 commit;
 --insert nueva cuenta 8305050100
 insert into detmodconta values (1,24,null, 1108, null, null, 'CTA DEUDORA COMISIONES COASEGURO CEDIDO', 830505, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1108,20,830505,' select distinct ''0100'' coletilla ,''COMISIONES COASEGURO CEDIDO                                           '' descrip,c.iimport importe,	
 LPAD (01, 2, ''0'')	
 || LPAD(1000, 4, ''0'')	
 || LPAD(''COP'', 5, ''0'')	
 || LPAD(0, 2, ''0'')	
 || LPAD(0, 4, ''0'')	
 || LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')	
 || LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')	
 || LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0),15,0)	
 || LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0),12,0)	
 || LPAD(''WIAXIS'', 12, ''0'') -------------------- fin de cabezera	
 || LPAD(NVL(pac_contab_conf.f_tipo( 8195950100 ),''C''), 1, ''0'') ----- comienza el detalle	
|| LPAD(t.sperson, 10, ''0'')	
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')	
|| LPAD(0, 2, ''0'')	
|| LPAD(0, 23, ''0'')	
|| LPAD(0, 23, ''0'')	
|| LPAD(''Z001'', 4, ''0'')	
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')	
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(2519053005),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')	
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
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')	
|| LPAD(0, 15, ''0'')	
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')	
|| LPAD(0, 1, ''0'')	
|| LPAD(0, 17, ''0'') otros,	
 GREATEST(r.fefecto, TRUNC(r.femisio)) fecha	
 FROM  recibos r, vdetrecibos v, seguros sg, tomadores t, per_personas p,	
 LIQUIDALIN L,LIQUIDACAB lc,int_facturas_agentes I,ctactes C	
 WHERE	
 v.nrecibo = r.nrecibo	
 AND r.sseguro = sg.sseguro	
 AND t.sseguro = sg.sseguro	
 and r.nrecibo = l.nrecibo	
 and r.cagente = l.cagente	
 and r.cempres = l.cempres	
 and l.nliqmen = lc.nliqmen	
 and l.cagente = lc.cagente	
 and l.nliqmen = lc.nliqmen	
 AND L.nrecibo = I.nrecibo	
 AND L.cagente = I.cagente	
 AND C.cagente = I.cagente	
 and c.sproces = i.sproces	
 AND NVL(r.sperson, t.sperson) = p.sperson	
 AND r.ctiprec in (0,14) -- DIRECTA, DESCANCELACION	
 AND I.CORTECUENTA = 1 AND sg.ctipcoa in (0,1) AND SG.CMONEDA IN (8)and c.cconcta = 40 AND (SELECT CTIPAGE FROM AGENTES WHERE CAGENTE = C.CAGENTE) = 4 AND r.nrecibo = #idpago', 1, null,1);
 commit;
 insert into descuenta values (830505, 'Iva Generado en Primas', 'pac_anulacion.f_anulada_al_emitir(sseguro)=0', null, 2);
 commit;
--modificacion cuenta 5152250100
update detmodconta_interf
set tseldia = 'SELECT ''0100'' coletilla, ''De Coasegurador(es) Aceptado cumplimiento (39) '' descrip,	
   pac_corretaje.f_impcor_agente(vm.icombru, ac.cagente, sg.sseguro,   r.nmovimi) importe,	
   LPAD (15, 2, ''0'')	
|| LPAD(1000, 4, ''0'')	
|| LPAD(''COP'', 5, ''0'')	
|| LPAD(0, 2, ''0'')	
|| LPAD(0, 4, ''0'')	
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')	
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')	
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')	
|| LPAD(''WIAXIS'', 12, ''0'')	
|| LPAD(NVL(pac_contab_conf.f_tipo(5152250100),''C''), 1, ''0'')	
|| LPAD(NVL(pac_contab_conf.f_persona(null,a.cagente,null,null),0), 10, ''0'')	
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')	
|| LPAD(0, 2, ''0'')	
|| LPAD(0, 23, ''0'')	
|| LPAD(0, 23, ''0'')	
|| LPAD(''Z001'', 4, ''0'')	
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')	
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(5152250100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')	
|| LPAD(0, 2, ''0'')	
|| LPAD(0, 2, ''0'')	
|| LPAD(0, 23, ''0'')	
|| LPAD(0, 23, ''0'')	
|| LPAD(0, 18, ''0'')	
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
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, age_corretaje ac, agentes a	
 WHERE m.nrecibo = r.nrecibo	
 AND m.cestrec = 0	
 AND m.cestant = 0	
 AND vm.nrecibo(+) = r.nrecibo	
 AND r.sseguro = sg.sseguro	
 AND t.sseguro = sg.sseguro	
 AND NVL(ac.cagente, r.cagente) = a.cagente	
 AND NVL(r.sperson, t.sperson) = p.sperson AND sg.sseguro = ac.sseguro(+)	
 AND(ac.nmovimi IS NULL OR(ac.nmovimi = (SELECT MAX(nmovimi) FROM age_corretaje ac2 WHERE ac2.sseguro = ac.sseguro AND ac2.nmovimi <= r.nmovimi)))	
  -- AND sg.cramo = 801	
 AND sg.ctipcoa = 8	
 AND r.ctiprec in (0,1)	
 AND m.fmovfin IS NULL	
 AND r.cestaux in (0,1)	
 AND r.nrecibo = #idpago	
 AND a.cagente = #pidmov'
  where smodcon = 1
 and cempres = 24
 and nlinea = 231
 and ttippag = 21
 and ccuenta = 515225;
 commit;
 -----intermediarios
 update map_tabla
 set tfrom = ' (select  a.sperson|| ''|'' ||b.ppartici|| ''|'' ||decode(a.ctipage, 3, ''A'', 5,''A'',6,''A'',7,''A'',4,''C'')||''|''||decode(c.cregfiscal, 1, ''C'',''S'')  linea	
      from agentes a, age_corretaje b, per_regimenfiscal c	
   where a.cagente = b.cagente	
     and a.sperson = c.sperson	
     and c.fefecto = (select max(fefecto) from per_regimenfiscal d where d.sperson = c.sperson)	
     and b.sseguro  = (select sseguro	
                              from seguros	
                              where npoliza = (SELECT TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 259, 19))	
                                                       FROM contab_asient_interf a	
                                                      WHERE (   a.idpago = pac_map.f_valor_parametro (''''|'''', ''''#lineaini'''', 14, ''''#cmapead'''') OR pac_map.f_valor_parametro (''''|'''', ''''#lineaini'''', 14, ''''#cmapead'''') IS NULL )	
                                                      AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf)	
                            and rownum = 1))	
     and ff_buscadatosIndSAP (2,(select sseguro from seguros where npoliza = (SELECT TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 259, 19))	
                                                                                                                                   FROM contab_asient_interf a	
                                                                                                                                   WHERE (   a.idpago = pac_map.f_valor_parametro (''''|'''', ''''#lineaini'''', 14, ''''#cmapead'''') OR pac_map.f_valor_parametro (''''|'''', ''''#lineaini'''', 14, ''''#cmapead'''') IS NULL )	
                                                                                                                                   AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf)	
                                                                   and rownum = 1))    ) <> 0	
     UNION	
     select a.sperson|| ''|'' ||100|| ''|'' ||decode(a.ctipage, 3, ''A'', 5,''A'',6,''A'',7,''A'',4,''C'')||''|''||decode(c.cregfiscal, 1, ''C'',''S'')  linea	
     from agentes a, per_regimenfiscal c	
     where a.sperson = c.sperson	
     and c.fefecto = (select max(fefecto) from per_regimenfiscal d where d.sperson = c.sperson)	
     and a.cagente = (select b.cagente from seguros b where b.sseguro =  (select sseguro	
                              from seguros	
                              where npoliza = (SELECT TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 259, 19))	
                                                       FROM contab_asient_interf a	
                                                      WHERE (   a.idpago = pac_map.f_valor_parametro (''''|'''', ''''#lineaini'''', 14, ''''#cmapead'''') OR pac_map.f_valor_parametro (''''|'''', ''''#lineaini'''', 14, ''''#cmapead'''') IS NULL )	
                                                      AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf)	
                            and rownum = 1))                 )	
             and ff_buscadatosIndSAP (2,(select sseguro from seguros where npoliza = (SELECT TRIM (LEADING ''0'' FROM SUBSTR (a.otros, 259, 19))	
                                                                                                                                   FROM contab_asient_interf a	
                                                                                                                                   WHERE (   a.idpago = pac_map.f_valor_parametro (''''|'''', ''''#lineaini'''', 14, ''''#cmapead'''') OR pac_map.f_valor_parametro (''''|'''', ''''#lineaini'''', 14, ''''#cmapead'''') IS NULL )	
                                                                                                                                   AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf)	
                                                                  and rownum = 1   ))    ) = 0    ) 	'
where ctabla = 100314
and tdescrip = 'INTERMEDIARIOS';
commit; 						
--insert nueva cuenta 2503400100
 insert into detmodconta values (1,24,null, 1109, null, null, 'Iva Sobre Salvamentos Y Coaseguro Cedido', 250340, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1109,9,250340,'SELECT ''0400'' coletilla,  ''Iva Sobre Salvamentos Y Coaseguro Cedido'' descrip,
pac_contab_conf.f_coa_por_garant(coa.nrecibo, vm.cgarant, NVL(coa.imovimi_moncon, coa.imovimi)) importe,
 LPAD (13, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(sg.sseguro,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(sg.sseguro,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(sg.sseguro)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(2503400100),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,sg.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(sg.sseguro),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente,1,sysdate),0), 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(0,10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(2503400100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(sg.sseguro),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(sg.sseguro,sg.cagente),0), 4, ''0'')
|| LPAD(NVL((select pp.nnumide from per_personas pp where pp.sperson = c.sperson),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(sg.sseguro),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,sg.cagente),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(sg.sseguro),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(sg.sseguro),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
coa.fmovimi fecha
FROM  companias c, per_personas page, per_detper pd, ctacoaseguro coa, seguros sg,
detmovrecibo_parcial vm
WHERE coa.ccompani = c.ccompani
AND sg.sseguro = coa.sseguro
AND page.sperson(+) = c.sperson
AND pd.sperson(+) = c.sperson
AND coa.nrecibo = #pidmov
and coa.ccompani = #idpago
and coa.cimport = 13
AND sg.cramo = 807
AND coa.ctipcoa = 1
AND coa.cdebhab = 2
AND vm.nrecibo(+) = coa.nrecibo
and vm.norden = (select max(norden) from detmovrecibo_parcial where nrecibo = vm.nrecibo)
and vm.cconcep = 61
AND coa.norden = vm.norden', 1, null,1);
 commit;		
--insert nueva cuenta 4121050700
 insert into detmodconta values (1,24,null, 1110, null, null, 'IPrimas emitidas cumplimiento', 412105, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1110,4,412105,'SELECT ''0700'' coletilla,''Primas emitidas  Resp Civil '' descrip,
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
|| LPAD(NVL(pac_contab_conf.f_tipo(4121050700),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(ff_buscadatosIndSAP(1,SG.SSEGURO),0), 2, ''0'')
|| LPAD(NVL(vm.iprinet,v.iprinet), 23, ''0'')
|| LPAD(NVL(vm.iips,v.iips), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121050700),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
|| LPAD(NVL(ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
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
   AND r.nrecibo = #idpago', 1, null,1);
 commit;					
--insert nueva cuenta 4121050800
 insert into detmodconta values (1,24,null, 1111, null, null, 'IPrimas emitidas cumplimiento', 412105, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1111,4,412105,'SELECT ''0800'' coletilla,''Primas emitidas  Resp Civil '' descrip,
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
|| LPAD(NVL(pac_contab_conf.f_tipo(4121050800),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(ff_buscadatosIndSAP(1,SG.SSEGURO),0), 2, ''0'')
|| LPAD(NVL(vm.iprinet,v.iprinet), 23, ''0'')
|| LPAD(NVL(vm.iips,v.iips), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121050800),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
|| LPAD(NVL(ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
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
   AND r.nrecibo = #idpago', 1, null,1);
 commit;	
--insert nueva cuenta 4121050900
 insert into detmodconta values (1,24,null, 1112, null, null, 'IPrimas emitidas cumplimiento', 412105, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1112,4,412105,'SELECT ''0900'' coletilla,''Primas emitidas  Resp Civil '' descrip,
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
|| LPAD(NVL(pac_contab_conf.f_tipo(4121050900),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(ff_buscadatosIndSAP(1,SG.SSEGURO),0), 2, ''0'')
|| LPAD(NVL(vm.iprinet,v.iprinet), 23, ''0'')
|| LPAD(NVL(vm.iips,v.iips), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121050900),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
|| LPAD(NVL(ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
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
   AND r.nrecibo = #idpago', 1, null,1);
 commit;
 --insert nueva cuenta 4121051100
 insert into detmodconta values (1,24,null, 1113, null, null, 'IPrimas emitidas cumplimiento', 412105, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1113,4,412105,'SELECT ''1100'' coletilla,''Primas emitidas  Resp Civil '' descrip,
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
|| LPAD(NVL(pac_contab_conf.f_tipo(4121051100),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(ff_buscadatosIndSAP(1,SG.SSEGURO),0), 2, ''0'')
|| LPAD(NVL(vm.iprinet,v.iprinet), 23, ''0'')
|| LPAD(NVL(vm.iips,v.iips), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121051100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
|| LPAD(NVL(ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
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
   AND r.nrecibo = #idpago', 1, null,1);
 commit;
--insert nueva cuenta 4121051400
 insert into detmodconta values (1,24,null, 1114, null, null, 'IPrimas emitidas cumplimiento', 412105, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1114,4,412105,'SELECT ''1400'' coletilla,''Primas emitidas  Resp Civil '' descrip,
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
|| LPAD(NVL(pac_contab_conf.f_tipo(4121051400),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(ff_buscadatosIndSAP(1,SG.SSEGURO),0), 2, ''0'')
|| LPAD(NVL(vm.iprinet,v.iprinet), 23, ''0'')
|| LPAD(NVL(vm.iips,v.iips), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121051400),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
|| LPAD(NVL(ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
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
   AND r.nrecibo = #idpago', 1, null,1);
 commit;			
--insert nueva cuenta 4121051500
 insert into detmodconta values (1,24,null, 1115, null, null, 'IPrimas emitidas cumplimiento', 412105, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1115,4,412105,'SELECT ''1500'' coletilla,''Primas emitidas  Resp Civil '' descrip,
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
|| LPAD(NVL(pac_contab_conf.f_tipo(4121051500),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(ff_buscadatosIndSAP(1,SG.SSEGURO),0), 2, ''0'')
|| LPAD(NVL(vm.iprinet,v.iprinet), 23, ''0'')
|| LPAD(NVL(vm.iips,v.iips), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121051500),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
|| LPAD(NVL(ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
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
   AND r.nrecibo = #idpago', 1, null,1);
 commit;				  
--insert nueva cuenta 4121400700
 insert into detmodconta values (1,24,null, 1116, null, null, 'IPrimas emitidas cumplimiento', 412140, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1116,4,412140,'SELECT ''0700'' coletilla,''Primas emitidas  Resp Civil '' descrip,
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
|| LPAD(NVL(pac_contab_conf.f_tipo(4121400700),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(ff_buscadatosIndSAP(1,SG.SSEGURO),0), 2, ''0'')
|| LPAD(NVL(vm.iprinet,v.iprinet), 23, ''0'')
|| LPAD(NVL(vm.iips,v.iips), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121400700),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
|| LPAD(NVL(ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
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
   AND r.nrecibo = #idpago', 1, null,1);
 commit;				
--insert nueva cuenta 4121400800
 insert into detmodconta values (1,24,null, 1117, null, null, 'IPrimas emitidas cumplimiento', 412140, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1117,4,412140,'SELECT ''0800'' coletilla,''Primas emitidas  Resp Civil '' descrip,
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
|| LPAD(NVL(pac_contab_conf.f_tipo(4121400800),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(ff_buscadatosIndSAP(1,SG.SSEGURO),0), 2, ''0'')
|| LPAD(NVL(vm.iprinet,v.iprinet), 23, ''0'')
|| LPAD(NVL(vm.iips,v.iips), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121400800),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
|| LPAD(NVL(ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
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
   AND r.nrecibo = #idpago', 1, null,1);
 commit;			
--insert nueva cuenta 4121400900
 insert into detmodconta values (1,24,null, 1118, null, null, 'IPrimas emitidas cumplimiento', 412140, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1118,4,412140,'SELECT ''0900'' coletilla,''Primas emitidas  Resp Civil '' descrip,
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
|| LPAD(NVL(pac_contab_conf.f_tipo(4121400900),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(ff_buscadatosIndSAP(1,SG.SSEGURO),0), 2, ''0'')
|| LPAD(NVL(vm.iprinet,v.iprinet), 23, ''0'')
|| LPAD(NVL(vm.iips,v.iips), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121400900),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
|| LPAD(NVL(ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
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
   AND r.nrecibo = #idpago', 1, null,1);
 commit;				 
--insert nueva cuenta 4121401100
 insert into detmodconta values (1,24,null, 1119, null, null, 'IPrimas emitidas cumplimiento', 412140, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1119,4,412140,'SELECT ''1100'' coletilla,''Primas emitidas  Resp Civil '' descrip,
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
|| LPAD(NVL(pac_contab_conf.f_tipo(4121401100),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(ff_buscadatosIndSAP(1,SG.SSEGURO),0), 2, ''0'')
|| LPAD(NVL(vm.iprinet,v.iprinet), 23, ''0'')
|| LPAD(NVL(vm.iips,v.iips), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121401100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
|| LPAD(NVL(ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
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
   AND r.nrecibo = #idpago', 1, null,1);
 commit;	
--insert nueva cuenta 4121401400
 insert into detmodconta values (1,24,null, 1120, null, null, 'IPrimas emitidas cumplimiento', 412140, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1120,4,412140,'SELECT ''1400'' coletilla,''Primas emitidas  Resp Civil '' descrip,
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
|| LPAD(NVL(pac_contab_conf.f_tipo(4121401400),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(ff_buscadatosIndSAP(1,SG.SSEGURO),0), 2, ''0'')
|| LPAD(NVL(vm.iprinet,v.iprinet), 23, ''0'')
|| LPAD(NVL(vm.iips,v.iips), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121401400),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
|| LPAD(NVL(ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
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
   AND r.nrecibo = #idpago', 1, null,1);
 commit;		
--insert nueva cuenta 4121401500
 insert into detmodconta values (1,24,null, 1121, null, null, 'IPrimas emitidas cumplimiento', 412140, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1121,4,412140,'SELECT ''1500'' coletilla,''Primas emitidas  Resp Civil '' descrip,
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
|| LPAD(NVL(pac_contab_conf.f_tipo(4121401500),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(ff_buscadatosIndSAP(1,SG.SSEGURO),0), 2, ''0'')
|| LPAD(NVL(vm.iprinet,v.iprinet), 23, ''0'')
|| LPAD(NVL(vm.iips,v.iips), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121401500),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
|| LPAD(NVL(ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
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
   AND r.nrecibo = #idpago', 1, null,1);
 commit;				    
--insert nueva cuenta 4195950190
 insert into detmodconta values (1,24,null, 1122, null, null, 'IPrimas emitidas cumplimiento', 419595, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1122,4,419595,'SELECT ''0190'' coletilla,''Gastos de expediciÃ³n (1)'' descrip,
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
|| LPAD(NVL(pac_contab_conf.f_tipo(4195950190),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(ff_buscadatosIndSAP(1,SG.SSEGURO),0), 2, ''0'')
|| LPAD(NVL(vm.iderreg,v.iderreg), 23, ''0'')
|| LPAD(NVL(vm.itotimp - vm.iips,v.itotimp - v.iips), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4195950190),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
|| LPAD(NVL(ff_buscadatosSAP(9,SG.SSEGURO),0), 18, ''0'')
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
   --AND to_Char(m.fmovdia,''dd/mm/yyyy'') >= to_Char(r.fefecto,''dd/mm/yyyy'')
   AND to_Char(m.fmovdia,''yyyy'') >= to_Char(r.fefecto,''yyyy'')
   AND NVL(r.sperson, t.sperson) = p.sperson
   AND r.ctiprec in (0,14) -- DIRECTA, DESCANCELACION
   AND sg.ctipcoa in (0,1,8) -- DIRECTA, COA CEDIDO
   AND m.fmovfin IS NULL
   AND r.cestaux in (0,1)
   AND r.nrecibo = #idpago', 1, null,1);
 commit;				       
--insert nueva cuenta 5152100700
 insert into detmodconta values (1,24,null, 1123, null, null, 'IPrimas emitidas cumplimiento', 515210, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1123,21,515210,'SELECT ''0700'' coletilla, ''Remuneración a favor de intermediarios TRC (23)'' descrip,
   pac_corretaje.f_impcor_agente(NVL(vm.icombru, v.icombru), ac.cagente, sg.sseguro,   r.nmovimi) importe,
   LPAD (15, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(5152100700),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,a.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),1,sysdate),0), 2, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(vm.icombru, ac.cagente, sg.sseguro,   r.nmovimi), 23, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente((vm.iimp_1 - vm.iimp_5), ac.cagente, sg.sseguro,   r.nmovimi), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(5152100700),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
 AND to_Char(m.fmovdia,''dd/mm/yyyy'') >= to_Char(r.fefecto,''dd/mm/yyyy'')
 AND to_Char(sg.femisio,''dd/mm/yyyy'') >= to_Char(sg.fefecto,''dd/mm/yyyy'')-- retro,actual
 AND sg.cramo = 804
 AND sg.ctipcoa IN (0,1)
 AND a.ctipage IN (4,5,6)
 AND r.ctiprec = 0
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #pidmov
 AND a.cagente = #idpago', 1, null,1);
 commit;				        
--insert nueva cuenta 5152100800
 insert into detmodconta values (1,24,null, 1124, null, null, 'IPrimas emitidas cumplimiento', 515210, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1124,21,515210,'SELECT ''0800'' coletilla, ''Remuneración a favor de intermediarios TRC (23)'' descrip,
   pac_corretaje.f_impcor_agente(NVL(vm.icombru, v.icombru), ac.cagente, sg.sseguro,   r.nmovimi) importe,
   LPAD (15, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(5152100800),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,a.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),1,sysdate),0), 2, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(vm.icombru, ac.cagente, sg.sseguro,   r.nmovimi), 23, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente((vm.iimp_1 - vm.iimp_5), ac.cagente, sg.sseguro,   r.nmovimi), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(5152100800),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
 AND to_Char(m.fmovdia,''dd/mm/yyyy'') >= to_Char(r.fefecto,''dd/mm/yyyy'')
 AND to_Char(sg.femisio,''dd/mm/yyyy'') >= to_Char(sg.fefecto,''dd/mm/yyyy'')-- retro,actual
 AND sg.cramo = 804
 AND sg.ctipcoa IN (0,1)
 AND a.ctipage IN (4,5,6)
 AND r.ctiprec = 0
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #pidmov
 AND a.cagente = #idpago', 1, null,1);
 commit;				         
--insert nueva cuenta 5152100900
 insert into detmodconta values (1,24,null, 1125, null, null, 'IPrimas emitidas cumplimiento', 515210, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1125,21,515210,'SELECT ''0900'' coletilla, ''Remuneración a favor de intermediarios TRC (23)'' descrip,
   pac_corretaje.f_impcor_agente(NVL(vm.icombru, v.icombru), ac.cagente, sg.sseguro,   r.nmovimi) importe,
   LPAD (15, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(5152100900),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,a.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),1,sysdate),0), 2, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(vm.icombru, ac.cagente, sg.sseguro,   r.nmovimi), 23, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente((vm.iimp_1 - vm.iimp_5), ac.cagente, sg.sseguro,   r.nmovimi), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(5152100900),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
 AND to_Char(m.fmovdia,''dd/mm/yyyy'') >= to_Char(r.fefecto,''dd/mm/yyyy'')
 AND to_Char(sg.femisio,''dd/mm/yyyy'') >= to_Char(sg.fefecto,''dd/mm/yyyy'')-- retro,actual
 AND sg.cramo = 804
 AND sg.ctipcoa IN (0,1)
 AND a.ctipage IN (4,5,6)
 AND r.ctiprec = 0
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #pidmov
 AND a.cagente = #idpago', 1, null,1);
 commit;				         
--insert nueva cuenta 5152101100
 insert into detmodconta values (1,24,null, 1126, null, null, 'IPrimas emitidas cumplimiento', 515210, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1126,21,515210,'SELECT ''1100'' coletilla, ''Remuneración a favor de intermediarios TRC (23)'' descrip,
   pac_corretaje.f_impcor_agente(NVL(vm.icombru, v.icombru), ac.cagente, sg.sseguro,   r.nmovimi) importe,
   LPAD (15, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(5152101100),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,a.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),1,sysdate),0), 2, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(vm.icombru, ac.cagente, sg.sseguro,   r.nmovimi), 23, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente((vm.iimp_1 - vm.iimp_5), ac.cagente, sg.sseguro,   r.nmovimi), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(5152101100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
 AND to_Char(m.fmovdia,''dd/mm/yyyy'') >= to_Char(r.fefecto,''dd/mm/yyyy'')
 AND to_Char(sg.femisio,''dd/mm/yyyy'') >= to_Char(sg.fefecto,''dd/mm/yyyy'')-- retro,actual
 AND sg.cramo = 804
 AND sg.ctipcoa IN (0,1)
 AND a.ctipage IN (4,5,6)
 AND r.ctiprec = 0
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #pidmov
 AND a.cagente = #idpago', 1, null,1);
 commit;				         
--insert nueva cuenta 5152101400
 insert into detmodconta values (1,24,null, 1127, null, null, 'IPrimas emitidas cumplimiento', 515210, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1127,21,515210,'SELECT ''1400'' coletilla, ''Remuneración a favor de intermediarios TRC (23)'' descrip,
   pac_corretaje.f_impcor_agente(NVL(vm.icombru, v.icombru), ac.cagente, sg.sseguro,   r.nmovimi) importe,
   LPAD (15, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(5152101400),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,a.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),1,sysdate),0), 2, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(vm.icombru, ac.cagente, sg.sseguro,   r.nmovimi), 23, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente((vm.iimp_1 - vm.iimp_5), ac.cagente, sg.sseguro,   r.nmovimi), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(5152101400),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
 AND to_Char(m.fmovdia,''dd/mm/yyyy'') >= to_Char(r.fefecto,''dd/mm/yyyy'')
 AND to_Char(sg.femisio,''dd/mm/yyyy'') >= to_Char(sg.fefecto,''dd/mm/yyyy'')-- retro,actual
 AND sg.cramo = 804
 AND sg.ctipcoa IN (0,1)
 AND a.ctipage IN (4,5,6)
 AND r.ctiprec = 0
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #pidmov
 AND a.cagente = #idpago', 1, null,1);
 commit;				         
--insert nueva cuenta 5152101500
 insert into detmodconta values (1,24,null, 1128, null, null, 'IPrimas emitidas cumplimiento', 515210, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1128,21,515210,'SELECT ''1500'' coletilla, ''Remuneración a favor de intermediarios TRC (23)'' descrip,
   pac_corretaje.f_impcor_agente(NVL(vm.icombru, v.icombru), ac.cagente, sg.sseguro,   r.nmovimi) importe,
   LPAD (15, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(5152101500),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,a.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(nvl(ac.cagente,sg.cagente),1,sysdate),0), 2, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente(vm.icombru, ac.cagente, sg.sseguro,   r.nmovimi), 23, ''0'')
|| LPAD(pac_corretaje.f_impcor_agente((vm.iimp_1 - vm.iimp_5), ac.cagente, sg.sseguro,   r.nmovimi), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(5152101500),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
 AND to_Char(m.fmovdia,''dd/mm/yyyy'') >= to_Char(r.fefecto,''dd/mm/yyyy'')
 AND to_Char(sg.femisio,''dd/mm/yyyy'') >= to_Char(sg.fefecto,''dd/mm/yyyy'')-- retro,actual
 AND sg.cramo = 804
 AND sg.ctipcoa IN (0,1)
 AND a.ctipage IN (4,5,6)
 AND r.ctiprec = 0
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #pidmov
 AND a.cagente = #idpago', 1, null,1);
 commit;	
--insert nueva cuenta 5152250200
 insert into detmodconta values (1,24,null, 1129, null, null, 'IPrimas emitidas cumplimiento', 515225, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1129,21,515225,'SELECT ''0200'' coletilla, ''De Coasegurador(es) Aceptado cumplimiento (39) '' descrip,
   pac_corretaje.f_impcor_agente(vm.icombru, ac.cagente, sg.sseguro,   r.nmovimi) importe,
   LPAD (15, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(5152250200),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,a.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(5152250200),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
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
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, age_corretaje ac, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(ac.cagente, r.cagente) = a.cagente
 AND NVL(r.sperson, t.sperson) = p.sperson AND sg.sseguro = ac.sseguro(+)
 AND(ac.nmovimi IS NULL OR(ac.nmovimi = (SELECT MAX(nmovimi) FROM age_corretaje ac2 WHERE ac2.sseguro = ac.sseguro AND ac2.nmovimi <= r.nmovimi)))
  -- AND sg.cramo = 801
 AND sg.ctipcoa = 8
 AND r.ctiprec in (0,1)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago
 AND a.cagente = #pidmov', 1, null,1);
 commit;		
--insert nueva cuenta 5152250300
 insert into detmodconta values (1,24,null, 1130, null, null, 'IPrimas emitidas cumplimiento', 515225, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1130,21,515225,'SELECT ''0300'' coletilla, ''De Coasegurador(es) Aceptado cumplimiento (39) '' descrip,
   pac_corretaje.f_impcor_agente(vm.icombru, ac.cagente, sg.sseguro,   r.nmovimi) importe,
   LPAD (15, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(5152250300),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,a.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(5152250300),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
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
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, age_corretaje ac, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(ac.cagente, r.cagente) = a.cagente
 AND NVL(r.sperson, t.sperson) = p.sperson AND sg.sseguro = ac.sseguro(+)
 AND(ac.nmovimi IS NULL OR(ac.nmovimi = (SELECT MAX(nmovimi) FROM age_corretaje ac2 WHERE ac2.sseguro = ac.sseguro AND ac2.nmovimi <= r.nmovimi)))
  -- AND sg.cramo = 801
 AND sg.ctipcoa = 8
 AND r.ctiprec in (0,1)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago
 AND a.cagente = #pidmov', 1, null,1);
 commit;				     
--insert nueva cuenta 5152250700
 insert into detmodconta values (1,24,null, 1131, null, null, 'IPrimas emitidas cumplimiento', 515225, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1131,21,515225,'SELECT ''0700'' coletilla, ''De Coasegurador(es) Aceptado cumplimiento (39) '' descrip,
   pac_corretaje.f_impcor_agente(vm.icombru, ac.cagente, sg.sseguro,   r.nmovimi) importe,
   LPAD (15, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(5152250700),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,a.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(5152250700),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
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
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, age_corretaje ac, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(ac.cagente, r.cagente) = a.cagente
 AND NVL(r.sperson, t.sperson) = p.sperson AND sg.sseguro = ac.sseguro(+)
 AND(ac.nmovimi IS NULL OR(ac.nmovimi = (SELECT MAX(nmovimi) FROM age_corretaje ac2 WHERE ac2.sseguro = ac.sseguro AND ac2.nmovimi <= r.nmovimi)))
  -- AND sg.cramo = 801
 AND sg.ctipcoa = 8
 AND r.ctiprec in (0,1)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago
 AND a.cagente = #pidmov', 1, null,1);
 commit;				
--insert nueva cuenta 5152250800
 insert into detmodconta values (1,24,null, 1132, null, null, 'IPrimas emitidas cumplimiento', 515225, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1132,21,515225,'SELECT ''0800'' coletilla, ''De Coasegurador(es) Aceptado cumplimiento (39) '' descrip,
   pac_corretaje.f_impcor_agente(vm.icombru, ac.cagente, sg.sseguro,   r.nmovimi) importe,
   LPAD (15, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(5152250800),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,a.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(5152250800),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
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
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, age_corretaje ac, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(ac.cagente, r.cagente) = a.cagente
 AND NVL(r.sperson, t.sperson) = p.sperson AND sg.sseguro = ac.sseguro(+)
 AND(ac.nmovimi IS NULL OR(ac.nmovimi = (SELECT MAX(nmovimi) FROM age_corretaje ac2 WHERE ac2.sseguro = ac.sseguro AND ac2.nmovimi <= r.nmovimi)))
  -- AND sg.cramo = 801
 AND sg.ctipcoa = 8
 AND r.ctiprec in (0,1)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago
 AND a.cagente = #pidmov', 1, null,1);
 commit;				  
--insert nueva cuenta 5152250900
 insert into detmodconta values (1,24,null, 1133, null, null, 'IPrimas emitidas cumplimiento', 515225, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1133,21,515225,'SELECT ''0900'' coletilla, ''De Coasegurador(es) Aceptado cumplimiento (39) '' descrip,
   pac_corretaje.f_impcor_agente(vm.icombru, ac.cagente, sg.sseguro,   r.nmovimi) importe,
   LPAD (15, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(5152250900),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,a.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(5152250900),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
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
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, age_corretaje ac, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(ac.cagente, r.cagente) = a.cagente
 AND NVL(r.sperson, t.sperson) = p.sperson AND sg.sseguro = ac.sseguro(+)
 AND(ac.nmovimi IS NULL OR(ac.nmovimi = (SELECT MAX(nmovimi) FROM age_corretaje ac2 WHERE ac2.sseguro = ac.sseguro AND ac2.nmovimi <= r.nmovimi)))
  -- AND sg.cramo = 801
 AND sg.ctipcoa = 8
 AND r.ctiprec in (0,1)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago
 AND a.cagente = #pidmov', 1, null,1);
 commit;				  
--insert nueva cuenta 5152251100
 insert into detmodconta values (1,24,null, 1134, null, null, 'IPrimas emitidas cumplimiento', 515225, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1134,21,515225,'SELECT ''1100'' coletilla, ''De Coasegurador(es) Aceptado cumplimiento (39) '' descrip,
   pac_corretaje.f_impcor_agente(vm.icombru, ac.cagente, sg.sseguro,   r.nmovimi) importe,
   LPAD (15, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(5152251100),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,a.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(5152251100),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
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
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, age_corretaje ac, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(ac.cagente, r.cagente) = a.cagente
 AND NVL(r.sperson, t.sperson) = p.sperson AND sg.sseguro = ac.sseguro(+)
 AND(ac.nmovimi IS NULL OR(ac.nmovimi = (SELECT MAX(nmovimi) FROM age_corretaje ac2 WHERE ac2.sseguro = ac.sseguro AND ac2.nmovimi <= r.nmovimi)))
  -- AND sg.cramo = 801
 AND sg.ctipcoa = 8
 AND r.ctiprec in (0,1)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago
 AND a.cagente = #pidmov', 1, null,1);
 commit;				   
--insert nueva cuenta 5152251400
 insert into detmodconta values (1,24,null, 1135, null, null, 'IPrimas emitidas cumplimiento', 515225, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1135,21,515225,'SELECT ''1400'' coletilla, ''De Coasegurador(es) Aceptado cumplimiento (39) '' descrip,
   pac_corretaje.f_impcor_agente(vm.icombru, ac.cagente, sg.sseguro,   r.nmovimi) importe,
   LPAD (15, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(5152251400),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,a.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(5152251400),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
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
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, age_corretaje ac, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(ac.cagente, r.cagente) = a.cagente
 AND NVL(r.sperson, t.sperson) = p.sperson AND sg.sseguro = ac.sseguro(+)
 AND(ac.nmovimi IS NULL OR(ac.nmovimi = (SELECT MAX(nmovimi) FROM age_corretaje ac2 WHERE ac2.sseguro = ac.sseguro AND ac2.nmovimi <= r.nmovimi)))
  -- AND sg.cramo = 801
 AND sg.ctipcoa = 8
 AND r.ctiprec in (0,1)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago
 AND a.cagente = #pidmov', 1, null,1);
 commit; 
 --insert nueva cuenta 5152251500
 insert into detmodconta values (1,24,null, 1136, null, null, 'IPrimas emitidas cumplimiento', 515225, null, null, null, 'H', null);
 commit;
 insert into detmodconta_interf values (1,24,1136,21,515225,'SELECT ''1500'' coletilla, ''De Coasegurador(es) Aceptado cumplimiento (39) '' descrip,
   pac_corretaje.f_impcor_agente(vm.icombru, ac.cagente, sg.sseguro,   r.nmovimi) importe,
   LPAD (15, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(5152251500),''C''), 1, ''0'')
|| LPAD(NVL(pac_contab_conf.f_persona(null,a.cagente,null,null),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(5152251500),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
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
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, age_corretaje ac, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(ac.cagente, r.cagente) = a.cagente
 AND NVL(r.sperson, t.sperson) = p.sperson AND sg.sseguro = ac.sseguro(+)
 AND(ac.nmovimi IS NULL OR(ac.nmovimi = (SELECT MAX(nmovimi) FROM age_corretaje ac2 WHERE ac2.sseguro = ac.sseguro AND ac2.nmovimi <= r.nmovimi)))
  -- AND sg.cramo = 801
 AND sg.ctipcoa = 8
 AND r.ctiprec in (0,1)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago
 AND a.cagente = #pidmov', 1, null,1);
 commit; 
 
 GRANT EXECUTE ON AXIS.PAC_CONTA_SAP TO AXIS00;
 /