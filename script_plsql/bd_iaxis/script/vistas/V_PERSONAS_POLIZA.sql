--------------------------------------------------------
--  DDL for View V_PERSONAS_POLIZA
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."V_PERSONAS_POLIZA" ("CODIGOSEGURO", "CODIGOPERSONA", "NUMEROPOLIZA", "NUMEROCERTIF", "NOMBRE", "APELLI1", "APELLI2", "IDIOMA", "CODIGOPRODUCTO", "TITULOPRODUCTO", "MAIL", "TELEFONO", "ASSEGURADO", "ASTIPNOT", "TOMADOR", "TMTIPNOT", "BENEFICIARIO", "BFTIPNOT", "MONEDA", "RECIBO", "MONTANTE") AS 
  SELECT DISTINCT ss.sseguro,
                pp.sperson,
                ss.npoliza,
                ss.ncertif,
                DECODE(pdp.tapelli1,NULL,' ',pdp.tnombre) tnombre,
                DECODE(pdp.tapelli1,NULL,' ',pdp.tapelli1) tapelli1,
                DECODE(pdp.tapelli2,NULL,' ',pdp.tapelli2) tapelli2,
                pdp.cidioma, ss.sproduc, tp.ttitulo,
                DECODE(pct.ctipcon, 3, tvalcon, NULL) mail,
                DECODE(pct.ctipcon, 1, tvalcon, NULL) telefono,
                DECODE(ag.sperson, NULL, 0, 1) assegurado,
                DECODE(ag.ctipnot, NULL, 0, ag.ctipnot) astipnot,
                0 tomador,
                0 tmtipnot,
                0 beneficiario,
                0 bftipnot,
                mnd.cmonint cmoneda,
                re.NRECIBO nrecibo,
                DECODE(re.ctiprec, 9,(dre.itotalr * -1), dre.itotalr) montante
FROM seguros ss,
      productos prd,
      monedas mnd,
      recibos re,
      vdetrecibos dre,
      titulopro TP,
      per_personas pp,
      asegurados ag,
      per_detper pdp,
      per_contactos pct
WHERE ss.sseguro = ag.sseguro
  AND pct.ctipcon IN(1,2,3)
  AND prd.sproduc = ss.sproduc
  AND mnd.cmoneda = prd.cdivisa
  AND re.sseguro = ss.SSEGURO
  AND dre.nrecibo = re.nrecibo
  AND tp.cramo = prd.cramo
  AND tp.cmodali = prd.cmodali
  AND tp.ctipseg = prd.ctipseg
  AND tp.ccolect = prd.ccolect
  AND tp.cidioma = 4
  AND ss.sseguro = NVL(ag.SSEGURO,ss.sseguro)
  AND ag.sperson = pp.sperson
  AND pp.SPERSON = pct.sperson
  and pdp.sperson = pp.sperson
UNION ALL
SELECT DISTINCT ss.sseguro, pp.sperson,
ss.npoliza, ss.ncertif,
  DECODE(pdp.tapelli1,NULL,' ',pdp.tnombre) tnombre,
    DECODE(pdp.tapelli1,NULL,' ',pdp.tapelli1) tapelli1,
    DECODE(pdp.tapelli2,NULL,' ',pdp.tapelli2) tapelli2,
    pdp.cidioma, ss.sproduc, tp.ttitulo,
    DECODE(pct.ctipcon, 3, tvalcon, NULL) mail,
    DECODE(pct.ctipcon, 1, tvalcon, NULL) telefono,
    0 assegurado,
    0 astipnot,
    DECODE(tm.sperson, NULL, 0, 1) tomador,
    DECODE(tm.ctipnot, NULL, 0, tm.ctipnot) tmtipnot,
    0 beneficiario,
    0 bftipnot,
    mnd.cmonint cmoneda,
    re.NRECIBO nrecibo,
    DECODE(re.ctiprec, 9,(dre.itotalr * -1), dre.itotalr) montante
FROM seguros ss,
      productos prd,
      monedas mnd,
      recibos re,
      vdetrecibos dre,
      titulopro TP,
      per_personas pp,
      tomadores tm,
      per_detper pdp,
      per_contactos pct
WHERE ss.sseguro = tm.sseguro
  AND pct.ctipcon IN(1,2,3)
  AND prd.sproduc = ss.sproduc
  AND mnd.cmoneda = prd.cdivisa
  AND re.sseguro = ss.SSEGURO
  AND dre.nrecibo = re.nrecibo
  AND tp.cramo = prd.cramo
  AND tp.cmodali = prd.cmodali
  AND tp.ctipseg = prd.ctipseg
  AND tp.ccolect = prd.ccolect
  AND tp.cidioma = 4
  AND ss.sseguro = NVL(tm.SSEGURO,ss.sseguro)
  AND tm.sperson = pp.sperson
  AND pp.SPERSON = pct.sperson
  and pdp.sperson = pp.sperson
UNION ALL
SELECT DISTINCT ss.sseguro, pp.sperson,
ss.npoliza, ss.ncertif,
  DECODE(pdp.tapelli1,NULL,' ',pdp.tnombre) tnombre,
    DECODE(pdp.tapelli1,NULL,' ',pdp.tapelli1) tapelli1,
    DECODE(pdp.tapelli2,NULL,' ',pdp.tapelli2) tapelli2,
    pdp.cidioma, ss.sproduc, tp.ttitulo,
    DECODE(pct.ctipcon, 3, tvalcon, NULL) mail,
    DECODE(pct.ctipcon, 1, tvalcon, NULL) telefono,
    0 assegurado,
    0 astipnot,
    0 tomador,
    0 tmtipnot,
    DECODE(bm.sperson, NULL, 0, 1) beneficiario,
    DECODE(bm.ctipnot, NULL, 0, bm.ctipnot) bftipnot,
    mnd.cmonint cmoneda,
    re.NRECIBO nrecibo,
    DECODE(re.ctiprec, 9,(dre.itotalr * -1), dre.itotalr) montante
FROM seguros ss,
      productos prd,
      monedas mnd,
      recibos re,
      vdetrecibos dre,
      titulopro TP,
      per_personas pp,
      beneficiarios bm,
      per_detper pdp,
      per_contactos pct
WHERE ss.sseguro = bm.sseguro
  AND pct.ctipcon IN(1,2,3)
  AND prd.sproduc = ss.sproduc
  AND mnd.cmoneda = prd.cdivisa
  AND re.sseguro = ss.SSEGURO
  AND dre.nrecibo = re.nrecibo
  AND tp.cramo = prd.cramo
  AND tp.cmodali = prd.cmodali
  AND tp.ctipseg = prd.ctipseg
  AND tp.ccolect = prd.ccolect
  AND tp.cidioma = 4
  AND ss.sseguro = NVL(bm.SSEGURO,ss.sseguro)
  AND bm.sperson = pp.sperson
  AND pp.SPERSON = pct.sperson
  and pdp.sperson = pp.sperson
;
  GRANT UPDATE ON "AXIS"."V_PERSONAS_POLIZA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."V_PERSONAS_POLIZA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."V_PERSONAS_POLIZA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."V_PERSONAS_POLIZA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."V_PERSONAS_POLIZA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."V_PERSONAS_POLIZA" TO "PROGRAMADORESCSI";
