--------------------------------------------------------
--  DDL for View VI_ACTOS_MENSUALES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_ACTOS_MENSUALES" ("ACTE", "PRODUCTE", "AGR_SALUT", "DATA_ALTA", "NOMBRE_ACTES", "ABONAT_CASS", "COMPLEM_CASS", "COMPLEM_FACT", "PREUS_FETS", "TOTAL_ABONAT", "IMPORT_ESTALVI") AS 
  SELECT   b.tacto, a.ttitulo, a.agr_salud, a.falta, SUM(nactos) nombre_actes, SUM(icass),
         SUM(ipago), SUM(icomp), SUM(iextra), SUM(ipago + icomp) total, SUM(iahorro) iahorro
    FROM (SELECT v.ttitulo, r.agr_salud, f.cacto, 1 nactos, TO_CHAR(f.ftrans, 'YYYYMM') falta,
                 icass, ipago, iextra, iahorro, 0 icomp
            FROM v_productos v, reembactosfac f, reembolsos r, seguros s
           WHERE f.nreemb = r.nreemb
             AND r.sseguro = s.sseguro
             AND v.sproduc = s.sproduc
             AND f.ftrans IS NOT NULL
          UNION ALL
          SELECT v.ttitulo, r.agr_salud, f.cacto, 0 nactos,
                 TO_CHAR(f.ftranscomp, 'YYYYMM') falta, 0 icass, 0 ipago, 0 iextra, 0 iahorro,
                 ipagocomp icomp
            FROM v_productos v, reembactosfac f, reembolsos r, seguros s
           WHERE f.nreemb = r.nreemb
             AND r.sseguro = s.sseguro
             AND v.sproduc = s.sproduc
             AND ftranscomp IS NOT NULL
          UNION ALL
          SELECT v.ttitulo, r.agr_salud, f.cacto, 1 nactos, TO_CHAR(f.falta, 'YYYYMM') falta,
                 0 icass, 0 ipago, 0 iextra, iahorro, 0 icomp
            FROM v_productos v, reembactosfac f, reembolsos r, seguros s
           WHERE f.nreemb = r.nreemb
             AND r.sseguro = s.sseguro
             AND v.sproduc = s.sproduc
             AND f.iahorro > 0
             AND f.ftrans IS NULL) a,
         desactos b
   WHERE a.cacto = b.cacto
     AND b.cidioma = 1
GROUP BY a.ttitulo, a.agr_salud, b.tacto, a.falta 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_ACTOS_MENSUALES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_ACTOS_MENSUALES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_ACTOS_MENSUALES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_ACTOS_MENSUALES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_ACTOS_MENSUALES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_ACTOS_MENSUALES" TO "PROGRAMADORESCSI";
