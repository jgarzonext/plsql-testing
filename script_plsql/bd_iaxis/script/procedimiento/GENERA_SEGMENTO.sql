--------------------------------------------------------
--  DDL for Procedure GENERA_SEGMENTO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."GENERA_SEGMENTO" (mens IN VARCHAR2,segm IN VARCHAR2) IS
  CURSOR fmts is
   SELECT longitud, constante,
        nombre, UPPER(funcion) funcion, mascara
     FROM formatos_segmento
    WHERE mensaje  = mens
      AND segmento = segm
   ORDER BY orden;

   ejec_ori2 VARCHAR2(250):='pk_autom.retorno := TO_CHAR(columna, msk_mascara)';
   ejec_orig VARCHAR2(250):='pk_autom.retorno := columna';
   ejecucion VARCHAR2(250);
   lmask     NUMBER;
   mask      VARCHAR2(30);

   guiones   NUMBER := 0;

   mask_ent  VARCHAR2(30);
   objetos   NUMBER;
   posicion  NUMBER;
   nposicion NUMBER;
   largo     NUMBER;
   norden    NUMBER;
   campo     VARCHAR2(30);
   registro  VARCHAR2(30);
   paquete   VARCHAR2(30);

   linea     VARCHAR2(32000);
   completos NUMBER;
   resto     NUMBER;

   nerror    NUMBER;
BEGIN
IF NOT pk_autom.EOF THEN
   FOR fmt IN fmts
   LOOP
     IF fmt.mascara IS NOT NULL THEN
        ejecucion := ejec_ori2;
     ELSE
        ejecucion := ejec_orig;
     END IF;
     lmask := LENGTH(fmt.mascara);

     IF fmt.constante IS NOT NULL THEN
        linea := linea || rpad(fmt.constante, fmt.longitud);
     ELSE
        pk_autom.retorno := ' ';
        IF fmt.funcion = 'BLANCOS'  THEN pk_autom.retorno := ' ';
        ELSE
          IF fmt.funcion IS NOT NULL THEN
             ejecucion := REPLACE(ejecucion, 'columna',fmt.funcion);
             IF fmt.mascara IS NOT NULL THEN
                fmt.mascara := ''''||fmt.mascara||'''';
                ejecucion := REPLACE(ejecucion, 'msk_mascara',fmt.mascara);
             ELSE
                ejecucion := ejec_orig;
                ejecucion := REPLACE(ejecucion, 'columna',fmt.funcion);
             END IF;
             BEGIN
                dyn_plsql(ejecucion,nerror);
             EXCEPTION
                WHEN OTHERS THEN
                     ejecucion := ejec_ori2;
                     ejecucion := REPLACE(ejecucion, 'columna',fmt.funcion);
                     dyn_plsql(ejecucion,nerror);
             END;
             pk_autom.retorno := LTRIM(RTRIM(pk_autom.retorno));
             IF mask_ent LIKE '%.%' THEN
               dbms_session.set_nls('nls_numeric_characters', '''.,''');
               pk_autom.retorno := TO_CHAR( TO_NUMBER(pk_autom.retorno) *
                          POWER(10,LENGTH(SUBSTR(mask_ent, INSTR(mask_ent, '.')+1))));
               pk_autom.retorno := LPAD(pk_autom.retorno, fmt.longitud, '0');
             END IF;
          END IF;
		END IF;
        IF pk_autom.retorno IS NULL THEN
             pk_autom.retorno := ' ';
        END IF;
        BEGIN
             guiones := 0;
             FOR i IN 1..LENGTH(pk_autom.retorno)
             LOOP
                IF SUBSTR(pk_autom.retorno, i, 1) = '_' THEN
                     guiones := guiones + 1;
                ELSE
                      EXIT;
                END IF;
             END LOOP;
             pk_autom.retorno := Lpad(' ', guiones) || LTRIM(pk_autom.retorno, '_');
             linea := linea || rpad(NVL(pk_autom.retorno,' '), fmt.longitud);
        END;
     END IF;
     pk_autom.long_grabada := pk_autom.long_grabada + fmt.longitud;
   END LOOP;
   IF segm IS NOT NULL THEN
      completos := FLOOR(LENGTH(linea)/250);
      resto     := MOD(LENGTH(linea),250);
      if resto = 0 then
         completos := completos - 1;
      end if;
      IF completos > 0 THEN
         FOR c IN 1..completos
         LOOP
            utl_file.PUT_LINE(pk_autom.salida, SUBSTR(linea, (c-1)*250+1, 250)||'-');
         END LOOP;
      END IF;
      utl_file.PUT_LINE(pk_autom.salida, SUBSTR(linea, completos*250+1));
      pk_autom.long_grabada := 0;
      pk_autom.segmentos := pk_autom.segmentos + 1;
      linea := '';
   END IF;
END IF;
pk_autom.sub_segmentos := pk_autom.sub_segmentos + 1;
EXCEPTION
  when UTL_FILE.INVALID_PATH THEN
    dbms_output.put_line('(Escribe retorno) invalid path');
    raise;
  when UTL_FILE.INVALID_MODE  THEN
    dbms_output.put_line('(Escribe retorno) invalid mode');
    raise;
  when UTL_FILE.INVALID_OPERATION  THEN
    dbms_output.put_line('(Escribe retorno) invalid operation');
    raise;
  when UTL_FILE.INVALID_FILEHANDLE   THEN
    dbms_output.put_line('(Escribe retorno) invalid file Handle');
    raise;
  when UTL_FILE.WRITE_ERROR   THEN
    dbms_output.put_line('(Escribe retorno) Write Error');
    raise;
  WHEN OTHERS THEN
    dbms_output.put_line('(Escribe retorno)' ||sqlerrm);
    pk_autom.actualizar := FALSE;
END;

 
 

/

  GRANT EXECUTE ON "AXIS"."GENERA_SEGMENTO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."GENERA_SEGMENTO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."GENERA_SEGMENTO" TO "PROGRAMADORESCSI";
