--------------------------------------------------------
--  DDL for View VI_REEMBOLSOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_REEMBOLSOS" ("NREEMB", "AGSALUD", "SSEGURO", "CSITUAC", "FEFECTO", "CGARANT", "SPERSON", "CBANCAR", "NPOLIZA", "SNIP", "TBUSCAR", "NFACT_CLI", "NFACT", "NCASS_BENE", "NCASS_TIT", "CTIPOFAC", "FFACTURA", "FACTO", "CACTO", "TACTO", "NACTO", "IPAGO", "CTIPBAN", "CIMPRESION", "CTIPO", "IPAGOCOMP", "FTRANSCOMP", "NREMESACOMP") AS 
  SELECT reembolsos.nreemb, reembolsos.agr_salud, reembolsos.sseguro, seguros.csituac,
          seguros.fefecto, reembolsos.cgarant, reembolsos.sperson, reembolsos.cbancar,
          seguros.npoliza, personas.snip, per_detper.tbuscar, reembfact.nfact_cli,
          reembfact.nfact, reembfact.ncass, reembfact.ncass_ase, reembfact.ctipofac,
          reembfact.ffactura, reembactosfac.facto, reembactosfac.cacto, desactos.tacto,
          reembactosfac.nacto, reembactosfac.ipago, reembolsos.ctipban, reembfact.cimpresion,
          reembactosfac.ctipo, reembactosfac.ipagocomp, reembactosfac.ftranscomp,
          reembactosfac.nremesacomp
     FROM reembolsos, seguros, personas, per_detper, reembfact, reembactosfac, desactos
    WHERE reembactosfac.ftrans IS NOT NULL
      AND desactos.cidioma = f_usu_idioma
      AND reembolsos.sseguro = seguros.sseguro
      AND reembolsos.sperson = personas.sperson
      AND per_detper.sperson = reembolsos.sperson
      AND reembfact.nreemb = reembactosfac.nreemb
      AND reembolsos.nreemb = reembfact.nreemb
      AND reembactosfac.cacto = desactos.cacto
 
 
;
  GRANT UPDATE ON "AXIS"."VI_REEMBOLSOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_REEMBOLSOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_REEMBOLSOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_REEMBOLSOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_REEMBOLSOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_REEMBOLSOS" TO "PROGRAMADORESCSI";
