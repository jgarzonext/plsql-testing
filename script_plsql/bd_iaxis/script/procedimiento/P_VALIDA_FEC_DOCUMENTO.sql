--------------------------------------------------------
--  DDL for Procedure P_VALIDA_FEC_DOCUMENTO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_VALIDA_FEC_DOCUMENTO" 
IS
    EMPRESA     NUMBER;
    VERROR      NUMBER;
    VNTRAZA     NUMBER;
    VTABLADOC   VARCHAR2(255);
    VCURSOR     SYS_REFCURSOR;
    viddoc      number;
    vfarchiv    date;
    vfelimin    date;
    vfcaduci    date;
/*
    CONF-236 22/08/2016
    JAVENDANO
    Procedimiento para evaluar cu¿les documentos deben ser movidos, eliminados y/o marcados como caducos
*/
BEGIN
    VNTRAZA := 1;
    empresa := f_parinstalacion_n('EMPRESADEF');
    verror := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(empresa, 'USER_BBDD'));

    BEGIN
        VCURSOR := pac_axisgedox.F_GET_DOC_VAL(f_sysdate);
        VNTRAZA := 2;
        --Se validan los documentos en la tabla GEDOX
        LOOP
            FETCH vcursor
             INTO viddoc, vfarchiv, vfelimin, vfcaduci;

            EXIT WHEN vcursor%NOTFOUND;

            VTABLADOC := 'TABLA: GEDOX, IDDOC: ' || viddoc;
            IF VFARCHIV <= F_SYSDATE THEN
                VNTRAZA := 3;
                --Mover el archivo a otro repositorio
                --Pendiente difinir el m¿todo para mover los archivos

                VNTRAZA := 4;
                verror := pac_axisgedox.F_SET_CESTDOC(viddoc, 1);
                /*UPDATE GEDOX.GEDOX
                   SET CESTDOC = 1 --ARCHIVADO
                 WHERE IDDOC = CG.IDDOC;*/

            ELSIF VFELIMIN <= F_SYSDATE THEN
                VNTRAZA := 5;
                --Eliminar el archivo

                VNTRAZA := 6;
                verror := pac_axisgedox.F_SET_CESTDOC(viddoc, 3);
                /*UPDATE GEDOX.GEDOX
                   SET CESTDOC = 3 --ELIMINADO
                 WHERE IDDOC = CG.IDDOC;*/
            ELSIF VFCADUCI <= F_SYSDATE THEN
                VNTRAZA := 7;
                --Marcar archivo cono caduco
                verror := pac_axisgedox.F_SET_CESTDOC(viddoc, 2);
                /*UPDATE GEDOX.GEDOX
                   SET CESTDOC = 2 --CADUCADO
                 WHERE IDDOC = CG.IDDOC;*/
            END if;
        END LOOP;
    EXCEPTION WHEN OTHERS THEN
        P_TAB_ERROR(F_SYSDATE, F_USER, 'P_VALIDA_FEC_DOCUMENTO', VNTRAZA, SQLCODE || ' - ' || SQLERRM, VTABLADOC);
    END;

    BEGIN
        --Se validan los documentos en la tabla PER_DOCUMENTOS
        FOR CPD IN (SELECT *
                      FROM PER_DOCUMENTOS
                     WHERE NVL(CESTDOC, 0) = 0
                       AND FCADUCA <= F_SYSDATE
                  ) LOOP

            VNTRAZA := 8;

            VTABLADOC := 'TABLA: PER_DOCUMENTOS, SPERSON: ' || CPD.SPERSON || ', CAGENTE: ' || CPD.CAGENTE || ', IDDOCGEDOX: ' || CPD.IDDOCGEDOX;
            UPDATE PER_DOCUMENTOS
               SET CESTDOC = 2 --CADUCADO
             WHERE SPERSON = CPD.SPERSON
               AND CAGENTE = CPD.CAGENTE
               AND IDDOCGEDOX = CPD.IDDOCGEDOX;

        END LOOP;
    EXCEPTION WHEN OTHERS THEN
        P_TAB_ERROR(F_SYSDATE, F_USER, 'P_VALIDA_FEC_DOCUMENTO', VNTRAZA, SQLCODE || ' - ' || SQLERRM, VTABLADOC);
    END;

    BEGIN
        --Se validan los documentos en la tabla SIN_TRAMITA_DOCUMENTO
        FOR CSD IN (SELECT *
                      FROM SIN_TRAMITA_DOCUMENTO
                     WHERE NVL(CESTDOC, 0) = 0
                       AND FCADUCA <= F_SYSDATE
                  ) LOOP

            VNTRAZA := 9;
            VTABLADOC := 'TABLA: SIN_TRAMITA_DOCUMENTO, NSINIES: ' || CSD.NSINIES || ', NTRAMIT: ' || CSD.NTRAMIT || ', NDOCUME: ' || CSD.NDOCUME;
            UPDATE SIN_TRAMITA_DOCUMENTO
               SET CESTDOC = 2 --CADUCADO
             WHERE NSINIES = CSD.NSINIES
               AND NTRAMIT = CSD.NTRAMIT
               AND NDOCUME = CSD.NDOCUME;

        END LOOP;

    EXCEPTION WHEN OTHERS THEN
        P_TAB_ERROR(F_SYSDATE, F_USER, 'P_VALIDA_FEC_DOCUMENTO', VNTRAZA, SQLCODE || ' - ' || SQLERRM, VTABLADOC);
    END;
END;

/

  GRANT EXECUTE ON "AXIS"."P_VALIDA_FEC_DOCUMENTO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_VALIDA_FEC_DOCUMENTO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_VALIDA_FEC_DOCUMENTO" TO "PROGRAMADORESCSI";
