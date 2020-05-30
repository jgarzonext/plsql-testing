CREATE MATERIALIZED VIEW FACT_RADICADOR (FCUOTA_REA_ID	,
GEO_ID	,
RAMO_ID	,
POL_ID	,
TOMADOR_ID	,
ASEGURADO_ID	,
BENEFICIARIO_ID	,
TIPO_ID	,
TIP_COA2	,
ABOGADO	,
SUSCRIPTOR_ID	,
AGEN_ID	,
COBERTURA_ID	,
RADIC_ID	,
FECHA_CORTE_ID	,
FECHA_AVISO_RECLAMO	,
FECHA_RECLAMO	,
FECHA_TRANSACCI”N	,
FECHA_OCURRENCIA	,
NUM_RECLAMO	,
VLR_PRETENSION	,
VLR_RET_CONST	,
VLR_INT_CONST	,
VLR_EXT_CONST	,
VLR_TOTAL_MOVIMIENTO	,
VLR_RET_MOVIMIENTO	,
VLR_INT_MOVIMIENTO	,
VLR_EXT_MOVIMIENTO	,
VLR_TOTAL_RESERVA	,
VLR_ASEGURADO	,
VLR_CONST_INI	,
RAD_TEXTO_RAZ	,
FECHA_INI_ID	,
FECHA_FIN_ID	,
FECHA_PROCESO_ID	,
RAD_CODTRANSA_ID	,
RAD_PAQUETE	,
RAD_OBJ_TRAM	,
FECHA_REGISTRO	,
ESTADO	,
START_ESTADO	,
END_ESTADO	,
FECHA_CONTROL	,
FECHA_INICIAL	,
FECHA_FIN	,
PROCESO	,
FECHA_INICIAL_ID	,
RAMO_SUPER	,
INCISO	,
CODCLA	,
CONSEC	,
TIPINF	,
TIPOCOASEG	
)
ORGANIZATION HEAP PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
NOCOMPRESS LOGGING
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
--TABLESPACE "CONF_DWH"   NO INMEMORY 
BUILD IMMEDIATE
USING INDEX 
REFRESH COMPLETE ON DEMAND START WITH sysdate+0 NEXT SYSDATE + 1
USING DEFAULT LOCAL ROLLBACK SEGMENT
USING ENFORCED CONSTRAINTS DISABLE QUERY REWRITE
AS

WITH query1 AS 
(    SELECT
        nsinies,
        ireserva,
        ntramit
    FROM
        sin_tramita_reserva
    WHERE
        cmovres = 1),
		date1 as (
	SELECT nvl(
                MAX(start_date),
                trunc(
                    SYSDATE,
                    'MONTH'
                )
            )INICIAL, nvl(
                MAX(end_date),
                last_day(SYSDATE)
            )FINAL
        FROM TBL_FACT_RADICADOR_DUMMY
	)

SELECT DISTINCT
    ROWNUM fcuota_rea_id,
    dim_geo.geo_id geo_id,
    HOM.CODPLA ramo_id,
    seg.npoliza pol_id,
    inter.intrm_id tomador_id,
    inter.intrm_id asegurado_id,
    inter.intrm_id beneficiario_id,
    pp.ctipide tipo_id,
    DECODE(
        ctipcoa,
        0,
        '1',
        1,
        '2',
        8,
        '3'
    ) tip_coa2,
    ABO.ttramid abogado,--SIN_TRAMITA_FISCAL.SPROFES O SIN_TRAMITA_JUDICIAL.SPROFES CUANDO PERSONA.CPROFES = 122
    mov.cusumov suscriptor_id,
    seg.cagente agen_id,
    str.cgarant cobertura_id,
    st.nradica radic_id,
        CASE
            WHEN st.nradica IS NOT NULL THEN st.falta
        END
    fecha_corte_id,
    ss.fnotifi fecha_aviso_reclamo,
    ss.falta fecha_reclamo,
    stf.fapertu fecha_transacci√n,
    ss.fsinies fecha_ocurrencia,
    ss.nsinies num_reclamo,
    stv.ipreten vlr_pretension,
        CASE
            WHEN ce.ctramo = 0 THEN SUM(ce.pcesion) * q1.ireserva
        END
    vlr_ret_const,
        CASE
            WHEN
                ce.ctramo != 0
            AND
                p.cpais = 170
            THEN SUM(ce.pcesion) * q1.ireserva
        END
    vlr_int_const,
        CASE
            WHEN
                ce.ctramo != 0
            AND
                p.cpais != 170
            THEN SUM(ce.pcesion) * q1.ireserva
        END
    vlr_ext_const,
    str.icaprie vlr_total_movimiento,
        CASE
            WHEN
                str.cmovres != 1
            AND
                ce.ctramo = 0
            THEN SUM(ce.pcesion) * str.ireserva
        END
    vlr_ret_movimiento,
        CASE
            WHEN
                str.cmovres != 1
            AND
                ce.ctramo != 0
            AND
                p.cpais = 170
            THEN SUM(ce.pcesion) * str.ireserva
        END
    vlr_int_movimiento,
        CASE
            WHEN
                str.cmovres != 1
            AND
                ce.ctramo != 0
            AND
                p.cpais != 170
            THEN SUM(ce.pcesion) * str.ireserva
        END
    vlr_ext_movimiento,
    FIRST_VALUE(str.ireserva)  OVER (ORDER BY str.nmovres DESC) vlr_total_reserva,
    str.ICAPRIE vlr_asegurado,
    CASE WHEN str.CMOVRES=1 THEN str.ireserva END vlr_const_ini,
    stp.tobserva rad_texto_raz,
    dim_tiem.tie_id fecha_ini_id,
    dim_tiem.tie_id fecha_fin_id,
    dim_tiem.TIE_ID fecha_proceso_id,
    stp.cconpag rad_codtransa_id,
    to_char(CON.fconini,'YYYY') RAD_PAQUETE,
    CASE WHEN RAD.CESTSIN=0 THEN 'RADICACION'
        WHEN RAD.CESTSIN=3 THEN 'OBJETADO'
        WHEN RAD.CESTSIN=5 THEN 'TRAMITE' END
    RAD_OBJ_TRAM,
    SYSDATE fecha_registro,
    CC.TATRIBU ESTADO,
    sm.festsin start_estado,
    sm.falta end_estado,
    cast(null as number(1)) fecha_control,
    seg.fefecto fecha_inicial,
    seg.fvencim fecha_fin,
        CASE
            WHEN max_n.ntramit IS NOT NULL THEN 'SI'
            ELSE 'NO'
        END
    proceso,
    dim_tiem.TIE_ID FECHA_INICIAL_ID,
CASE WHEN seg.cramo=801 THEN 05 
     WHEN seg.cramo=802 THEN 06
     WHEN seg.cramo=804 THEN 12 END   RAMO_SUPER,
        CASE
            WHEN str.cmovres = 1 THEN str.cgarant
        END
    inciso,
    hom.CODIGOGARANTIA CODCLA,
    sm.nmovsin consec,
    'A' tipinf,
    DECODE(
        ctipcoa,
        0,
        '1',
        1,
        '2',
        8,
        '3'
    ) tipocoaseg
FROM DIM_GEOGRAFICA@BODEGA dim_geo,
     --DIM_TECNICA@BODEGA dim_tech, ***NOT USED
     DIM_INTERMEDIARIO@BODEGA inter,
     DIM_TIEMPO@BODEGA dim_tiem,
     DIM_RIESGO@BODEGA dim_riesgo,
     CESIONESREA CES, 
     CONTRATOS CON,
     HOMOLOGAPRODUC HOM,
     BENEFICIARIOS BEN,
    seguros seg,
    tomadores td,
    asegurados asg,
    per_personas pp,
    personas p,
    (
        SELECT
            cusumov,
            sseguro
        FROM
            (
                SELECT
                    DENSE_RANK() OVER(PARTITION BY
                        sseguro
                        ORDER BY
                            nmovimi
                        DESC
                    ) rk,
                    m.cusumov,
                    m.sseguro
                FROM
                    movseguro m
            )
        WHERE
            rk = 1
    ) mov,
    sin_tramita_reserva str,
    (
        SELECT
            nsinies,
            nradica,
            falta,
            ntramit
        FROM
            (
                SELECT
                    RANK() OVER(PARTITION BY
                        nsinies
                        ORDER BY
                            ntramit
                        DESC
                    ) rk,
                    m.nsinies,
                    m.nradica,
                    m.falta,
                    m.ntramit
                FROM
                    sin_tramitacion m
            )
        WHERE
            rk = 1
    ) st,
    sin_siniestro ss,
    sin_tramita_fiscal stf,
    sin_tramita_valpretension stv,
    query1 q1,
    sin_tramita_pago stp,
    sin_movsiniestro sm,
    (
        SELECT
            ntramit,
            nsinies
        FROM
            (
                SELECT
                    n.ntramit ntramit,
                    n.nsinies nsinies,
                    RANK() OVER(PARTITION BY
                        n.nsinies,
                        n.nmovtra
                        ORDER BY
                            n.ntramit
                        DESC
                    ) rk,
                    sin_tramitacion.ctramit n
                FROM
                    sin_tramita_movimiento n,
                    sin_tramitacion
                WHERE
                        sin_tramitacion.nsinies = n.nsinies
                    AND
                        n.ntramit = sin_tramitacion.ntramit
                    AND
                        n.cesttra IN (
                            0,3
                        )
                    AND
                        sin_tramitacion.ctramit = 20
            )
        WHERE
            rk = 1
    ) max_n,
    cesionesrea ce,
    (select cestsin,nsinies ,NMOVSIN from (
select RANK() over (partition by s.nsinies order by s.NMOVSIN desc)rk,s.cestsin,s.nsinies ,s.NMOVSIN
from SIN_MOVSINIESTRO s, SIN_TRAMITA_RESERVA st where s.nsinies=st.nsinies 
)where rk=1 )RAD,
(SELECT * FROM detvalores where cvalor=6 and cidioma=8)cc ,
(select nsinies,case WHEN ctramit IN (20,21) then TTRAMITAD END ttramid from (
select vv.*,dense_rank() Over(order by nmovtra desc)rk_Lvl1
from (
SELECT dense_rank() Over( partition by s.nsinies order by s.nsinies,s.ntramit desc)rk,s.*,t.ctramit,c.ctramitad as ctramitad_1 ,c.ttramitad
from sin_tramita_movimiento s
inner join SIN_TRAMITACION t on s.nsinies=t.nsinies and s.ntramit=t.ntramit
left join sin_codtramitador c on s.ctramitad=c.ctramitad
)vv where rk=1 ) bb where rk_lvl1=1) ABO,DATE1
WHERE
        seg.sseguro = td.sseguro
    AND
        asg.sperson = td.sperson
    AND
        asg.sseguro = seg.sseguro
    AND
        pp.sperson = td.sperson
    AND
        p.sperson = pp.sperson
    AND
        mov.sseguro = seg.sseguro
    AND
        str.nsinies = st.nsinies
    AND
        str.ntramit = st.ntramit
    AND
        ss.nsinies = str.nsinies
    AND
        ss.nsinies = st.nsinies 
    AND
        stf.nsinies = st.nsinies
    AND
        stf.ntramit = st.ntramit 
    AND
        q1.nsinies = ss.nsinies
    AND
        q1.ntramit = st.ntramit
    AND
        stp.nsinies = st.nsinies
    AND
        stp.sperson = td.sperson
    AND
        sm.nsinies = st.nsinies
    AND
        max_n.nsinies = st.nsinies
    AND
        stp.sidepag = ce.sidepag
    AND
        stp.nsinies = ce.nsinies
    AND
        seg.sseguro = ce.sseguro
    AND
        SUBSTR(pac_redcomercial.f_busca_padre(24,seg.cagente, NULL, f_sysdate),3,3)=dim_geo.geo_sucursal
    AND
        HOM.SPRODUC = seg.SPRODUC
    AND 
        HOM.CGARANT=STR.CGARANT      
    AND
        dim_tiem.tie_fecha=seg.fefecto
    AND
        dim_tiem.tie_fecha=seg.FVENCIM
     AND 
        dim_riesgo.RIES_RIESGO=str.cgarant
    AND 
        dim_riesgo.RIES_PRODUCTO=seg.sproduc
      AND
          RAD.nsinies=str.nsinies
      AND 
          dim_tiem.TIE_FECHA=SYSDATE
      AND 
          inter.intrm_intermediario=pp.nnumide
     AND
          CON.SCONTRA = CES.SCONTRA 
     AND 
          CON.NVERSIO = CES.NVERSIO
     AND
          CES.SSEGURO=seg.SSEGURO
     AND 
          BEN.SSEGURO=seg.SSEGURO
     AND
          pp.sperson=BEN.sperson
    AND 
          ABO.nsinies=ss.nsinies
    AND
          cc.catribu=RAD.cestsin          
    AND
          SS.FSINIES  BETWEEN DATE1.INICIAL AND DATE1.FINAL
     
GROUP BY
    ROWNUM ,
    dim_geo.geo_id,
    seg.npoliza,
    td.sperson ,
    asg.sperson ,
    CAST(NULL AS NUMBER(1)) ,
    pp.ctipide ,
    DECODE(
        ctipcoa,
        0,
        '1',
        1,
        '2',
        8,
        '3'
    ) ,
   
    mov.cusumov ,
    seg.cagente ,
    str.cgarant ,
    st.nradica ,
        CASE
            WHEN st.nradica IS NOT NULL THEN st.falta
        END,
    ss.fnotifi ,
    ss.falta,
    stf.fapertu ,
    ss.fsinies,
    ss.nsinies ,
    stv.ipreten ,
    str.icaprie ,
    stp.tobserva ,
    stp.cconpag ,
    SYSDATE ,
    sm.festsin ,
    sm.falta ,
    seg.fefecto ,
    seg.fvencim ,
        CASE
            WHEN max_n.ntramit IS NOT NULL THEN 'SI'
            ELSE 'NO'
        END,
         CASE
            WHEN str.cmovres = 1 THEN str.cgarant
        END,
    sm.nmovsin,
    'A' ,
    DECODE(
        ctipcoa,
        0,
        '1',
        1,
        '2',
        8,
        '3'
    ),      
                str.cmovres,
                ce.ctramo ,
                p.cpais,
             str.ireserva,q1.ireserva,
             HOM.CODPLA,
             str.ireserva,
             str.nmovres,
             RAD.CESTSIN,
             seg.cramo,
             hom.CODIGOGARANTIA,
             dim_tiem.tie_id,
             dim_riesgo.RIES_ID,
             CON.fconini,
             inter.intrm_id,
             ABO.ttramid,
             CC.TATRIBU
             ;