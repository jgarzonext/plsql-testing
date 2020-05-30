--------------------------------------------------------
--  DDL for View VI_RECIBOS_APORT_FEDA
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_RECIBOS_APORT_FEDA" ("COD_SEGURO", "POLIZA", "CERTIF", "RECIBO", "FECHA_EFECTO_RECIBO", "FECHA_VTO_RECIBO", "NOMBRE_ASEGURADO", "TIPO_APORT", "IMPORTE_RECIBO", "ESTADO", "ANY_MES_EFECTE") AS 
  SELECT   s.sseguro cod_seguro, s.npoliza poliza, c.polissa_ini certif,
            r.nrecibo recibo, r.fefecto fecha_efecto_recibo,
            r.fvencim fecha_vto_recibo,
            (SELECT    per_detper.tnombre
                    || ' '
                    || per_detper.tapelli1
                    || ' '
                    || per_detper.tapelli2
               FROM per_detper, asegurados
              WHERE per_detper.sperson = asegurados.sperson
                AND asegurados.sseguro = s.sseguro
                AND ROWNUM = 1) nombre_asegurado,
            (SELECT DISTINCT g.tgarant
                        FROM detrecibos det, garangen g
                       WHERE det.nrecibo = r.nrecibo
                         AND g.cgarant = det.cgarant
                         AND g.cidioma = 1) tipo_aport,
            v.itotalr importe_recibo,
            DECODE ((SELECT m.cestrec
                       FROM movrecibo m
                      WHERE m.nrecibo = r.nrecibo
                        AND m.smovrec = (SELECT MAX (m2.smovrec)
                                           FROM movrecibo m2
                                          WHERE m2.nrecibo = m.nrecibo)),
                    0, 'Pendiente',
                    1, 'Cobrado',
                    'Otros'
                   ) estado,
            TO_CHAR (r.fefecto, 'YYYYMM')
       FROM seguros s, cnvpolizas c, recibos r, vdetrecibos v
      WHERE s.sproduc = 500
        AND s.sseguro = c.sseguro(+)
        AND r.sseguro = s.sseguro
        --AND r.fefecto BETWEEN '01/03/2009' AND '01/05/2009'
        AND v.nrecibo = r.nrecibo
   ORDER BY s.npoliza 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_RECIBOS_APORT_FEDA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_RECIBOS_APORT_FEDA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_RECIBOS_APORT_FEDA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_RECIBOS_APORT_FEDA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_RECIBOS_APORT_FEDA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_RECIBOS_APORT_FEDA" TO "PROGRAMADORESCSI";
