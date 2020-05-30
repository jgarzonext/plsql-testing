--------------------------------------------------------
--  DDL for Materialized View DWH_CARTERA
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."DWH_CARTERA" ("COD_RAMO", "DES_RAMO", "COD_PRODUCTO", "DES_PRODUCTO", "COD_ACTIVIDAD", "DES_ACTIVIDAD", "NUM_POLIZA", "NUM_CERTIFICADO", "COD_GRUPO_EMPRESARIAL", "DES_GRUPO_EMPRESARIAL", "COD_MEDIADOR", "DES_MEDIADOR", "TIPO_MEDIADOR", "COD_COMERCIAL", "DES_COMERCIAL", "COD_DELEGACION", "DES_DELEGACION", "NIF_TOMADOR", "DES_TOMADOR", "COD_CONVENIO", "DES_CONVENIO", "F_EFECTO_INICIAL", "F_EFECTO_ULT_SUPLO", "F_VTO_ULT_SUPLO", "DURACION", "IMP_PTOTAL_ANUAL_EJERCICIO", "IMP_PTOTAL_ANUAL_PERIODO", "IMP_PNETA_ANUAL_EJERCICIO", "IMP_PNETA_ANUAL_PERIODO", "IMP_PNETA_CED_EJERCICIO", "IMP_PNETA_CED_PERIODO", "IMP_COMISION_EJERCICIO", "IMP_COMISION_PERIODO", "PORCENTAJE_COMISION")
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
  AS SELECT COD_RAMO, DES_RAMO, COD_PRODUCTO, DES_PRODUCTO,
       COD_ACTIVIDAD, DES_ACTIVIDAD, NUM_POLIZA, NUM_CERTIFICADO, 
       COD_GRUPO_EMPRESARIAL, DES_GRUPO_EMPRESARIAL, COD_MEDIADOR, DES_MEDIADOR, TIPO_MEDIADOR, 
	   COD_COMERCIAL, DES_COMERCIAL, COD_DELEGACION, DES_DELEGACION, 
	   NIF_TOMADOR, DES_TOMADOR, COD_CONVENIO, DES_CONVENIO,
       F_EFECTO_INICIAL, F_EFECTO_ULT_SUPLO, F_VTO_ULT_SUPLO, DURACION,
       IMP_PTOTAL_ANUAL_EJERCICIO,
       ROUND(((IMP_PTOTAL_ANUAL_EJERCICIO / 366) * dias_prorrateo),2) IMP_PTOTAL_ANUAL_PERIODO,
       IMP_PNETA_ANUAL_EJERCICIO,
       ROUND(((IMP_PNETA_ANUAL_EJERCICIO / 366) * dias_prorrateo),2) IMP_PNETA_ANUAL_PERIODO,
       IMP_PNETA_CED_EJERCICIO,
       ROUND(((IMP_PNETA_CED_EJERCICIO / 366) * dias_prorrateo),2) IMP_PNETA_CED_PERIODO,
       IMP_COMISION_EJERCICIO,
       ROUND(((IMP_COMISION_EJERCICIO / 366) * dias_prorrateo),2) IMP_COMISION_PERIODO,
       PORCENTAJE_COMISION
	   
FROM (SELECT s.cramo COD_RAMO, ff_desramo(s.cramo, 2) DES_RAMO, s.sproduc COD_PRODUCTO,
       f_desproducto_t(s.cramo, s.cmodali, s.ctipseg, s.ccolect, 2, 2) DES_PRODUCTO,
       s.cactivi COD_ACTIVIDAD, ff_desactividad(s.cactivi, s.cramo, 2) DES_ACTIVIDAD,
       s.npoliza NUM_POLIZA, s.ncertif NUM_CERTIFICADO, 
       pps.crespue COD_GRUPO_EMPRESARIAL, r.trespue DES_GRUPO_EMPRESARIAL,
       decode(nvl(sr.c06,0), 0, sr.c05, sr.c06) COD_MEDIADOR, 
	   ff_desagente_per(decode(nvl(sr.c06,0), 0, sr.c05, sr.c06))  DES_MEDIADOR,  
	   ' ' TIPO_MEDIADOR, 
	   sr.c03 COD_COMERCIAL, ff_desagente_per(sr.c03) DES_COMERCIAL, 
       sr.c02 COD_DELEGACION, ff_desagente_per(sr.c02) DES_DELEGACION, 
	   pp.nnumide NIF_TOMADOR, 
	   pdp.tapelli1||' '||pdp.tapelli2||' '||pdp.tnombre DES_TOMADOR,
	   cnv.TCODCONV COD_CONVENIO,
       cnv.TDESCRI  DES_CONVENIO,
       S.FEFECTO F_EFECTO_INICIAL, nvl(M1.FEFECTO, s.fefecto) F_EFECTO_ULT_SUPLO, 
       DECODE(S.FCARANU, NULL, S.FVENCIM, S.FCARANU) F_VTO_ULT_SUPLO, 
       ff_desvalorfijo(20, 2, S.CDURACI) DURACION,
       NVL(pac_isqlfor_prb.f_prima_total_perio(s.sseguro, m.nmovimi), 0) IMP_PTOTAL_ANUAL_EJERCICIO,
       nvl((select sum(iprianu) from garanseg where sseguro = s.sseguro and ffinefe is null),0) IMP_PNETA_ANUAL_EJERCICIO,
	   NVL((select sum(icesion) from reaseguro  
             where sseguro=s.sseguro 
               and S.FCARANU between fefecto and fvencim 
               and cgenera in (3,4,7,6,5,9,1,30)),0) IMP_PNETA_CED_EJERCICIO,
       ROUND((DECODE(S.FCARANU, NULL, S.FVENCIM, S.FCARANU)- NVL(M.FEFECTO, S.FEFECTO)),2) dias_prorrateo,
       ROUND((s.iprianu * 
   	      (ff_pcomisi (0, s.sseguro, decode (f_es_renovacion (s.sseguro), 0, 2, 1), f_sysdate, s.cagente))/100), 2) IMP_COMISION_EJERCICIO,
       NVL((ff_pcomisi (0, s.sseguro, decode (f_es_renovacion (s.sseguro), 0, 2, 1), f_sysdate, s.cagente)),0) PORCENTAJE_COMISION

FROM SEGUROS S, MOVSEGURO M, SEGUREDCOM SR, TOMADORES T, PER_DETPER PDP, PER_PERSONAS PP,
     (SELECT * FROM PREGUNPOLSEG PP1 
       WHERE cpregun = 2909
         AND nmovimi IN (SELECT MAX(NMOVIMI) 
		                   FROM PREGUNPOLSEG 
						  WHERE SSEGURO = pp1.sseguro)) PPS, 
						  
     (SELECT * FROM MOVSEGURO ma
       WHERE CMOTMOV = 404
         AND NMOVIMI IN (SELECT MAX(NMOVIMI) 
		                   FROM MOVSEGURO 
						  WHERE CMOTMOV=404
                            AND SSEGURO = ma.SSEGURO)) M1,
							
     (SELECT * FROM RESPUESTAS WHERE CPREGUN=2909 AND CIDIOMA=2) R,
	 
     (SELECT cces.sseguro, cce.* 
        FROM CNV_CONV_EMP cce, CNV_CONV_EMP_VERS ccev, CNV_CONV_EMP_SEG cces
       WHERE cce.idconv = ccev.idconv 
         AND cces.nmovimi in (select max(nmovimi) 
                                from cnv_conv_emp_seg
                               where sseguro=cces.sseguro)
         AND ccev.idversion = cces.idversion) cnv
		 
WHERE S.SSEGURO = M.SSEGURO
  AND m.fefecto between sr.fmovini AND nvl(sr.fmovfin, to_Date('31122999','ddmmyyyy'))
  AND m1.sseguro(+) = m.sseguro
  AND m.nmovimi IN (SELECT MAX(nmovimi) FROM MOVSEGURO WHERE SSEGURO = S.SSEGURO)
  AND t.sseguro = s.sseguro
  AND t.nordtom = 1 
  AND t.sperson = pdp.sperson
  AND t.sperson = pp.sperson
  AND S.SSEGURO = SR.SSEGURO
  AND s.sseguro = cnv.sseguro(+)
  AND s.sseguro = pps.sseguro(+)
  AND r.crespue(+) = pps.crespue
  AND to_char(NVL(s.fanulac,F_SYSDATE),'YYYYMM') >= to_char(f_sysdate,'YYYYMM')
  AND S.CSITUAC <= 5) a;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DWH_CARTERA"  IS 'snapshot table for snapshot DWH_PRB.DWH_CARTERA';
