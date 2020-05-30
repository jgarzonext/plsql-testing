--------------------------------------------------------
--  DDL for Materialized View DWH_SINIESTRO
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."DWH_SINIESTRO" ("COD_RAMO", "DES_RAMO", "COD_PRODUCTO", "DES_PRODUCTO", "COD_ACTIVIDAD", "DES_ACTIVIDAD", "NUM_POLIZA", "NUM_CERTIFICADO", "COD_GRUPO_EMPRESARIAL", "DES_GRUPO_EMPRESARIAL", "NUM_SINIESTRO", "AÑO_MES_APERTURA", "ESTADO", "F_APERTURA", "F_OCURRENCIA", "F_ULT_PAGO", "IMP_TOTAL_COSTE", "IMP_TOTAL_RESERVA", "IMP_TOTAL_PAGOS", "IMP_TOTAL_CEDIDO", "IMP_TOTAL_RETENIDO", "TIPO_CONCEPTO_SINIESTRO", "MOTIVO_SINIESTRO", "MOTIVO_ANULACION", "CAUSA_ANULACION", "F_ANULACION")
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
  AS SELECT s.cramo COD_RAMO, ff_desramo(s.cramo, 2) DES_RAMO, s.sproduc COD_PRODUCTO,
         f_desproducto_t(s.cramo, s.cmodali, s.ctipseg, s.ccolect, 2, 2) DES_PRODUCTO,
         s.cactivi COD_ACTIVIDAD, ff_desactividad(s.cactivi, s.cramo, 2) DES_ACTIVIDAD,
         s.npoliza NUM_POLIZA, s.ncertif NUM_CERTIFICADO, 
         pps.crespue COD_GRUPO_EMPRESARIAL, r.trespue DES_GRUPO_EMPRESARIAL,
         ss.nsinies NUM_SINIESTRO, to_char(ss.falta,'YYYYMM') AÑO_MES_APERTURA,
		 ff_desvalorfijo(6, 2, sms.cestsin) ESTADO, ss.falta F_APERTURA, ss.fsinies F_OCURRENCIA, 
		nvl((select max(fefepag)  from sin_tramita_movpago  where sidepag in 
           (select sidepag from sin_tramita_pago_gar 
             where cgarant = str.cgarant and sidepag in
            (select sidepag from sin_tramita_pago where nsinies=str.nsinies))
             and cestpag = 2), null) F_ULT_PAGO,
--     -1 F_ULT_PAGO,
		 (nvl(STR.IRESERVA,0) + nvl(STR.IPAGO,0))  IMP_TOTAL_COSTE,
		 STR.IRESERVA IMP_TOTAL_RESERVA,
		 STR.IPAGO IMP_TOTAL_PAGOS,
		 nvl((select round(sum(icesion),2) from cesionesrea  
		   where cgenera = 2 and ctramo <> 0 and nsinies = ss.nsinies 
		   and sseguro=s.sseguro and cgarant = str.cgarant
           and str.ctipres = 1
		     --and s.fcarpro between fefecto and fvencim
		      ),0) IMP_TOTAL_CEDIDO,
			  
		 nvl((select round(sum(icesion),2) from cesionesrea 
               where cgenera=2 and ctramo=0 and nsinies = ss.nsinies
			     and sseguro=s.sseguro and cgarant = str.cgarant
           and str.ctipres = 1),0) IMP_TOTAL_RETENIDO,
		   
     DECODE(STR.CTIPRES,3,ff_desvalorfijo(1047, 2, str.ctipgas),
                          ff_desvalorfijo(322, 2, STR.CTIPRES))TIPO_CONCEPTO_SINIESTRO,
		 cau.tcausin  MOTIVO_SINIESTRO,
      DECODE(m.cmovseg, 3, (select tmotmov from motmovseg 
                               where cmotmov = m.cmovseg and cidioma=2), 
                              null) MOTIVO_ANULACION,
       DECODE(m.cmovseg, 3, (select tmotmov from motmovseg
                               where cmotmov = m.cmotmov and cidioma=2),
                              null) CAUSA_ANULACION,		 
     S.FANULAC F_ANULACION
FROM SEGUROS S, SIN_SINIESTRO SS, SIN_DESCAUSA cau, MOVSEGURO m, 
     SIN_TRAMITA_RESERVA STR,
     (SELECT * FROM PREGUNPOLSEG PP1 
       WHERE cpregun = 2909
         AND nmovimi IN (SELECT MAX(NMOVIMI) 
		                   FROM PREGUNPOLSEG 
						  WHERE SSEGURO = pp1.sseguro)) PPS,  
     (SELECT * FROM RESPUESTAS WHERE CPREGUN = 2909 AND CIDIOMA=2) R,
     SIN_MOVSINIESTRO sms
WHERE s.sseguro = ss.sseguro
  AND s.sseguro = m.sseguro
  AND m.nmovimi IN (SELECT MAX(nmovimi) FROM MOVSEGURO WHERE sseguro = s.sseguro)  
  AND ss.nsinies = sms.nsinies
  AND str.nsinies = ss.nsinies
  AND (str.nmovres, str.cgarant, str.ctipres) in 
      (select max(nmovres), cgarant, ctipres 
        from sin_tramita_reserva 
       where nsinies=str.nsinies 
       group by cgarant, ctipres)
  AND s.sseguro = pps.sseguro(+)
  AND r.crespue(+) = pps.crespue
  AND ss.ccausin = cau.ccausin(+)
  AND cau.cidioma(+) = 2
  AND sms.nmovsin IN(SELECT MAX(x.nmovsin)
                      FROM sin_movsiniestro x
                     WHERE x.nsinies = ss.nsinies)
;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DWH_SINIESTRO"  IS 'Tabla de SINIESTROS de PREBAL';
