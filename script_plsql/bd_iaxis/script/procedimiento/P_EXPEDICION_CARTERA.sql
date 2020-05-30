--------------------------------------------------------
--  DDL for Procedure P_EXPEDICION_CARTERA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_EXPEDICION_CARTERA" (
   pcorreoresumen IN VARCHAR2,
   pdesde IN DATE,
   pfinal IN DATE DEFAULT NULL,
   pagente IN NUMBER DEFAULT NULL,
   pdirectorio IN VARCHAR2 DEFAULT NULL)
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
   v_object       VARCHAR(100) := 'P_EXPEDICION_CARTERA';
   v_pasexec      NUMBER;
   v_total_g      NUMBER := 0;
   v_total_29     NUMBER := 0;
   l_buffer       RAW(32767);
   l_amount       BINARY_INTEGER := 32767;
   l_pos          INTEGER := 1;
   l_blob         BLOB;
   l_blob_len     INTEGER;
   v_desde        DATE;
   v_final        DATE;
   v_age          NUMBER;
   v_cidioma      NUMBER := NVL(pac_contexto.f_contextovalorparametro('IAX_IDIOMA'), 2);
   v_subject      VARCHAR2(300);
   v_texto        VARCHAR2(2000);
   vok            NUMBER := 0;
   vko            NUMBER := 0;
   pos            NUMBER := 0;
   n_fic_err      NUMBER := 0;
   e_salida       EXCEPTION;

   CURSOR c_documentos(pfdesde DATE, pfhasta DATE) IS
      SELECT gdx.iddoc, gdx.contenido file_r, age.cagente, doc.nrecibo identificador,
             doc.ctipo, DBMS_LOB.getlength(gdx.contenido) leng
        FROM gedoxdb gdx, agentes_comp age, docsimpresion doc, seguros seg
       WHERE gdx.iddoc = doc.iddocgedox
         AND seg.sseguro = doc.sseguro
         AND age.cagente = seg.cagente
         AND age.cexpide = 1
         AND(pagente IS NULL
             OR age.cagente = pagente)
         AND doc.ctipo = 29
         AND TO_CHAR(doc.fcrea, 'yyyymmdd') >= TO_CHAR(pfdesde, 'yyyymmdd')
         AND(pfhasta IS NULL
             OR TO_CHAR(doc.fcrea, 'yyyymmdd') <= TO_CHAR(pfhasta, 'yyyymmdd'));
BEGIN
   v_pasexec := 100;
   pcempres := f_parinstalacion_n('EMPRESADEF');
   vnumerr := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(pcempres,
                                                                          'USER_BBDD'));
   v_titulo := 'PROCESO EXPEDICION DE DOCUMENTOS';
   v_desde := NVL(pdesde, f_sysdate);
   v_final := pfinal;
   v_age := pagente;
   v_pasexec := 110;
   --Insertamos en la tabla PROCESOSCAB el registro identificativo de proceso -----
   vnumerr := f_procesini(f_user, pcempres, 'EXPEDICION ', v_titulo, psproces);
   v_pasexec := 120;
   v_dir_path := NVL(pdirectorio, f_parinstalacion_t('DIR_EXPEDI_AUTO'));
   --'|| TO_CHAR(f_sysdate, 'yyyymmdd');
   v_pasexec := 130;
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
      v_pasexec := 140;

      BEGIN
         UTL_FILE.put_line(v_fichero, '*');
         v_error := 0;
         v_pasexec := 150;
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
         v_pasexec := 160;
      EXCEPTION
         WHEN UTL_FILE.write_error THEN
            v_error := -5;
         WHEN OTHERS THEN
            v_error := -6;
      END;
   END IF;

   v_pasexec := 170;
   n_fic_err := 0;

   FOR documen IN c_documentos(v_desde, v_final) LOOP
      v_pasexec := 170;

      IF documen.leng > 0 THEN
         v_pasexec := 180;
         v_pasexec := 190;

         SELECT NVL(ctiprec, 0)
           INTO v_tipo_rec
           FROM recibos
          WHERE nrecibo = documen.identificador
            AND cagente = documen.cagente;

         IF v_tipo_rec IN(3, 16) THEN
            v_pasexec := 200;
            v_total_29 := v_total_29 + 1;

            BEGIN
               v_tipo := pac_md_listvalores.f_getdescripvalores(1904, 29, mensajes);
               v_file_name := documen.cagente || '_' || v_tipo || '_' || documen.identificador
                              || '.PDF';
               v_pasexec := 210;
               v_output := UTL_FILE.fopen(v_dir_path, v_file_name, 'wb', 32760);
               l_blob_len := DBMS_LOB.getlength(documen.file_r);
               l_pos := 1;

               WHILE l_pos < l_blob_len LOOP
                  v_pasexec := 220;
                  DBMS_LOB.READ(documen.file_r, l_amount, l_pos, l_buffer);
                  UTL_FILE.put_raw(v_output, l_buffer, TRUE);
                  l_pos := l_pos + l_amount;
               END LOOP;

               v_pasexec := 230;
               UTL_FILE.fclose(v_output);
               vnumerr := f_proceslin(psproces,
                                      'Expedicion correcta del documento - ' || v_file_name, 0,
                                      v_linea);
               v_pasexec := 240;
            EXCEPTION
               WHEN OTHERS THEN
                  n_fic_err := n_fic_err + 1;

                  IF UTL_FILE.is_open(v_output) THEN
                     UTL_FILE.fclose(v_output);
                  END IF;

                  vnumerr := f_proceslin(psproces,
                                         'Expedicion erronea del documento - ' || v_file_name,
                                         0, v_linea);
            END;
         END IF;
      END IF;
   END LOOP;

   v_total_g := v_total_29;
   v_pasexec := 250;
   vnumerr := f_proceslin(psproces,
                          'Total Expedicion Documentos |TIPO ' || v_tipo || ' : --> '
                          || v_total_29 || ' |ERRONEOS: ' || n_fic_err || ' |GENERAL : '
                          || v_total_g,
                          0, v_linea);
   v_pasexec := 260;

   --Resumen
-- Obtenemos el asunto
   SELECT MAX(asunto)
     INTO v_subject
     FROM desmensaje_correo
    WHERE scorreo = 300
      AND cidioma = v_cidioma;

   IF v_subject IS NULL THEN
      --No esixte ningún Subject para este tipo de correo.
      vnumerr := f_proceslin(psproces,
                             f_axis_literales(151422, v_cidioma) || ' EXPEDICIÓN (300)', 0,
                             v_linea);
      RAISE e_salida;
   END IF;

   v_texto := v_subject;
   --reemplazamos
   pos := INSTR(v_subject, '#SPROCES#', 1);

   IF pos > 0 THEN
      v_subject := REPLACE(v_subject, '#SPROCES#', psproces);
   END IF;

   pos := INSTR(v_subject, '#OK#', 1);

   IF pos > 0 THEN
      v_subject := REPLACE(v_subject, '#OK#', vok);
   END IF;

   pos := INSTR(v_subject, '#KO#', 1);

   IF pos > 0 THEN
      v_subject := REPLACE(v_subject, '#KO#', vko);
   END IF;

   pos := INSTR(v_texto, '#TITULO#', 1);

   IF pos > 0 THEN
      v_texto := REPLACE(v_texto, '#TITULO#', v_titulo);
   END IF;

   pos := INSTR(v_texto, '#SPROCES#', 1);

   IF pos > 0 THEN
      v_texto := REPLACE(v_texto, '#SPROCES#', psproces);
   END IF;

   pos := INSTR(v_texto, '#OK#', 1);

   IF pos > 0 THEN
      v_texto := REPLACE(v_texto, '#OK#', vok);
   END IF;

   pos := INSTR(v_texto, '#KO#', 1);

   IF pos > 0 THEN
      v_texto := REPLACE(v_texto, '#KO#', vko);
   END IF;

   vnumerr := pac_md_informes.f_enviar_mail(NULL, pcorreoresumen, NULL, NULL, v_subject,
                                            v_texto);

   IF NVL(vnumerr, 0) <> 0 THEN
      vnumerr := f_proceslin(psproces, 'Error al enviar email (' || vnumerr || ')', 0,
                             v_linea);
   END IF;

   vnumerr := f_procesfin(psproces, 1);
EXCEPTION
   WHEN e_salida THEN
      NULL;
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, v_object, v_pasexec, '', SQLCODE || ' - ' || SQLERRM);
END p_expedicion_cartera;

/

  GRANT EXECUTE ON "AXIS"."P_EXPEDICION_CARTERA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_EXPEDICION_CARTERA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_EXPEDICION_CARTERA" TO "PROGRAMADORESCSI";
