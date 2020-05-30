--------------------------------------------------------
--  DDL for Procedure CREA_FICHERO_LOPD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."CREA_FICHERO_LOPD" ( pa_path        IN VARCHAR2,
						pa_id_usuario  IN VARCHAR2,
						pa_fecha_acce  IN DATE,
						pa_fich_acce   IN VARCHAR2,
						pa_tip_acce    IN VARCHAR2,
						pa_id_reg_acce IN VARCHAR2
                                               )
IS
    v_path            VARCHAR2(50);
    v_cadena          VARCHAR2(1000);
    v_fichero         UTL_FILE.FILE_TYPE;
    v_nombre_fichero  VARCHAR2(30);
    v_fecha           DATE;
    v_usu             VARCHAR2(100);
    v_entorn          VARCHAR2(50);
    v_Error           VARCHAR2(500) := 0;
    v_Aux             NUMBER(2)     := 0;

    BEGIN

    --Si no se pasa parámetro con directorio, este coje el por defecto
    IF pa_path IS NULL
        THEN v_path := 'c:\interfases\out';
    ELSE
        v_path := pa_path;
    END IF;

    --si no hay fecha, cojemos la de hoy
    IF pa_fecha_acce IS NULL
        THEN v_fecha := F_SYSDATE;
    ELSE
        v_fecha := pa_fecha_acce;
    END IF;

    --> Seleccionamos el entorno en el que estamos
    SELECT GLOBAL_NAME
      INTO v_entorn
      FROM GLOBAL_NAME;

    --> Seleccionamos el USUARIO en el que estamos
    SELECT F_USER
    INTO V_USU
    FROM DUAL;


    -->Empezamos la escritura del fichero
    BEGIN

        v_nombre_fichero := 'LOPD_FILE'||TO_CHAR(F_SYSDATE, 'yyyymmdd')||'.TXT';
        BEGIN
            v_fichero := UTL_FILE.FOPEN(v_path, v_nombre_fichero,'A');
        EXCEPTION
            WHEN UTL_FILE.INVALID_PATH
                THEN v_error := 'UTL_FILE.INVALID_PATH: File location or name was invalid.';
            WHEN UTL_FILE.INVALID_MODE
                THEN v_error := 'UTL_FILE.INVALID_MODE: The open_mode string was invalid.';
            WHEN UTL_FILE.INVALID_OPERATION
                THEN v_error := 'UTL_FILE.INVALID_OPERATION: FOPEN';
            WHEN UTL_FILE.INVALID_MAXLINESIZE THEN v_error := 'UTL_FILE.INVALID_MAXLINESIZE: Specified max_linesize is too large or too small.';
            WHEN OTHERS THEN V_ERROR := -1;
        END;
            v_cadena :=  pa_id_usuario                         ||'*'||
                         TO_CHAR(v_fecha, 'DD/MM/YYYY*HH24:MI')||'*'||
                         pa_fich_acce                          ||'*'||
                         pa_tip_acce                           ||'*'||
                         pa_id_reg_acce                        ||'*S';
        BEGIN
            UTL_FILE.PUT_LINE(v_FICHERO,v_cadena);
        EXCEPTION
            WHEN UTL_FILE.INVALID_FILEHANDLE
                THEN v_error := 'UTL_FILE.INVALID_FILEHANDLE';
            WHEN UTL_FILE.INVALID_OPERATION
                THEN v_error := 'UTL_FILE.INVALID_OPERATION (PUT_LINE)';
            WHEN UTL_FILE.WRITE_ERROR
                THEN v_error := 'UTL_FILE.WRITE_ERROR (PUT LINE)';
            WHEN OTHERS
                THEN V_ERROR := -2;
        END;

        BEGIN
            UTL_FILE.FCLOSE(v_fichero);
        EXCEPTION
           WHEN UTL_FILE.WRITE_ERROR
                THEN v_error := 'UTL_FILE.WRITE_ERROR (FCLOSE)';
            WHEN OTHERS
                THEN V_ERROR := -3;
        END;

    EXCEPTION
        WHEN OTHERS THEN V_ERROR := -4;
    END;
    /*BEGIN
        INSERT INTO FICHEROS_LOPD (path, nombre_fichero, usu, entorn, error)
        VALUES (V_PATH, V_NOMBRE_FICHERO, V_USU, V_ENTORN, V_ERROR);
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
            THEN V_AUX := 1;
        WHEN OTHERS
            THEN V_AUX := 1;
    END;
    IF V_AUX <> 1 THEN
        COMMIT;
    ELSE ROLLBACK;--podria hacer commit/rollback en el alta de una póliza
    END IF;*/
END Crea_Fichero_Lopd;
 
 

/

  GRANT EXECUTE ON "AXIS"."CREA_FICHERO_LOPD" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."CREA_FICHERO_LOPD" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."CREA_FICHERO_LOPD" TO "PROGRAMADORESCSI";
