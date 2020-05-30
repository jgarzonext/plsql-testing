--------------------------------------------------------
--  DDL for Procedure P_VALIDA_FEC_DOCUMENTOS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_VALIDA_FEC_DOCUMENTOS" 
IS
    EMPRESA     NUMBER;
    VERROR      NUMBER;
    v_error     NUMBER;
    VNTRAZA     NUMBER;
    VTABLADOC   VARCHAR2(255);
    VCURSOR     SYS_REFCURSOR;
    viddoc      number;
    vfarchiv    date;
    vfelimin    date;
    vfcaduci    date;
    psproces    number;
    rutafich    VARCHAR2 (255);
    rutafichout    VARCHAR2 (255);
    vfile   VARCHAR2 (255);  
    fitxer       UTL_FILE.file_type;
    nproces    NUMBER;
    
/*
    CONF-236 22/08/2016
    JAVENDANO
    Procedimiento para evaluar cuáles documentos deben ser movidos, eliminados y/o marcados como caducos
*/
BEGIN
    VNTRAZA := 1;
    empresa := f_parinstalacion_n('EMPRESADEF');
    verror := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(empresa, 'USER_BBDD'));

    BEGIN
        rutafich := F_Parinstalacion_T('GEDOX_DIR');
        rutafichout := F_Parinstalacion_T('PATCH_GEDOX_DOCU');
                
        VCURSOR := pac_axisgedox.F_GET_DOC_VAL(to_date(f_sysdate,'dd/mm/yyyy'));
        VNTRAZA := 2;
        --Se validan los documentos en la tabla GEDOX
        LOOP
            FETCH vcursor
             INTO viddoc, vfarchiv, vfelimin, vfcaduci;

            EXIT WHEN vcursor%NOTFOUND;

            VTABLADOC := 'TABLA: GEDOX, IDDOC: ' || viddoc;
            IF VFARCHIV <= to_date(f_sysdate,'dd/mm/yyyy') THEN
                VNTRAZA := 3;
                verror := pac_axisgedox.F_SET_CESTDOC(viddoc, 1);
                SELECT pac_axisgedox.f_get_filedoc(viddoc) INTO vfile FROM DUAL;
                utl_file.fcopy('GEDOXTEMPORAL',vfile,'UTLDIR', vfile); 
                --utl_file.fremove('GEDOXTEMPORAL',vfile); 
                --utl_file.fremove(location => 'GEDOXTEMPORAL', filename => 'cargaaon.log');
            ELSIF VFELIMIN <= to_date(f_sysdate,'dd/mm/yyyy') THEN
                VNTRAZA := 5;
                --Eliminar el archivo
                VNTRAZA := 6;
                verror := pac_axisgedox.F_SET_CESTDOC(viddoc, 3);
                SELECT pac_axisgedox.f_get_filedoc(viddoc) INTO vfile FROM DUAL;
                UTL_FILE.fremove ('UTLDIR',vfile);
            ELSIF VFCADUCI <= to_date(f_sysdate,'dd/mm/yyyy') THEN
                VNTRAZA := 7;
                verror := pac_axisgedox.F_SET_CESTDOC(viddoc, 2);
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

  GRANT EXECUTE ON "AXIS"."P_VALIDA_FEC_DOCUMENTOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_VALIDA_FEC_DOCUMENTOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_VALIDA_FEC_DOCUMENTOS" TO "PROGRAMADORESCSI";
