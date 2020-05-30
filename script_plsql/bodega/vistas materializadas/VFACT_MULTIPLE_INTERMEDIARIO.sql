--------------------------------------------------------
--  DDL for Materialized View VFACT_MULTIPLE_INTERMEDIARIO
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."VFACT_MULTIPLE_INTERMEDIARIO" ("MULT_INTER_SUCUR", "MULT_INTER_CODPLA", "NPOLIZA", "MULT_INTER_CERTIF", "MULT_INTER_PRINCIPAL", "MULT_INTER_CODIGO", "MULT_INTER_PARTICIPACION", "MULT_INTER_COMISION", "MULT_INTER_VALOR_PARTIC", "MULT_INTER_VALOR_COMISION", "FECHA_REGISTRO", "FECHA_CONTROL", "FECHA_INICIAL", "FECHA_FIN", "FK_TIEMPO")
  ORGANIZATION HEAP PCTFREE 10 PCTUSED 0 INITRANS 2 MAXTRANS 255 
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
  AS select a.MULT_INTER_SUCUR,
	a.MULT_INTER_CODPLA,
  a.NPOLIZA,
  a.MULT_INTER_CERTIF,
	A.MULT_INTER_PRINCIPAL,
	A.MULT_INTER_CODIGO,
	a.MULT_INTER_PARTICIPACION,
  a.MULT_INTER_COMISION,
	nvl(sum(a.MULT_INTER_VALOR_PARTIC),0) MULT_INTER_VALOR_PARTIC,
  nvl(sum(a.MULT_INTER_VALOR_COMISION),0) MULT_INTER_VALOR_COMISION,
	a.FECHA_REGISTRO,
	a.FECHA_CONTROL,
	a.FECHA_INICIAL,
	a.FECHA_FIN,
	a.FK_TIEMPO
from
(SELECT
  f_desagente_t(pac_agentes.f_get_cageliq(24, 2, A.cagente)) MULT_INTER_SUCUR,
	s.SPRODUC MULT_INTER_CODPLA,
  S.NPOLIZA,
  rdm.NCERTDIAN MULT_INTER_CERTIF,
	A.ISLIDER MULT_INTER_PRINCIPAL,
	A.CAGENTE MULT_INTER_CODIGO,
	a.PPARTICI MULT_INTER_PARTICIPACION,
  cp.PCOMISI MULT_INTER_COMISION,
	v.iprinet MULT_INTER_VALOR_PARTIC,
  v.icombru MULT_INTER_VALOR_COMISION,
	f_sysdate FECHA_REGISTRO,
	f_sysdate FECHA_CONTROL,
	to_date('01/01/1986') FECHA_INICIAL,
	f_sysdate FECHA_FIN,
	' ' FK_TIEMPO
FROM age_corretaje A,
	SEGUROS S,
	MOVSEGURO m,
  RANGO_DIAN_MOVSEGURO rdm,
  VDETRECIBOS v,
  (SELECT r.nrecibo, r.sseguro, r.nmovimi
       FROM recibos r
       WHERE NMOVIMI=(SELECT MAX(NMOVIMI) FROM recibos
                        WHERE SSEGURO=R.SSEGURO
                        GROUP BY SSEGURO)) r,
  agentes ag,
  comisionprod cp
WHERE S.SSEGURO   =   A.SSEGURO 
	AND m.sseguro   =   S.SSEGURO
  AND S.CAGENTE   =   A.CAGENTE(+)
  AND m.sseguro   =   rdm.sseguro(+)
  AND m.nmovimi   =   rdm.nmovimi (+)
  AND m.sseguro   =   r.sseguro(+)
  AND m.nmovimi   =   r.nmovimi(+)
  AND v.nrecibo(+)=   r.nrecibo
  AND A.CAGENTE   =   AG.CAGENTE
  AND cp.sproduc = s.sproduc
  AND cp.ccomisi = ag.ccomisi



  group by S.NPOLIZA,  cp.PCOMISI, s.sseguro, s.SPRODUC, rdm.NCERTDIAN, A.ISLIDER, A.CAGENTE, 
a.PPARTICI, a.PCOMISI, v.icombru,iprinet
)a

group by  a.MULT_INTER_SUCUR,
	a.MULT_INTER_CODPLA,
  a.NPOLIZA,
  a.MULT_INTER_CERTIF,
	A.MULT_INTER_PRINCIPAL,
	A.MULT_INTER_CODIGO,
	a.MULT_INTER_PARTICIPACION,
  a.MULT_INTER_COMISION,

	a.FECHA_REGISTRO,
	a.FECHA_CONTROL,
	a.FECHA_INICIAL,
	a.FECHA_FIN,
	a.FK_TIEMPO;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."VFACT_MULTIPLE_INTERMEDIARIO"  IS 'snapshot table for snapshot CONF_DWH.VFACT_MULTIPLE_INTERMEDIARIO';
