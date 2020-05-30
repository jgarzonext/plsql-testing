--------------------------------------------------------
--  DDL for View VI_REEMB_ASSEGURAT
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_REEMB_ASSEGURAT" ("SPERSON", "POLISSA_CERTIF", "NCASS", "PRODUCTE", "NOM_REEM", "ESTAT", "NOM_FULL", "NOM_FAC_EXT", "DATA_FACTURA", "TIPUS_FAC", "IMPORT_FAC", "CODI_ACTE", "ACTE", "DATA_ACTE", "ANYO", "NUM_ACTES", "IMP_ABONAMENT_CASS", "IMP_COMP_CASS", "DATA_TRANS", "IMPO_COMP_FAC", "DATA_TRANS_COMP", "INCIDENCIA") AS 
  SELECT   reembolsos.sperson, seguros.npoliza || '-' || seguros.ncertif,
            reembfact.ncass, titulopro.trotulo, reembactosfac.nreemb,
            reembolsos.cestado, reembfact.nfact_cli, reembfact.nfact,
            reembfact.ffactura, reembfact.ctipofac, 
            TO_CHAR (reembactosfac.itot, '9999999990.99') itot,
            reembactosfac.cacto, desactos.tacto, reembactosfac.facto,
            TO_CHAR (reembactosfac.facto, 'YYYY') anyo, reembactosfac.nacto,
            TO_CHAR (reembactosfac.icass, '9999999990.99') icass,
            TO_CHAR (reembactosfac.ipago, '9999999990.99') ipago,
            reembactosfac.ftrans,
            TO_CHAR (reembactosfac.ipagocomp, '9999999990.99') ipagocomp,
            reembactosfac.ftranscomp,
            controlsandes.tcontrol
       FROM reembactosfac,
            reembfact,
            reembolsos,
            desactos,
            seguros,
            titulopro,
            controlsandes
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
        AND reembactosfac.cerror = controlsandes.ccontrol
        AND controlsandes.cambito = 'REEM'
        AND controlsandes.cidioma = 1
        AND controlsandes.agr_salud = reembolsos.agr_salud
   ORDER BY reembolsos.sperson, reembactosfac.facto DESC 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_REEMB_ASSEGURAT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_REEMB_ASSEGURAT" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_REEMB_ASSEGURAT" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_REEMB_ASSEGURAT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_REEMB_ASSEGURAT" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_REEMB_ASSEGURAT" TO "PROGRAMADORESCSI";
