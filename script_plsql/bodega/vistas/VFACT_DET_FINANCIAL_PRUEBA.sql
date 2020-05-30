--------------------------------------------------------
--  DDL for View VFACT_DET_FINANCIAL_PRUEBA
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "CONF_DWH"."VFACT_DET_FINANCIAL_PRUEBA" ("FR_SUCUR", "NOMBRE_SUCUR", "AGENCIA", "NOMBRE_AGENCIA", "POLIZA", "CERTIF", "TIPCER", "CODRAM", "NOMRAMO", "CODPLA", "NOMBRE_PRODUCTO", "CODCOB", "NOMBRE_AMPARO", "TIPCOA", "PORCENTAJE_COASEG", "FECINI", "FECFIN", "FECEXP", "FECINI_GRAL", "FECFIN_GRAL", "CODMONEDA", "MONEDA", "TRM", "VLR_ASEG_$", "VLR_ASEG_ME", "VLR_PRIMA_$", "VLR_PRIMA_ME", "PAQUETE", "PORC_RET1", "RETENCION_PRIORIDAD", "PORC_CTA", "CTA", "PORC_CUOTA2", "CUOTA2", "PORC_FAC", "FAC", "RETENCIA_CIA", "EXTERIOR", "INTERIOR", "CESION_TOTAL", "VALOR_COMISION_REASEGURO", "CESION_SWISS_RE", "VALOR_COMISION_SWISS_RE", "TIPO_CORRETAJE", "PORC_COMISION_INT", "VALOR_COMISION_INTERMEDIARIO", "PART_NEG", "NIT_INT_PPAL", "NOM_INTE_PPAL", "DEPTO_EJECUCION", "SECTORECONOMIA", "TIPO_TOMADOR", "MUNICIPIO_DE_EJECUCION", "CIIU_TOMADOR", "NIT_TOMADOR", "NOMBRE_TOMADOR", "NIT_ASEGURADO", "NOMBRE_ASEGURADO", "NITBEN", "NOM_BEN", "SUCMOD", "BUREAU", "FR_NOMCTORET", "FR_NOMCTOCTA", "FR_NOMCTOCTA2", "FR_CESSWCTA1", "FR_COMSWCTA1", "FR_CESSWCTA2", "FR_COMSWCTA2", "ICEDNET", "CORTE", "MES", "CONTABLE", "FR_PORCUO3", "FR_CUOTA3", "FR_CESSWCTA3", "FR_COMSWCTA3", "FR_FECSOL") AS 
  SELECT 
  PAC_AGENTES.F_GET_CAGELIQ(24, 2, S.CAGENTE) FR_SUCUR,
  NVL(PAC_ISQLFOR.F_AGENTE(PAC_AGENTES.F_GET_CAGELIQ(24, AG.CTIPAGE, S.CAGENTE)), ' ') NOMBRE_SUCUR,
  AGE.CAGENTE AGENCIA, 
  pac_isqlfor.f_agente(NVL(AGE.CAGENTE ,s.cagente)) NOMBRE_AGENCIA,
  S.NPOLIZA POLIZA,
  M.CMOTMOV CERTIF,
  O.TMOTMOV TIPCER,
  S.CRAMO CODRAM,
  PAC_ISQLFOR.F_RAMO(S.CRAMO, 8) NOMRAMO,
  S.SPRODUC CODPLA,
  f_desproducto_t(s.cramo, s.cmodali, s.ctipseg, s.ccolect, 1, s.cidioma) NOMBRE_PRODUCTO,
  G.CGARANT CODCOB,
  GEN.TGARANT NOMBRE_AMPARO,
  DECODE(S.CTIPCOA,8,'ACEPTADO',0,'DIRECTO',1,'CEDIDO') TIPCOA,
  DECODE(S.CTIPCOA,8, C.PLOCCOA,0) PORCENTAJE_COASEG,
  G.FINIEFE FECINI,
  G.FFINEFE FECFIN,
  S.FEMISIO FECEXP,
	S.FEFECTO FECINI_GRAL,
	S.FVENCIM FECFIN_GRAL,
  S.CMONEDA CODMONEDA,
  MON.CMONINT MONEDA,
	etc.ITASA TRM,

  G.ICAPITAL VLR_ASEG_$,
  CASE WHEN S.CMONEDA<>8 THEN  (G.ICAPITAL*etc.ITASA) 
    ELSE 0
    END VLR_ASEG_ME,
  G.IPRIANU VLR_PRIMA_$,
  CASE WHEN S.CMONEDA<>8 THEN  (G.IPRIANU*etc.ITASA) 
    ELSE 0
    END VLR_PRIMA_ME,
    '' PAQUETE,
  nvl((SELECT C.PCESION
          FROM CESIONESREA C
          WHERE C.CTRAMO=0
            AND C.SSEGURO=S.SSEGURO
            AND C.CGARANT=G.CGARANT
            ),0)PORC_RET1,
   nvl((SELECT sum(C.ICESION)
          FROM CESIONESREA C
          WHERE C.CTRAMO=0
            AND C.SSEGURO=S.SSEGURO
            AND C.CGARANT=G.CGARANT
            GROUP BY SSEGURO, cgarant
            ),0)RETENCION_PRIORIDAD,
    NVL((select sum(pcesion) 
      from CODICONTRATOS c,reaseguro r 
      where ctiprea  in (1,5)
        and c.scontra=r.scontra
        and r.ctramo=1
        AND R.SSEGURO=S.SSEGURO
        AND R.CGARANT=G.CGARANT
      group by C.CTIPREA, decode(c.CTIPREA,5,ff_desvalorfijo(8001113,8,r.ctramo),ff_desvalorfijo(106,8,r.ctramo))),0)PORC_CTA,               
          
    NVL((select sum(icesion) 
      from CODICONTRATOS c,reaseguro r 
      where ctiprea  in (1,5)
        and c.scontra=r.scontra
        and r.ctramo=1
        AND R.SSEGURO=S.SSEGURO
        AND R.CGARANT=G.CGARANT
      group by C.CTIPREA, decode(c.CTIPREA,5,ff_desvalorfijo(8001113,8,r.ctramo),ff_desvalorfijo(106,8,r.ctramo))),0)CTA,        
    
   NVL((select sum(pcesion) 
      from CODICONTRATOS c,reaseguro r 
      where ctiprea  in (1,5)
        and c.scontra=r.scontra
        and r.ctramo=2
        AND R.SSEGURO=S.SSEGURO
        AND R.CGARANT=G.CGARANT
      group by C.CTIPREA, decode(c.CTIPREA,5,ff_desvalorfijo(8001113,8,r.ctramo),ff_desvalorfijo(106,8,r.ctramo))),0)PORC_CUOTA2,
     NVL((select sum(icesion) 
      from CODICONTRATOS c,reaseguro r 
      where ctiprea  in (1,5)
        and c.scontra=r.scontra
        and r.ctramo=2
        AND R.SSEGURO=S.SSEGURO
        AND R.CGARANT=G.CGARANT
      group by C.CTIPREA, decode(c.CTIPREA,5,ff_desvalorfijo(8001113,8,r.ctramo),ff_desvalorfijo(106,8,r.ctramo))),0)CUOTA2,
      
    NVL((select sum(pcesion) 
      from CODICONTRATOS c,reaseguro r 
      where ctiprea  in (1,5)
        and c.scontra=r.scontra
        and r.ctramo=5
        AND R.SSEGURO=S.SSEGURO
        AND R.CGARANT=G.CGARANT
      group by C.CTIPREA, decode(c.CTIPREA,5,ff_desvalorfijo(8001113,8,r.ctramo),ff_desvalorfijo(106,8,r.ctramo))),0)PORC_FAC,        
    
  NVL((select sum(icesion) 
      from CODICONTRATOS c,reaseguro r 
      where ctiprea  in (1,5)
        and c.scontra=r.scontra
        and r.ctramo=5
        AND R.SSEGURO=S.SSEGURO
        AND R.CGARANT=G.CGARANT
      group by C.CTIPREA, decode(c.CTIPREA,5,ff_desvalorfijo(8001113,8,r.ctramo),ff_desvalorfijo(106,8,r.ctramo))),0)FAC,
   nvl((SELECT sum(C.ICAPCES)
          FROM CESIONESREA C
          WHERE C.CTRAMO=0
            AND C.SSEGURO=S.SSEGURO
            AND C.CGARANT=G.CGARANT
            GROUP BY SSEGURO, cgarant
            ),0)RETENCIA_CIA, 
   NVL((SELECT ICAPCET
          FROM REASEGURO R,
               COMPANIAS C
          WHERE C.CPAIS!=170
            AND R.CCOMPANI=C.CCOMPANI
            AND R.SSEGURO=S.SSEGURO
            AND R.CGARANT=G.CGARANT),0)   EXTERIOR,          
  NVL((SELECT ICAPCET
          FROM REASEGURO R,
               COMPANIAS C
          WHERE C.CPAIS=170
            AND R.CCOMPANI=C.CCOMPANI
            AND R.SSEGURO=S.SSEGURO
            AND R.CGARANT=G.CGARANT),0)   INTERIOR,       
       NVL((select sum(ICAPCET) 
      from CODICONTRATOS c,reaseguro r 
      where ctiprea  in (1,5)
        and c.scontra=r.scontra
        AND R.SSEGURO=S.SSEGURO
        AND R.CGARANT=G.CGARANT
      group by C.CTIPREA, decode(c.CTIPREA,5,ff_desvalorfijo(8001113,8,r.ctramo),ff_desvalorfijo(106,8,r.ctramo))),0)CESION_TOTAL,          
    NVL((select sum(ICOMISI) 
      from CODICONTRATOS c,reaseguro r 
      where ctiprea  in (1,5)
        and c.scontra=r.scontra
        AND R.SSEGURO=S.SSEGURO
        AND R.CGARANT=G.CGARANT
      group by C.CTIPREA, decode(c.CTIPREA,5,ff_desvalorfijo(8001113,8,r.ctramo),ff_desvalorfijo(106,8,r.ctramo))),0)VALOR_COMISION_REASEGURO, 
  
     NVL((select sum(R.icapcet) 
      from CODICONTRATOS c,reaseguro r , COMPANIAS co
      where ctiprea  in (1,5)
        and c.scontra=r.scontra
        and co.ccompani=558
        AND R.CCOMPANI=Co.CCOMPANI
        AND R.SSEGURO=S.SSEGURO
        AND R.CGARANT=G.CGARANT
      group by C.CTIPREA, decode(c.CTIPREA,5,ff_desvalorfijo(8001113,8,r.ctramo),ff_desvalorfijo(106,8,r.ctramo))),0)CESION_SWISS_RE,          
  
    NVL((select sum(ICOMISI) 
      from CODICONTRATOS c,reaseguro r , COMPANIAS co
      where ctiprea  in (1,5)
        and c.scontra=r.scontra
        and co.ccompani=558
        AND R.CCOMPANI=Co.CCOMPANI
        AND R.SSEGURO=S.SSEGURO
        AND R.CGARANT=G.CGARANT
      group by C.CTIPREA, decode(c.CTIPREA,5,ff_desvalorfijo(8001113,8,r.ctramo),ff_desvalorfijo(106,8,r.ctramo)),r.cgarant),0)VALOR_COMISION_SWISS_RE, 
  AGE.TIPOAGENTE TIPO_CORRETAJE,
   AGE.PCOMISI PORC_COMISION_INT,
   '' VALOR_COMISION_INTERMEDIARIO,
   AGE.PPARTICI PART_NEG,
   NVL((SELECT ac.cagente
                FROM age_corretaje ac
               WHERE ac.sseguro = s.sseguro
                 AND ac.islider = 1
                 AND ac.nmovimi = (SELECT MAX(acc.nmovimi)
                                     FROM age_corretaje acc
                                    WHERE acc.sseguro = m.sseguro
                                      AND acc.nmovimi <= m.nmovimi)),
             s.cagente) NIT_INT_PPAL,
   pac_isqlfor.f_agente(NVL((SELECT ac.cagente
                                     FROM age_corretaje ac
                                    WHERE ac.sseguro = s.sseguro
                                      AND ac.islider = 1
                                      AND ac.nmovimi =
                                            (SELECT MAX(acc.nmovimi)
                                               FROM age_corretaje acc
                                              WHERE acc.sseguro = m.sseguro
                                                AND acc.nmovimi <= m.nmovimi)),
                                  s.cagente)) NOM_INTE_PPAL,
  
   CASE WHEN PS.CPREGUN IN (2886) AND PS.SSEGURO=S.SSEGURO AND PS.NMOVIMI=M.NMOVIMI
       THEN PS.TRESPUE END DEPTO_EJECUCION,
    
  ' ' SECTORECONOMIA,
  CASE WHEN p.ctipper=1 THEN 'NATURAL' 
  WHEN p.ctipper=2 THEN 'JURIDICA' END TIPO_TOMADOR,
  CASE WHEN PS.CPREGUN IN (2886) AND PS.SSEGURO=S.SSEGURO AND PS.NMOVIMI=M.NMOVIMI
  THEN PS.TRESPUE END MUNICIPIO_DE_EJECUCION,
 (SELECT DV.TATRIBU 
             FROM  FIN_GENERAL FIN, DETVALORES DV
           WHERE DV.CVALOR= 8001072 
             AND DV.CIDIOMA=8
             AND FIN.CCIIU=DV.CATRIBU
             AND FIN.SPERSON = T.SPERSON)CIIU_TOMADOR,
  pac_isqlfor.f_dades_persona(t.sperson, 8, O.cidioma, 'POL') || ' ' || pac_isqlfor.f_dades_persona(t.sperson, 1, O.cidioma, 'POL') NIT_TOMADOR,
  pac_isqlfor.f_dades_persona(t.sperson, 4, O.cidioma, 'POL') || ' ' || pac_isqlfor.f_dades_persona(t.sperson, 5, O.cidioma, 'POL') NOMBRE_TOMADOR,
  pac_isqlfor.f_dades_persona(a.sperson, 8, O.cidioma, 'POL') || ' ' || pac_isqlfor.f_dades_persona(a.sperson, 1, O.cidioma, 'POL') NIT_ASEGURADO,
  pac_isqlfor.f_dades_persona(a.sperson, 4, O.cidioma, 'POL') || ' ' || pac_isqlfor.f_dades_persona(a.sperson, 5, O.cidioma, 'POL') NOMBRE_ASEGURADO,
  CASE WHEN b.sperson is null then 'los de ley'
      WHEN b.sperson is not null then (pac_isqlfor.f_dades_persona(b.sperson, 8, O.cidioma, 'POL') || ' ' || pac_isqlfor.f_dades_persona(b.sperson, 1, O.cidioma, 'POL'))
  END NITBEN,
  CASE WHEN b.sperson is null then 'los de ley'
      WHEN b.sperson is not null then (pac_isqlfor.f_dades_persona(b.sperson, 8, O.cidioma, 'POL') || ' ' || pac_isqlfor.f_dades_persona(b.sperson, 5, O.cidioma, 'POL'))
  END NOM_BEN,
  ' ' SUCMOD,
  S.SFBUREAU Bureau,
  
  (SELECT  CON.TCONTRA
    FROM CESIONESREA CR, CONTRATOS CON
    WHERE CR.CTRAMO=0
      AND CR.SCONTRA=CON.SCONTRA
      AND CR.SSEGURO=S.SSEGURO
       AND CR.CGARANT=G.CGARANT
      )FR_NOMCTORET,
 (select distinct con.tcontra
      from CODICONTRATOS c,reaseguro r, contratos con
      where ctiprea  in (1,5)
        and c.scontra=r.scontra
        and r.ctramo=1
        and c.scontra=con.scontra
        AND R.SSEGURO=S.SSEGURO
        AND R.CGARANT=G.CGARANT)FR_NOMCTOCTA,
  (select distinct con.tcontra
      from CODICONTRATOS c,reaseguro r, contratos con
      where ctiprea  in (1,5)
        and c.scontra=r.scontra
        and r.ctramo=2
        and c.scontra=con.scontra
        AND R.SSEGURO=S.SSEGURO
        AND R.CGARANT=G.CGARANT)FR_NOMCTOCTA2,
   (select sum(R.icapcet) 
      from CODICONTRATOS c,reaseguro r , COMPANIAS co
      where ctiprea  in (1,5)
        and c.scontra=r.scontra
        and co.ccompani=558
        and r.ctramo=1
        AND R.CCOMPANI=Co.CCOMPANI
        AND R.SSEGURO=S.SSEGURO
        AND R.CGARANT=G.CGARANT
      group by C.CTIPREA, decode(c.CTIPREA,5,ff_desvalorfijo(8001113,8,r.ctramo),ff_desvalorfijo(106,8,r.ctramo)) , r.cgarant)FR_CESSWCTA1,
    
    (select sum(R.icomisi) 
      from CODICONTRATOS c,reaseguro r , COMPANIAS co
      where ctiprea  in (1,5)
        and c.scontra=r.scontra
        and co.ccompani=558
        and r.ctramo=1
        AND R.CCOMPANI=Co.CCOMPANI
        AND R.SSEGURO=S.SSEGURO
        AND R.CGARANT=G.CGARANT
      group by C.CTIPREA, decode(c.CTIPREA,5,ff_desvalorfijo(8001113,8,r.ctramo),ff_desvalorfijo(106,8,r.ctramo)) , r.cgarant)FR_COMSWCTA1,
    
    (select sum(R.icapcet) 
      from CODICONTRATOS c,reaseguro r , COMPANIAS co
      where ctiprea  in (1,5)
        and c.scontra=r.scontra
        and co.ccompani=558
        and r.ctramo=2
        AND R.CCOMPANI=Co.CCOMPANI
        AND R.SSEGURO=S.SSEGURO
        AND R.CGARANT=G.CGARANT
      group by C.CTIPREA, decode(c.CTIPREA,5,ff_desvalorfijo(8001113,8,r.ctramo),ff_desvalorfijo(106,8,r.ctramo)) , r.cgarant)FR_CESSWCTA2,
      
      (select sum(R.icomisi) 
      from CODICONTRATOS c,reaseguro r , COMPANIAS co
      where ctiprea  in (1,5)
        and c.scontra=r.scontra
        and co.ccompani=558
        and r.ctramo=2
        AND R.CCOMPANI=Co.CCOMPANI
        AND R.SSEGURO=S.SSEGURO
        AND R.CGARANT=G.CGARANT
      group by C.CTIPREA, decode(c.CTIPREA,5,ff_desvalorfijo(8001113,8,r.ctramo),ff_desvalorfijo(106,8,r.ctramo)) , r.cgarant)FR_COMSWCTA2,
  vr.icednet,
  (select distinct to_char(fefecto,'yyyy') from reaseguro r where R.SSEGURO=S.SSEGURO AND R.CGARANT=G.CGARANT)CORTE,
  (select distinct to_char(fefecto,'MM') from reaseguro r where R.SSEGURO=S.SSEGURO AND R.CGARANT=G.CGARANT)MES,
  ' 'CONTABLE,
   NVL((select sum(r.pcesion) 
      from CODICONTRATOS c,reaseguro r , COMPANIAS co
      where ctiprea  in (1,5)
        and r.ctramo=3
        and c.scontra=r.scontra
        and co.ccompani=558
        AND R.CCOMPANI=Co.CCOMPANI
        AND R.SSEGURO=S.SSEGURO
        AND R.CGARANT=G.CGARANT
      group by C.CTIPREA, decode(c.CTIPREA,5,ff_desvalorfijo(8001113,8,r.ctramo),ff_desvalorfijo(106,8,r.ctramo))),0)FR_PORCUO3,   
    NVL((select sum(r.icesion) 
      from CODICONTRATOS c,reaseguro r , COMPANIAS co
      where ctiprea  in (1,5)
        and r.ctramo=3
        and c.scontra=r.scontra
        and co.ccompani=558
        AND R.CCOMPANI=Co.CCOMPANI
        AND R.SSEGURO=S.SSEGURO
        AND R.CGARANT=G.CGARANT
      group by C.CTIPREA, decode(c.CTIPREA,5,ff_desvalorfijo(8001113,8,r.ctramo),ff_desvalorfijo(106,8,r.ctramo))),0)FR_CUOTA3,   
    NVL((select sum(r.icapcet) 
      from CODICONTRATOS c,reaseguro r , COMPANIAS co
      where ctiprea  in (1,5)
        and r.ctramo=3
        and c.scontra=r.scontra
        and co.ccompani=558
        AND R.CCOMPANI=Co.CCOMPANI
        AND R.SSEGURO=S.SSEGURO
        AND R.CGARANT=G.CGARANT
      group by C.CTIPREA, decode(c.CTIPREA,5,ff_desvalorfijo(8001113,8,r.ctramo),ff_desvalorfijo(106,8,r.ctramo))),0)FR_CESSWCTA3, 
  NVL((select sum(r.icomisi) 
      from CODICONTRATOS c,reaseguro r , COMPANIAS co
      where ctiprea  in (1,5)
        and r.ctramo=3
        and c.scontra=r.scontra
        and co.ccompani=558
        AND R.CCOMPANI=Co.CCOMPANI
        AND R.SSEGURO=S.SSEGURO
        AND R.CGARANT=G.CGARANT
      group by C.CTIPREA, decode(c.CTIPREA,5,ff_desvalorfijo(8001113,8,r.ctramo),ff_desvalorfijo(106,8,r.ctramo))),0)FR_COMSWCTA3,
      S.FEFECTO FR_FECSOL
    
    
          
  FROM  SEGUROS S,
        MOVSEGURO M,
        MOTMOVSEG O,
        GARANSEG G,
        GARANGEN GEN,
        COACUADRO C,
        MONEDAS MON,
        eco_tipocambio etc,
        tomadores t,
        ASEGURADOS A,
        benespseg b,
        recibos r,
        vdetrecibos vr,
        per_personas p,
        AGENTES AG,

       
        (SELECT AC.CAGENTE, AC.SSEGURO,    AC.PCOMISI,    AC.PPARTICI,  ACO.CTIPINT,
        (SELECT D.TATRIBU
           FROM detvalores d
           WHERE d.cidioma = 8
             AND d.cvalor = 371
             AND D.catribu=ACO.ctipint
                    ) tipoagente
          FROM AGE_CORRETAJE AC, AGENTES_COMP ACO
          WHERE AC.cagente=ACO.cagente(+)                 
          )AGE,
          (SELECT PS.TRESPUE, PS.CPREGUN, PS.SSEGURO, PS.NMOVIMI 
          FROM PREGUNPOLSEG PS, PREGUNTAS P
         WHERE PS.CPREGUN IN (2886)  AND PS.CPREGUN=P.CPREGUN AND P.CIDIOMA=8)PS
      

       

  WHERE S.SSEGURO     =     M.SSEGURO 
    AND O.CIDIOMA     =     8
    AND M.CMOTMOV     =     O.CMOTMOV
    AND G.SSEGURO     =     S.SSEGURO
    AND G.CGARANT     =     GEN.CGARANT
    AND G.NMOVIMI     =     M.NMOVIMI
    AND GEN.CIDIOMA   =     8
    AND s.sseguro     =     c.sseguro(+) 
    AND S.CMONEDA     =     MON.CMONEDA(+)
    AND s.sseguro     =     a.sseguro 
    AND a.sseguro     =     t.sseguro 
    AND t.sperson    !=     a.sperson
    AND mon.cidioma   =     8
    AND S.SSEGURO     =     AGE.SSEGURO(+)
    AND S.CAGENTE     =     AGE.CAGENTE(+)
    AND s.sseguro     =     b.sseguro (+)
    and r.sseguro     =     m.sseguro
    and r.nmovimi     =     m.NMOVIMI
    and r.nrecibo     =     vr.nrecibo
    AND t.sperson     =     p.sperson(+)
    AND AG.CAGENTE(+) =     S.CAGENTE
    and PS.SSEGURO(+) =   S.SSEGURO
  
    AND etc.FCAMBIO = (
        SELECT MAX(FCAMBIO)
          FROM ECO_TIPOCAMBIO ETCAM,
               MONEDAS MONE
          WHERE MONE.CMONEDA = MON.CMONEDA
            AND MONE.CIDIOMA = MON.CIDIOMA
            AND MONE.CMONINT = ETCAM.CMONORI
    )
;
