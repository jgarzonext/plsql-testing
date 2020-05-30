///////////////////////////////////////////////////////////////////////////////////////////////////////////////
--modificacion cuenta 168405 validacion coaseguro
update detmodconta_interf
set tseldia = 'SELECT ''0100'' coletilla, ''Primas Netas por Recaudar Negocios Directos (1)'' descrip,
   NVL(vm.iprinet, v.iprinet) importe,
   LPAD(NVL(axis.ff_buscadatosSAP(11,SG.SSEGURO),0), 3, ''0'')
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
 AND r.nrecibo = #idpago'
 where cempres = 24
 and nlinea =1
 and ttippag = 4
 and ccuenta = 168405;
 commit;
 
 --modificacion cuenta 412105 validacion coaseguro
 update detmodconta_interf
set tseldia = 'SELECT axis.ff_buscadatosIndSAP(4,SG.SSEGURO) coletilla, ''Primas emitidas  cumplimiento (1)'' descrip,
   NVL(vm.iprinet, v.iprinet) importe,
   LPAD(NVL(axis.ff_buscadatosSAP(11,SG.SSEGURO),0), 3, ''0'')
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
   AND r.nrecibo = #idpago'
 where cempres = 24
 and nlinea =2
 and ttippag = 4
 and ccuenta = 412105;
 commit;
 
--modificacion cuenta 419595 validacion coaseguro
 update detmodconta_interf
set tseldia = 'SELECT ''0100'' coletilla,''Gastos de expediciÃ³n (1)'' descrip,
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
   --AND to_Char(m.fmovdia,''dd/mm/yyyy'') >= to_Char(r.fefecto,''dd/mm/yyyy'')
   AND to_Char(m.fmovdia,''yyyy'') >= to_Char(r.fefecto,''yyyy'')
   AND NVL(r.sperson, t.sperson) = p.sperson
   AND r.ctiprec in (0,14) -- DIRECTA, DESCANCELACION
   AND sg.ctipcoa in (0,1,8) -- DIRECTA, COA CEDIDO
   AND m.fmovfin IS NULL
   AND r.cestaux in (0,1)
   AND r.nrecibo = #idpago'
  where cempres = 24
 and nlinea =5
 and ttippag = 4
 and ccuenta = 419595;
 commit;  
 
 --modificacion cuenta 168415 validacion coaseguro
 update detmodconta_interf
set tseldia = 'SELECT ''0100'' coletilla, ''Prima neta parte Coasegurador(es) Cedido  (25)'' descrip,
   pac_coa.f_impcoa_ccomp(sg.sseguro,cta.ccompan,m.fmovdia,vm.icednet)importe,
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
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, coacedido cta,
 companias c, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND  r.cagente = a.cagente
 and cta.sseguro = sg.sseguro
 and c.ccompani = cta.ccompan
 --and cta.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.ctipcoa in (1) -- Coa Ced
 AND r.ctiprec in (0,14)
 --and cta.cimport in (1)   -- 1.prima
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 AND r.nrecibo = #idpago'
   where cempres = 24
 and nlinea =9
 and ttippag = 4
 and ccuenta = 168415;
 commit;  
 
--modificacion cuenta 259070 validacion coaseguro
 update detmodconta_interf
set tseldia = 'SELECT ''0100'' coletilla,''Primas por recaudar Coasegurador(es) Cedido (25)'' descrip,
   pac_coa.f_impcoa_ccomp(sg.sseguro,cta.ccompan,m.fmovdia,vm.icednet)importe,
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
|| LPAD(NVL(axis.ff_buscadatosIndSAP(1,SG.SSEGURO),0), 2, ''0'')
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
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, seguros sg, tomadores t, per_personas p, coacedido cta,
 companias c, agentes a
 WHERE m.nrecibo = r.nrecibo
 AND  r.cagente = a.cagente
 and cta.sseguro = sg.sseguro
 and c.ccompani = cta.ccompan
 --and cta.nrecibo = r.nrecibo
 AND m.cestrec = 0
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.ctipcoa in (1) -- Coa Ced
 AND r.ctiprec = 0
 --and cta.cimport in (1)   -- 1.prima
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
AND r.nrecibo = #idpago'
   where cempres = 24
 and nlinea =10
 and ttippag = 4
 and ccuenta = 259070;
 commit;  
 
  --modificacion cuenta 412105 validacion coaseguro aceptado
 update detmodconta_interf
set tseldia = 'SELECT axis.ff_buscadatosIndSAP(4,SG.SSEGURO) coletilla,''Primas emitidas Coa Aceptado Cumplimiento '' descrip,
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
|| LPAD(NVL(pac_contab_conf.f_tipo(4121400102),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121400102),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
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
   AND r.nrecibo = #idpago'
   where cempres = 24
 and nlinea =8
 and ttippag = 4
 and ccuenta = 412140;
 commit;  
 
--modificacion query coaseguro
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
                                                                                                                                   AND a.nlinea = (select min(b.nlinea) from contab_asient_interf b where b.sinterf = a.sinterf) ))) = 8 )  '
where ctabla = 100316
and tdescrip = 'COASEGUROS';
commit;

--modificacion query intermediarios
update map_tabla
set tfrom = ' (select  a.sperson|| ''|'' ||b.ppartici linea
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
/
