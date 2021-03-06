--------------------------------------------------------
--  DDL for Materialized View VDIM_CONTRAGARANTIA
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."VDIM_CONTRAGARANTIA" ("EXENTO_CONTRAGAR", "CNTRG_CODIGO", "CNTRG_PERSONA", "CNTRG_PERSONA_NOMBRE", "ESTADO_CONTRAG", "ESTADO_DESC_CONTRAG", "TIPO", "TIPO_DESC", "CLASE", "CLASE_DESC", "UBICACION", "POLIZA", "VALORGARANTIA", "VALORCERRADO", "USUARIOCUSTODIA", "FECHAEMISION", "FECHAVENCIMIENTO", "FECHARADICACION", "FECHACERRADA", "NUMERODOCUMENTO", "ESTADO", "START_ESTADO", "END_ESTADO", "FECHA_CONTROL", "FECHA_INICIAL", "FECHA_FIN", "TIPODOCUMENTO", "TIPODOCUMENTO_DESC", "FECHADOCUMENTO")
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
NVL((SELECT NVALPAR FROM PER_PARPERSONAS PARP
      WHERE PARP.CPARAM='PER_EXCENTO_CONTGAR' AND PARP.SPERSON=P.SPERSON),0) EXENTO_CONTRAGAR,
        C.SCONTGAR CNTRG_CODIGO, 
        P.NNUMIDE CNTRG_PERSONA, 
        INITCAP(PAC_ISQLFOR.F_DADES_PERSONA(P.SPERSON, 4, 5, 'POL') || ' ' || PAC_ISQLFOR.F_DADES_PERSONA(P.SPERSON, 5, 5, 'POL')) CNTRG_PERSONA_NOMBRE,
        C.CESTADO ESTADO_CONTRAG,
        FF_DESVALORFIJO(8001038, PAC_MD_COMMON.F_GET_CXTIDIOMA, C.CESTADO) ESTADO_DESC_CONTRAG,
        C.CTIPO TIPO,
        FF_DESVALORFIJO(8001035, PAC_MD_COMMON.F_GET_CXTIDIOMA, C.CTIPO) TIPO_DESC, 
        C.CCLASE CLASE,
        FF_DESVALORFIJO(8001036, PAC_MD_COMMON.F_GET_CXTIDIOMA, C.CCLASE) CLASE_DESC,
        PAC_ISQLFOR.f_domicilio(P.SPERSON,1) UBICACION,
        S.NPOLIZA POLIZA,
        C.IVALOR VALORGARANTIA,
        C.IVALOR VALORCERRADO,
        CC.TATRIBU USUARIOCUSTODIA,
        C.FALTA FECHAEMISION,
        C.FVENCIMI FECHAVENCIMIENTO,
        C.FCREA FECHARADICACION,
        ' ' FECHACERRADA,
        c.SCONTGAR NUMERODOCUMENTO,
        'ACTIVO' ESTADO,
        TO_DATE('01/01/1986') START_ESTADO,
        ' ' END_ESTADO,
        F_SYSDATE FECHA_CONTROL,
        TRUNC(F_SYSDATE, 'month') FECHA_INICIAL,
        TRUNC(LAST_DAY(SYSDATE)) FECHA_FIN,
        P.CTIPIDE TIPODOCUMENTO,
        FF_DESVALORFIJO(672, PAC_MD_COMMON.F_GET_CXTIDIOMA, P.CTIPIDE) TIPODOCUMENTO_DESC,
        ' ' FECHADOCUMENTO
    FROM CTGAR_CONTRAGARANTIA C,
         PER_CONTRAGARANTIA PC,
         PER_PERSONAS P,
         CTGAR_SEGURO CS,
         SEGUROS S,
         TOMADORES T,

         (SELECT DISTINCT  DV.TATRIBU, CC.SCONTGAR
          FROM CTGAR_CONTRAGARANTIA CC, DETVALORES DV
        WHERE DV.CVALOR=8001037 
          AND DV.CATRIBU=CC.CTENEDOR
          AND DV.CIDIOMA=8
          )CC
    WHERE C.SCONTGAR      = CS.SCONTGAR
          AND CS.SCONTGAR = PC.SCONTGAR
          AND S.SSEGURO   = CS.SSEGURO
          AND P.SPERSON   = PC.SPERSON
          AND P.SPERSON   = T.SPERSON
          --
          AND T.SSEGURO   = S.SSEGURO
          AND CC.SCONTGAR = C.SCONTGAR
          --
          AND pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'))=0
          AND NVL((SELECT NVALPAR FROM PER_PARPERSONAS PARP WHERE PARP.CPARAM='PER_EXCENTO_CONTGAR' AND PARP.SPERSON=P.SPERSON),0)=0
          AND C.NMOVIMI = (SELECT MAX(NMOVIMI)
                            FROM CTGAR_CONTRAGARANTIA
                          WHERE SCONTGAR = C.SCONTGAR);

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."VDIM_CONTRAGARANTIA"  IS 'snapshot table for snapshot CONF_DWH.VDIM_CONTRAGARANTIA';
