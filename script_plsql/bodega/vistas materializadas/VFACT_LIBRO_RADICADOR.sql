--------------------------------------------------------
--  DDL for Materialized View VFACT_LIBRO_RADICADOR
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."VFACT_LIBRO_RADICADOR" ("POLIZA", "SINIESTRO", "RAMO_SUPER", "TIPO_COA", "NOMASE", "NOMBEN", "NOMTOM", "FECOCURRENCIA", "FECAVISO", "COBERTURA", "PRETENCION", "RET_CONST", "INT_CONST", "EXT_CONST", "TOT_MVTO", "FECMOV", "OBJ_TRAM", "PROCESO", "RET_MVTO", "INT_MVTO", "EXT_MVTO", "TOT_RESERVA", "TEXTO_RAZ", "NOMSUC", "FECINI", "FECFIN", "VLRASEG", "CONST_INI", "NOMABG", "FECHA_PROCESO", "CODTRANSA", "INCISO", "CODCLA", "SUCUR", "CONSEC", "FECHACORTE", "SUSCRIPTOR", "NITAGE", "NOMAGE", "TIPINF", "PAQUETE", "TIPOCOASEG", "NIT_ASEGURADO", "NITBEN", "NITTOM")
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
    A.NIT_ASEGURADO,
    A.NITBEN,
    A.NITTOM FROM
  
(SELECT
    s.sseguro,
    S.NPOLIZA POLIZA,
    si.NSINIES SINIESTRO,
    s.cramo RAMO_SUPER,
    ' ' TIPO_COA,
  pac_isqlfor.f_dades_persona(a.sperson, 4, 8, 'POL') || ' ' || pac_isqlfor.f_dades_persona(a.sperson, 5, 8, 'POL') NOMASE,
  pac_isqlfor.f_dades_persona(b.sperson, 4, 8, 'POL') || ' ' || pac_isqlfor.f_dades_persona(b.sperson, 5, 8, 'POL') NOMBEN,
  pac_isqlfor.f_dades_persona(t.sperson, 4, 8, 'POL') || ' ' || pac_isqlfor.f_dades_persona(t.sperson, 5, 8, 'POL') NOMTOM,
  si.FSINIES FECOCURRENCIA,
  si.FNOTIFI FECAVISO,
  ff_desgarantia(str.cgarant, 8) COBERTURA,
  STR.IRESERVA_MONCIA PRETENCION,
  NVL(stp_pagos.IRETENC,0) RET_CONST,
  ' ' INT_CONST,
  ' ' EXT_CONST,
  ' ' TOT_MVTO,
  SI.FALTA FECMOV,
  ' ' OBJ_TRAM,
  FF_DESVALORFIJO(6, 8, M.CESTSIN) PROCESO,
  STR.ITOTRET RET_MVTO,
  ' ' INT_MVTO,
  ' ' EXT_MVTO,
  STR.IRESERVA TOT_RESERVA,
  STA.TOBSERVA TEXTO_RAZ,
  nvl(FF_DESAGENTE_PER(SR.C02),' ') NOMSUC,
  S.FEFECTO FECINI,
  s.fvencim FECFIN,
  VLR.ICAPITAL VLRASEG,
  ' ' CONST_INI,
  sc.ttramitad NOMABG,
  ' ' FECHA_PROCESO,
  st.ctramit CODTRANSA,
  ' ' INCISO,
  ' ' CODCLA,
  nvl(SR.C02,0) SUCUR,
  STR.NTRAMIT CONSEC,
  ' ' FECHACORTE,
  ' ' SUSCRIPTOR,  
  NVL(si.cagente, s.cagente) NITAGE,
  f_desagente_t(NVL(si.cagente, s.cagente)) NOMAGE,
  ' ' TIPINF,
  ' ' PAQUETE,
  DECODE (NVL(s.CTIPCOA,0), 1, 'Coaseguro cedido', 8, 'Coaseguro aceptado', 'Contratacion directa') TIPOCOASEG,
  pac_isqlfor.f_dades_persona(a.sperson, 8, 8, 'POL') || ' ' || pac_isqlfor.f_dades_persona(a.sperson, 1, 8, 'POL') NIT_ASEGURADO,
  pac_isqlfor.f_dades_persona(b.sperson, 8, 8, 'POL') || ' ' || pac_isqlfor.f_dades_persona(b.sperson, 1, 8, 'POL') NITBEN,
  pac_isqlfor.f_dades_persona(t.sperson, 8, 8, 'POL') || ' ' || pac_isqlfor.f_dades_persona(t.sperson, 1, 8, 'POL') NITTOM
  


FROM SEGUROS S,  SIN_SINIESTRO si, ASEGURADOS a,    TOMADORES t, benespseg b,
     SIN_TRAMITA_RESERVA str,   SIN_TRAMITA_PAGO stp_pagos,  SIN_TRAMITACION st,SEGUREDCOM SR,
     SIN_MOVSINIESTRO  M , sin_codtramitador sc,sin_tramita_apoyos sta     
 ,
                                              
     (SELECT AUX_G.CGARANT, AUX_G.SSEGURO, AUX_G.NRIESGO, AUX_G.ICAPITAL
        FROM GARANSEG AUX_G
        WHERE AUX_G.NMOVIMI=(SELECT MAX(GG.NMOVIMI)
                              FROM GARANSEG GG
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
      AND pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'))=0
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
    A.NIT_ASEGURADO,
    A.NITBEN,
    A.NITTOM;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."VFACT_LIBRO_RADICADOR"  IS 'snapshot table for snapshot CONF_DWH.VFACT_LIBRO_RADICADOR';
