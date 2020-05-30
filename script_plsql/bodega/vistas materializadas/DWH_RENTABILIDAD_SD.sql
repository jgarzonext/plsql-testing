--------------------------------------------------------
--  DDL for Materialized View DWH_RENTABILIDAD_SD
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."DWH_RENTABILIDAD_SD" ("COD_RAMO", "DES_RAMO", "COD_PRODUCTO", "DES_PRODUCTO", "COD_ACTIVIDAD", "DES_ACTIVIDAD", "NUM_POLIZA", "NUM_CERTIFICADO", "CPOLCIA", "COD_GRUPO_EMPRESARIAL", "DES_GRUPO_EMPRESARIAL", "COD_CONVENIO", "DES_CONVENIO", "COD_MEDIADOR", "DES_MEDIADOR", "TIPO_MEDIADOR", "COD_COMERCIAL", "DES_COMERCIAL", "COD_DELEGACION", "DES_DELEGACION", "F_EFECTO_INICIAL", "F_EFECTO_ULT_SUPLO", "F_VTO_ULT_SUPLO", "DURACION", "IMP_PTOTAL_ANUAL_EJERCICIO", "IMP_PTOTAL_ANUAL_PERIODO", "IMP_PNETA_ANUAL_EJERCICIO", "IMP_PNETA_ANUAL_PERIODO", "IMP_PNETA_CED_EJERCICIO", "IMP_PNETA_CED_PERIODO", "IMP_COMISION_EJERCICIO", "IMP_COMISION_PERIODO", "IMP_COMISION_CED_EJERCICIO", "IMP_COMISION_CED_PERIODO", "IMP_SINIESTRO", "IMP_SINIESTRO_CED", "MOTIVO_ANULACION", "CAUSA_ANULACION", "F_ANULACION")
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
  AS SELECT cod_ramo, des_ramo, cod_producto, des_producto, cod_actividad, des_actividad, num_poliza, num_certificado, cpolcia,
       cod_grupo_empresarial, des_grupo_empresarial, cod_convenio, des_convenio, cod_mediador, des_mediador,
       tipo_mediador, COD_COMERCIAL, DES_COMERCIAL, COD_DELEGACION,  DES_DELEGACION, 
       F_EFECTO_INICIAL, F_EFECTO_ULT_SUPLO, F_VTO_ULT_SUPLO, 
       DURACION, IMP_PTOTAL_ANUAL_EJERCICIO,
       round(((IMP_PTOTAL_ANUAL_EJERCICIO / 365) * dias_prorrateo),2) IMP_PTOTAL_ANUAL_PERIODO,
       IMP_PNETA_ANUAL_EJERCICIO,
       round(((IMP_PNETA_ANUAL_EJERCICIO / 365) * dias_prorrateo),2) IMP_PNETA_ANUAL_PERIODO,
       IMP_PNETA_CED_EJERCICIO,
       round(((IMP_PNETA_CED_EJERCICIO / 365) * dias_prorrateo),2) IMP_PNETA_CED_PERIODO,
       IMP_COMISION_EJERCICIO,
	   round(((IMP_COMISION_EJERCICIO / 365) * dias_prorrateo),2) IMP_COMISION_PERIODO,
       IMP_COMISION_CED_EJERCICIO,
       round(((IMP_COMISION_CED_EJERCICIO / 365) * dias_prorrateo),2) IMP_COMISION_CED_PERIODO,
       IMP_SINIESTRO,
       IMP_SINIESTRO_CED,
       MOTIVO_ANULACION,
       CAUSA_ANULACION,
       F_ANULACION
FROM
(SELECT s.cramo COD_RAMO, ff_desramo(s.cramo, 2) DES_RAMO, s.sproduc COD_PRODUCTO,
       f_desproducto_t(s.cramo, s.cmodali, s.ctipseg, s.ccolect, 2, 2) DES_PRODUCTO,
       s.cactivi COD_ACTIVIDAD, ff_desactividad(s.cactivi, s.cramo, 2) DES_ACTIVIDAD,
       s.npoliza NUM_POLIZA, s.ncertif NUM_CERTIFICADO, s.cpolcia CPOLCIA,
       pps.crespue COD_GRUPO_EMPRESARIAL, r.trespue DES_GRUPO_EMPRESARIAL,
       cnv.TCODCONV COD_CONVENIO, cnv.TDESCRI  DES_CONVENIO,
       decode(nvl(sr.c06,0), 0, sr.c05, sr.c06) COD_MEDIADOR, 
	   ff_desagente_per(decode(nvl(sr.c06,0), 0, sr.c05, sr.c06))  DES_MEDIADOR,  
	   ' ' TIPO_MEDIADOR, 
	   sr.c03 COD_COMERCIAL, ff_desagente_per(sr.c03) DES_COMERCIAL, 
       sr.c02 COD_DELEGACION, ff_desagente_per(sr.c02) DES_DELEGACION, 
       S.FEFECTO F_EFECTO_INICIAL, 
	   nvl(M1.FEFECTO, s.fefecto) F_EFECTO_ULT_SUPLO, 
       DECODE(S.cduraci, 3, S.FVENCIM, S.FCARANU) F_VTO_ULT_SUPLO, 
       ff_desvalorfijo(20, 2, S.CDURACI) DURACION,
       DECODE(to_char(nvl(s.fanulac,f_sysdate),'yyyy'), to_char(f_sysdate,'yyyy'), 
            NVL(pac_isqlfor_prb.f_prima_total_perio(s.sseguro, m.nmovimi), 0), 0) IMP_PTOTAL_ANUAL_EJERCICIO,
       DECODE(to_char(nvl(s.fanulac,f_sysdate),'yyyy'), to_char(f_sysdate,'yyyy'),
            nvl((select sum(iprianu) from garanseg where sseguro = s.sseguro and ffinefe is null),0), 0) IMP_PNETA_ANUAL_EJERCICIO,
	   DECODE(to_char(nvl(s.fanulac,f_sysdate),'yyyy'), to_char(f_sysdate,'yyyy'),
       NVL((select sum(icesion) from cesionesrea  
             where sseguro=s.sseguro 
			   and ctramo <> 0
               and  DECODE(S.cduraci, 3, S.FVENCIM, S.FCARANU) between fefecto and fvencim 
               and cgenera in (3,4,7,6,5,9,1,30)),0), 0) IMP_PNETA_CED_EJERCICIO,
	   (DECODE(S.cduraci, 3,  S.FVENCIM, S.FCARANU)- NVL(M1.FEFECTO, S.FEFECTO)) dias_prorrateo,
       DECODE(to_char(nvl(s.fanulac,f_sysdate),'yyyy'), to_char(f_sysdate,'yyyy'),
          ROUND((nvl((select sum(iprianu) from garanseg where sseguro = s.sseguro and ffinefe is null), 0) * 
	  (ff_pcomisi (0, s.sseguro, DECODE (f_es_renovacion (s.sseguro), 0, 2, 1), f_sysdate, s.cagente))/100), 2), 0) IMP_COMISION_EJERCICIO,
    DECODE(to_char(nvl(s.fanulac,f_sysdate),'yyyy'), to_char(f_sysdate,'yyyy'),
       NVL((select sum(icomisi) from reaseguro  
             where sseguro=s.sseguro 
               and  DECODE(S.cduraci, 3, S.FVENCIM, S.FCARANU) between fefecto and fvencim 
               and cgenera in (3,4,7,6,5,9,1,30)),0), 0) IMP_COMISION_CED_EJERCICIO,
         NVL((SELECT SUM(ireserva) from sin_tramita_reserva where nmovres=1 and
          nsinies in (select nsinies from  sin_siniestro 
	                     where sseguro = s.sseguro 
                        and to_char(fnotifi, 'YYYY') = to_char(f_sysdate,'yyyy'))),0) IMP_SINIESTRO,
         NVL((select sum(icesion) from cesionesrea  
               where sseguro=s.sseguro  and ctramo <> 0
                 and to_char(fvencim, 'YYYY') = to_char(f_sysdate,'yyyy')
                 and cgenera = 2),0) IMP_SINIESTRO_CED,								
       DECODE(m.cmovseg, 3, (select tmotmov from motmovseg 
                               where cmotmov = m.cmovseg and cidioma=2), 
                              null) MOTIVO_ANULACION,
       DECODE(m.cmovseg, 3, (select tmotmov from motmovseg
                               where cmotmov = m.cmotmov and cidioma=2),
                              null) CAUSA_ANULACION,
       S.FANULAC F_ANULACION
FROM SEGUROS S, MOVSEGURO M, SEGUREDCOM SR,
     (SELECT * FROM PREGUNPOLSEG PP1 
       WHERE cpregun = 2909
         AND nmovimi IN (SELECT MAX(NMOVIMI) FROM PREGUNPOLSEG WHERE SSEGURO = pp1.sseguro)) PPS, 
     (SELECT * FROM MOVSEGURO ma
       WHERE CMOTMOV = 404
         AND NMOVIMI IN (SELECT MAX(NMOVIMI) FROM MOVSEGURO WHERE CMOTMOV=404
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
  AND m.nmovimi IN (SELECT MAX(nmovimi) 
                      FROM MOVSEGURO 
					 WHERE SSEGURO = S.SSEGURO 
					   AND cmovseg not in (6, 52))
  AND m1.sseguro(+) = m.sseguro
  AND S.SSEGURO = SR.SSEGURO
  AND s.sseguro = cnv.sseguro(+)
  AND s.sseguro = pps.sseguro(+)
  AND r.crespue(+) = pps.crespue
  AND (S.csituac IN (0,5) 
   OR (s.csituac in (2,3) AND
       (SELECT COUNT(1) 
		 FROM SIN_SINIESTRO 
        WHERE sseguro = s.sseguro 
          and TO_CHAR(fnotifi,'YYYY') = to_char(f_sysdate,'YYYY')) > 0))) a;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DWH_RENTABILIDAD_SD"  IS 'snapshot table for snapshot DWH_PRB.DWH_RENTABILIDAD_SD';
