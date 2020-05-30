--------------------------------------------------------
--  DDL for Materialized View DWH_VALORA_PAGO
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."DWH_VALORA_PAGO" ("SINIESTRO", "TRAMIT", "COD_RES", "DESC_RES", "COD_GARAN", "DESC_GARAN", "VALOR", "CAP_RIESG", "IMP_PENALI", "COD_ESTADO_PAGO", "DESC_ESTADO_PAGO", "COD_FORMA_PAGO", "DESC_FORMA_PAGO", "COD_CONCEP_PAGO", "DESC_CONCEP_PAGO", "AAAA_FORDPAG", "MM_FORDPAG", "DD_FORDPAG", "COD_TIPO_PAGO", "DESC_TIPO_PAGO", "COD_SITUAC_PAGO", "DESC_SITUAC_PAGO", "IMP_BRUTO", "IMP_RCM_BRUTO", "IMP_REDUCCION", "IMP_REDU_DITRANS", "PORC_RETEN", "IMP_RETENCION", "IMP_LIQUIDO", "NIF_DESTI", "NOM_DESTI", "APELLI_DESTI", "PORC_ASIGNA", "CBANCAR", "SPERSON")
  ORGANIZATION HEAP PCTFREE 10 PCTUSED 0 INITRANS 2 MAXTRANS 255 
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
  AS SELECT va.nsinies siniestro, va.ntramit tramit, va.ctipres cod_res,
       ff_desvalorfijo(332,2,va.ctipres) desc_res, va.cgarant cod_garan,
       ff_desgarantia(va.cgarant, 2) desc_garan, NVL(va.ireserva, 0) valor,
       NVL(va.icaprie, 0) cap_riesg, NVL(va.ipenali, 0) imp_penali,
       pam.cestpag cod_estado_pago, ff_desvalorfijo(3, 2, pam.cestpag) desc_estado_pago,
       pam.cforpag cod_forma_pago, ff_desvalorfijo(813, 2, pam.cforpag) desc_forma_pago,
       pam.cconpag cod_concep_pago, ff_desvalorfijo(803, 2, pam.cconpag) desc_concep_pago,
       TO_CHAR(pam.fordpag, 'yyyy') aaaa_fordpag, TO_CHAR(pam.fordpag, 'mm') mm_fordpag,
       TO_CHAR(pam.fordpag, 'dd') dd_fordpag, pam.ctippag cod_tipo_pago,
       ff_desvalorfijo(2, 2, pam.ctippag) desc_tipo_pago, pam.ctransfer cod_situac_pago,
       ff_desvalorfijo(922, 2, pam.ctransfer) desc_situac_pago, NVL(pam.isinret, 0) imp_bruto,
       NVL(pam.iresrcm, 0) imp_rcm_bruto, NVL(pam.iresred, 0) imp_reduccion,
       0 imp_redu_ditrans,
       ROUND((NVL(pam.iretenc, 0) / DECODE(pam.isinret, 0, NULL, pam.isinret))
             * 100, 2) porc_reten,
       NVL(pam.iretenc, 0) imp_retencion, NVL(pam.isinret, 0)
                                          - NVL(pam.iretenc, 0) imp_liquido,
       pp.nnumide nif_desti, pd.tnombre nom_desti,
       pd.tapelli1 || ' ' || pd.tapelli2 apelli_desti, NVL(des.pasigna, 0) porc_asigna,
       des.cbancar cbancar, pp.sperson
  FROM sin_tramita_reserva va,
       (SELECT pa.nsinies, pa.ntramit, pa.sperson, pm.cestpag, pa.cforpag, pa.cconpag,
               pa.fordpag, pa.ctippag, pa.ctransfer, pa.isinret, pa.iresrcm, pa.iresred,
               pa.iretenc, s.cagente, s.cempres
          FROM sin_tramita_pago pa, sin_tramita_movpago pm, sin_siniestro si, seguros s
         WHERE pm.sidepag = pa.sidepag
           AND pm.nmovpag = (SELECT MAX(nmovpag)
                               FROM sin_tramita_movpago
                              WHERE sidepag = pa.sidepag)
           AND si.nsinies = pa.nsinies
           AND s.sseguro = si.sseguro) pam,
       sin_tramita_destinatario des,
       sin_siniestro s,
       seguros ss,
       per_personas pp,
       per_detper pd
 WHERE va.nmovres = (SELECT MAX(nmovres)
                       FROM sin_tramita_reserva
                      WHERE nsinies = va.nsinies)
   AND pam.nsinies(+) = va.nsinies
   AND pam.ntramit(+) = va.ntramit
   AND des.nsinies(+) = pam.nsinies
   AND des.ntramit(+) = pam.ntramit
   AND des.sperson(+) = pam.sperson
   AND s.nsinies = va.nsinies
   AND ss.sseguro = s.sseguro
   AND pd.sperson(+) = pam.sperson
   AND pd.cagente(+) = ff_agente_cpervisio(pam.cagente, f_sysdate, pam.cempres)
   AND pam.sperson = pp.sperson(+) ;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DWH_VALORA_PAGO"  IS 'snapshot table for snapshot DWH_VALORA_PAGO (20150908)';
