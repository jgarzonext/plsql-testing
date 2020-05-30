CREATE OR REPLACE PROCEDURE "P_ENVIAR_CORREO"(
   p_from VARCHAR2,   /* emarino@csi-ti.com */
   p_to VARCHAR2,   /* jdelaflor@csi-ti.com */
   p_from2 VARCHAR2,   /* Enric Mariño */
   p_to2 VARCHAR2,   /* Jacques de la Flor */
   p_subject VARCHAR2,   /* Mensaje de Prueba */
   p_message VARCHAR2,
   p_cc VARCHAR2 DEFAULT NULL)   /* Texto del mensaje */
AUTHID CURRENT_USER IS
/*
/******************************************************************************
   NOMBRE:       P_ENVIAR_CORREO
   PROP¿SITO:    Procedimiento para el envío de correos

   REVISIONES:
   Ver        Fecha     Autor     Descripci¿n
   ------- ----------  -------   ------------------------------------
   1.0     ??/??/????  ???        1. Creaci¿n del package.
   2.0     05/03/2020  JLTS       2. IAXIS-2134: Se modifica para ajustarlo frente a la coniguración del SMTP
*/
   c              SYS.UTL_SMTP.connection;
   p_server       VARCHAR2(50);
   p_port         NUMBER;
   ccc            VARCHAR2(200);
   FINAL          NUMBER;
   primer         NUMBER;
   adreca         VARCHAR2(200);
   v_message      VARCHAR2(4000);
   --INI IAXIS-2134 -05/03/2020
   /*
   P_PASSWORD     VARCHAR2(50);
   p_wallet_pt    VARCHAR2(100);
   p_wallet_ps    VARCHAR2(50);
   p_from_c         VARCHAR2(50);
   p_from_pass    VARCHAR2(50);
   */
   --FIN IAXIS-2134 -05/03/2020



/*PROCEDURE send_header(name IN VARCHAR2, header IN VARCHAR2) AS
  BEGIN
    utl_smtp.write_data(c, name || ': =?iso-8859-1?Q?'|| UTL_RAW.cast_to_varchar2
               (UTL_ENCODE.quoted_printable_encode (UTL_RAW.cast_to_raw (header)))
         || '?='
         || UTL_TCP.crlf);
  END;*/
  --INI IAXIS-2134 -05/03/2020
  PROCEDURE send_header(NAME   IN VARCHAR2,
                        header IN VARCHAR2) AS
  BEGIN
    utl_smtp.write_data(c, NAME || ': ' || header || utl_tcp.crlf);
  END;
  --FIN IAXIS-2134 -05/03/2020
BEGIN
   -- Servidor
   p_server := NVL(f_parinstalacion_t('MAIL_SERV'), 'smtp.office365.com');
   -- Puerto
   --INI IAXIS-2134 -05/03/2020
   p_port := NVL(f_parinstalacion_n('MAIL_PORT'), 25);
   /*
   p_from_c := NVL(f_parinstalacion_t('P_FROM'), NULL);
   p_from_pass := NVL(f_parinstalacion_t('P_FROM_PASS'), NULL);
   p_wallet_pt := NVL(f_parinstalacion_t('WALLET_PATH'), NULL);
   p_wallet_ps := NVL(f_parinstalacion_t('WALLET_PASS'), NULL);
   */
   --FIN IAXIS-2134 -05/03/2020
   c := UTL_SMTP.open_connection(p_server, p_port);
/*
   c:=utl_smtp.open_connection(host => p_server,port => p_port,
           wallet_path => p_wallet_pt,
           wallet_password => p_wallet_ps,secure_connection_before_smtp => FALSE);
   utl_smtp.ehlo(c, p_server);
   utl_smtp.STARTTLS(c);
 utl_smtp.command( c, utl_raw.cast_to_varchar2
 ( utl_encode.base64_encode( utl_raw.cast_to_raw(p_from_pass ))));
*/
   UTL_SMTP.helo(c, p_server);
   UTL_SMTP.mail(c, p_from);
   --FIN IAXIS-2134 -05/03/2020
   FINAL := INSTR(p_to, ';');

   IF FINAL > 0 THEN
      primer := 0;

      WHILE FINAL > 0 LOOP
         adreca := SUBSTR(p_to, primer, ((FINAL - 1)-primer));
         primer := FINAL + 1;
         FINAL := INSTR(p_to, ';', primer);
         UTL_SMTP.rcpt(c, adreca);
      END LOOP;

      adreca := SUBSTR(p_to, primer, LENGTH(p_to));

      IF adreca IS NOT NULL THEN
         UTL_SMTP.rcpt(c, adreca);
      END IF;
   ELSE
      UTL_SMTP.rcpt(c, p_to);
   END IF;

   IF p_cc IS NOT NULL THEN
      FINAL := INSTR(p_cc, ';');
      primer := 0;

      WHILE FINAL > 0 LOOP
         adreca := SUBSTR(p_cc, primer, ((FINAL - 1)-primer));
         primer := FINAL + 1;
         FINAL := INSTR(p_cc, ';', primer);
         UTL_SMTP.rcpt(c, adreca);
      END LOOP;

      adreca := SUBSTR(p_cc, primer, LENGTH(p_cc));

      IF adreca IS NOT NULL THEN
         UTL_SMTP.rcpt(c, adreca);
      END IF;
   END IF;

   UTL_SMTP.open_data(c);
   --INI IAXIS-2134 -05/03/2020
   send_header('From',    '"Sender" <'||p_from2||'>');
   send_header('To',      '"Recipient" <'||p_to2||'>');
   send_header('Subject', p_subject);
   --FIN IAXIS-2134 -05/03/2020
   UTL_SMTP.write_data(c, 'From:' || p_from2 || UTL_TCP.crlf);
   UTL_SMTP.write_data(c, 'To:' || p_to2 || UTL_TCP.crlf);
   UTL_SMTP.write_data(c, 'Subject:' || p_subject || UTL_TCP.crlf);
   UTL_SMTP.write_data(c, 'MIME-Version: ' || '1.0' || UTL_TCP.crlf);
   UTL_SMTP.write_data(c, 'Content-Type: ' || 'text/html; charset=iso-8859-1' || UTL_TCP.crlf);
   /*  UTL_SMTP.write_data (c,'Content-Type: ' || 'text/plain'|| UTL_TCP.crlf );*/
   UTL_SMTP.write_data(c, 'Content-Transfer-Encoding: ' || '8bit' || UTL_TCP.crlf);
   v_message := REPLACE(REPLACE(p_message, CHR(13), UTL_TCP.crlf), CHR(10), UTL_TCP.crlf);
   UTL_SMTP.write_data(c, UTL_TCP.crlf);
   UTL_SMTP.write_raw_data(c, UTL_RAW.cast_to_raw(v_message));
   UTL_SMTP.close_data(c);
   UTL_SMTP.quit(c);
EXCEPTION
   WHEN UTL_SMTP.transient_error OR UTL_SMTP.permanent_error THEN
      BEGIN
         UTL_SMTP.quit(c);
      EXCEPTION
         WHEN UTL_SMTP.transient_error OR UTL_SMTP.permanent_error THEN
            NULL;
      END;

      raise_application_error(-20000, 'Error al enviar correo: ' || SQLERRM);
END;
/
/*
Ejemplo
begin
  p_enviar_correo('emarino@csi-ti.com','emarino@csi-ti.com',
                'Enric Marino','Enric Marino','Prueba','TEXTOOOOOOO');
end;
*/
