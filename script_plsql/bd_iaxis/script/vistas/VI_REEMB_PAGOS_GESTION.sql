--------------------------------------------------------
--  DDL for View VI_REEMB_PAGOS_GESTION
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_REEMB_PAGOS_GESTION" ("PRODUCTE", "NOM_PRODUCTE", "REEMBOSSAMENT", "NFULL", "ESTAT", "CASS_TITULAR", "CASS_MALAT", "DATA_FACT", "DATA_ALTA", "CODI", "ACTE", "CANTITAT", "DATA_ACTE", "TARIFA_CASS", "PERCENTATGE", "IMPORT_CASS", "IMPORT_TOTAL", "IMPORT_EXTA", "IMPORT_PAGAT", "ESTALVI", "CODI_ERROR", "DATA_PAGAMENT", "IMPORT_COMPLEMENT", "DATA_COMPLEMENT") AS 
  SELECT DECODE(r.agr_salud, 1, 'PIAM', 2, 'CREDIT SALUT', 3, 'ALTRES') producte, v.ttitulo,
          f.nreemb reembossament, f.nfact_cli nfull, t.tatribu estat, f.ncass_ase cass_titular,
          f.ncass cass_malat, f.ffactura data_fact, TO_CHAR(f.facuse, 'dd/mm/yyyy') data_alta,
          a.cacto codi, d.tacto acte, a.nacto cantitat, a.facto data_acte,
          a.itarcass tarifa_cass, a.preemb percentatge, a.icass import_cass,
          a.itot import_total, a.iextra import_exta, a.ipago import_pagat, a.iahorro estalvi,
          a.cerror codi_error, a.ftrans data_pagament, a.ipagocomp import_complement,
          a.ftranscomp data_complement
     FROM v_productos v, seguros s, reembolsos r, reembfact f, reembactosfac a, desactos d, detvalores t
    WHERE r.nreemb = f.nreemb
      AND a.nreemb = r.nreemb
      AND r.sseguro = s.sseguro
      AND v.sproduc = s.sproduc
      AND a.nfact = f.nfact
      AND d.cacto = a.cacto
      AND d.cidioma = 1
      AND t.cvalor = 891
      AND t.cidioma = 1
      AND f.corigen = 0
      AND t.catribu = r.cestado
      AND a.ftrans IS NULL   -- actos no transferidos; 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_REEMB_PAGOS_GESTION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_REEMB_PAGOS_GESTION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_REEMB_PAGOS_GESTION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_REEMB_PAGOS_GESTION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_REEMB_PAGOS_GESTION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_REEMB_PAGOS_GESTION" TO "PROGRAMADORESCSI";
