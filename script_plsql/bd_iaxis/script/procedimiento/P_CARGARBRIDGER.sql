CREATE OR REPLACE PROCEDURE P_CARGARBRIDGER IS

  VNOMBRECARGARIA_CMLO VARCHAR2(500);
  VCARGARIA_CMLO       UTL_FILE.FILE_TYPE;
  VLINEA               VARCHAR2(500);
  RUTAFICH             VARCHAR2(1000);
  VCOUNT               NUMBER := 0;
  VSINTERF             INT_MENSAJES.SINTERF%TYPE;
  VMSG                 VARCHAR2(3000);
  VMSGOUT              VARCHAR2(2000);

  VOBJECTNAME VARCHAR2(500) := 'cargarBridger';

 CURSOR CUR_TOMA_ASEG IS(
 SELECT DISTINCT P.CTIPPER,
       P.SPERSON,
       CASE
         WHEN P.CTIPPER = 1 THEN
          NVL((SELECT MAX(PD.CDOMICI)
                FROM PER_DIRECCIONES PD
               WHERE PD.CTIPDIR = 9
                 AND PD.SPERSON = P.SPERSON),
              (SELECT MAX(PD.CDOMICI)
                 FROM PER_DIRECCIONES PD
                WHERE PD.SPERSON = P.SPERSON))
         WHEN P.CTIPPER = 2 THEN
          NVL((SELECT MAX(PD.CDOMICI)
                FROM PER_DIRECCIONES PD
               WHERE PD.CTIPDIR = 10
                 AND PD.SPERSON = P.SPERSON),
              (SELECT MAX(PD.CDOMICI)
                 FROM PER_DIRECCIONES PD
                WHERE PD.SPERSON = P.SPERSON))
       END CDOMICI,
       TB2.CSITUAC
  FROM PER_PERSONAS P,
       (SELECT TB1.SPERSON, MAX(TB1.FVENCIM), TB1.CSITUAC
          FROM (SELECT T.SPERSON, MAX(S.FVENCIM) FVENCIM, S.CSITUAC
                  FROM TOMADORES T, SEGUROS S
                 WHERE T.SSEGURO = S.SSEGURO
                   AND S.CRETENI = 0
                   AND S.CSITUAC = 0
                   AND S.FVENCIM >= F_SYSDATE
                 GROUP BY T.SPERSON, S.CSITUAC
                UNION
                SELECT A.SPERSON, MAX(S.FVENCIM) FVENCIM, S.CSITUAC
                  FROM ASEGURADOS A, SEGUROS S
                 WHERE A.SSEGURO = S.SSEGURO
                   AND S.CRETENI = 0
                   AND S.CSITUAC = 0
                   AND S.FVENCIM >= F_SYSDATE
                 GROUP BY A.SPERSON, S.CSITUAC) TB1
         GROUP BY TB1.SPERSON, TB1.CSITUAC) TB2
 WHERE P.SPERSON = TB2.SPERSON
   AND TB2.SPERSON NOT IN
       (SELECT PPR.SPERSON
          FROM PER_PERSONAS_REL PPR
         WHERE PPR.CTIPPER_REL IN (0, 4)
           AND PPR.SPERSON = TB2.SPERSON
        UNION
        SELECT PPR.SPERSON_REL SPERSON
          FROM PER_PERSONAS_REL PPR
         WHERE PPR.CTIPPER_REL IN (0, 4)
           AND PPR.SPERSON_REL = TB2.SPERSON));

  CURSOR CUR_TOMADORREL IS(
  SELECT DISTINCT P.CTIPPER,
         P.SPERSON,
         PPR.CTIPPER_REL,
       CASE
         WHEN P.CTIPPER = 1 THEN
          NVL((SELECT MAX(PD.CDOMICI)
                FROM PER_DIRECCIONES PD
               WHERE PD.CTIPDIR = 9
                 AND PD.SPERSON = P.SPERSON),
              (SELECT MAX(PD.CDOMICI)
                 FROM PER_DIRECCIONES PD
                WHERE PD.SPERSON = P.SPERSON))
         WHEN P.CTIPPER = 2 THEN
          NVL((SELECT MAX(PD.CDOMICI)
                FROM PER_DIRECCIONES PD
               WHERE PD.CTIPDIR = 10
                 AND PD.SPERSON = P.SPERSON),
              (SELECT MAX(PD.CDOMICI)
                 FROM PER_DIRECCIONES PD
                WHERE PD.SPERSON = P.SPERSON))
       END CDOMICI,
       TB2.CSITUAC
  FROM PER_PERSONAS P,
  PER_PERSONAS_REL PPR,
       (SELECT TB1.SPERSON, MAX(TB1.FVENCIM), TB1.CSITUAC
          FROM (SELECT T.SPERSON, MAX(S.FVENCIM) FVENCIM, S.CSITUAC
                  FROM TOMADORES T, SEGUROS S
                 WHERE T.SSEGURO = S.SSEGURO
                   AND S.CRETENI = 0
                   AND S.CSITUAC = 0
                   AND S.FVENCIM >= F_SYSDATE
                 GROUP BY T.SPERSON, S.CSITUAC
                UNION
                SELECT A.SPERSON, MAX(S.FVENCIM) FVENCIM, S.CSITUAC
                  FROM ASEGURADOS A, SEGUROS S
                 WHERE A.SSEGURO = S.SSEGURO
                   AND S.CRETENI = 0
                   AND S.CSITUAC = 0
                   AND S.FVENCIM >= F_SYSDATE
                 GROUP BY A.SPERSON, S.CSITUAC) TB1
         GROUP BY TB1.SPERSON, TB1.CSITUAC) TB2
 WHERE (PPR.SPERSON = TB2.SPERSON OR PPR.SPERSON_REL = TB2.SPERSON)
   AND PPR.CTIPPER_REL IN (0,4)
   AND P.SPERSON = TB2.SPERSON
   AND TB2.SPERSON IN
       (SELECT PPR.SPERSON
          FROM PER_PERSONAS_REL PPR
         WHERE PPR.CTIPPER_REL IN (0, 4)
           AND PPR.SPERSON = TB2.SPERSON
        UNION
        SELECT PPR.SPERSON_REL SPERSON
          FROM PER_PERSONAS_REL PPR
         WHERE PPR.CTIPPER_REL IN (0, 4)
           AND PPR.SPERSON_REL = TB2.SPERSON));


BEGIN
  DBMS_OUTPUT.PUT_LINE('Inicio Batch para Bridger :' ||
                       TO_CHAR(F_SYSDATE, 'yyyymmdd_hh24_mi_ss'));
  DELETE ITC_IA_CMLO_BRIDGER;

  SELECT COUNT(*) INTO VCOUNT FROM ITC_IA_CMLO_BRIDGER;
  DBMS_OUTPUT.PUT_LINE('Inicio Batch para Bridger : count :' || VCOUNT);

  RUTAFICH := PAC_MD_COMMON.F_GET_PARINSTALACION_T('TRANSFERENCIAS');

  VNOMBRECARGARIA_CMLO := 'ITC_IA_CMLO' ||
                          TO_CHAR(F_SYSDATE, 'yyyymmdd_hh24_mi_ss') ||
                          '.csv';
  VCARGARIA_CMLO       := UTL_FILE.FOPEN_NCHAR(RUTAFICH,
                                               VNOMBRECARGARIA_CMLO,
                                               'w');
  VLINEA               := 'ESTADO|IDENTIFICACION|NOMBRE|TIPO|TIPO_PERSONA|DIRECCION|CIUDAD|DEPARTAMENTO|ZIPCODE|PAIS|UNIQUE_IDENTIFIER';

  UTL_FILE.PUT_LINE_NCHAR(VCARGARIA_CMLO, VLINEA);

 FOR I IN CUR_TOMA_ASEG LOOP
    -- FOR TOMADOR Y ASEGURADOS
    FOR TOMASEG IN (SELECT DISTINCT DECODE(NVL(I.CSITUAC, 0),
                                           0,
                                           'ACTIVO',
                                           'INACTIVO') ESTADO,
                                    DECODE(P.CTIPIDE,
                                           37,
                                           SUBSTR(P.NNUMIDE,
                                                  1,
                                                  LENGTH(P.NNUMIDE) - 1),
                                           P.NNUMIDE) IDENTIFICACION,
                                    NVL(TRIM(DECODE(P.CTIPPER,
                                                    1,
                                                    NVL(PERDET.TAPELLI1, ''),
                                                    2,
                                                    NVL(PERDET.TAPELLI1, ''),
                                                    '') ||
                                             RTRIM(NVL(' ' ||
                                                       PERDET.TAPELLI2,
                                                       '')) ||
                                             RTRIM(NVL(' ' ||
                                                       PERDET.TNOMBRE1,
                                                       '')) ||
                                             NVL(' ' || PERDET.TNOMBRE2, '')),
                                        PERDET.TNOMBRE) NOMBRE,
                                    PAC_ISQLFOR_CONF.F_ROLES_PERSONA_BRIDGER(P.SPERSON,
                                                                             NULL) TIPO,
                                    DECODE(P.CTIPPER, 1, 'N', 2, 'J') TIPO_PERSONA,
                                    REPLACE(PD.TDOMICI, '''', '') DIRECCION,
                                    INITCAP((SELECT TPOBLAC
                                              FROM POBLACIONES
                                             WHERE (CPROVIN, CPOBLAC) =
                                                   (SELECT CPROVIN, CPOBLAC
                                                      FROM PER_DIRECCIONES
                                                     WHERE SPERSON =
                                                           P.SPERSON
                                                       AND CDOMICI =
                                                           PD.CDOMICI))) CIUDAD,
                                    PAC_ISQLFOR.F_PROVINCIA(PD.SPERSON,
                                                            PD.CDOMICI) DEPARTAMENTO,
                                    PD.CPOSTAL ZIPCODE,
                                    PAC_ISQLFOR.F_DIRPAIS(PD.SPERSON,
                                                          PD.CDOMICI,
                                                          8) PAIS,
                                    NVL((SELECT PP.TVALPAR
                                          FROM PER_PARPERSONAS PP
                                         WHERE PP.CPARAM =
                                               'UNIQUE_IDENTIFIER'
                                           AND PP.SPERSON = P.SPERSON),
                                        '') UNIQUE_IDENTIFIER
                      FROM PER_PERSONAS    P,
                           PER_DIRECCIONES PD,
                           PER_DETPER      PERDET
                     WHERE PD.SPERSON = P.SPERSON
                       AND PERDET.SPERSON = P.SPERSON
                       AND PD.CDOMICI = I.CDOMICI
                       AND P.SPERSON = I.SPERSON) LOOP
      INSERT INTO ITC_IA_CMLO_BRIDGER
        (SEQ_ID,
         ESTADO,
         IDENTIFICACION,
         NOMBRE,
         TIPO,
         TIPO_PERSONA,
         DIRECCION,
         CIUDAD,
         DEPARTAMENTO,
         ZIPCODE,
         PAIS,
         UNIQUE_IDENTIFIER)
      VALUES
        (ITC_IA_CMLO_BRIDGER_SEQ.NEXTVAL,
         TOMASEG.ESTADO,
         TOMASEG.IDENTIFICACION,
         TOMASEG.NOMBRE,
         TOMASEG.TIPO,
         TOMASEG.TIPO_PERSONA,
         TOMASEG.DIRECCION,
         TOMASEG.CIUDAD,
         TOMASEG.DEPARTAMENTO,
         TOMASEG.ZIPCODE,
         TOMASEG.PAIS,
         TOMASEG.UNIQUE_IDENTIFIER);
      COMMIT;
    END LOOP;
  END LOOP;

  FOR I IN CUR_TOMADORREL LOOP
    -- FOR TOMADOR Y ASEGURADOS QUE TINES RELATION
    FOR TOMADORREL IN (SELECT DISTINCT DECODE(NVL(I.CSITUAC, 0),
                                              0,
                                              'ACTIVO',
                                              'INACTIVO') ESTADO,
                                       DECODE(P.CTIPIDE,
                                              37,
                                              SUBSTR(P.NNUMIDE,
                                                     1,
                                                     LENGTH(P.NNUMIDE) - 1),
                                              P.NNUMIDE) IDENTIFICACION,
                                       NVL(TRIM(DECODE(P.CTIPPER,
                                                       1,
                                                       NVL(PERDET.TAPELLI1,
                                                           ''),
                                                       2,
                                                       NVL(PERDET.TAPELLI1,
                                                           ''),
                                                       '') ||
                                                RTRIM(NVL(' ' ||
                                                          PERDET.TAPELLI2,
                                                          '')) ||
                                                RTRIM(NVL(' ' ||
                                                          PERDET.TNOMBRE1,
                                                          '')) ||
                                                NVL(' ' || PERDET.TNOMBRE2,
                                                    '')),
                                           PERDET.TNOMBRE) NOMBRE,
                                       PAC_ISQLFOR_CONF.F_ROLES_PERSONA_BRIDGER(P.SPERSON,
                                                                                I.CTIPPER_REL) TIPO,
                                       DECODE(P.CTIPPER, 1, 'N', 2, 'J') TIPO_PERSONA,
                                       REPLACE(PD.TDOMICI, '''', '') DIRECCION,
                                       INITCAP((SELECT TPOBLAC
                                                 FROM POBLACIONES
                                                WHERE (CPROVIN, CPOBLAC) =
                                                      (SELECT CPROVIN,
                                                              CPOBLAC
                                                         FROM PER_DIRECCIONES
                                                        WHERE SPERSON =
                                                              P.SPERSON
                                                          AND CDOMICI =
                                                              PD.CDOMICI))) CIUDAD,
                                       PAC_ISQLFOR.F_PROVINCIA(PD.SPERSON,
                                                               PD.CDOMICI) DEPARTAMENTO,
                                       PD.CPOSTAL ZIPCODE,
                                       PAC_ISQLFOR.F_DIRPAIS(PD.SPERSON,
                                                             PD.CDOMICI,
                                                             8) PAIS,
                                       NVL((SELECT PP.TVALPAR
                                             FROM PER_PARPERSONAS PP
                                            WHERE PP.CPARAM =
                                                  'UNIQUE_IDENTIFIER'
                                              AND PP.SPERSON = P.SPERSON),
                                           '') UNIQUE_IDENTIFIER
                         FROM PER_PERSONAS    P,
                              PER_DIRECCIONES PD,
                              PER_DETPER      PERDET
                        WHERE PD.SPERSON = P.SPERSON
                          AND PERDET.SPERSON = P.SPERSON
                          AND PD.CDOMICI = I.CDOMICI
                          AND P.SPERSON = I.SPERSON) LOOP
    
      INSERT INTO ITC_IA_CMLO_BRIDGER
        (SEQ_ID,
         ESTADO,
         IDENTIFICACION,
         NOMBRE,
         TIPO,
         TIPO_PERSONA,
         DIRECCION,
         CIUDAD,
         DEPARTAMENTO,
         ZIPCODE,
         PAIS,
         UNIQUE_IDENTIFIER)
      VALUES
        (ITC_IA_CMLO_BRIDGER_SEQ.NEXTVAL,
         TOMADORREL.ESTADO,
         TOMADORREL.IDENTIFICACION,
         TOMADORREL.NOMBRE,
         TOMADORREL.TIPO,
         TOMADORREL.TIPO_PERSONA,
         TOMADORREL.DIRECCION,
         TOMADORREL.CIUDAD,
         TOMADORREL.DEPARTAMENTO,
         TOMADORREL.ZIPCODE,
         TOMADORREL.PAIS,
         TOMADORREL.UNIQUE_IDENTIFIER);
      COMMIT;
    END LOOP;
  END LOOP;
  
  FOR RECORDIA_CMLO_BRIDGER IN (SELECT DISTINCT IICB.ESTADO,
                                                IICB.IDENTIFICACION,
                                                TRIM(REGEXP_REPLACE(UPPER(UTL_RAW.CAST_TO_VARCHAR2(NLSSORT(IICB.NOMBRE,
                                                                                                           'nls_sort=binary_ai'))),
                                                                    '[^0-9A-Za-z]',
                                                                    ' ')) NOMBRE,
                                                TRIM(REGEXP_REPLACE(UPPER(UTL_RAW.CAST_TO_VARCHAR2(NLSSORT(IICB.TIPO,
                                                                                                           'nls_sort=binary_ai'))),
                                                                    '[^0-9A-Za-z]',
                                                                    ' ')) TIPO,
                                                UPPER(IICB.TIPO_PERSONA) TIPO_PERSONA,
                                                TRIM(REGEXP_REPLACE(UPPER(UTL_RAW.CAST_TO_VARCHAR2(NLSSORT(IICB.DIRECCION,
                                                                                                           'nls_sort=binary_ai'))),
                                                                    '[^0-9A-Za-z]',
                                                                    ' ')) DIRECCION,
                                                TRIM(REGEXP_REPLACE(UPPER(UTL_RAW.CAST_TO_VARCHAR2(NLSSORT(IICB.CIUDAD,
                                                                                                           'nls_sort=binary_ai'))),
                                                                    '[^0-9A-Za-z]',
                                                                    ' ')) CIUDAD,
                                                TRIM(REGEXP_REPLACE(UPPER(UTL_RAW.CAST_TO_VARCHAR2(NLSSORT(IICB.DEPARTAMENTO,
                                                                                                           'nls_sort=binary_ai'))),
                                                                    '[^0-9A-Za-z]',
                                                                    ' ')) DEPARTAMENTO,
                                                REGEXP_REPLACE(IICB.ZIPCODE,
                                                               '[^0-9A-Za-z]',
                                                               '') ZIPCODE,
                                                TRIM(REGEXP_REPLACE(UPPER(UTL_RAW.CAST_TO_VARCHAR2(NLSSORT(IICB.PAIS,
                                                                                                           'nls_sort=binary_ai'))),
                                                                    '[^0-9A-Za-z]',
                                                                    ' ')) PAIS,
                                                TRIM(REGEXP_REPLACE(UPPER(UTL_RAW.CAST_TO_VARCHAR2(NLSSORT(IICB.UNIQUE_IDENTIFIER,
                                                                                                           'nls_sort=binary_ai'))),
                                                                    '[^0-9A-Za-z]',
                                                                    ' ')) UNIQUE_IDENTIFIER
                                  FROM ITC_IA_CMLO_BRIDGER IICB
                                 ORDER BY IICB.IDENTIFICACION) LOOP
  
    VLINEA := RECORDIA_CMLO_BRIDGER.ESTADO || '|' ||
              RECORDIA_CMLO_BRIDGER.IDENTIFICACION || '|' ||
              RECORDIA_CMLO_BRIDGER.NOMBRE || '|' ||
              RECORDIA_CMLO_BRIDGER.TIPO || '|' ||
              RECORDIA_CMLO_BRIDGER.TIPO_PERSONA || '|' ||
              RECORDIA_CMLO_BRIDGER.DIRECCION || '|' ||
              RECORDIA_CMLO_BRIDGER.CIUDAD || '|' ||
              RECORDIA_CMLO_BRIDGER.DEPARTAMENTO || '|' ||
              RECORDIA_CMLO_BRIDGER.ZIPCODE || '|' ||
              RECORDIA_CMLO_BRIDGER.PAIS || '|' ||
              RECORDIA_CMLO_BRIDGER.UNIQUE_IDENTIFIER;
    UTL_FILE.PUT_LINE_NCHAR(VCARGARIA_CMLO, VLINEA);
  END LOOP;

  IF UTL_FILE.IS_OPEN(VCARGARIA_CMLO) THEN
    UTL_FILE.FCLOSE(VCARGARIA_CMLO);
  END IF;

  SELECT COUNT(*) INTO VCOUNT FROM ITC_IA_CMLO_BRIDGER;
  DBMS_OUTPUT.PUT_LINE('Completo Batch para Bridger : count :' || VCOUNT);

  IF VCOUNT > 0 THEN
    PAC_INT_ONLINE.P_INICIALIZAR_SINTERF;
    VSINTERF := PAC_INT_ONLINE.F_OBTENER_SINTERF;
    VMSG     := '<?xml version="1.0"?>
                 <bridgerService_in>
                    <sinterf>' || VSINTERF ||
                '</sinterf>
                    <tipoorigen>CSV</tipoorigen>
                    <tipodestino>CSV</tipodestino>
                    <ficheroorigen>' ||
                PAC_MD_COMMON.F_GET_PARINSTALACION_T('TRANSFERENCIAS_C') || '/' ||
                VNOMBRECARGARIA_CMLO || '</ficheroorigen>     
                    <fichernomber>' || VNOMBRECARGARIA_CMLO ||
                '</fichernomber>           
                 </bridgerService_in>';
  
    INSERT INTO INT_MENSAJES
      (SINTERF, CINTERF, FINTERF, TMENOUT, TMENIN)
    VALUES
      (VSINTERF, 'B001', F_SYSDATE, VMSG, NULL);
    COMMIT;
    PAC_INT_ONLINE.PETICION_HOST(24, 'B001', VMSG, VMSGOUT);
  END IF;

EXCEPTION
  WHEN OTHERS THEN
    P_TAB_ERROR(F_SYSDATE,
                F_USER,
                VOBJECTNAME,
                1,
                'P_CARGARBRIDGER',
                SQLERRM);
    ROLLBACK;
END P_CARGARBRIDGER;
/

grant execute on AXIS.P_CARGARBRIDGER to AXIS00; 
 

-- Utilizar para crear synonym
create or replace synonym AXIS.P_CARGARBRIDGER for AXIS00.P_CARGARBRIDGER;