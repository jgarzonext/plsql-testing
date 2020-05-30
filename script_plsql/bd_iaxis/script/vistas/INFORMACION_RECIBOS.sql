CREATE OR REPLACE VIEW INFORMACION_RECIBOS ("ESTADO", "FECHA_SUG_CANCELACION", "NRECIBO", "FECHA_CANCELACION", "FECHA_CANCELACIONS", "CODIGO_SUC", "SUCURSAL", "NNUMIDE", "INTERMEDIARIO", "NIT_CLI", "CLIENTE", "DIR_CLIENTE", "TEL_CLIENTE", "CIUDAD_CLIENTE", "TIPO_CERT", "POLIZA", "CERTIFICADO_DIAN", "FECINI", "FECEFECTO", "FECEFECTOS", "FECEXPEDICION", "DIAS_VIG", "DIAS_MAD", "DIAS_NO_PAGO", "PRIMA_CA", "PRIMA_PE", "IVA_CA", "IVA_PE", "GASTOS_CA", "GASTOS_PE", "V_SUM_IMPORTE_PE", "V_SUM_GASTOS_PE", "V_SUM_IMPUESTO_PE", "V_SUM_IMPORTE_CA", "V_SUM_GASTOS_CA", "V_SUM_IMPUESTO_CA", "ITOTALR", "TOTAL_CA", "CRAMO") AS 
  SELECT 
		f_cestrec_mv (R.NRECIBO, NULL) ESTADO,
		TO_CHAR((R.FEFECTO + NVL(pac_parametros.f_parempresa_n(pac_md_common.f_get_cxtempresa, 'CANCELACION_DIAS'), 30)), 'DD/MM/YYYY') FECHA_SUG_CANCELACION,
 		R.NRECIBO,
		TO_CHAR(M.FMOVIMI, 'DD/MM/YYYY') FECHA_CANCELACION,
		M.FMOVIMI FECHA_CANCELACIONS,
		pac_agentes.F_get_cageliq(24,
		2,
		S.CAGENTE) CODIGO_SUC,
		NVL((SELECT pd.tapelli1 || ' ' || pd.tapelli2 FROM per_detper pd, agentes a2 WHERE pd.sperson = a2.sperson AND a2.cagente = pac_agentes.F_get_cageliq(24, 2, s.cagente)), 'SIN ASIGNAR') SUCURSAL,
 		PP.NNUMIDE,
 		(SELECT pd.tapelli1
               || Decode(pd.tapelli1, NULL, NULL,
                                      ' ')
               || pd.tapelli2
               || Decode(pd.tapelli1
                         || pd.tapelli2, NULL, NULL,
                                         Decode(tnombre, NULL, NULL,
                                                         ' '))
        FROM   per_detper pd,
               agentes a
        WHERE  pd.sperson = a.sperson
               AND a.cagente = Nvl((SELECT ac.cagente
                                    FROM   age_corretaje ac
                                    WHERE  ac.sseguro = s.sseguro
                                           AND ac.islider = 1
                                           AND ac.nmovimi =
                                               (SELECT Max(acc.nmovimi)
                                                FROM   age_corretaje acc
                                                WHERE
                                               acc.sseguro = m.sseguro
                                               AND acc.nmovimi <=
                                                   m.nmovimi)),
                                   s.cagente)) INTERMEDIARIO,
       pac_isqlfor.F_dni(NULL, NULL, t.sperson) NIT_CLI,
       pac_isqlfor.F_persona(NULL, NULL, T.sperson)  CLIENTE,
       NVL(pac_isqlfor.F_DIRECCION(NULL, NULL, T.sperson), 'NO REGISTRA')  DIR_CLIENTE,
       NVL(pac_isqlfor.F_TELEFONO_MOVIL(T.sperson), 'NO REGISTRA') TEL_CLIENTE,
       NVL(pac_isqlfor.F_provincia(T.sperson, 1), 'NO REGISTRA')  CIUDAD_CLIENTE,
       Decode (M.cmotmov, '100', 'N', '324', 'A', 'M') TIPO_CERT,
       S.NPOLIZA  POLIZA,
       NVL(rd.NCERTDIAN,'NO REGISTRA') CERTIFICADO_DIAN,
       TO_CHAR(R.FEMISIO, 'DD/MM/YYYY') FECINI,
       TO_CHAR(R.FEFECTO, 'DD/MM/YYYY') FECEFECTO,
       R.FEFECTO FECEFECTOS,
       TO_CHAR(R.FVENCIM, 'DD/MM/YYYY') FECEXPEDICION,
       TRUNC(R.FVENCIM) - TRUNC(R.FEFECTO) DIAS_VIG,
       TRUNC(SYSDATE) - TRUNC(R.FEFECTO) DIAS_MAD,
       TRUNC(SYSDATE) - TRUNC(R.FEFECTO) DIAS_NO_PAGO,
       TO_CHAR(ROUND(NVL(vm.ITOTPRI, 0)), 'FM999,999,999,999,999') PRIMA_CA,       
       TO_CHAR(ROUND(NVL((case when ABS(vm.itotpri -
       (SELECT NVL (SUM (b.iconcep_monpol), 0)
           FROM detmovrecibo a, detmovrecibo_parcial b
          WHERE a.nrecibo = r.NRECIBO
            AND a.nrecibo = b.nrecibo
            AND a.smovrec = (SELECT MAX (b.smovrec)
                               FROM detmovrecibo b
                              WHERE b.nrecibo = a.nrecibo)
            AND a.norden = b.norden
            AND b.cconcep IN (0,50))) <= NVL(pac_parametros.f_parempresa_n(pac_md_common.f_get_cxtempresa, 'TOLERANCIA_COP'), 0) then 0 else (vm.itotpri - (SELECT NVL (SUM (b.iconcep_monpol), 0)
           FROM detmovrecibo a, detmovrecibo_parcial b
          WHERE a.nrecibo = r.NRECIBO
            AND a.nrecibo = b.nrecibo
            AND a.smovrec = (SELECT MAX (b.smovrec)
                               FROM detmovrecibo b
                              WHERE b.nrecibo = a.nrecibo)
            AND a.norden = b.norden
            AND b.cconcep IN (0,50))) END),0)), 'FM999,999,999,999,999') PRIMA_PE,
        TO_CHAR(ROUND(NVL(vm.ITOTIMP, 0)), 'FM999,999,999,999,999') IVA_CA,
        TO_CHAR(ROUND(NVL((case when ABS(vm.itotimp - (SELECT nvl(SUM(b.iconcep_monpol), 0)
           FROM detmovrecibo a, detmovrecibo_parcial b
          WHERE a.nrecibo = r.NRECIBO
            AND a.nrecibo = b.nrecibo
            AND a.smovrec = (SELECT MAX (b.smovrec)
                               FROM detmovrecibo b
                              WHERE b.nrecibo = a.nrecibo)
            AND a.norden = b.norden
            AND b.cconcep IN (4,86))) <= NVL(pac_parametros.f_parempresa_n(pac_md_common.f_get_cxtempresa, 'TOLERANCIA_COP'), 0) then 0  else ( vm.itotimp - (SELECT nvl(SUM(b.iconcep_monpol), 0)
           FROM detmovrecibo a, detmovrecibo_parcial b
          WHERE a.nrecibo = r.NRECIBO
            AND a.nrecibo = b.nrecibo
            AND a.smovrec = (SELECT MAX (b.smovrec)
                               FROM detmovrecibo b
                              WHERE b.nrecibo = a.nrecibo)
            AND a.norden = b.norden
            AND b.cconcep IN (4,86)))  END), 0)), 'FM999,999,999,999,999') IVA_PE,
        TO_CHAR(ROUND(NVL(vm.ITOTREC, 0)), 'FM999,999,999,999,999') GASTOS_CA,
       TO_CHAR(ROUND(NVL((case when ABS(vm.itotrec - 0) <= NVL(pac_parametros.f_parempresa_n(pac_md_common.f_get_cxtempresa, 'TOLERANCIA_COP'), 0) then 0 else (vm.itotrec - 0) END), 0)), 'FM999,999,999,999,999') GASTOS_PE,
      ROUND(NVL((SELECT NVL (SUM (b.iconcep_monpol), 0)
   FROM detmovrecibo a, detmovrecibo_parcial b
  WHERE a.nrecibo = r.NRECIBO
    AND a.nrecibo = b.nrecibo
    AND a.smovrec = (SELECT MAX (b.smovrec)
                       FROM detmovrecibo b
                      WHERE b.nrecibo = a.nrecibo)
    AND a.norden = b.norden
    AND b.cconcep IN (0,50)),0)) v_sum_importe_pe,
   ROUND(NVL((SELECT NVL (SUM (b.iconcep_monpol), 0)
   FROM detmovrecibo a, detmovrecibo_parcial b
  WHERE a.nrecibo = r.NRECIBO
    AND a.nrecibo = b.nrecibo
    AND a.smovrec = (SELECT MAX (b.smovrec)
                       FROM detmovrecibo b
                      WHERE b.nrecibo = a.nrecibo)
    AND a.norden = b.norden
    AND b.cconcep IN (14)),0)) v_sum_gastos_pe,
   ROUND(NVL((SELECT nvl(SUM(b.iconcep_monpol), 0)
   FROM detmovrecibo a, detmovrecibo_parcial b
  WHERE a.nrecibo = r.NRECIBO
    AND a.nrecibo = b.nrecibo
    AND a.smovrec = (SELECT MAX (b.smovrec)
                       FROM detmovrecibo b
                      WHERE b.nrecibo = a.nrecibo)
    AND a.norden = b.norden
    AND b.cconcep IN (4,86)),0)) v_sum_impuesto_pe,
    ROUND(NVL((SELECT NVL (SUM (b.iconcep_monpol), 0)
   FROM detmovrecibo a, detmovrecibo_parcial b
  WHERE a.nrecibo = r.NRECIBO
    AND a.nrecibo = b.nrecibo
    AND a.smovrec = (SELECT MAX (b.smovrec)
                       FROM detmovrecibo b
                      WHERE b.nrecibo = a.nrecibo)
    AND a.norden = b.norden
    AND a.NRECCAJ IS NOT NULL
    AND b.cconcep IN (0,50)),0)) v_sum_importe_ca,
   ROUND(NVL((SELECT NVL (SUM (b.iconcep_monpol), 0)
   FROM detmovrecibo a, detmovrecibo_parcial b
  WHERE a.nrecibo = r.NRECIBO
    AND a.nrecibo = b.nrecibo
    AND a.smovrec = (SELECT MAX (b.smovrec)
                       FROM detmovrecibo b
                      WHERE b.nrecibo = a.nrecibo)
    AND a.norden = b.norden
    AND a.NRECCAJ IS NOT NULL
    AND b.cconcep IN (14)),0)) v_sum_gastos_ca,

   ROUND(NVL((SELECT nvl(SUM(b.iconcep_monpol), 0)
   FROM detmovrecibo a, detmovrecibo_parcial b
  WHERE a.nrecibo = r.NRECIBO
    AND a.nrecibo = b.nrecibo
    AND a.smovrec = (SELECT MAX (b.smovrec)
                       FROM detmovrecibo b
                      WHERE b.nrecibo = a.nrecibo)
    AND a.norden = b.norden
    AND a.NRECCAJ IS NOT NULL
    AND b.cconcep IN (4,86)), 0)) v_sum_impuesto_ca,
		ROUND(NVL(vm.itotalr,0)) itotalr,
		TO_CHAR(ROUND(NVL((vm.IPRINET + vm.ITOTIMP + vm.ITOTREC),0)), 'FM999,999,999,999,999') TOTAL_CA,
	P.CRAMO
	FROM
		RECIBOS R,
		SEGUROS S,
		MOVSEGURO M,
		AGENTES A,
		PER_PERSONAS PP,
		tomadores t,
		vdetrecibos_monpol vm,
		rango_dian_movseguro rd,
		PRODUCTOS P
		WHERE R.SSEGURO = S.SSEGURO
			AND S.SSEGURO = M.SSEGURO
			AND M.NMOVIMI = (
			SELECT
				MAX(M2.NMOVIMI)
			FROM
				MOVSEGURO M2
			WHERE
				M2.SSEGURO = R.SSEGURO )
			AND A.CAGENTE = S.CAGENTE
			AND A.SPERSON = PP.SPERSON
			AND t.sseguro = s.sseguro
			AND vm.NRECIBO = R.NRECIBO
			AND rd.SSEGURO (+)= S.SSEGURO
			AND RD.NMOVIMI = (
			SELECT
				MAX(RD2.NMOVIMI)
			FROM
				rango_dian_movseguro rd2
			WHERE
				rd2.SSEGURO = R.SSEGURO  AND RD2.NMOVIMI = R.NMOVIMI)
			AND S.SPRODUC = P.SPRODUC;
COMMIT;