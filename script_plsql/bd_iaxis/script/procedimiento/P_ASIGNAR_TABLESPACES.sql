--------------------------------------------------------
--  DDL for Procedure P_ASIGNAR_TABLESPACES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_ASIGNAR_TABLESPACES" IS

        cadena   VARCHAR2(2000);

       /* TABLAS e INDICES que por tamaño han de estar en el tablespace mediano */
        CURSOR datos_medio IS
        SELECT 'alter table '||segment_name||' move tablespace MDMTSD01' sentencia
          FROM user_segments
         WHERE tablespace_name <> 'MDMTSD01'
           AND segment_type = 'TABLE'
         GROUP BY segment_name
        HAVING SUM(bytes)/(1024*1024) BETWEEN  10 AND 49;

        CURSOR indices_medio IS
        SELECT 'alter index '||segment_name||' rebuild tablespace MDMTSI01' sentencia
          FROM user_segments
         WHERE tablespace_name <> 'MDMTSI01'
           AND segment_type = 'INDEX'
         GROUP BY segment_name
        HAVING SUM(bytes)/(1024*1024) BETWEEN  10 AND 49;

        /* TABLAS e INDICES que por tamaño han de estar en el tablespace pequeño */
        CURSOR datos_pequeño IS
        SELECT 'alter table '||segment_name||' move tablespace SMATSD01' sentencia
          FROM user_segments
         WHERE tablespace_name <> 'SMATSD01'
           AND segment_type = 'TABLE'
         GROUP BY segment_name
        HAVING SUM(bytes)/(1024*1024) < 10;

        CURSOR indices_pequeño IS
        SELECT 'alter index '||segment_name||' rebuild tablespace SMATSI01' sentencia
          FROM user_segments
         WHERE tablespace_name <> 'SMATSI01'
           AND segment_type = 'INDEX'
         GROUP BY segment_name
        HAVING SUM(bytes)/(1024*1024) < 10;

        /* TABLAS e INDICES que por tamaño han de estar el en tablespace grande */
        CURSOR datos_grande IS
        SELECT 'alter table '||segment_name||' move tablespace BIGTSD01' sentencia
          FROM user_segments
         WHERE tablespace_name <> 'BIGTSD01'
           AND segment_type = 'TABLE'
         GROUP BY segment_name
        HAVING SUM(bytes)/(1024*1024) > 50;

        CURSOR indices_grande IS
        SELECT 'alter index  '||segment_name||' rebuild tablespace BIGTSI01' sentencia
          FROM user_segments
         WHERE tablespace_name <> 'BIGTSI01'
           AND segment_type = 'INDEX'
         GROUP BY segment_name
        HAVING SUM(bytes)/(1024*1024) > 50;

BEGIN
     -------------------------------------------------------------------------------
     FOR rec IN datos_medio LOOP

          BEGIN

            cadena := rec.sentencia;

            EXECUTE IMMEDIATE cadena;

         EXCEPTION
           WHEN OTHERS THEN
              P_Control_Error('tablespaces', 'datos_medio', cadena||' - '||SQLERRM);
         END;
     END LOOP;
     --------------------------------------------------------------------------------
     FOR rec IN indices_medio LOOP

          BEGIN

            cadena := rec.sentencia;

            EXECUTE IMMEDIATE cadena;

         EXCEPTION
           WHEN OTHERS THEN
              P_Control_Error('tablespaces', 'indices_medio', cadena||' - '||SQLERRM);
         END;
     END LOOP;
     --------------------------------------------------------------------------------
     FOR rec IN datos_pequeño LOOP

          BEGIN

            cadena := rec.sentencia;

            EXECUTE IMMEDIATE cadena;

         EXCEPTION
           WHEN OTHERS THEN
              P_Control_Error('tablespaces', 'datos_pequeño', cadena||' - '||SQLERRM);
         END;
     END LOOP;
     -------------------------------------------------------------------------------
     FOR rec IN indices_pequeño LOOP

          BEGIN

            cadena := rec.sentencia;

            EXECUTE IMMEDIATE cadena;

         EXCEPTION
           WHEN OTHERS THEN
              P_Control_Error('tablespaces', 'indices_pequeño', cadena||' - '||SQLERRM);
         END;
     END LOOP;
     ----------------------------------------------------------------------------------
     FOR rec IN datos_grande LOOP

          BEGIN

            cadena := rec.sentencia;

            EXECUTE IMMEDIATE cadena;

         EXCEPTION
           WHEN OTHERS THEN
              P_Control_Error('tablespaces', 'datos_grande', cadena||' - '||SQLERRM);
         END;
     END LOOP;
     ----------------------------------------------------------------------------------
     FOR rec IN indices_grande LOOP

          BEGIN

            cadena := rec.sentencia;

            EXECUTE IMMEDIATE cadena;

         EXCEPTION
           WHEN OTHERS THEN
              P_Control_Error('tablespaces', 'indices_grande', cadena||' - '||SQLERRM);
         END;
     END LOOP;
     ----------------------------------------------------------------------------------


END P_Asignar_Tablespaces;
 
 

/

  GRANT EXECUTE ON "AXIS"."P_ASIGNAR_TABLESPACES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_ASIGNAR_TABLESPACES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_ASIGNAR_TABLESPACES" TO "PROGRAMADORESCSI";
