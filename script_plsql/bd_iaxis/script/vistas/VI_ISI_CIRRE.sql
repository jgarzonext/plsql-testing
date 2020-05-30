--------------------------------------------------------
--  DDL for View VI_ISI_CIRRE
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_ISI_CIRRE" ("FCIERRE", "PRODUCTO", "NPOLIZA", "NRECIBO", "CODIGO", "GARANTIA", "PRIMA", "ISI") AS 
  SELECT   d.fconta, t.ttitulo, d.npoliza, r.nrecibo, g.cgarant, g.tgarant,
            d.prima_tarifa + d.rec_fpago prima, d.impuesto isi
       FROM his_cuadre05 d, recibos r, garangen g, v_productos t
      WHERE d.nrecibo = r.nrecibo
        AND g.cgarant = d.cgarant
        AND g.cidioma = 1
        AND t.sproduc = d.sproduc
   UNION ALL
   SELECT   d.fconta, t.ttitulo, d.npoliza, r.nrecibo, g.cgarant, g.tgarant,
            d.prima_tarifa + d.rec_fpago prima, d.impuesto isi
       FROM his_cuadre004 d, recibos r, garangen g, v_productos t
      WHERE d.nrecibo = r.nrecibo
        AND g.cgarant = d.cgarant
        AND g.cidioma = 1
        AND t.sproduc = d.sproduc
   UNION ALL
   SELECT   d.fconta, t.ttitulo, d.npoliza, r.nrecibo, g.cgarant, g.tgarant,
            (d.prima_tarifa + d.rec_fpago) * -1 prima, d.impuesto * -1 isi
       FROM his_cuadre04 d, recibos r, garangen g, v_productos t
      WHERE d.nrecibo = r.nrecibo
        AND g.cgarant = d.cgarant
        AND g.cidioma = 1
        AND t.sproduc = d.sproduc
   UNION ALL
   SELECT   d.fconta, t.ttitulo, d.npoliza, r.nrecibo, g.cgarant, g.tgarant,
            (d.prima_tarifa + d.rec_fpago) * -1 prima, d.impuesto * -1 isi
       FROM his_cuadre003 d, recibos r, garangen g, v_productos t
      WHERE d.nrecibo = r.nrecibo
        AND g.cgarant = d.cgarant
        AND g.cidioma = 1
        AND t.sproduc = d.sproduc
   ORDER BY 1, 2, 5, 6 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_ISI_CIRRE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_ISI_CIRRE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_ISI_CIRRE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_ISI_CIRRE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_ISI_CIRRE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_ISI_CIRRE" TO "PROGRAMADORESCSI";
