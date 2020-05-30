----- DELETE VISTA ----------
BEGIN
    PAC_SKIP_ORA.p_comprovadrop('STG_IN_LIBRO_RADICADOR','MATERIALIZED VIEW');  
END;
/

----- CREATE VISTA ----------
  CREATE MATERIALIZED VIEW "CONF_DWH"."STG_IN_LIBRO_RADICADOR" ("POLIZA", "SINIESTRO", "RAMO_SUPER", "TIPO_COA", "NOMASE", "NOMBEN", "NOMTOM", "FECOCURRENCIA", "FECAVISO", "FECRECLAMO",
  "COBERTURA", "PRETENCION", "RET_CONST", "INT_CONST", "EXT_CONST", "TOT_MVTO", "FECMOV", "OBJ_TRAM", "PROCESO", "RET_MVTO", "INT_MVTO", "EXT_MVTO",
  "TOT_RESERVA", "TEXTO_RAZ", "NOMSUC", "FECINI", "FECFIN", "VLRASEG", "CONST_INI", "NOMABG", "FECHA_PROCESO", "CODTRANSA", "INCISO", "CODCLA", "SUCUR", 
  "CONSEC", "FECHACORTE", "SUSCRIPTOR", "NITAGE", "NOMAGE", "TIPINF", "PAQUETE", "TIPOCOASEG", "NITASE", "NITBEN", "NITTOM", "FECHAINICIAL")
  ORGANIZATION HEAP PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
NOCOMPRESS LOGGING
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
TABLESPACE "CONF_DWH"   NO INMEMORY 
BUILD IMMEDIATE
USING INDEX 
REFRESH COMPLETE ON DEMAND START WITH sysdate+0 NEXT SYSDATE + 1
USING DEFAULT LOCAL ROLLBACK SEGMENT
USING ENFORCED CONSTRAINTS DISABLE QUERY REWRITE
  AS SELECT   
    A.POLIZA,
    A.SINIESTRO,
    A.RAMO_SUPER,
    A.TIPO_COA,
    A.NOMASE,
    A.NOMBEN,
    A.NOMTOM,
    A.FECOCURRENCIA,
    A.FECAVISO,
	A.FECRECLAMO,
    A.COBERTURA,
    SUM(A.PRETENCION)PRETENCION,
    A.RET_CONST,
    A.INT_CONST,
    A.EXT_CONST,
    A.TOT_MVTO,
    A.FECMOV,
    A.OBJ_TRAM,
    A.PROCESO,
    A.RET_MVTO,
    A.INT_MVTO,
    A.EXT_MVTO,
    SUM(A.TOT_RESERVA) TOT_RESERVA,
    A.TEXTO_RAZ,
    A.NOMSUC,
    A.FECINI,
    A.FECFIN,
    A.VLRASEG,
    A.CONST_INI,
    A.NOMABG,
    A.FECHA_PROCESO,
    A.CODTRANSA,
    A.INCISO,
    A.CODCLA,
    A.SUCUR,
    A.CONSEC,
    A.FECHACORTE,
    A.SUSCRIPTOR,  
    A.NITAGE,
    A.NOMAGE,
    A.TIPINF,
    A.PAQUETE,
    A.TIPOCOASEG,
    A.NITASE,
    A.NITBEN,
    A.NITTOM, 
    A.FECHAINICIAL	FROM
  
(SELECT
    s.sseguro,
    S.NPOLIZA POLIZA,
    si.NSINIES SINIESTRO,
    s.cramo RAMO_SUPER,
    s.CTIPCOA TIPO_COA,
  AXIS.PAC_ISQLFOR.f_dades_persona(a.sperson, 4, 8, 'POL') || ' ' || AXIS.PAC_ISQLFOR.f_dades_persona(a.sperson, 5, 8, 'POL') NOMASE,
  AXIS.PAC_ISQLFOR.f_dades_persona(b.sperson, 4, 8, 'POL') || ' ' || AXIS.PAC_ISQLFOR.f_dades_persona(b.sperson, 5, 8, 'POL') NOMBEN,
  AXIS.PAC_ISQLFOR.f_dades_persona(t.sperson, 4, 8, 'POL') || ' ' || AXIS.PAC_ISQLFOR.f_dades_persona(t.sperson, 5, 8, 'POL') NOMTOM,
  si.FSINIES FECOCURRENCIA,
  si.FNOTIFI FECAVISO,
  si.FNOTIFI FECRECLAMO,
  AXIS.FF_DESGARANTIA(str.cgarant, 8) COBERTURA,
  STR.IRESERVA_MONCIA PRETENCION,
  NVL(stp_pagos.IRETENC,0) RET_CONST,
  0 INT_CONST,
  0 EXT_CONST,
  0 TOT_MVTO,
  SI.FALTA FECMOV,
  0 OBJ_TRAM,
  AXIS.FF_DESVALORFIJO(6, 8, M.CESTSIN) PROCESO,
  STR.ITOTRET RET_MVTO,
  0 INT_MVTO,
  0 EXT_MVTO,
  STR.IRESERVA TOT_RESERVA,
  STA.TOBSERVA TEXTO_RAZ,
  nvl(AXIS.FF_DESAGENTE_PER(SR.C02),' ') NOMSUC,
  S.FEFECTO FECINI,
  s.fvencim FECFIN,
  VLR.ICAPITAL VLRASEG,
  0 CONST_INI,
  sc.ttramitad NOMABG,
  to_date('01/01/1986') FECHA_PROCESO,
  st.ctramit CODTRANSA,
  0 INCISO,
  0 CODCLA,
  nvl(SR.C02,0) SUCUR,
  STR.NTRAMIT CONSEC,
  to_date('01/01/1986') FECHACORTE,
  0 SUSCRIPTOR,  
  NVL(si.cagente, s.cagente) NITAGE,
  AXIS.F_DESAGENTE_T(NVL(si.cagente, s.cagente)) NOMAGE,
  0 TIPINF,
  0 PAQUETE,
  --DECODE (NVL(s.CTIPCOA,0), 1, 'Coaseguro cedido', 8, 'Coaseguro aceptado', 'Contratacion directa') TIPOCOASEG,
  NVL(s.CTIPCOA,0) TIPOCOASEG,
  AXIS.PAC_ISQLFOR.f_dades_persona(a.sperson, 1, 8, 'POL') NITASE,
  AXIS.PAC_ISQLFOR.f_dades_persona(b.sperson, 1, 8, 'POL') NITBEN,
  AXIS.PAC_ISQLFOR.f_dades_persona(t.sperson, 1, 8, 'POL') NITTOM, 
  to_date('01/01/1986') FECHAINICIAL
  


FROM AXIS.SEGUROS S,  AXIS.SIN_SINIESTRO si, AXIS.ASEGURADOS a,    AXIS.TOMADORES t, AXIS.benespseg b,
     AXIS.SIN_TRAMITA_RESERVA str,   AXIS.SIN_TRAMITA_PAGO stp_pagos,  AXIS.SIN_TRAMITACION st,AXIS.SEGUREDCOM SR,
     AXIS.SIN_MOVSINIESTRO  M , AXIS.sin_codtramitador sc,AXIS.sin_tramita_apoyos sta     
 ,
                                              
     (SELECT AUX_G.CGARANT, AUX_G.SSEGURO, AUX_G.NRIESGO, AUX_G.ICAPITAL
        FROM AXIS.GARANSEG AUX_G
        WHERE AUX_G.NMOVIMI=(SELECT MAX(GG.NMOVIMI)
                              FROM AXIS.GARANSEG GG
                              WHERE GG.CGARANT=AUX_G.CGARANT
                              AND   GG.SSEGURO=AUX_G.SSEGURO
                              AND   GG.NRIESGO=AUX_G.NRIESGO
                              GROUP BY GG.CGARANT, GG.SSEGURO, GG.NRIESGO))  VLR                                       
                                              
   WHERE  s.sseguro     =     si.sseguro(+)  
      AND s.sseguro     =     a.sseguro
      AND s.sseguro     =     t.sseguro 
      AND a.sperson    !=     t.sperson
      AND s.sseguro     =     b.sseguro (+)
      AND str.nsinies   =     st.nsinies
      AND str.ntramit   =     st.ntramit
      AND st.nsinies    =     si.nsinies  
      and stp_pagos.nsinies(+) = st.nsinies
      and stp_pagos.ntramit(+) = st.ntramit
      AND S.SSEGURO     =     SR.SSEGURO 
      and trunc(si.FSINIES) between trunc(sr.fmovini) and trunc(sr.fmovfin)
      AND M.NSINIES     =     SI.NSINIES
      AND sc.ctramitad  =     m.ctramitad
      AND sta.nsinies(+) = si.nsinies
      AND VLR.CGARANT   =     STR.CGARANT
      AND VLR.SSEGURO   =     SI.SSEGURO
      AND VLR.NRIESGO   =     SI.NRIESGO
      AND AXIS.PAC_CONTEXTO.f_inicializarctx(AXIS.PAC_PARAMETROS.f_parempresa_t(24,'USER_BBDD'))=0
      --
    )A
    GROUP BY 
    A.POLIZA,
    A.SINIESTRO,
    A.RAMO_SUPER,
    A.TIPO_COA,
    A.NOMASE,
    A.NOMBEN,
    A.NOMTOM,
    A.FECOCURRENCIA,
    A.FECAVISO,
	A.FECRECLAMO,
	A.COBERTURA,
    A.RET_CONST,
    A.INT_CONST,
    A.EXT_CONST,
    A.TOT_MVTO,
    A.TEXTO_RAZ,
    A.FECMOV,
    A.OBJ_TRAM,
    A.PROCESO,
    A.RET_MVTO,
    A.INT_MVTO,
    A.EXT_MVTO,
    A.NOMSUC,
    A.FECINI,
    A.FECFIN,
    A.VLRASEG,
    A.CONST_INI,
    A.NOMABG,
    A.FECHA_PROCESO,
    A.CODTRANSA,
    A.INCISO,
    A.CODCLA,
    A.SUCUR,
    A.CONSEC,
    A.FECHACORTE,
    A.SUSCRIPTOR,  
    A.NITAGE,
    A.NOMAGE,
    A.TIPINF,
    A.PAQUETE,
    A.TIPOCOASEG,
    A.NITASE,
    A.NITBEN,
    A.NITTOM, 
    A.FECHAINICIAL;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."STG_IN_LIBRO_RADICADOR"  IS 'snapshot table for snapshot DWH_CONF.STG_IN_LIBRO_RADICADOR';
