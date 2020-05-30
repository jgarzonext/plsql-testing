--------------------------------------------------------
--  DDL for View VI_REEMB_ACT_MENSUAL
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_REEMB_ACT_MENSUAL" ("PER_TRANS", "PER_TRAS_COMP", "PRODUCTE", "CODI_ACTE", "ACTE", "NOM_ACTES", "IMP_CASS", "IMP_COMP_CASS", "IMP_COMP_FAC", "TOTAL_PAG", "PERC_ABONAMENT") AS 
  SELECT   TO_CHAR(reembactosfac.ftrans, 'MMYYYY'),
            TO_CHAR(reembactosfac.ftranscomp, 'MMYYYY'), titulopro.trotulo,
            reembactosfac.cacto, MAX(desactos.tacto), SUM(reembactosfac.nacto),
            SUM(reembactosfac.icass), SUM(reembactosfac.ipago), SUM(reembactosfac.ipagocomp),
            SUM(reembactosfac.ipago) + SUM(reembactosfac.ipagocomp),
            (SUM(reembactosfac.icass) / SUM(reembactosfac.ipago) + SUM(reembactosfac.ipagocomp))
            * 100
       FROM reembactosfac, reembfact, reembolsos, desactos, seguros, titulopro
      WHERE reembactosfac.nreemb = reembfact.nreemb
        AND reembactosfac.nfact = reembfact.nfact
        AND reembfact.nreemb = reembolsos.nreemb
        AND reembactosfac.fbaja IS NULL
        AND reembfact.fbaja IS NULL
        AND reembolsos.cestado <> 4
        AND desactos.cacto = reembactosfac.cacto
        AND desactos.cidioma = 1
        AND seguros.sseguro = reembolsos.sseguro
        AND titulopro.cramo = seguros.cramo
        AND titulopro.cmodali = seguros.cmodali
        AND titulopro.ctipseg = seguros.ctipseg
        AND titulopro.ccolect = seguros.ccolect
        AND titulopro.cidioma = 1
        AND reembactosfac.ftrans IS NOT NULL
        AND reembactosfac.ftranscomp IS NOT NULL
   GROUP BY TO_CHAR(reembactosfac.ftrans, 'MMYYYY'),
            TO_CHAR(reembactosfac.ftranscomp, 'MMYYYY'), titulopro.trotulo,
            reembactosfac.cacto
     HAVING (SUM(reembactosfac.ipago) + SUM(reembactosfac.ipagocomp)) > 0
   UNION
   SELECT   TO_CHAR(reembactosfac.ftrans, 'MMYYYY'),
            TO_CHAR(reembactosfac.ftranscomp, 'MMYYYY'), titulopro.trotulo,
            reembactosfac.cacto, MAX(desactos.tacto), SUM(reembactosfac.nacto),
            SUM(reembactosfac.icass), SUM(reembactosfac.ipago), SUM(reembactosfac.ipagocomp),
            SUM(reembactosfac.ipago),
            (SUM(reembactosfac.icass) / SUM(reembactosfac.ipago)) * 100
       FROM reembactosfac, reembfact, reembolsos, desactos, seguros, titulopro
      WHERE reembactosfac.nreemb = reembfact.nreemb
        AND reembactosfac.nfact = reembfact.nfact
        AND reembfact.nreemb = reembolsos.nreemb
        AND reembactosfac.fbaja IS NULL
        AND reembfact.fbaja IS NULL
        AND reembolsos.cestado <> 4
        AND desactos.cacto = reembactosfac.cacto
        AND desactos.cidioma = 1
        AND seguros.sseguro = reembolsos.sseguro
        AND titulopro.cramo = seguros.cramo
        AND titulopro.cmodali = seguros.cmodali
        AND titulopro.ctipseg = seguros.ctipseg
        AND titulopro.ccolect = seguros.ccolect
        AND titulopro.cidioma = 1
        AND reembactosfac.ftrans IS NOT NULL
        AND reembactosfac.ftranscomp IS NULL
   GROUP BY TO_CHAR(reembactosfac.ftrans, 'MMYYYY'),
            TO_CHAR(reembactosfac.ftranscomp, 'MMYYYY'), titulopro.trotulo,
            reembactosfac.cacto
     HAVING SUM(reembactosfac.ipago) > 0
   UNION
   SELECT   TO_CHAR(reembactosfac.ftrans, 'MMYYYY'),
            TO_CHAR(reembactosfac.ftranscomp, 'MMYYYY'), titulopro.trotulo,
            reembactosfac.cacto, MAX(desactos.tacto), SUM(reembactosfac.nacto),
            SUM(reembactosfac.icass), SUM(reembactosfac.ipago), SUM(reembactosfac.ipagocomp),
            SUM(reembactosfac.ipagocomp),
            (SUM(reembactosfac.icass) / SUM(reembactosfac.ipagocomp)) * 100
       FROM reembactosfac, reembfact, reembolsos, desactos, seguros, titulopro
      WHERE reembactosfac.nreemb = reembfact.nreemb
        AND reembactosfac.nfact = reembfact.nfact
        AND reembfact.nreemb = reembolsos.nreemb
        AND reembactosfac.fbaja IS NULL
        AND reembfact.fbaja IS NULL
        AND reembolsos.cestado <> 4
        AND desactos.cacto = reembactosfac.cacto
        AND desactos.cidioma = 1
        AND seguros.sseguro = reembolsos.sseguro
        AND titulopro.cramo = seguros.cramo
        AND titulopro.cmodali = seguros.cmodali
        AND titulopro.ctipseg = seguros.ctipseg
        AND titulopro.ccolect = seguros.ccolect
        AND titulopro.cidioma = 1
        AND reembactosfac.ftrans IS NULL
        AND reembactosfac.ftranscomp IS NOT NULL
   GROUP BY TO_CHAR(reembactosfac.ftrans, 'MMYYYY'),
            TO_CHAR(reembactosfac.ftranscomp, 'MMYYYY'), titulopro.trotulo,
            reembactosfac.cacto
     HAVING SUM(reembactosfac.ipagocomp) > 0 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_REEMB_ACT_MENSUAL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_REEMB_ACT_MENSUAL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_REEMB_ACT_MENSUAL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_REEMB_ACT_MENSUAL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_REEMB_ACT_MENSUAL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_REEMB_ACT_MENSUAL" TO "PROGRAMADORESCSI";
