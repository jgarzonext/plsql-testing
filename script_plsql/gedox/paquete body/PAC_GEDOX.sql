--------------------------------------------------------
--  DDL for Package Body PAC_GEDOX
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "GEDOX"."PAC_GEDOX" IS
   FUNCTION f_verdoc(piddoc IN NUMBER, pfichero OUT VARCHAR2)
      RETURN NUMBER IS
      sesion         VARCHAR2(100);
      b              BLOB;
      photo          BLOB DEFAULT EMPTY_BLOB();
      rawdata        RAW(123);
      i              NUMBER;
      direc          VARCHAR2(100);
      nomfichero     VARCHAR2(100);
      tipo           NUMBER;
      separados      VARCHAR2(10);
      dirtempdb      VARCHAR2(100);
      dirtempias     VARCHAR2(100);
      dirfiles       VARCHAR2(100);
      usuias         VARCHAR2(100);
      usupwd         VARCHAR2(100);
      hostias        VARCHAR2(100);
      winunix        VARCHAR2(100);
      dirftp         VARCHAR2(100);
      htpias         VARCHAR2(100);
      script         UTL_FILE.file_type;
      tipofichero    VARCHAR2(100);
      tamano         NUMBER;
      v_operativo    VARCHAR2(100);
   BEGIN
      -- Miramos si el IAS y la base de datos estan en servidores diferentes. VAlor = 'SI'
      separados := UPPER(f_parinstalagedox_t('IASDBSEP'));
      dirtempdb := f_parinstalagedox_t('DIRTEMPDB');
      dirtempias := f_parinstalagedox_t('GDXTMPIAS');
      usuias := f_parinstalagedox_t('GDXIASUSU');
      usupwd := f_parinstalagedox_t('GDXIASPWD');
      hostias := f_parinstalagedox_t('GDXHOSTIAS');
      winunix := f_parinstalagedox_t('GDXFTPSIS');
      dirftp := f_parinstalagedox_t('DIRFTP');
      v_operativo := f_parinstalagedox_t('SOPERATIVO');

      SELECT gedox.tipo
        INTO tipo
        FROM gedox
       WHERE iddoc = piddoc;

      -- Buscamos la extension del fichero
      IF tipo IN(1, 3) THEN   --> Solo para documento
         BEGIN
            SELECT DECODE(bintxt, 'T', 'ascii', 'binary')
              INTO tipofichero
              FROM gedox, asociadoc
             WHERE gedox.iddoc = piddoc
               AND UPPER(SUBSTR(fichero, INSTR(fichero, '.', 1) + 1)) = UPPER(extension);
         EXCEPTION
            WHEN OTHERS THEN
               tipofichero := 'binary';
         END;
      END IF;

      IF tipo = 1 THEN
         SELECT contenido, UPPER(fichero), LENGTH(contenido)
           INTO b, nomfichero, tamano
           FROM gedoxdb, gedox
          WHERE gedoxdb.iddoc = gedox.iddoc
            AND gedox.iddoc = piddoc;

--         DBMS_OUTPUT.put_line ('Fichero  ' || nomfichero);
         IF separados = 'SI' THEN
            SELECT directory_path
              INTO dirfiles
              --> Directorio donde se guardan los ficheros temporales
            FROM   all_directories
             WHERE directory_name = 'GEDOXTEMPORAL';

/*            DBMS_OUTPUT.put_line ('longitud: ' || tamano);
            DBMS_OUTPUT.put_line (   'exportblob'
                                  || dirfiles
                                  || '\'
                                  || USERENV ('SESSIONID')
                                  || SUBSTR (nomfichero,
                                             INSTR (nomfichero, '.', 1)
                                            )
                                 );*/
            exportblob(dirfiles || '\' || USERENV('SESSIONID')
                       || SUBSTR(nomfichero, INSTR(nomfichero, '.', 1)),
                       b);

        --> Copiamos el fichero de la base de datos al directorio temporal DB.
--            DBMS_OUTPUT.put_line ('Ha habido error ? ' || SQLERRM);
            IF winunix = 'UNIX' THEN
               jgdx_ejecuta(p_command => 'ftp ' || hostias || ' << EOF' || CHR(10) || usuias
                             || CHR(10) || usupwd || CHR(10) || 'lcd ' || dirtempdb || CHR(10)
                             || 'cd ' || dirtempias || CHR(10) || tipofichero || CHR(10)
                             || 'put ' || USERENV('SESSIONID') || '_' || piddoc
                             || SUBSTR(nomfichero, INSTR(nomfichero, '.', 1)) || CHR(10)
                             || 'bye');
            ELSE   --> El servidor de base de datos es Windows
/*               DBMS_OUTPUT.put_line (   ' ruta '
                                     || dirftp
                                     || '   fichero: '
                                     || USERENV ('SESSIONID')
                                     || '.TXT'
                                    );*/
               script := UTL_FILE.fopen(dirftp, 'ftp_' || USERENV('SESSIONID') || '.TXT', 'W');
               -- Generamos el script-fichero que contiene las instrucciones del ftp
               UTL_FILE.put_line(script, usuias);
               UTL_FILE.put_line(script, usupwd);
               UTL_FILE.put_line(script, 'lcd ' || dirtempdb);
               UTL_FILE.put_line(script, 'cd ' || dirtempias);
               UTL_FILE.put_line(script, tipofichero);
               UTL_FILE.put_line(script,
                                 'put ' || USERENV('SESSIONID') || '_' || piddoc
                                 || SUBSTR(nomfichero, INSTR(nomfichero, '.', 1)));
               UTL_FILE.put_line(script, 'quit');
               UTL_FILE.fclose(script);
/*               DBMS_OUTPUT.put_line (   'ftp--> '
                                     || 'ftp -s:'
                                     || dirftp
                                     || '\'
                                     || 'ftp_'
                                     || USERENV ('SESSIONID')
                                     || '.TXT '
                                     || hostias
                                    );*/
               jgdx_ejecuta(p_command => 'ftp -s:' || dirftp || '\' || 'ftp_'
                             || USERENV('SESSIONID') || '.TXT ' || hostias);
            --utl_file.fremove(dirfiles,USERENV('SESSIONID') || SUBSTR(nomfichero,INSTR(nomfichero,'.',1)));
            END IF;
--            DBMS_OUTPUT.put_line ('**** Despues exportblob y jejecuta');
         ELSE
            IF v_operativo = 'UNIX' THEN
               exportblob(dirtempdb || '/' || USERENV('SESSIONID') || '_' || piddoc
                          || SUBSTR(nomfichero, INSTR(nomfichero, '.', 1)),
                          b);   --> Copiamos el Blob directamente al tmp del IAs.
            ELSE
               -- Windows
               exportblob(dirtempdb || '\' || USERENV('SESSIONID') || '_' || piddoc
                          || SUBSTR(nomfichero, INSTR(nomfichero, '.', 1)),
                          b);   --> Copiamos el Blob directamente al tmp del IAs.
            END IF;
         END IF;
      ELSIF tipo = 3 THEN
         SELECT directory_path
           INTO dirfiles
           --> Directorio donde se guardan los ficheros de los documentos tipo = 3
         FROM   all_directories
          WHERE directory_name = 'GEDOXCATEGORIAS';

         SELECT idfile
           INTO nomfichero
           FROM gedoxfile
          WHERE iddoc = piddoc;

         IF separados = 'SI' THEN
--            DBMS_OUTPUT.put_line ('entramos**********');
            IF winunix = 'UNIX' THEN
               jgdx_ejecuta(p_command => 'ftp ' || hostias || ' << EOF' || CHR(10) || usuias
                             || CHR(10) || usupwd || CHR(10) || 'lcd ' || dirfiles || CHR(10)
                             || 'cd ' || dirtempias || CHR(10) || tipofichero
--                                                    || CHR(10) || 'put ' || USERENV('SESSIONID') || SUBSTR(nomfichero,INSTR(nomfichero,'.',1))
                             || CHR(10) || 'put ' || nomfichero || CHR(10) || 'rename  '
                             || nomfichero || ' ' || USERENV('SESSIONID') || '_' || piddoc
                             || SUBSTR(nomfichero, INSTR(nomfichero, '.', 1)) || CHR(10)
                             || 'bye');
            ELSE   --> El servidor de base de datos es Windows
/*               DBMS_OUTPUT.put_line (   ' ruta '
                                     || dirftp
                                     || '   fichero: '
                                     || USERENV ('SESSIONID')
                                     || '.TXT'
                                    );*/
               script := UTL_FILE.fopen(dirftp, 'ftp_' || USERENV('SESSIONID') || '.TXT', 'W');
               -- Generamos el script-fichero que contiene las instrucciones del ftp
               UTL_FILE.put_line(script, usuias);
               UTL_FILE.put_line(script, usupwd);
               UTL_FILE.put_line(script, 'lcd ' || dirfiles);
               UTL_FILE.put_line(script, 'cd ' || dirtempias);
               UTL_FILE.put_line(script, tipofichero);
               UTL_FILE.put_line(script, 'put ' || nomfichero);
               UTL_FILE.put_line(script,
                                 'rename  ' || nomfichero || ' ' || USERENV('SESSIONID')
                                 || '_' || piddoc
                                 || SUBSTR(nomfichero, INSTR(nomfichero, '.', 1)));
               UTL_FILE.put_line(script, 'quit');
               UTL_FILE.fclose(script);
/*               DBMS_OUTPUT.put_line (   'ftp--> '
                                     || 'ftp -s:'
                                     || dirftp
                                     || '\'
                                     || 'ftp_'
                                     || USERENV ('SESSIONID')
                                     || '.TXT '
                                     || hostias
                                    );*/
               jgdx_ejecuta(p_command => 'ftp -s:' || dirftp || '\' || 'ftp_'
                             || USERENV('SESSIONID') || '.TXT ' || hostias);
            --utl_file.fremove(dirfiles,USERENV('SESSIONID') || SUBSTR(nomfichero,INSTR(nomfichero,'.',1)));
            END IF;
         ELSE
            -- copia el fichero del directorio de ficheros de la db al ias para visualizarlo con web show document.
            UTL_FILE.fcopy(dirfiles, nomfichero, dirtempias,
                           USERENV('SESSIONID') || '_' || piddoc
                           || SUBSTR(nomfichero, INSTR(nomfichero, '.', 1)));
            UTL_FILE.fremove(dirfiles, nomfichero);
         END IF;
      END IF;

      pfichero := USERENV('SESSIONID') || '_' || piddoc
                  || SUBSTR(nomfichero, INSTR(nomfichero, '.', 1));
      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
--         DBMS_OUTPUT.put_line ('error ' || SUBSTR (SQLERRM, 1, 200));
         -- dramon 28-8-08: bug mantis 7392. Si se queda abierto el fichero lo cerramos
         IF UTL_FILE.is_open(script) THEN
            UTL_FILE.fclose(script);
         END IF;

         RETURN -2;
   END f_verdoc;

   -------- INDEXACION DE INDICES
   FUNCTION indexar(pjob NUMBER DEFAULT NULL)
      RETURN NUMBER IS
      error          VARCHAR2(1000);
      v_igedox       VARCHAR2(100);
      v_igedoxdb     VARCHAR2(100);
   BEGIN
      v_igedox := f_parinstalagedox_t('IGEDOX');
      v_igedoxdb := f_parinstalagedox_t('IGEDOXDB');
      --ctx_ddl.sync_index('gedox_file_idx', '2M');
      --CTX_DdL.OPTIMIZE_INDEX('gedox_file_idx','FAST');
      ctx_ddl.sync_index(v_igedox, '2M');
      --ctx_ddl.sync_index('gedox_idx', '2M');
      --CTX_DdL.OPTIMIZE_INDEX('gedox_idx','FAST');
      ctx_ddl.sync_index(v_igedoxdb, '2M');

      --ctx_ddl.sync_index('gedox_url_idx', '2M');
      --CTX_DdL.OPTIMIZE_INDEX('gedox_url_idx','FAST');
      IF pjob IS NOT NULL THEN
         UPDATE plancatalog
            SET LOG = 'Proceso finalizado el dia ' || TO_CHAR(gdx_sysdate, 'dd/mm/yyyy')
                      || ' a las ' || TO_CHAR(gdx_sysdate, 'hh24:mi') || ' correctamente.'
          WHERE job = pjob;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         IF pjob IS NOT NULL THEN
            error := SQLERRM;

            UPDATE plancatalog
               SET LOG = 'Proceso finalizado el dia ' || TO_CHAR(gdx_sysdate, 'dd/mm/yyyy')
                         || ' a las ' || TO_CHAR(gdx_sysdate, 'hh24:mi') || ' con errores: '
                         || error
             WHERE job = pjob;
         END IF;

         RETURN SQLERRM;
   END indexar;

   FUNCTION categoria(pcat IN NUMBER, pidioma IN NUMBER, ptipo IN NUMBER)
      RETURN VARCHAR2 IS
      descat         detcategor.tdescrip%TYPE;
      catpadre       NUMBER;
   BEGIN
      -- Devuelve la descripcion de la categoria.
      -- Si Ptipo = 1 devuelve solo la categoria
      -- Si Ptipo = 2 devuelve el arbol de la categoria separado por /
      IF ptipo = 1 THEN
         SELECT tdescrip
           INTO descat
           FROM detcategor
          WHERE idcat = pcat
            AND cidioma = pidioma;
      ELSIF ptipo = 2 THEN
         catpadre := pcat;

         WHILE catpadre <> 0 LOOP
            SELECT codicategor.idpadre, SUBSTR('\' || tdescrip || descat, 1, 100)
              INTO catpadre, descat
              FROM codicategor, detcategor
             WHERE codicategor.idcat = detcategor.idcat
               AND detcategor.cidioma = pidioma
               AND codicategor.idcat = catpadre;
         END LOOP;
      ELSE
         RETURN -2;
      END IF;

      RETURN descat;
   EXCEPTION
      WHEN OTHERS THEN
         RETURN -1;
   END categoria;

   FUNCTION file_load(
      pusuario IN VARCHAR2,
      v_file_name IN VARCHAR2,
      v_file_dest IN VARCHAR2 DEFAULT NULL,
      pdescrip IN VARCHAR2,
      ptipo IN NUMBER,
-- 1 El documento se graba en la BD 2- El documento es una URL 3- Puntero al fichero
      pestado IN NUMBER,   -- 1 - INSERT 2-UPDATE
      pcat IN NUMBER,
      error OUT VARCHAR2,
      piddoc IN OUT NUMBER,
	  --JAVENDANO BUG: CONF-236 22/08/2016
	  P_FARCHIV IN DATE DEFAULT NULL,
	  P_FELIMIN IN DATE DEFAULT NULL,
	  P_FCADUCI IN DATE DEFAULT NULL
	  )      RETURN NUMBER IS
      cuantos        NUMBER;
      file_bd        VARCHAR2(1000);
      file_pointer   VARCHAR2(100);
      --v_bfile        BFILE        := BFILENAME ('GEDOXTEMPORAL', v_file_name);
      --v_lob          BLOB;
      direc          VARCHAR2(100);
      url            VARCHAR2(1000);
   BEGIN
      --DBMS_OUTPUT.put_line ('fichero ' || v_file_name);
      --DBMS_LOB.createtemporary (v_lob, FALSE);
      IF ptipo IN(1) THEN   --> El documento se graba en la base de datos.
         --    DBMS_LOB.FILEOPEN(v_bfile, DBMS_LOB.FILE_READONLY);
         --    DBMS_LOB.LOADFROMFILE ( v_lob, v_bfile, DBMS_LOB.GETLENGTH(v_bfile));
         --    DBMS_LOB.CLOSE(v_bfile);
         file_bd := v_file_name;
         file_pointer := NULL;
      ELSIF ptipo = 3 THEN
         file_pointer := v_file_dest;
         file_bd := v_file_name;
      --v_lob := NULL;
      ELSIF ptipo = 2 THEN
         file_bd := v_file_name;
         file_pointer := NULL;
         --v_lob := NULL;
         url := v_file_name;
      END IF;

      IF pestado = 1 THEN
         SELECT iddoc_sec.NEXTVAL
           INTO cuantos
           FROM DUAL;

         INSERT INTO gedox
                     (iddoc, fichero, idcat, tdescrip, usualta, falta, tipo, farchiv, felimin, fcaduci, cestdoc)
              VALUES (cuantos, file_bd, pcat, pdescrip, pusuario, gdx_sysdate, ptipo, p_farchiv, p_felimin, p_fcaduci, 0);

--         DBMS_OUTPUT.put_line ('INSERT GEDOX');
         IF ptipo = 1 THEN
            INSERT INTO gedoxdb
                        (iddoc)
                 VALUES (cuantos);
         ELSIF ptipo = 2 THEN
            INSERT INTO gedoxurl
                        (iddoc, pagina_url)
                 VALUES (cuantos, url);
         ELSIF ptipo = 3 THEN
            INSERT INTO gedoxfile
                        (iddoc, idfile)
                 VALUES (cuantos, TO_CHAR(cuantos) || SUBSTR(file_bd, INSTR(file_bd, '.', 1)));
         END IF;

         --           ,DECODE(ptipo,3,TO_CHAR(cuantos) || SUBSTR(file_bd,INSTR(file_bd,'.',1)),NULL), );
         piddoc := cuantos;
      ELSE
         /*     UPDATE GEDOX
                          SET fichero = file_bd
                         ,contenido = v_lob
                         ,tdescrip = pdescrip
                         ,tipo = ptipo
                         ,idfile = file_pointer
                         ,pagina_url = url
              WHERE IDDOC = piddoc;
              */
         NULL;
      END IF;

      --dbms_lob.freetemporary(v_lob);
      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
--         DBMS_OUTPUT.put_line (SQLERRM);
         error := v_file_name || ' - Error: ' || SQLERRM;
         RETURN(-1);
   END file_load;

--*************************************************************************
-- Funcion utilizada por el Report Server para catalogar el report.
-- Cataloga el report del directorio temporal del IAS a la tabla GEDOX
   FUNCTION file_load_repserver(
      v_file_name IN VARCHAR2,
      pform IN VARCHAR2,
      plistado IN VARCHAR2,
      pdescrip IN VARCHAR2,
      error OUT VARCHAR2,
      piddoc IN OUT NUMBER)
      RETURN NUMBER IS
      PRAGMA AUTONOMOUS_TRANSACTION;
      v_bfile        BFILE := BFILENAME('GEDOXREPSERVER', v_file_name);
      v_lob          BLOB;
      cuantos        NUMBER;
      categoria      NUMBER;
   BEGIN
      DBMS_LOB.createtemporary(v_lob, FALSE);
      DBMS_LOB.fileopen(v_bfile, DBMS_LOB.file_readonly);
      DBMS_LOB.loadfromfile(v_lob, v_bfile, DBMS_LOB.getlength(v_bfile));
      DBMS_LOB.fileclose(v_bfile);   -- dramon 28-8-08: bug mantis 7392.

      SELECT idcat
        INTO categoria
        FROM gdxrepcategor
       WHERE UPPER(cform) = UPPER(pform)
         AND UPPER(cnomdoc) = UPPER(plistado);

      SELECT iddoc_sec.NEXTVAL
        INTO cuantos
        FROM DUAL;

      INSERT INTO gedox
                  (iddoc, fichero, idcat, tdescrip, usualta, falta, tipo)
           VALUES (cuantos, v_file_name, categoria, pdescrip, 'GEDOX', gdx_sysdate, 1);

      INSERT INTO gedoxdb
                  (iddoc, contenido)
           VALUES (cuantos, v_lob);

--      DBMS_OUTPUT.put_line ('seguimos');
--      DBMS_OUTPUT.put_line ('carga ok' || TO_CHAR (NVL (cuantos, 0) + 1));
      piddoc := cuantos;
      COMMIT;
      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
--         DBMS_OUTPUT.put_line ('error: ' || SQLERRM);
         error := 'Error ' || SQLERRM;

         -- dramon 28-8-08: bug mantis 7392. Si el fichero está abierto lo cerramos
         IF DBMS_LOB.fileisopen(v_bfile) = 1 THEN
            DBMS_LOB.fileclose(v_bfile);
         END IF;

         ROLLBACK;
         RETURN -1;
   END;

   FUNCTION f_accesocat(pidcat IN NUMBER, pusuario IN VARCHAR2)
      RETURN NUMBER IS
      cuantos        NUMBER;
      padre          NUMBER;
   BEGIN
      padre := pidcat;

      LOOP
         SELECT idpadre
           INTO padre
           FROM rolcategor, gdxdsiusurol, codicategor
          WHERE gdxdsiusurol.crolmen = rolcategor.crolmen
            AND rolcategor.idcat = codicategor.idcat
            AND rolcategor.idcat = padre
            AND UPPER(gdxdsiusurol.cusuari) = UPPER(pusuario);

         EXIT WHEN padre = 0;
      END LOOP;

      IF padre = 0 THEN
         RETURN 0;
      ELSE
         RETURN -1;
      END IF;
   EXCEPTION
      WHEN OTHERS THEN
         RETURN -1;
   END f_accesocat;

-- Copia de la base de datos un valor BLOB a un fichero
   FUNCTION f_mover_blobtmp(psesion IN NUMBER, pfichero IN VARCHAR2)
      RETURN NUMBER IS
      b              BLOB;
   BEGIN
      SELECT doctemp
        INTO b
        FROM gdxtempdoc
       WHERE sesion = psesion;

      exportblob(pfichero, b);
      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
--         DBMS_OUTPUT.put_line ('Error ' || SUBSTR (SQLERRM, 1, 230));
         RETURN -1;
   END f_mover_blobtmp;

   FUNCTION f_lendoctemp(psesion IN NUMBER)
      RETURN NUMBER IS
      tamano         NUMBER;
   BEGIN
      SELECT LENGTH(doctemp)
        INTO tamano
        FROM gdxtempdoc
       WHERE sesion = psesion;

      RETURN tamano;
   EXCEPTION
      WHEN OTHERS THEN
         RETURN -1;
   END f_lendoctemp;
END pac_gedox;

/
