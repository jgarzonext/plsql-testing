--------------------------------------------------------
--  DDL for Materialized View DWH_RECIBOS_PB
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."DWH_RECIBOS_PB" ("COD_RAMO", "DES_RAMO", "COD_PRODUCTO", "DES_PRODUCTO", "COD_ACTIVIDAD", "DES_ACTIVIDAD", "NUM_POLIZA", "NUM_CERTIFICADO", "COD_GRUPO_EMPRESARIAL", "DES_GRUPO_EMPRESARIAL", "COD_MEDIADOR", "DES_MEDIADOR", "TIPO_MEDIADOR", "COD_COMERCIAL", "DES_COMERCIAL", "COD_DELEGACION", "DES_DELEGACION", "NIF_TOMADOR", "DES_TOMADOR", "DURACION", "NUM_RECIBO", "F_EFECTO_INICIAL", "F_VENCIMIENTO", "F_EMISION", "AÑO_MES_EMISION", "F_COBRO", "AÑO_MES_COBRO", "F_ANULACION", "AÑO_MES_ANULACION", "IMP_TOTAL_RECIBO", "IMP_COMIS_RECIBO", "IRPF", "COD_TIPO_RECIBO", "DES_TIPO_RECIBO", "COD_FORMA_PAGO", "DES_FORMA_PAGO", "COD_ESTADO_RECIBO", "DES_ESTADO_RECIBO", "MOTIVO_ANUL_RECIBO", "DES_MOTIVO_ANUL_RECIBO")
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
       pps.crespue COD_GRUPO_EMPRESARIAL, res.trespue DES_GRUPO_EMPRESARIAL,
       r.cagente COD_MEDIADOR, 
	   ff_desagente_per(r.cagente) DES_MEDIADOR,  
	   ' ' TIPO_MEDIADOR,  
	   sr.c03 COD_COMERCIAL, ff_desagente_per(sr.c03) DES_COMERCIAL, 
       sr.c02 COD_DELEGACION, ff_desagente_per(sr.c02) DES_DELEGACION, 
	   pp.nnumide NIF_TOMADOR, 
	   pdp.tapelli1||' '||pdp.tapelli2||' '||pdp.tnombre DES_TOMADOR, 
	   ff_desvalorfijo(20, 2, S.CDURACI) DURACION, r.nrecibo NUM_RECIBO,
	   r.fefecto F_EFECTO_INICIAL, r.fvencim F_VENCIMIENTO, r.femisio F_EMISION, to_char(r.femisio, 'YYYYMM') AÑO_MES_EMISION,
	   DECODE (mr.cestrec, 1, mr.fmovdia, NULL) F_COBRO, 
	   DECODE (mr.cestrec, 1, to_char(mr.fmovdia, 'YYYYMM'), NULL) AÑO_MES_COBRO, 
	   DECODE (mr.cestrec, 2, mr.fmovdia, NULL) F_ANULACION, 
	   DECODE (mr.cestrec, 2, to_char(mr.fmovdia, 'YYYYMM'), NULL) AÑO_MES_ANULACION, 
	   VR.itotalr IMP_TOTAL_RECIBO, vr.icombru IMP_COMIS_RECIBO, vr.icomret IRPF,
	   r.ctiprec COD_TIPO_RECIBO, 
	   ff_desvalorfijo(8, 2, r.ctiprec) DES_TIPO_RECIBO, 
	   r.ctipcob COD_FORMA_PAGO, 
	   ff_desvalorfijo(552, 2, r.ctipcob) DES_FORMA_PAGO, 
	   mr.cestrec COD_ESTADO_RECIBO, 
	   ff_desvalorfijo(1, 2, mr.cestrec) DES_ESTADO_RECIBO, 
	   mr.cmotmov MOTIVO_ANUL_RECIBO,
	   DECODE(mr.cmotmov, NULL, NULL,(select tmotmov from motmovseg
                               where cmotmov = mr.cmotmov 
							     and cidioma=2)) DES_MOTIVO_ANUL_RECIBO

FROM SEGUROS S, SEGUREDCOM SR, TOMADORES T, PER_DETPER PDP, PER_PERSONAS PP,
     RECIBOS R, MOVRECIBO MR, VDETRECIBOS VR, 
     (SELECT * FROM PREGUNPOLSEG PP1 
       WHERE cpregun = 2909
         AND nmovimi IN (SELECT MAX(NMOVIMI) 
		                   FROM PREGUNPOLSEG 
						  WHERE SSEGURO = pp1.sseguro)) PPS, 
     (SELECT * FROM RESPUESTAS WHERE CPREGUN=2909 AND CIDIOMA=2) RES
    
WHERE r.sseguro = s.sseguro
  AND trunc(r.femisio) between sr.fmovini AND nvl(sr.fmovfin, to_Date('31122999','ddmmyyyy'))
  AND r.cestaux = 0
  AND r.nrecibo = mr.nrecibo
  AND mr.fmovfin IS NULL
  AND r.nrecibo = vr.nrecibo
  AND t.sseguro = s.sseguro
  AND t.nordtom = 1 
  AND t.sperson = pdp.sperson
  AND t.sperson = pp.sperson
  AND S.SSEGURO = SR.SSEGURO
  AND s.sseguro = pps.sseguro(+)
  AND res.crespue(+) = pps.crespue
  AND S.CSITUAC <= 5
  AND trunc(r.femisio) between add_months(trunc(sysdate), -24) and trunc(sysdate);

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DWH_RECIBOS_PB"  IS 'Tablas RECIBOS de PREBAL';
