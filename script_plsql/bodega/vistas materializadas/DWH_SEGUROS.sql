--------------------------------------------------------
--  DDL for Materialized View DWH_SEGUROS
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."DWH_SEGUROS" ("SSEGURO", "COD_OFICINA", "DES_OFICINA", "COD_RAMO", "DES_RAMO", "NSOLICI", "NPOLIZA", "NCERTIF", "CPOLCIA", "ENDOSO", "TPOLIZA", "SPRODUC", "CACTIVI", "DES_ACT", "TITULO_PROD", "COD_EMPRESA", "FEFECTO", "AAAA_FEFECTO", "MM_FEFECTO", "DD_FEFECTO", "COD_SITUAC", "DES_SITUAC", "COD_TIPBAN", "DES_TIPBAN", "COD_CBANCAR", "COD_FORMAPAGO", "DES_FORMAPAGO", "SPERSON_TOMADOR1", "SPERSON_TOMADOR2", "COD_DOMICILIO_TOMADOR1", "COD_DOMICILIO_TOMADOR2", "PRIMA_ANUAL", "PRIMA_TOTAL", "EXTRAPRIMA", "RECARGO", "TARIFA", "PROV_MAT", "F_ANULACION", "AAAA_FANULAC", "MM_FANULAC", "DD_FANULAC", "ANYOS_DURACION", "FVENCIM", "AAAA_FVENCIM", "MM_FVENCIM", "DD_FVENCIM", "FCARANU", "AAAA_FCARANU", "MM_FCARANU", "DD_FCARANU", "C00", "DES_C00", "C01", "DES_C01", "C02", "DES_C02", "C03", "DES_C03", "C04", "DES_C04", "C05", "DES_C05", "C06", "DES_C06", "C07", "DES_C07", "C08", "DES_C08", "C09", "DES_C09", "C10", "DES_C10", "C11", "DES_C11", "C12", "DES_C12", "AGE_ES_ACTIVO", "COD_RETENI", "DES_RETENI", "MACROCUENTA", "CODPER_ASEGURADO1", "COD_DOMICILIO_ASEGURADO1", "COMIND_PADRE", "PERSON_OFICINA", "TMONEDAPROD", "TMONEDACONTAB", "CMOVSEG", "TIPOMOV", "FCARANT", "NANUALI")
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
  AS SELECT   s.sseguro, s.cagente cod_oficina, ff_desagente_per(s.cagente) des_oficina,
         s.cramo cod_ramo, ff_desramo(s.cramo, 2) des_ramo, s.nsolici, s.npoliza, s.ncertif,
         s.cpolcia, mo.nmovimi endoso, ff_desvalorfijo(37, 2, pr.csubpro) tpoliza, s.sproduc,
         s.cactivi, ff_desactividad(s.cactivi, s.cramo, 2) des_act,
         f_desproducto_t(s.cramo, s.cmodali, s.ctipseg, s.ccolect, 2, 2) titulo_prod,
         s.cempres cod_empresa, s.fefecto, TO_CHAR(s.fefecto, 'yyyy') aaaa_fefecto,
         TO_CHAR(s.fefecto, 'mm') mm_fefecto, TO_CHAR(s.fefecto, 'dd') dd_fefecto,
         s.csituac cod_situac, ff_desvalorfijo(61, 2, s.csituac) des_situac,
         s.ctipban cod_tipban, ff_desvalorfijo(274, 2, s.ctipban) des_tipban,
         s.cbancar cod_cbancar, s.cforpag cod_formapago,
         ff_desvalorfijo(17, 2, s.cforpag) des_formapago, t.sperson sperson_tomador1,
         t2.sperson sperson_tomador2, t.cdomici cod_domicilio_tomador1,
         DECODE(t2.nordtom, 2, t2.cdomici, NULL) cod_domicilio_tomador2,
         SUM(gr.iprianu) prima_anual, SUM(gr.ipritot) prima_total, SUM(gr.iextrap) extraprima,
         SUM(gr.irecarg) recargo, SUM(gr.itarifa) tarifa,(f_pm_actual(s.sseguro)) prov_mat,
         s.fanulac f_anulacion, TO_CHAR(s.fanulac, 'yyyy') aaaa_fanulac,
         TO_CHAR(s.fanulac, 'mm') mm_fanulac, TO_CHAR(s.fanulac, 'dd') dd_fanulac,
         DECODE(s.nduraci, 1, s.nduraci, NULL) anyos_duracion, s.fvencim,
         TO_CHAR(s.fvencim, 'yyyy') aaaa_fvencim, TO_CHAR(s.fvencim, 'mm') mm_fvencim,
         TO_CHAR(s.fvencim, 'dd') dd_fvencim, s.fcaranu,
         TO_CHAR(s.fcaranu, 'yyyy') aaaa_fcaranu, TO_CHAR(s.fcaranu, 'mm') mm_fcaranu,
         TO_CHAR(s.fcaranu, 'dd') dd_fcaranu, sr.c00, ff_desagente_per(sr.c00) des_c00, sr.c01,
         ff_desagente_per(sr.c01) des_c01, sr.c02, ff_desagente_per(sr.c02) des_c02, sr.c03,
         ff_desagente_per(sr.c03) des_c03, sr.c04, ff_desagente_per(sr.c04) des_c04, sr.c05,
         ff_desagente_per(sr.c05) des_c05, sr.c06, ff_desagente_per(sr.c06) des_c06, sr.c07,
         ff_desagente_per(sr.c07) des_c07, sr.c08, ff_desagente_per(sr.c08) des_c08, sr.c09,
         ff_desagente_per(sr.c09) des_c09, sr.c10, ff_desagente_per(sr.c10) des_c10, sr.c11,
         ff_desagente_per(sr.c11) des_c11, sr.c12, ff_desagente_per(sr.c12) des_c12,
         DECODE(COUNT(DISTINCT re.cagente), 0, 0, 1) age_es_activo, s.creteni cod_reteni,
         DECODE(mo.cmovseg,
                10, mm.tmotmov,
                (DECODE(s.creteni,
                        1, NVL(ff_desvalorfijo(708, 2, mr.cmotret),
                               ff_desvalorfijo(61, 2, s.csituac) || ' '
                               || ff_desvalorfijo(66, 2, s.creteni)),
                        ff_desvalorfijo(66, 2, s.creteni)))) des_reteni,
         pac_preguntas.ff_buscapregunseg(s.sseguro, ri.nriesgo, 428, NULL, NULL) macrocuenta,
         MAX(ri.sperson) codper_asegurado1, MAX(ri.cdomici) cod_domicilio_asegurado1,
         MAX(z.ccomisi_indirect) comind_padre, aa.sperson person_oficina,
         mon.cmonint tmonedaprod, mon2.cmonint tmonedacontab,
         mo.CMOVSEG, decode(mo.cmovseg,0,'A',3,'B',1,'C',4,'C') TipoMov,
         s.fcarant FCARANT, s.NANUALI
    FROM seguros s, tomadores t, tomadores t2, garanseg gr, seguredcom sr, productos pr,
         movseguro mo, redcomercial re
         , motretencion mr
         , motmovseg mm, riesgos ri, agentes z,
         agentes aa, codidivisa di
         , monedas mon, parempresas pae, monedas mon2
   WHERE t.sseguro = s.sseguro
     AND t.nordtom = 1
     AND s.sseguro = t2.sseguro(+)
     AND 2 = t2.nordtom(+)
     AND gr.sseguro = s.sseguro
     AND gr.ffinefe IS NULL
     AND sr.sseguro = s.sseguro
     and sr.fmovfin is null
     AND pr.sproduc = s.sproduc
     AND mo.sseguro = s.sseguro
     AND mo.nmovimi = (SELECT MAX(mo1.nmovimi) FROM movseguro mo1 WHERE mo1.sseguro = s.sseguro)
     AND mo.cmovseg in (0,3,1,4)
     AND re.cagente = s.cagente
     AND re.fmovfin IS NULL
     AND mm.cidioma = 2
     AND mm.cmotmov = mo.cmotmov
     AND ri.sseguro = s.sseguro
     AND ri.nriesgo = (SELECT MIN(r1.nriesgo) FROM riesgos r1 WHERE r1.sseguro = s.sseguro)
     AND z.cagente(+) = pac_redcomercial.f_busca_padre(s.cempres, s.cagente, NULL, f_sysdate)
     AND aa.cagente = s.cagente
     AND di.CDIVISA = pr.CDIVISA 
     AND mon.cidioma = 2
     AND mon.cmoneda = di.CMONEDA
     AND pae.cempres = 23
     AND pae.cparam = 'MONEDACONTAB'
     AND mon2.cidioma = 2
     AND mon2.cmoneda = pae.nvalpar
     AND mr.sseguro(+) = mo.sseguro
     AND mr.nmovimi(+) = mo.nmovimi
GROUP BY s.sseguro, s.cagente, s.cramo, s.npoliza, s.ncertif, s.cpolcia, mo.nmovimi, s.sproduc,
         s.cactivi, s.nsolici, pr.csubpro, s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cempres,
         s.fefecto, s.csituac, s.ctipban, s.cbancar, s.cforpag, t.sperson, t2.sperson,
         t.cdomici, t2.cdomici, s.fanulac, s.nduraci, s.fvencim, s.fcaranu, t2.nordtom,
         gr.ffinefe, sr.c00, sr.c01, sr.c02, sr.c03, sr.c04, sr.c05, sr.c06, sr.c07, sr.c08,
         sr.c09, sr.c10, sr.c11, sr.c12, s.creteni, mo.cmovseg, mm.tmotmov, s.creteni,
         mr.cmotret, ri.nriesgo, aa.sperson, mon.cmonint, mon2.cmonint, s.fcarant, s.NANUALI ;

  CREATE INDEX "CONF_DWH"."DWHSEGUROS_I1" ON "CONF_DWH"."DWH_SEGUROS" ("SSEGURO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CONF_DWH" ;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DWH_SEGUROS"  IS 'snapshot table for seguros (polizas) (20150908).';
