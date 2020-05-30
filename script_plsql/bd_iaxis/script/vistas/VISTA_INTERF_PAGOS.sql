--------------------------------------------------------
--  DDL for View VISTA_INTERF_PAGOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VISTA_INTERF_PAGOS" ("TTIPPAG", "IDPAGO", "IDMOVIMIENTO", "CEMPRES", "NPOLIZA", "CTIPREC", "FEMISIO", "FPAGO", "FLIMPAG", "FEFECTO_VIG", "FVENCIM_VIG", "CPERTIP", "CRAMO", "TRAMO", "SPRODUC", "CAGENTE", "NPROCES", "FSINIES", "CESTPAGO", "NSINIES", "IRECIBO", "IIMPSELO", "ICOMAGE", "CTIPAGE", "CBANCO", "CENTIDAD", "TENTIDAD", "TNOMVIA_ENTIDAD", "NUMVIA_ENTIDAD", "CPOSTAL_ENTIDAD", "CPOBLAC", "CPAIS", "NNUMNIF_PER", "CTIPCAP", "CCAUSIN", "CMOTSIN", "CTIPDUR", "CRELASE", "CNIVEL", "SPERSON2", "NUMNIF_AGE", "CBANCAR", "CTIPBAN", "CMONPAG", "CMONRES", "CUENTACOB", "SSEGURO", "CCOMPANI", "CPADRE", "NCERTIF", "NSUPLEM", "PCESCOA", "CTIPCOA", "CCOMPANI_ASE", "CAGENTE_CORR", "PPARTICI", "CTIPIDE", "CMONINT", "CMONINT_LOC", "IRECIBO_LOC", "F_FIN_VIG", "CFORPAG_REC", "TAPELLI1", "TAPELLI2", "TNOMBRE1", "TNOMBRE2", "IMPORTE_BASE", "CRAMDGS", "TIPOAHORRO", "TRM", "NRECIBO", "PCONTABLE", "RCMOTMOV", "SCMOTMOV", "BNO_CTIPIDE", "BNO_NNUMIDE", "RAMO_CONTABLE", "CIA", "FACTUAL", "CCONPAG", "SEGMENTO", "CANAL", "CAGENTE_SUC", "FVENCIMCAR_VIG", "CMOVSEG", "FEXPEDICION", "IRENDIMIENTO", "CDGRACIA", "TDIGITOIDE", "BNO_TDIGITOIDE", "NFACREF", "CAGENTEPAGO", "CSEDE") AS 
  SELECT 4 ttippag, r.nrecibo idpago, m.smovrec idmovimiento, r.cempres, s.npoliza, r.ctiprec,
          r.femisio, r.fefecto fpago, r.fefecto flimpag, s.fefecto fefecto_vig,
          s.fvencim fvencim_vig, p.ctipper cpertip, s.cramo, ra.tramo, s.sproduc, s.cagente,
          r.cbancar nproces, NULL fsinies, m.cestrec cestpago, NULL nsinies,
          DECODE(r.ctiprec, 9,(v.itotalr * -1), v.itotalr) irecibo, v.itotimp iimpselo,
          NVL(v.icombru, 0) - NVL(v.icomret, 0) icomage, ag.ctipage ctipage, r.ccobban cbanco,
          p.nnumide centidad, pd.tnombre || ' ' || pd.tapelli1 || ' ' || pd.tapelli2 tentidad,
          pdi.tnomvia tnomvia_entidad, pdi.nnumvia numvia_entidad, pdi.cpostal cpostal_entidad,
          pdi.cpoblac, pd.cpais, p.nnumide nnumnif_per, NULL ctipcap, NULL ccausin,
          NULL cmotsin, NULL ctipdur, NULL crelase, NULL cnivel, NULL sperson2,
          page.nnumide numnif_age, r.cbancar, r.ctipban, NULL cmonpag, NULL cmonres,
          cob.ncuenta cuentacob, s.sseguro, s.ccompani,
          pac_redcomercial.f_busca_padre(s.cempres, NVL(r.cagente, s.cagente), NULL,
                                         GREATEST(m.fefeadm, m.fmovini)),
          s.ncertif, s.nsuplem, cta.ploccoa pcescoa,
          DECODE(s.ctipcoa, 1, 'C', 2, 'C', 8, 'A', 9, 'A') ctipcoa, NULL ccompani_ase,
          ctj.cagente cagente_corr, ctj.ppartici, p.ctipide,
          pac_monedas.f_cmoneda_t(pro.cdivisa) cmonint,
          pac_monedas.f_cmoneda_t(NVL(s.cmoneda, f_parinstalacion_n('MONEDAINST')))
                                                                                   cmonint_loc,
          DECODE(r.ctiprec, 9,(vmonloc.itotalr * -1), vmonloc.itotalr) irecibo_loc, r.fvencim,
          r.cforpag, pd.tapelli1, pd.tapelli2, pd.tnombre1, pd.tnombre2,
          DECODE(r.ctiprec,
                 9,(vmonloc.iprinet * -1) +(vmonloc.icednet * -1),
                 vmonloc.iprinet + vmonloc.icednet) importe_base,
          LPAD(f_cnvproductos_ext(pro.sproduc), 3, '0'),
          DECODE((SELECT COUNT(1)
                    FROM detrecibos
                   WHERE nrecibo = r.nrecibo
                     AND cgarant IN(48, 282)), 0, 'P', 'A') tipoahorro,
          DECODE
             (pac_monedas.f_cmoneda_t(pro.cdivisa),
              pac_monedas.f_cmoneda_t(NVL(s.cmoneda, f_parinstalacion_n('MONEDAINST'))), 1,
              pac_eco_tipocambio.f_cambio
                               (pac_monedas.f_cmoneda_t(pro.cdivisa),
                                pac_monedas.f_cmoneda_t(NVL(s.cmoneda,
                                                            f_parinstalacion_n('MONEDAINST'))),
                                (SELECT DISTINCT fcambio
                                            FROM detrecibos
                                           WHERE nrecibo = r.nrecibo
                                             AND fcambio IS NOT NULL))) trm,
          r.nrecibo, TO_CHAR(m.fefeadm, 'rrrrmm') pcontable, m.cmotmov rcmotmov,
          ms.cmotmov scmotmov, pbno.ctipide, pbno.nnumide,
          f_cnvproductos_ext(s.sproduc) ramo_contable,
          DECODE(pac_cuadre_adm.f_es_vida(s.sseguro), 1, 2, 1) cia, f_sysdate factual, NULL,
          (SELECT pps1.crespue   --pseg.crespue,
             FROM pregunpolseg pps1
            WHERE pps1.sseguro = s.sseguro
              AND pps1.cpregun = 9008
              AND nmovimi = (SELECT MAX(pps1b.nmovimi)
                               FROM pregunpolseg pps1b
                              WHERE pps1b.sseguro = pps1.sseguro
                                AND pps1b.cpregun = pps1.cpregun)),
          (SELECT pps1.crespue   --pcan.crespue,
             FROM pregunpolseg pps1
            WHERE pps1.sseguro = s.sseguro
              AND pps1.cpregun = 9006
              AND nmovimi = (SELECT MAX(pps1b.nmovimi)
                               FROM pregunpolseg pps1b
                              WHERE pps1b.sseguro = pps1.sseguro
                                AND pps1b.cpregun = pps1.cpregun)),
          DECODE(ctj.cagente,
                 NULL, NULL,
                 pac_redcomercial.f_busca_padre(s.cempres, NVL(ctj.cagente, s.cagente), NULL,
                                                GREATEST(m.fefeadm, m.fmovini))),
          NVL(s.fvencim, s.fcaranu), ms.cmovseg, GREATEST(ms.fmovimi, m.fmovdia), NULL,
          pac_devolu.f_numdias_periodo_gracia(s.sseguro), p.tdigitoide digitoide,
          pbno.tdigitoide bno_digitoide, NULL nfacref, NULL cagentepago, NULL csede
     FROM recibos r,
          movrecibo m,
          movseguro ms,
          seguros s,
          tomadores t,
          per_personas p,
          ramos ra,
          vdetrecibos v,
          agentes ag,
          per_detper pd,
          per_direcciones pdi,
          per_personas page,
          cobbancario cob,
          coacuadro cta,
          (SELECT agc.cagente, ppartici, sseguro
             FROM age_corretaje agc
            WHERE nmovimi = (SELECT MAX(nmovimi)
                               FROM age_corretaje agc1
                              WHERE agc.sseguro = agc1.sseguro)
              AND agc.islider = 1) ctj,
          productos pro,
          vdetrecibos_monpol vmonloc,
          benespseg bno,
          per_personas pbno
    WHERE r.nrecibo = m.nrecibo
      AND r.ctiprec NOT IN(13, 15)
      AND s.sseguro = r.sseguro
      AND r.sseguro = t.sseguro
      AND t.nordtom = 1
      AND ra.cramo = s.cramo
      AND ra.cidioma = s.cidioma
      AND v.nrecibo = r.nrecibo
      AND ag.cagente = s.cagente
      AND pd.sperson = p.sperson
      AND pd.cagente = ff_agente_cpervisio(s.cagente)
      AND pdi.sperson = p.sperson
      AND pdi.cagente = pd.cagente
      AND pdi.cdomici = t.cdomici
      AND page.sperson = ag.sperson
      AND t.sperson = p.sperson
      AND cob.ccobban(+) = r.ccobban
      AND s.sseguro = cta.sseguro(+)
      AND s.ncuacoa = cta.ncuacoa(+)
      AND ctj.sseguro(+) = s.sseguro
      AND pro.sproduc = s.sproduc
      AND vmonloc.nrecibo(+) = r.nrecibo
      AND ms.sseguro = s.sseguro
      AND ms.nmovimi = r.nmovimi
      AND bno.sseguro(+) = ms.sseguro
      AND bno.nmovimi(+) = ms.nmovimi
      AND bno.ffinben(+) IS NULL
      AND bno.ctipben(+) = 2
      AND bno.sperson = pbno.sperson(+)
   UNION ALL
   SELECT 1 ttippag, r.sidepag idpago, m.nmovpag idmovimiento, s.cempres, s.npoliza,
          r.ctippag ctiprec, r.fordpag femisio, r.fordpag fpago, LAST_DAY(r.fordpag) flimpag,
          s.fefecto fefecto_vig, s.fvencim fvencim_vig, p.ctipper cpertip, s.cramo, ra.tramo,
          s.sproduc, s.cagente, NVL(r.cbancar, d.cbancar) nproces, NULL fsinies,
          m.cestpag cestpago, r.nsinies nsinies, r.isinret irecibo, 0 iimpselo,
          (SELECT NVL(MAX(ipenali_moncia), 0)
             FROM sin_tramita_reserva res
            WHERE res.nsinies = r.nsinies
              AND res.ntramit = r.ntramit
              AND res.sidepag = r.sidepag
              AND v.ccausin IN(4, 5))
          *(NVL(d.pasigna, 100) / 100) icomage,
          ag.ctipage ctipage, s.ccobban cbanco, p.nnumide centidad,
          pd.tnombre || ' ' || pd.tapelli1 || ' ' || pd.tapelli2 tentidad, pdi.tnomvia_entidad,
          pdi.numvia_entidad, pdi.cpostal_entidad, pdi.cpoblac, pd.cpais,
          p.nnumide nnumnif_per, 1 ctipcap, v.ccausin, v.cmotsin, NULL ctipdur, d.crelase,
          v.cnivel, d.sperson sperson2, page.nnumide numnif_age,
          NVL(r.cbancar, d.cbancar) cbancar, NVL(r.ctipban, d.ctipban) ctipban, cmonpag,
          cmonres, cob.ncuenta cuentacob, s.sseguro, s.ccompani,
          pac_redcomercial.f_busca_padre(s.cempres, s.cagente, NULL, v.fsinies), s.ncertif,
          s.nsuplem, NULL, NULL, NULL, ctj.cagente cagente_corr, ctj.ppartici, p.ctipide, NULL,
          NULL, NULL, NULL, r.cforpag, pd.tapelli1, pd.tapelli2, pd.tnombre1, pd.tnombre2,
          r.isinretpag importe_base, LPAD(f_cnvproductos_ext(s.sproduc), 3, '0'), NULL, NULL,
          (SELECT MAX(r.nrecibo)
             FROM movrecibo m, recibos r
            WHERE m.nrecibo = r.nrecibo
              AND r.sseguro = s.sseguro
              AND m.cestrec IN(1, 3)) nrecibo,
          NULL, NULL, NULL, NULL pbno_ctipide, NULL pbno_nnumide,
          f_cnvproductos_ext(s.sproduc) ramo_contable,
          DECODE(pac_cuadre_adm.f_es_vida(s.sseguro), 1, 2, 1) cia, f_sysdate factual,
          DECODE
               ((SELECT COUNT(1)
                   FROM sin_tramita_reserva res
                  WHERE res.nsinies = r.nsinies
                    AND res.ntramit = r.ntramit
                    AND res.sidepag = r.sidepag
                    AND res.cgarant IN(48, 718)
                    AND v.ccausin IN(4, 5)),
                0, r.cconpag,
                DECODE(v.cmotsin,
                       0, 80,   -- Retiro cesión
                       1, 80,   -- Retiro cesión
                       2, 81,   -- Retiro ahorro
                       3, 80,   -- Retiro ahorro --> Retiro cesión MMM 02/07/2014 - 0032029
                       NULL)) cconpag,
          NULL, NULL,
          DECODE(ctj.cagente,
                 NULL, NULL,
                 pac_redcomercial.f_busca_padre(s.cempres, NVL(ctj.cagente, s.cagente), NULL,
                                                r.fordpag)),
          NVL(s.fvencim, s.fcaranu), NULL, r.fordpag, NVL(r.iresrcmpag, 0) iresrcmpag, NULL,
          p.tdigitoide digitoide, NULL bno_digitoide, r.nfacref nfacref, r.cagente cagentepago,
          sie.ccodigo csede
     FROM sin_tramita_pago r,
          sin_tramita_movpago m,
          seguros s,
          tomadores t,
          sin_tramita_destinatario d,
          per_personas p,
          ramos ra,
          sin_siniestro v,
          agentes ag,
          per_detper pd,
          sin_interfase_sede sie,
          (SELECT pp.sperson, pdi4.cagente, pdi4.tnomvia tnomvia_entidad,
                  pdi4.nnumvia numvia_entidad, pdi4.cpostal cpostal_entidad, pdi4.cpoblac
             FROM per_direcciones pdi4, per_personas pp
            WHERE pp.sperson = pdi4.sperson(+)
              AND(pdi4.cdomici IS NULL
                  OR pdi4.cdomici = NVL((SELECT MIN(pdi2.cdomici)
                                           FROM per_direcciones pdi2
                                          WHERE pdi2.sperson = pdi4.sperson
                                            AND pdi2.cagente = pdi4.cagente
                                            AND pdi2.ctipdir = 1),
                                        1))) pdi,
          per_personas page,
          cobbancario cob,
          (SELECT agc.cagente, ppartici, sseguro
             FROM age_corretaje agc
            WHERE nmovimi = (SELECT MAX(nmovimi)
                               FROM age_corretaje agc1
                              WHERE agc.sseguro = agc1.sseguro)
              AND agc.islider = 1) ctj
    WHERE r.sidepag = m.sidepag
      AND v.nsinies = r.nsinies
      AND s.sseguro = v.sseguro
      AND v.sseguro = t.sseguro
      AND t.nordtom = 1
      AND d.nsinies = r.nsinies
      AND d.ntramit = r.ntramit
      AND d.sperson = r.sperson
      AND d.ctipdes = r.ctipdes
      AND ra.cramo = s.cramo
      AND ra.cidioma = s.cidioma
      AND ag.cagente = s.cagente
      AND d.sperson = p.sperson
      AND pd.sperson = p.sperson
      AND pd.cagente = ff_agente_cpervisio(s.cagente)
      AND pdi.sperson = p.sperson
      AND(pdi.cagente IS NULL
          OR pdi.cagente = pd.cagente)
      AND page.sperson = ag.sperson
      AND cob.ccobban(+) = s.ccobban
      AND ctj.sseguro(+) = s.sseguro
      AND sie.sperson(+) = pd.sperson
   UNION ALL
   SELECT 2 ttippag, r.srecren idpago, m.smovpag idmovimiento, s.cempres, s.npoliza, 1 ctiprec,
          r.ffecefe femisio, r.ffecpag fpago, LAST_DAY(r.ffecefe) flimpag,
          s.fefecto fefecto_vig, s.fvencim fvencim_vig, p.ctipper cpertip, s.cramo, ra.tramo,
          s.sproduc, s.cagente, r.nctacor nproces, NULL fsinies, m.cestrec cestpago,
          d.nsinies nsinies, r.isinret irecibo, 0 iimpselo, 0 icomage, ag.ctipage ctipage,
          s.ccobban cbanco, p.nnumide centidad,
          pd.tnombre || ' ' || pd.tapelli1 || ' ' || pd.tapelli2 tentidad, pdi.tnomvia_entidad,
          pdi.numvia_entidad, pdi.cpostal_entidad, pdi.cpoblac, pd.cpais,
          p.nnumide nnumnif_per, dest.ctipcap, v.ccausin, v.cmotsin, d.ctipdur, dest.crelase,
          v.cnivel, r.sperson sperson2, page.nnumide numnif_age, r.nctacor cbancar, r.ctipban,
          NULL cmonpag, NULL cmonres, cob.ncuenta cuentacob, s.sseguro, s.ccompani,
          pac_redcomercial.f_busca_padre(s.cempres, s.cagente, NULL, r.ffecefe), s.ncertif,
          s.nsuplem, NULL, NULL, NULL, ctj.cagente cagente_corr, ctj.ppartici, p.ctipide, NULL,
          NULL, NULL, NULL, NULL, pd.tapelli1, pd.tapelli2, pd.tnombre1, pd.tnombre2,
          r.ibase importe_base, NULL, NULL, NULL, r.srecren, NULL, NULL, NULL,
          NULL pbno_ctipide, NULL pbno_nnumide, f_cnvproductos_ext(s.sproduc) ramo_contable,
          DECODE(pac_cuadre_adm.f_es_vida(s.sseguro), 1, 2, 1) cia, f_sysdate factual, NULL,
          NULL, NULL,
          DECODE(ctj.cagente,
                 NULL, NULL,
                 pac_redcomercial.f_busca_padre(s.cempres, NVL(ctj.cagente, s.cagente), NULL,
                                                r.ffecefe)),
          NVL(s.fvencim, s.fcaranu), NULL, r.ffecefe, NULL, NULL, p.tdigitoide digitoide,
          NULL bno_digitoide, NULL nfacref, NULL cagentepago, NULL csede
     FROM pagosrenta r,
          movpagren m,
          seguros s,
          tomadores t,
          prestaren d,
          per_personas p,
          ramos ra,
          sin_siniestro v,
          agentes ag,
          per_detper pd,
          (SELECT pp.sperson, pdi4.cagente, pdi4.tnomvia tnomvia_entidad,
                  pdi4.nnumvia numvia_entidad, pdi4.cpostal cpostal_entidad, pdi4.cpoblac
             FROM per_direcciones pdi4, per_personas pp
            WHERE pp.sperson = pdi4.sperson(+)
              AND(pdi4.cdomici IS NULL
                  OR pdi4.cdomici = NVL((SELECT MIN(pdi2.cdomici)
                                           FROM per_direcciones pdi2
                                          WHERE pdi2.sperson = pdi4.sperson
                                            AND pdi2.cagente = pdi4.cagente
                                            AND pdi2.ctipdir = 1),
                                        1))) pdi,
          per_personas page,
          sin_tramita_destinatario dest,
          cobbancario cob,
          (SELECT agc.cagente, ppartici, sseguro
             FROM age_corretaje agc
            WHERE nmovimi = (SELECT MAX(nmovimi)
                               FROM age_corretaje agc1
                              WHERE agc.sseguro = agc1.sseguro)
              AND agc.islider = 1) ctj
    WHERE r.srecren = m.srecren
      AND s.sseguro = r.sseguro
      AND d.sseguro = s.sseguro
      --AND d.cestado = 0
      AND d.sperson = r.sperson
      -- Bug 18286 - APD - 26/04/2011 - union entre prestaren y pagosrenta tambien
      -- por nsinies, ntramit y ctipdes
      AND d.sseguro = r.sseguro
      AND d.nsinies = r.nsinies
      AND d.ntramit = r.ntramit
      AND d.ctipdes = r.ctipdes
      AND v.nsinies = d.nsinies
      AND NVL(d.cestado, 0) IN(0, 1, 2, 3)
      AND r.sseguro = t.sseguro
      AND t.nordtom = 1
      AND dest.nsinies = d.nsinies
      AND dest.ntramit = d.ntramit
      AND dest.sperson = d.sperson
      AND dest.ctipdes = d.ctipdes
      AND ra.cramo = s.cramo
      AND ra.cidioma = s.cidioma
      AND ag.cagente = s.cagente
      AND r.sperson = p.sperson
      AND pd.sperson = p.sperson
      AND pd.cagente = ff_agente_cpervisio(s.cagente)
      AND pdi.sperson = p.sperson
      AND(pdi.cagente IS NULL
          OR pdi.cagente = pd.cagente)
      AND page.sperson = ag.sperson
      AND cob.ccobban(+) = s.ccobban
      AND ctj.sseguro(+) = s.sseguro
   UNION ALL
   SELECT 3 ttippag, r.srecren idpago, m.smovpag idmovimiento, s.cempres, s.npoliza, 1 ctiprec,
          r.ffecefe femisio, r.ffecpag fpago, LAST_DAY(r.ffecefe) flimpag,
          s.fefecto fefecto_vig, s.fvencim fvencim_vig, p.ctipper cpertip, s.cramo, ra.tramo,
          s.sproduc, s.cagente, r.nctacor nproces,
          (SELECT MAX(sinies.fsinies)
             FROM sin_siniestro sinies, sin_tramita_destinatario desti,
                  sin_tramita_pago pago, seguros_ren_prest repre
            WHERE repre.ssegren = s.sseguro
              AND pago.sidepag = repre.sidepag
              AND desti.ctipdes = pago.ctipdes
              AND desti.nsinies = pago.nsinies
              AND desti.ntramit = pago.ntramit
              AND desti.sperson = pago.sperson
              AND sinies.nsinies = desti.nsinies) fsinies,
          m.cestrec cestpago,
          (SELECT MAX(sinies.nsinies)
             FROM sin_siniestro sinies, sin_tramita_destinatario desti,
                  sin_tramita_pago pago, seguros_ren_prest repre
            WHERE repre.ssegren = s.sseguro
              AND pago.sidepag = repre.sidepag
              AND desti.ctipdes = pago.ctipdes
              AND desti.nsinies = pago.nsinies
              AND desti.ntramit = pago.ntramit
              AND desti.sperson = pago.sperson
              AND sinies.nsinies = desti.nsinies) nsinies,
          r.isinret irecibo, 0 iimpselo, 0 icomage, ag.ctipage ctipage, s.ccobban cbanco,
          p.nnumide centidad, pd.tnombre || ' ' || pd.tapelli1 || ' ' || pd.tapelli2 tentidad,
          pdi.tnomvia tnomvia_entidad, pdi.nnumvia numvia_entidad, pdi.cpostal cpostal_entidad,
          pdi.cpoblac, pd.cpais, p.nnumide nnumnif_per,
          (SELECT MAX(desti.ctipcap)
             FROM sin_siniestro sinies, sin_tramita_destinatario desti,
                  sin_tramita_pago pago, seguros_ren_prest repre
            WHERE repre.ssegren = s.sseguro
              AND pago.sidepag = repre.sidepag
              AND desti.ctipdes = pago.ctipdes
              AND desti.nsinies = pago.nsinies
              AND desti.ntramit = pago.ntramit
              AND desti.sperson = pago.sperson
              AND sinies.nsinies = desti.nsinies) ctipcap,
          (SELECT MAX(sinies.ccausin)
             FROM sin_siniestro sinies, sin_tramita_destinatario desti,
                  sin_tramita_pago pago, seguros_ren_prest repre
            WHERE repre.ssegren = s.sseguro
              AND pago.sidepag = repre.sidepag
              AND desti.ctipdes = pago.ctipdes
              AND desti.nsinies = pago.nsinies
              AND desti.ntramit = pago.ntramit
              AND desti.sperson = pago.sperson
              AND sinies.nsinies = desti.nsinies) ccausin,
          (SELECT MAX(sinies.cmotsin)
             FROM sin_siniestro sinies, sin_tramita_destinatario desti,
                  sin_tramita_pago pago, seguros_ren_prest repre
            WHERE repre.ssegren = s.sseguro
              AND pago.sidepag = repre.sidepag
              AND desti.ctipdes = pago.ctipdes
              AND desti.nsinies = pago.nsinies
              AND desti.ntramit = pago.ntramit
              AND desti.sperson = pago.sperson
              AND sinies.nsinies = desti.nsinies) cmotsin,
          NULL,
          (SELECT MAX(desti.crelase)
             FROM sin_siniestro sinies, sin_tramita_destinatario desti,
                  sin_tramita_pago pago, seguros_ren_prest repre
            WHERE repre.ssegren = s.sseguro
              AND pago.sidepag = repre.sidepag
              AND desti.ctipdes = pago.ctipdes
              AND desti.nsinies = pago.nsinies
              AND desti.ntramit = pago.ntramit
              AND desti.sperson = pago.sperson
              AND sinies.nsinies = desti.nsinies) crelase,
          (SELECT MAX(sinies.cnivel)
             FROM sin_siniestro sinies, sin_tramita_destinatario desti,
                  sin_tramita_pago pago, seguros_ren_prest repre
            WHERE repre.ssegren = s.sseguro
              AND pago.sidepag = repre.sidepag
              AND desti.ctipdes = pago.ctipdes
              AND desti.nsinies = pago.nsinies
              AND desti.ntramit = pago.ntramit
              AND desti.sperson = pago.sperson
              AND sinies.nsinies = desti.nsinies) cnivel,
          r.sperson sperson2, page.nnumide numnif_age, r.nctacor cbancar, s.ctipban,
          NULL cmonpag, NULL cmonres, cob.ncuenta cuentacob, s.sseguro, s.ccompani,
          pac_redcomercial.f_busca_padre(s.cempres, s.cagente, NULL, r.ffecefe), s.ncertif,
          s.nsuplem, NULL, NULL, NULL, ctj.cagente cagente_corr, ctj.ppartici, p.ctipide, NULL,
          NULL, NULL, NULL, NULL, pd.tapelli1, pd.tapelli2, pd.tnombre1, pd.tnombre2,
          r.ibase importe_base, NULL, NULL, NULL, r.srecren, NULL, NULL, NULL,
          NULL pbno_ctipide, NULL pbno_nnumide, f_cnvproductos_ext(s.sproduc) ramo_contable,
          DECODE(pac_cuadre_adm.f_es_vida(s.sseguro), 1, 2, 1) cia, f_sysdate factual, NULL,
          NULL, NULL,
          DECODE(ctj.cagente,
                 NULL, NULL,
                 pac_redcomercial.f_busca_padre(s.cempres, NVL(ctj.cagente, s.cagente), NULL,
                                                r.ffecefe)),
          NVL(s.fvencim, s.fcaranu), NULL, r.ffecefe, NULL, NULL, p.tdigitoide digitoide,
          NULL bno_digitoide, NULL nfacref, NULL cagentepago, NULL csede
     FROM pagosrenta r,
          movpagren m,
          seguros s,
          tomadores t,
          seguros_ren d,
          per_personas p,
          ramos ra,
          agentes ag,
          per_detper pd,
          per_direcciones pdi,
          per_personas page,
          cobbancario cob,
          (SELECT agc.cagente, ppartici, sseguro
             FROM age_corretaje agc
            WHERE nmovimi = (SELECT MAX(nmovimi)
                               FROM age_corretaje agc1
                              WHERE agc.sseguro = agc1.sseguro)
              AND agc.islider = 1) ctj
    WHERE r.srecren = m.srecren
      AND d.sseguro = s.sseguro
      AND r.sseguro = t.sseguro
      AND r.sseguro = s.sseguro
      AND t.nordtom = 1
      AND ra.cramo = s.cramo
      AND ra.cidioma = s.cidioma
      AND ag.cagente = s.cagente
      AND t.sperson = p.sperson
      AND pd.sperson = p.sperson
      AND pd.cagente = ff_agente_cpervisio(s.cagente)
      AND pdi.sperson = p.sperson
      AND pdi.cagente = pd.cagente   --s.cagente
      AND pdi.cdomici = t.cdomici
      AND page.sperson = ag.sperson
      AND cob.ccobban(+) = s.ccobban
      AND ctj.sseguro(+) = s.sseguro
   UNION ALL
   SELECT 5 ttippag, r.spago idpago, r.nnumlin idmovimiento, r.cempres, NULL npoliza,
          NULL ctiprec, NULL femisio, r.fliquida fpago, r.fliquida flimpag, NULL fefecto_vig,
          NULL fvencim_vig, NULL cpertip, NULL cramo, NULL tramo, NULL sproduc,
          r.cagente cagente, NULL nproces, NULL fsinies, r.cestado cestpago, NULL nsinies,
          (SELECT SUM(iimport) iimport
             FROM ctactes
            WHERE sproces = c.sproces
              AND cempres = r.cempres
              AND cdebhab = c.cdebhab) irecibo, 0 iimpselo, 0 icomage, NULL ctipage,
          NULL cbanco, NULL centidad, NULL tentidad, NULL nomvia_entidad, NULL numvia_entidad,
          NULL cpostal_entidad, NULL cpoblac, NULL cpais, NULL nnumnif_per, NULL ctipcap,
          NULL ccausin, NULL cmotsin, NULL ctipdur, NULL crelase, NULL cnivel, NULL sperson2,
          page.nnumide numnif_age, r.cbancar cbancar, r.ctipban, NULL cmonpag, NULL cmonres,
          NULL cuentacob, NULL sseguro, NULL ccompani,
          pac_redcomercial.f_busca_padre(r.cempres, r.cagente, NULL, r.fliquida), NULL ncertif,
          NULL nsuplem, NULL, NULL, NULL, NULL cagente_corr, NULL ppartici, NULL ctipide, NULL,
          NULL, NULL, NULL, NULL, NULL tapelli1, NULL tapelli2, NULL tnombre1, NULL tnombre2,
          r.iimporte importe_base, NULL, NULL, NULL, NULL srecren, NULL, NULL, NULL,
          NULL ctipide, NULL nnumide, NULL ramo_contable, NULL cia, f_sysdate factual, NULL,
          NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, page.tdigitoide digitoide,
          NULL bno_digitoide, NULL nfacref, NULL cagentepago, NULL csede
     FROM pagoscomisiones r, agentes ag, per_personas page, ctactes c
    WHERE ag.cagente = r.cagente
      AND page.sperson = ag.sperson
      AND c.cagente = r.cagente
      AND c.nnumlin = r.nnumlin
      AND c.cempres = r.cempres
   UNION ALL
   SELECT 6 ttippag, TO_NUMBER(r.ctapres) idpago, ps.nmovimi idmovimiento, s.cempres,
          s.npoliza npoliza, NULL ctiprec, r.falta femisio, r.falta fpago, r.fremesa flimpag,
          r.fcontab fefecto_vig, NULL fvencim_vig, ptom.ctipper cpertip, s.cramo cramo,
          ra.tramo tramo, s.sproduc sproduc, s.cagente cagente, NULL nproces, NULL fsinies,
          c.cestado cestpago, NULL nsinies,
          DECODE(pm.cestpag, 8, -1, 1) * r.icapital_monpago irecibo, 0 iimpselo, 0 icomage,
          ag.ctipage ctipage, NULL cbanco, ptom.nnumide centidad, NULL tentidad,
          NULL nomvia_entidad, NULL numvia_entidad, NULL cpostal_entidad, NULL cpoblac,
          NULL cpais, ptom.nnumide nnumnif_per, NULL ctipcap, NULL ccausin, NULL cmotsin,
          NULL ctipdur, NULL crelase, NULL cnivel, NULL sperson2, page.nnumide numnif_age,
          c.cbancar cbancar, c.ctipban, pac_monedas.f_cmoneda_t(r.cmonpago) cmonpag,
          pac_monedas.f_cmoneda_t(r.cmonpago) cmonres, NULL cuentacob, s.sseguro sseguro,
          s.ccompani ccompani,
          pac_redcomercial.f_busca_padre(s.cempres, s.cagente, NULL, r.fcontab),
          s.ncertif ncertif, s.nsuplem nsuplem, NULL, NULL, NULL, NULL cagente_corr,
          NULL ppartici, ptom.ctipide ctipide, pac_monedas.f_cmoneda_t(pro.cdivisa) cmonint,
          pac_monedas.f_cmoneda_t(NVL(s.cmoneda, f_parinstalacion_n('MONEDAINST')))
                                                                                   cmonint_loc,
          DECODE(pm.cestpag, 8, -1, 1) * r.icapital irecibo_loc, NULL, NULL, pdtom.tapelli1,
          pdtom.tapelli2, pdtom.tnombre1, pdtom.tnombre2,
          DECODE(pm.cestpag, 8, -1, 1) * r.icapital_monpago importe_base, NULL, NULL, NULL,
          (SELECT MAX(r.nrecibo)
             FROM movrecibo m, recibos r
            WHERE m.nrecibo = r.nrecibo
              AND r.sseguro = s.sseguro
              AND m.cestrec IN(1, 3)) nrecibo,
          NULL srecren, NULL, NULL, NULL ctipide, NULL nnumide,
          f_cnvproductos_ext(s.sproduc) ramo_contable,
          DECODE(pac_cuadre_adm.f_es_vida(s.sseguro), 1, 2, 1) cia, f_sysdate factual,
          97 cconpag, NULL, NULL, NULL, NVL(s.fvencim, s.fcaranu), NULL, NULL, 0, NULL,
          ptom.tdigitoide digitoide, NULL bno_digitoide, NULL nfacref, NULL cagentepago,
          NULL csede
     FROM prestamopago r,
-- Ini Bug 23772 - MDS - 01/10/2012
                         prestamomovpago pm,
-- Fin Bug 23772 - MDS - 01/10/2012
                                            agentes ag, per_personas page, prestamos c,
          prestamoseg ps, seguros s, tomadores t, per_personas ptom, ramos ra, productos pro,
          per_detper pdtom
    WHERE ag.cagente = s.cagente
      AND page.sperson = ag.sperson
      AND c.ctapres = r.ctapres
      AND ps.ctapres = r.ctapres
-- Ini Bug 23772 - MDS - 01/10/2012
      AND r.ctapres = pm.ctapres
      AND r.npago = pm.npago
      AND pm.fmovfin IS NULL
-- Fin Bug 23772 - MDS - 01/10/2012
      AND s.sseguro = ps.sseguro
      AND t.sseguro = s.sseguro
      AND t.sperson = ptom.sperson
      AND ptom.sperson = pdtom.sperson
      AND ra.cramo = s.cramo
      AND ra.cidioma = s.cidioma
      AND pro.sproduc = s.sproduc
      AND c.cestado IS NOT NULL
   UNION ALL
   SELECT 7 ttippag, r.nrecibo idpago, m.smovrec idmovimiento, r.cempres, s.npoliza, r.ctiprec,
          r.femisio, r.fefecto fpago, r.fefecto flimpag, s.fefecto fefecto_vig,
          s.fvencim fvencim_vig, p.ctipper cpertip, s.cramo, ra.tramo, s.sproduc, s.cagente,
          r.cbancar nproces, NULL fsinies, m.cestrec cestpago, NULL nsinies,
          DECODE(r.ctiprec, 15,(v.itotalr * -1), v.itotalr) irecibo, v.itotimp iimpselo,
          NVL(v.icombru, 0) - NVL(v.icomret, 0) icomage, ag.ctipage ctipage, r.ccobban cbanco,
          p.nnumide centidad, pd.tnombre || ' ' || pd.tapelli1 || ' ' || pd.tapelli2 tentidad,
          pdi.tnomvia tnomvia_entidad, pdi.nnumvia numvia_entidad, pdi.cpostal cpostal_entidad,
          pdi.cpoblac, pd.cpais, p.nnumide nnumnif_per, NULL ctipcap, NULL ccausin,
          NULL cmotsin, NULL ctipdur, NULL crelase, NULL cnivel, NULL sperson2,
          page.nnumide numnif_age, r.cbancar, r.ctipban,
          pac_monedas.f_cmoneda_t(NVL(s.cmoneda, f_parinstalacion_n('MONEDAINST'))) cmonpag,
          NULL cmonres, cob.ncuenta cuentacob, s.sseguro, s.ccompani,
          pac_redcomercial.f_busca_padre(s.cempres, NVL(r.cagente, s.cagente), NULL,
                                         GREATEST(m.fefeadm, m.fmovini)),
          s.ncertif, s.nsuplem, cta.ploccoa pcescoa,
          DECODE(s.ctipcoa, 1, 'C', 2, 'C', 8, 'A', 9, 'A') ctipcoa, NULL ccompani_ase,
          ctj.cagente cagente_corr, ctj.ppartici, p.ctipide,
          pac_monedas.f_cmoneda_t(pro.cdivisa) cmonint,
          pac_monedas.f_cmoneda_t(NVL(s.cmoneda, f_parinstalacion_n('MONEDAINST')))
                                                                                   cmonint_loc,
          DECODE(r.ctiprec, 15,(vmonloc.itotalr * -1), vmonloc.itotalr) irecibo_loc, r.fvencim,
          r.cforpag, pd.tapelli1, pd.tapelli2, pd.tnombre1, pd.tnombre2,
          DECODE(r.ctiprec,
                 15,(vmonloc.iprinet * -1) +(vmonloc.icednet * -1),
                 vmonloc.iprinet + vmonloc.icednet) importe_base,
          LPAD(f_cnvproductos_ext(pro.sproduc), 3, '0'),
          DECODE((SELECT COUNT(1)
                    FROM detrecibos
                   WHERE nrecibo = r.nrecibo
                     AND cgarant IN(48, 282)), 0, 'P', 'A') tipoahorro,
          DECODE
             (pac_monedas.f_cmoneda_t(pro.cdivisa),
              pac_monedas.f_cmoneda_t(NVL(s.cmoneda, f_parinstalacion_n('MONEDAINST'))), 1,
              pac_eco_tipocambio.f_cambio
                               (pac_monedas.f_cmoneda_t(pro.cdivisa),
                                pac_monedas.f_cmoneda_t(NVL(s.cmoneda,
                                                            f_parinstalacion_n('MONEDAINST'))),
                                (SELECT DISTINCT fcambio
                                            FROM detrecibos
                                           WHERE nrecibo = r.nrecibo
                                             AND fcambio IS NOT NULL))) trm,
          (SELECT MAX(rec.nrecibo)
             FROM recibos rec
            WHERE rec.sseguro = r.sseguro
              AND rec.nmovimi = r.nmovimi
              --AND rec.ctiprec IN(1, 2, 3) 0027743: LCOL_A003- error recobro de retornos
              AND rec.ctiprec NOT IN(13, 14, 15)
              AND rec.cestaux <> 2) nrecibo,
          TO_CHAR(m.fefeadm, 'rrrrmm') pcontable, m.cmotmov rcmotmov, ms.cmotmov scmotmov,
          pbno.ctipide, pbno.nnumide, f_cnvproductos_ext(s.sproduc) ramo_contable,
          DECODE(pac_cuadre_adm.f_es_vida(s.sseguro), 1, 2, 1) cia, f_sysdate factual,
          96 cconpag,
          (SELECT pps1.crespue   --pseg.crespue,
             FROM pregunpolseg pps1
            WHERE pps1.sseguro = s.sseguro
              AND pps1.cpregun = 9008
              AND nmovimi = (SELECT MAX(pps1b.nmovimi)
                               FROM pregunpolseg pps1b
                              WHERE pps1b.sseguro = pps1.sseguro
                                AND pps1b.cpregun = pps1.cpregun)),
          (SELECT pps1.crespue   --pcan.crespue,
             FROM pregunpolseg pps1
            WHERE pps1.sseguro = s.sseguro
              AND pps1.cpregun = 9006
              AND nmovimi = (SELECT MAX(pps1b.nmovimi)
                               FROM pregunpolseg pps1b
                              WHERE pps1b.sseguro = pps1.sseguro
                                AND pps1b.cpregun = pps1.cpregun)),
          DECODE(ctj.cagente,
                 NULL, NULL,
                 pac_redcomercial.f_busca_padre(s.cempres, NVL(ctj.cagente, s.cagente), NULL,
                                                GREATEST(m.fefeadm, m.fmovini))),
          NVL(s.fvencim, s.fcaranu), ms.cmovseg, GREATEST(ms.fmovimi, m.fmovdia),
          0 irendimiento, pac_devolu.f_numdias_periodo_gracia(s.sseguro),
          p.tdigitoide digitoide, NULL bno_digitoide, NULL nfacref, NULL cagentepago,
          NULL csede
     FROM recibos r,
          movrecibo m,
          movseguro ms,
          seguros s,
          tomadores t,
          per_personas p,
          ramos ra,
          vdetrecibos v,
          agentes ag,
          per_detper pd,
          /*(SELECT *
             FROM per_direcciones p
            WHERE cdomici = (SELECT MAX(pd1.cdomici)
                               FROM per_direcciones pd1
                              WHERE pd1.sperson = p.sperson)) pdi,*/
          per_direcciones pdi,
          per_personas page,
          cobbancario cob,
          coacuadro cta,
          (SELECT agc.cagente, ppartici, sseguro
             FROM age_corretaje agc
            WHERE nmovimi = (SELECT MAX(nmovimi)
                               FROM age_corretaje agc1
                              WHERE agc.sseguro = agc1.sseguro)
              AND agc.islider = 1) ctj,
          productos pro,
          vdetrecibos_monpol vmonloc,
          benespseg bno,
          per_personas pbno
    WHERE r.nrecibo = m.nrecibo
      AND r.ctiprec IN(13, 15)
      AND s.sseguro = r.sseguro
      AND r.sseguro = t.sseguro
      AND t.nordtom = 1
      AND ra.cramo = s.cramo
      AND ra.cidioma = s.cidioma
      AND v.nrecibo = r.nrecibo
      AND ag.cagente = s.cagente
      AND pd.sperson = p.sperson
      AND pd.cagente = ff_agente_cpervisio(s.cagente)
      --AND pdi.sperson(+) = pd.sperson
      --AND pdi.cagente(+) = pd.cagente
      AND pdi.sperson = p.sperson
      AND pdi.cagente = pd.cagente
      AND pdi.cdomici = t.cdomici
      AND page.sperson = ag.sperson
      AND NVL(r.sperson, t.sperson) = p.sperson
      AND cob.ccobban(+) = r.ccobban
      AND s.sseguro = cta.sseguro(+)
      AND s.ncuacoa = cta.ncuacoa(+)
      AND ctj.sseguro(+) = s.sseguro
      AND pro.sproduc = s.sproduc
      AND vmonloc.nrecibo(+) = r.nrecibo
      AND ms.sseguro = s.sseguro
      AND ms.nmovimi = r.nmovimi
      AND bno.sseguro(+) = ms.sseguro
      AND bno.nmovimi(+) = ms.nmovimi
      AND bno.ffinben(+) IS NULL
      AND bno.ctipben(+) = 2
      AND bno.sperson = pbno.sperson(+)
   UNION ALL
   SELECT 8 ttippag, p.sproces idpago, 1 idmovimiento, p.cempres, NULL npoliza, NULL ctiprec,
          p.falta femisio, p.fliquida fpago, p.fliquida flimpag, NULL fefecto_vig,
          NULL fvencim_vig, page.ctipper cpertip, pr.cramo cramo, ra.tramo tramo,
          p.sproduc sproduc, p.ccorred cagente, p.cbancar nproces, NULL fsinies,
          p.ctipopag cestpago, NULL nsinies, ABS(p.iimporte_moncon) irecibo, 0 iimpselo,
          0 icomage, NULL ctipage, NULL cbanco, page.nnumide centidad,
          pd.tnombre || ' ' || pd.tapelli1 || ' ' || pd.tapelli2 tentidad, NULL nomvia_entidad,
          NULL numvia_entidad, NULL cpostal_entidad, NULL cpoblac, NULL cpais,
          NULL nnumnif_per, NULL ctipcap, NULL ccausin, NULL cmotsin, NULL ctipdur,
          NULL crelase, NULL cnivel, NULL sperson2, page.nnumide numnif_age, p.cbancar cbancar,
          p.ctipban, pac_monedas.f_moneda_producto_char(pr.sproduc) cmonpag, NULL cmonres,
          NULL cuentacob, NULL sseguro, p.ccompani ccompani, 1000010, NULL ncertif,
          NULL nsuplem, NULL, NULL, NULL, NULL cagente_corr, NULL ppartici,
          page.ctipide ctipide, NULL cmonint,
          pac_monedas.f_moneda_producto_char(pr.sproduc) cmonint_loc,
          ABS(DECODE(pr.cdivisa, 8, iimporte_moncon, iimporte)) irecibo_loc, NULL, NULL,
          pd.tapelli1, pd.tapelli2, pd.tnombre1, pd.tnombre2,
          ABS(p.iimporte_moncon) importe_base, LPAD(f_cnvproductos_ext(p.sproduc), 3, '0'),
          NULL, NULL trm, NULL srecren, TO_CHAR(p.falta, 'rrrrmm') pcontable, NULL, NULL,
          page.ctipide ctipide, page.nnumide nnumide,
          f_cnvproductos_ext(p.sproduc) ramo_contable,
          DECODE(pr.cagrpro, 1, 1, 2, 1, 10, 1, 11, 1, 21, 1, 0) + 1 cia, f_sysdate factual,
          95 cconpag, NULL, NULL, '010', NULL, NULL, NULL, 0, NULL, page.tdigitoide digitoide,
          NULL bno_digitoide, NULL nfacref, NULL cagentepago, NULL csede
     FROM pagos_ctatec_rea p, productos pr, ramos ra, companias c, per_personas page,
          per_direcciones pdi, per_detper pd
    WHERE p.sproduc = pr.sproduc(+)
      AND ra.cramo = pr.cramo
      AND ra.cidioma = pac_parametros.f_parempresa_n(p.cempres, 'IDIOMA_DEF')
      AND p.ccompani = c.ccompani
      AND page.sperson(+) = c.sperson
      AND c.sperson = pdi.sperson(+)
      AND pd.sperson(+) = c.sperson
   UNION ALL
   SELECT 9 ttippag, p.spagcoa idpago, 1 idmovimiento, p.cempres, NULL npoliza, NULL ctiprec,
          p.falta femisio, p.fliquida fpago, p.fliquida flimpag, NULL fefecto_vig,
          NULL fvencim_vig, NULL cpertip, pr.cramo cramo, ra.tramo tramo, p.sproduc sproduc,
          p.ccompani cagente, p.cbancar nproces, NULL fsinies, p.ctipopag cestpago,
          NULL nsinies, p.iimporte_moncon irecibo, 0 iimpselo, 0 icomage, NULL ctipage,
          NULL cbanco, page.nnumide centidad,
          pd.tnombre || ' ' || pd.tapelli1 || ' ' || pd.tapelli2 tentidad, NULL nomvia_entidad,
          NULL numvia_entidad, NULL cpostal_entidad, NULL cpoblac, NULL cpais,
          NULL nnumnif_per, NULL ctipcap, NULL ccausin, NULL cmotsin, NULL ctipdur,
          NULL crelase, NULL cnivel, NULL sperson2, page.nnumide numnif_age, p.cbancar cbancar,
          p.ctipban, NULL cmonpag, NULL cmonres, NULL cuentacob, NULL sseguro,
          p.ccompani ccompani, 1000010, NULL ncertif, NULL nsuplem, NULL, NULL, NULL,
          NULL cagente_corr, NULL ppartici, page.ctipide ctipide, NULL cmonint,
          pac_monedas.f_cmoneda_t(f_parinstalacion_n('MONEDAINST')) cmonint_loc,
          iimporte_moncon irecibo_loc, NULL, NULL, pd.tapelli1, pd.tapelli2, pd.tnombre1,
          pd.tnombre2, p.iimporte_moncon importe_base,
          LPAD(f_cnvproductos_ext(p.sproduc), 3, '0'), NULL, NULL trm, NULL srecren,
          TO_CHAR(p.falta, 'rrrrmm') pcontable, NULL, NULL, page.ctipide ctipide,
          page.nnumide nnumide, f_cnvproductos_ext(p.sproduc) ramo_contable, p.ccompani cia,
          f_sysdate factual, 94 cconpag, NULL, NULL, '010', NULL, NULL, NULL, 0, NULL,
          page.tdigitoide digitoide, NULL bno_digitoide, NULL nfacref, NULL cagentepago,
          NULL csede
     FROM pagos_ctatec_coa p, productos pr, ramos ra, companias c, per_personas page,
          per_direcciones pdi, per_detper pd
    WHERE p.sproduc = pr.sproduc(+)
      AND ra.cramo = pr.cramo
      AND ra.cidioma = pac_parametros.f_parempresa_n(p.cempres, 'IDIOMA_DEF')
      AND p.ccompani = c.ccompani
      AND page.sperson(+) = c.sperson
      AND c.sperson = pdi.sperson(+)
      AND pd.sperson(+) = c.sperson
;
  GRANT UPDATE ON "AXIS"."VISTA_INTERF_PAGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VISTA_INTERF_PAGOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VISTA_INTERF_PAGOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VISTA_INTERF_PAGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VISTA_INTERF_PAGOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VISTA_INTERF_PAGOS" TO "PROGRAMADORESCSI";
