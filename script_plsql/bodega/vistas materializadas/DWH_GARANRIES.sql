--------------------------------------------------------
--  DDL for Materialized View DWH_GARANRIES
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."DWH_GARANRIES" ("SSEGURO", "NUM_MOVIMI", "COD_GARANTIA", "NUM_RIESGO", "SPERSON_RIESGO", "COD_DOMICILIO_RIESGO", "FNACIMI_RIESGO", "COD_SEXO_RIESGO", "DES_SEXO_RIESGO", "FINICIOEFE", "AAAA_FINIEFE", "MM_FINIEFE", "DD_FINIEFE", "NUM_ORDEN", "FFINEFE", "AAAA_FFINEFE", "MM_FFINEFE", "DD_FFINEFE", "CAPITAL", "PRIMA_ANUAL", "EXTRA_PRIMA", "RECARGO", "TARIFA", "PRIMA_AFECTA", "PRIMA_EXCENTA")
  ORGANIZATION HEAP PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CONF_DWH" 
  BUILD IMMEDIATE
  USING INDEX 
  REFRESH FORCE ON DEMAND
  USING DEFAULT LOCAL ROLLBACK SEGMENT
  USING ENFORCED CONSTRAINTS DISABLE QUERY REWRITE
  AS SELECT gr.sseguro, gr.nmovimi num_movimi, gr.cgarant cod_garantia, gr.nriesgo num_riesgo,
       r.sperson sperson_riesgo, r.cdomici cod_domicilio_riesgo, p.fnacimi fnacimi_riesgo,
       p.csexper cod_sexo_riesgo, ff_desvalorfijo(11, 2, p.csexper) des_sexo_riesgo,
       gr.finiefe finicioefe, TO_CHAR(gr.finiefe, 'yyyy') aaaa_finiefe,
       TO_CHAR(gr.finiefe, 'mm') mm_finiefe, TO_CHAR(gr.finiefe, 'dd') dd_finiefe,
       gr.norden num_orden, gr.ffinefe, TO_CHAR(gr.ffinefe, 'yyyy') aaaa_ffinefe,
       TO_CHAR(gr.ffinefe, 'mm') mm_ffinefe, TO_CHAR(gr.ffinefe, 'dd') dd_ffinefe,
       gr.icapital capital, gr.iprianu prima_anual, gr.iextrap extra_prima, gr.irecarg recargo,
       gr.itarifa tarifa, DECODE(x.nvalcon, 0, 0, gr.iprianu) prima_afecta,
       DECODE(x.nvalcon, 0, gr.iprianu, 0) prima_excenta
  FROM garanseg gr,
       asegurados r,
       per_personas p,
       (select  s.sseguro, ig.nriesgo, ig.cgarant, ig.nmovimi, s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, 
 nvl(nvl((SELECT nvalcon * nvl(g.cimpips, 0)
                              FROM imprec i, garanpro g
                             WHERE i.cconcep = 4
                               AND i.cramo = s.cramo
                               AND i.cmodali = s.cmodali
                               AND i.ctipseg = s.ctipseg
                               AND i.ccolect = s.ccolect
                               AND i.cactivi = s.cactivi
                               AND i.cgarant = ig.cgarant
                               AND s.sproduc = g.sproduc
                               AND ig.cgarant = g.cgarant),
                               (SELECT nvalcon * nvl(g.cimpips, 0)
                              FROM imprec i, garanpro g
                             WHERE i.cconcep = 4
                               AND i.cramo = s.cramo
                               AND i.cmodali = s.cmodali
                               AND i.ctipseg = s.ctipseg
                               AND i.ccolect = s.ccolect
                               AND i.cactivi = s.cactivi
                               AND i.cgarant is null
                               AND s.sproduc = g.sproduc
                               AND ig.cgarant = g.cgarant)),0) nvalcon
   FROM garanseg ig, seguros s
  WHERE ig.sseguro = s.sseguro) x
 WHERE p.sperson = r.sperson
   AND r.nriesgo = gr.nriesgo
   AND r.sseguro = gr.sseguro
   AND x.sseguro(+) = gr.sseguro
   AND x.nriesgo(+) = gr.nriesgo
   AND x.cgarant(+) = gr.cgarant
   AND x.nmovimi(+) = gr.nmovimi ;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DWH_GARANRIES"  IS 'snapshot table for snapshot DWH_GARANRIES (20150908)';
