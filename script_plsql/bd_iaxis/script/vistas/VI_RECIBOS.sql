--------------------------------------------------------
--  DDL for View VI_RECIBOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_RECIBOS" ("CODI", "AGR_PRODUCTE", "AGENT", "NOM AGENT", "FEFECTE", "TIPUS", "PRIMA", "ASSEGURATS") AS 
  SELECT   s.sproduc codigo, p.ttitulo agr_producto, s.cagente,
               e.tnombre
            || DECODE (e.tapelli1, NULL, NULL, ' ')
            || e.tapelli1
            || DECODE (e.tapelli2, NULL, NULL, ' ')
            || e.tapelli2 desagente,
            TO_CHAR (r.fefecto, 'YYYYMM') fefecto,
            ff_desvalorfijo (8, 1, r.ctiprec) ctiprec,
            SUM (v.itotalr * DECODE (ctiprec, 9, -1, 1)) primarec,
            COUNT (DISTINCT r.sseguro || r.nriesgo) assegurats
       FROM per_detper e,
            agentes a,
            v_productos p,
            vdetrecibos v,
            recibos r,
            seguros s
      WHERE e.sperson = a.sperson
        AND a.cagente = s.cagente
        AND p.sproduc = s.sproduc
        AND v.nrecibo = r.nrecibo
        AND s.sseguro = r.sseguro
        AND NOT EXISTS (SELECT v0.sseguro
                          FROM vi_certificados_0 v0
                         WHERE v0.sseguro = s.sseguro)
   GROUP BY s.sproduc,
            p.ttitulo,
            s.cagente,
               e.tnombre
            || DECODE (e.tapelli1, NULL, NULL, ' ')
            || e.tapelli1
            || DECODE (e.tapelli2, NULL, NULL, ' ')
            || e.tapelli2,
            TO_CHAR (r.fefecto, 'YYYYMM'),
            ff_desvalorfijo (8, 1, r.ctiprec) 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_RECIBOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_RECIBOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_RECIBOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_RECIBOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_RECIBOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_RECIBOS" TO "PROGRAMADORESCSI";
