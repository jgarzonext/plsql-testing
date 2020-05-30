--------------------------------------------------------
--  DDL for Procedure P_PROCESAR_EXPEDICION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_PROCESAR_EXPEDICION" 
AUTHID CURRENT_USER IS
   /******************************************************************************
   NOMBRE:       P_PROCESAR_EXPEDICION
   PROPÓSITO:    Procedimiento que ejecuta la expedicion de documentos

   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/09/2015  IGIL               1. Creación del procedure.

   ******************************************************************************/
   v_output       UTL_FILE.file_type;
   v_fdesde       DATE;
   v_fhasta       DATE;
   v_tipo         VARCHAR(2000);
   v_dir_path     VARCHAR(3000);
   v_existe_dir   NUMBER := 0;
   v_execute      VARCHAR(3030);
   v_error        NUMBER := 0;
   v_file_temp    VARCHAR(2000);
   v_fichero      UTL_FILE.file_type;
   v_file_name    VARCHAR(2000);
   v_tipo_rec     NUMBER;
   v_linea        NUMBER;
   mensajes       t_iax_mensajes;
   pcempres       NUMBER;
   v_titulo       VARCHAR(2000);
   psproces       NUMBER;
   vnumerr        NUMBER;
   v_object       VARCHAR(100) := 'P_PROCESAR_EXPEDICION';
   v_pasexec      NUMBER;
   v_total_g      NUMBER := 0;
   v_total_29     NUMBER := 0;
   l_buffer       RAW(32767);
   l_amount       BINARY_INTEGER := 32767;
   l_pos          INTEGER := 1;
   l_blob         BLOB;
   l_blob_len     INTEGER;

   CURSOR c_documentos(pfdesde DATE, pfhasta DATE) IS
      SELECT gdx.iddoc, gdx.contenido file_r, age.cagente, doc.nrecibo identificador,
             doc.ctipo, DBMS_LOB.getlength(gdx.contenido) leng
        FROM gedoxdb gdx, agentes_comp age, docsimpresion doc, seguros seg
       WHERE gdx.iddoc = doc.iddocgedox
         AND seg.sseguro = doc.sseguro
         AND age.cagente = seg.cagente
         AND age.cexpide = 1
         AND doc.ctipo = 29
         AND TO_CHAR(doc.fcrea, 'yyyymmdd') >= TO_CHAR(pfdesde, 'yyyymmdd')
         AND TO_CHAR(doc.fcrea, 'yyyymmdd') <= TO_CHAR(pfhasta, 'yyyymmdd');
BEGIN
   v_pasexec := 1;
   pcempres := f_parinstalacion_n('EMPRESADEF');
   vnumerr := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(pcempres,
                                                                          'USER_BBDD'));
   v_titulo := 'PROCESO EXPEDICION DE DOCUMENTOS';
   --Insertamos en la tabla PROCESOSCAB el registro identificativo de proceso -----
   vnumerr := f_procesini(f_user, pcempres, 'EXPEDICION ', v_titulo, psproces);
   v_pasexec := 2;
   v_dir_path := f_parinstalacion_t('DIR_EXPEDI_AUTO');
   --'|| TO_CHAR(f_sysdate, 'yyyymmdd');
   v_pasexec := 3;
   v_file_temp := 'F_' || TO_CHAR(f_sysdate, 'yyyymmdd') || '.TXT';

   BEGIN
      v_fichero := UTL_FILE.fopen(v_dir_path, v_file_temp, 'R', 32760);
      v_pasexec := 4;
   EXCEPTION
      WHEN UTL_FILE.invalid_path THEN
         v_existe_dir := -1;
      WHEN OTHERS THEN
         v_error := -1;
   END;

   IF v_existe_dir = -1 THEN
      /*
         v_pasexec := 411;
         DBMS_SCHEDULER.drop_job('J_CRE_DIR_EXP');
         DBMS_SCHEDULER.create_job(job_name => 'J_CRE_DIR_EXP', job_type => 'executable',
                                   job_action => '/iAxis/interfaces/gedox/expedicion/ejecuta.sh' , start_date => NULL,
                                   comments => '..', auto_drop=>true);
         v_pasexec := 412;
         DBMS_SCHEDULER.run_job('J_CRE_DIR_EXP');
         v_pasexec := 413;
         */
      v_fichero := UTL_FILE.fopen(v_dir_path, TO_CHAR(f_sysdate, 'yyyymmdd') || '.TXT', 'w');
      v_pasexec := 42;

      BEGIN
         UTL_FILE.put_line(v_fichero, '*');
         v_error := 0;
         v_pasexec := 43;
      EXCEPTION
         WHEN UTL_FILE.invalid_filehandle THEN
            v_error := -1;
         WHEN UTL_FILE.invalid_operation THEN
            v_error := -2;
         WHEN UTL_FILE.write_error THEN
            v_error := -3;
         WHEN OTHERS THEN
            v_error := -4;
      END;

      BEGIN
         UTL_FILE.fclose(v_fichero);
         v_pasexec := 44;
      EXCEPTION
         WHEN UTL_FILE.write_error THEN
            v_error := -5;
         WHEN OTHERS THEN
            v_error := -6;
      END;
   END IF;

   v_pasexec := 5;

   FOR documen IN c_documentos(f_sysdate, f_sysdate) LOOP
      v_pasexec := 6;

      IF documen.leng > 0 THEN
         v_pasexec := 7;

         IF documen.ctipo = 29 THEN
            v_pasexec := 8;

            SELECT NVL(ctiprec, 0)
              INTO v_tipo_rec
              FROM recibos
             WHERE nrecibo = documen.identificador
               AND cagente = documen.cagente;

            IF v_tipo_rec IN(3, 16) THEN
               v_pasexec := 9;
               v_tipo := pac_md_listvalores.f_getdescripvalores(1904, 29, mensajes);
               v_file_name := documen.cagente || '_' || v_tipo || '_' || documen.identificador
                              || '.PDF';
               v_output := UTL_FILE.fopen(v_dir_path, v_file_name, 'wb', 32760);
               l_blob_len := DBMS_LOB.getlength(documen.file_r);
               l_pos := 1;

               WHILE l_pos < l_blob_len LOOP
                  DBMS_LOB.READ(documen.file_r, l_amount, l_pos, l_buffer);
                  UTL_FILE.put_raw(v_output, l_buffer, TRUE);
                  l_pos := l_pos + l_amount;
               END LOOP;

               UTL_FILE.fclose(v_output);
               v_total_29 := v_total_29 + 1;
               vnumerr := f_proceslin(psproces,
                                      'Expedicion correcta del documento - ' || v_file_name, 0,
                                      v_linea);
               v_pasexec := 10;
            END IF;
         END IF;
      END IF;
   END LOOP;

   v_total_g := v_total_29;
   v_pasexec := 11;
   vnumerr := f_proceslin(psproces,
                          'Total Expedicion Documentos |TIPO ' || v_tipo || ' : --> '
                          || v_total_29 || ' |GENERAL : ' || v_total_g,
                          0, v_linea);
   vnumerr := f_procesfin(psproces, 1);
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, v_object, v_pasexec, '', SQLCODE || ' - ' || SQLERRM);
END p_procesar_expedicion;

/

  GRANT EXECUTE ON "AXIS"."P_PROCESAR_EXPEDICION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_PROCESAR_EXPEDICION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_PROCESAR_EXPEDICION" TO "PROGRAMADORESCSI";
