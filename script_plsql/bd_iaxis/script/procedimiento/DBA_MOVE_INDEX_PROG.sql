--------------------------------------------------------
--  DDL for Procedure DBA_MOVE_INDEX_PROG
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."DBA_MOVE_INDEX_PROG" (tablespacedst varchar2, modedebug varchar2 default 'DEBUG')  as
   CURSOR c1 (ctablespacedst varchar2) IS
      SELECT   *
        FROM   user_indexes
       WHERE   tablespace_name != UPPER (ctablespacedst);

   CURSOR c2 IS
      SELECT   *
        FROM   user_indexes
       WHERE   status = 'UNUSABLE';

   sentencia      varchar2 (500);
   errornum       number (5);
   errormiss      varchar2 (100);
   column_name    varchar2 (4000);
   existtrace     number (1);
  -- tablespacedst  varchar2 (100) := 'DEMO_IND';
  -- modedebug      varchar2 (20) := 'DEBUG';

   PROCEDURE p_trace (vstatement varchar2, vstatus number, verrorsql CLOB) AS
   BEGIN
      EXECUTE IMMEDIATE 'INSERT INTO tracelogmv VALUES (USER, SYSDATE,:1,:2,:3)'
            USING vstatement, vstatus, verrorsql;

      COMMIT;
   END p_trace;
BEGIN
   BEGIN
      SELECT   count (1)
        INTO   existtrace
        FROM   user_tables
       WHERE   table_name = 'TRACELOGMV';
   EXCEPTION
      WHEN OTHERS THEN
         existtrace := 0;
   END;

   -- crea la taula per la traça
   IF existtrace = 0 THEN
      BEGIN
         -- status
         --     0 pendent
         --     1 debug
         --     2 processat ok
         --     3 processat error
         EXECUTE IMMEDIATE 'create table TRACELOGMV (owner varchar2(100), procdate date, statement varchar2(2000),status number default 0, errorSQL clob)';
      EXCEPTION
         WHEN OTHERS THEN
            dbms_output.put_line('Error crear taula traces '||SQLERRM);
      END;
   END IF;

   --

   p_trace ('Inici proces ' || TO_CHAR (SYSDATE, 'DD/MM/YYYY HH24:MI:SS') || ' tablespace '
            || tablespacedst, 0, NULL);

   FOR q1 IN c1 (tablespacedst) LOOP
      IF q1.index_type != 'LOB' THEN
         BEGIN
            DBMS_OUTPUT.put_line ('Alter index ' || q1.index_name);
            sentencia := 'ALTER INDEX ' || q1.index_name || ' REBUILD TABLESPACE ' ||
                         tablespacedst;

            IF (UPPER (modedebug) = 'DEBUG') THEN
               DBMS_OUTPUT.put_line (' -- ' || sentencia);
            ELSE
               EXECUTE IMMEDIATE sentencia;
            END IF;

            DBMS_OUTPUT.put_line ('Validate index ' || q1.index_name);

            sentencia := 'ANALYZE INDEX ' || q1.index_name || ' VALIDATE STRUCTURE';

            IF (UPPER (modedebug) = 'DEBUG') THEN
               DBMS_OUTPUT.put_line (' -- ' || sentencia);
            ELSE
               EXECUTE IMMEDIATE sentencia;
            END IF;

            p_trace ('ALTER INDEX ' || q1.index_name || ' REBUILD TABLESPACE ' ||
                     tablespacedst, CASE WHEN UPPER (modedebug) = 'DEBUG' THEN 1 ELSE 2 END,
            NULL);

            p_trace (sentencia, CASE WHEN UPPER (modedebug) = 'DEBUG' THEN 1 ELSE 2 END, NULL);
         EXCEPTION
            WHEN OTHERS THEN
               errornum := SQLCODE;
               errormiss := SUBSTR (SQLERRM, 1, 100);

               p_trace ('Try Alter index ' || q1.index_name, 3, errornum || '-' || errormiss);

               DBMS_OUTPUT.put_line ('ERROR ' || errormiss || ' on ' || q1.index_name);
         END;
      ELSE
         BEGIN
            DBMS_OUTPUT.put_line ('Alter index LOB ' || q1.index_name);

            SELECT   column_name
              INTO   column_name
              FROM   user_lobs
             WHERE   index_name = q1.index_name;

            sentencia := 'ALTER TABLE ' || q1.table_name || ' MOVE LOB (' || column_name ||
                         ') STORE AS (TABLESPACE ' || tablespacedst || ')';

            IF (UPPER (modedebug) = 'DEBUG') THEN
               DBMS_OUTPUT.put_line (' -- ' || sentencia);
            ELSE
               EXECUTE IMMEDIATE sentencia;
            END IF;

            DBMS_OUTPUT.put_line ('Validate index ' || q1.index_name);

            sentencia := 'ANALYZE INDEX ' || q1.index_name || ' VALIDATE STRUCTURE';

            IF (UPPER (modedebug) = 'DEBUG') THEN
               DBMS_OUTPUT.put_line (' -- ' || sentencia);
            ELSE
               EXECUTE IMMEDIATE sentencia;
            END IF;

            p_trace ('ALTER TABLE ' || q1.table_name || ' MOVE LOB (' || column_name ||
                     ') STORE AS (TABLESPACE ' || tablespacedst || ')',
            CASE WHEN UPPER(modedebug) = 'DEBUG' THEN 1 ELSE 2 END, NULL);


            p_trace (sentencia, CASE WHEN UPPER (modedebug) = 'DEBUG' THEN 1 ELSE 2 END, NULL);
         EXCEPTION
            WHEN OTHERS THEN
               errornum := SQLCODE;
               errormiss := SUBSTR (SQLERRM, 1, 100);

               p_trace ('Try Alter index ' || q1.index_name, 3, errornum || '-' || errormiss);


               DBMS_OUTPUT.put_line ('ERROR ' || errormiss || ' on ' || q1.index_name);
         END;
      END IF;
   END LOOP;

   FOR q2 IN c2 LOOP
      BEGIN
         DBMS_OUTPUT.put_line ('Unusable index ' || q2.index_name);

         sentencia := 'ALTER INDEX ' || q2.index_name || ' REBUILD';

         IF (UPPER (modedebug) = 'DEBUG') THEN
            DBMS_OUTPUT.put_line (' -- ' || sentencia);
         ELSE
            EXECUTE IMMEDIATE sentencia;
         END IF;

         p_trace (sentencia, CASE WHEN UPPER (modedebug) = 'DEBUG' THEN 1 ELSE 2 END, NULL);
      EXCEPTION
         WHEN OTHERS THEN
            errornum := SQLCODE;
            errormiss := SUBSTR (SQLERRM, 1, 100);

            p_trace ('Unusable index ' || q2.index_name, 3, errornum || '-' || errormiss);


            DBMS_OUTPUT.put_line ('ERROR ' || errormiss || ' on ' || q2.index_name);
      END;
   END LOOP;


   p_trace ('Fi proces ' || TO_CHAR (SYSDATE, 'DD/MM/YYYY HH24:MI:SS') || ' tablespace ' ||
            tablespacedst, 0, NULL);
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."DBA_MOVE_INDEX_PROG" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."DBA_MOVE_INDEX_PROG" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."DBA_MOVE_INDEX_PROG" TO "PROGRAMADORESCSI";
