--------------------------------------------------------
--  DDL for Package PAC_SEND_MAIL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_SEND_MAIL" IS
/******************************************************************************
   NOMBRE:       PAC_SEND_MAIL
   PROP�SITO: Funciones para envio correos

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        02/02/2011   ACC                1. Creaci�n del package.
******************************************************************************/

   ----------------------- Secci� Personalitzable -----------------------

   -- Personalitzar el servidor SMTP, el port, el nom de domini, autentificaci�.
   smtp_host      VARCHAR2(256) := NVL(f_parinstalacion_t('MAIL_SERV'), 'smtp.csi-ti.com');
   smtp_port      PLS_INTEGER := NVL(f_parinstalacion_n('MAIL_PORT'), 25);
   smtp_domain    VARCHAR2(256) := NVL(f_parinstalacion_t('MAIL_DOMAIN'), 'csi-ti.com');
   smtp_auth      VARCHAR2(256) := NVL(f_parinstalacion_t('MAIL_AUTH'), 'N');
   smtp_user      VARCHAR2(256) := NVL(f_parinstalacion_t('MAIL_USER'), '');
   smtp_passw     VARCHAR2(256) := NVL(f_parinstalacion_t('MAIL_PASSWD'), '');
   -- Personalitzar la signatura que apareix a la cap�alera MIME del correu electr�nic.
   mailer_id CONSTANT VARCHAR2(256) := 'Mailer by iAxis';
   mine_charset_text CONSTANT VARCHAR2(100) := 'iso-8859-1';
   --------------------- End Secci� Personalitzable ---------------------

   -- Una cadena �nica que demarca els l�mits de les parts en un correu electr�nic de diverses parts
   -- La cadena no ha d'apar�ixer dins del cos d'arreu del correu electr�nic.
   -- Personalitzar aquest si cal o generar aquest aleat�riament de forma din�mica.
   boundary CONSTANT VARCHAR2(256) := '-----7D81B75CCC90D2974F7A1CBD';
   -- JLB
    mime_version CONSTANT VARCHAR2(256) := '1.0';
    -- JLB - end
   first_boundary CONSTANT VARCHAR2(256) := '--' || boundary || UTL_TCP.crlf;
   last_boundary CONSTANT VARCHAR2(256) := '--' || boundary || '--' || UTL_TCP.crlf;
   -- Un tipus MIME que marca el correu electr�nic de diverses parts (MIME) missatges.
   multipart_mime_type CONSTANT VARCHAR2(256)
                                           := 'multipart/mixed; boundary="' || boundary || '"';
   max_base64_line_width CONSTANT PLS_INTEGER := 76 / 4 * 3;

   -- Un simple correu electr�nic de l'API per a l'enviament de correu electr�nic en text sense format en una sola trucada.
   -- El format d'una adre�a de correu electr�nic �s un dels seg�ents:
   -- someone@some-domain.com
   -- "Alg� en algun domini" <someone@some-domain.com>
   -- Alg� en algun domini <someone@some-domain.com>
   -- Els recipients �s una llista d'adreces de correu electr�nic han estar
   -- separades per "," o b� un ";"

   /*************************************************************************
       Enviament mail.
       El format d'una adre�a de correu electr�nic �s un dels seg�ents:
        - someone@some-domain.com
        - "Alg� en algun domini" <someone@some-domain.com>
        - Alg� en algun domini <someone@some-domain.com>
       param in sender: emisor del mail.
       param in recipients: receptor del mail.
       param in subject: assumpte del mail
       param in MESSAGE: cos del correu electr�nic
       param in cc: receptor copia del mail.
       param in cc0: receptor copia oculta del mail.
   *************************************************************************/
   PROCEDURE mail(
      sender IN VARCHAR2,
      recipients IN VARCHAR2,
      subject IN VARCHAR2,
      MESSAGE IN VARCHAR2,
      cc IN VARCHAR2 DEFAULT NULL,
      cco IN VARCHAR2 DEFAULT NULL);

   -- Ampliaci� de l'API de correu per enviar correu electr�nic en format HTML o text pla, sense l�mit de mida.
   -- En primer lloc, comen�ar el correu electr�nic per begin_mail(). Despr�s, crideu write_text () diverses vegades
   -- per enviar correu electr�nic en ASCII pe�a per pe�a. O, crideu write_mb_text() per enviar
   -- e-mail no-ASCII o conjunt de car�cters multi-byte.
   -- Fi del correu electr�nic amb end_mail().

   /*************************************************************************
       Inici enviament mail.
       El format d'una adre�a de correu electr�nic �s un dels seg�ents:
        - someone@some-domain.com
        - "Alg� en algun domini" <someone@some-domain.com>
        - Alg� en algun domini <someone@some-domain.com>
       param in sender: emisor del mail.
       param in recipients: receptor del mail.
       param in subject: assumpte del mail
       param in cc: receptor copia del mail.
       param in cc0: receptor copia oculta del mail.
       param in mime_type: "Content-Type" cap�alera MIME
       param in priority: prioritat
       return conexio
   *************************************************************************/
   FUNCTION begin_mail(
      sender IN VARCHAR2,
      recipients IN VARCHAR2,
      subject IN VARCHAR2,
      cc IN VARCHAR2 DEFAULT NULL,
      cco IN VARCHAR2 DEFAULT NULL,
      mime_type IN VARCHAR2 DEFAULT 'text/plain',
      priority IN PLS_INTEGER DEFAULT NULL)
      RETURN UTL_SMTP.connection;

/*************************************************************************
    Escriu cos del correu electr�nic en format ASCII
    param in out conn: conexi�
    param in message: cos del correu electr�nic
*************************************************************************/
   PROCEDURE write_text(conn IN OUT NOCOPY UTL_SMTP.connection, MESSAGE IN VARCHAR2);

/*************************************************************************
    Escriure en el cos del correu electr�nic no ASCII (incloent multi-byte).
    El cos del correu electr�nic ser� enviat en el conjunt de car�cters de la base de dades.
    param in out conn: conexi�
    param in message: cos del correu electr�nic
*************************************************************************/
   PROCEDURE write_mb_text(conn IN OUT NOCOPY UTL_SMTP.connection, MESSAGE IN VARCHAR2);

/*************************************************************************
    Escriu cos del correu electr�nic en format binari
    param in out conn: conexi�
    param in message: cos del correu electr�nic
*************************************************************************/
   PROCEDURE write_raw(conn IN OUT NOCOPY UTL_SMTP.connection, MESSAGE IN RAW);

   -- API per enviar correu electr�nic amb arxius adjunts. Arxius adjunts
   -- enviats per correu electr�nic l'enviament de "multipart/mixed"
   -- en format MIME. Especifica que el format MIME en comen�ar un correu
   -- electr�nic amb begin_mail().

   /*************************************************************************
       Enviar un arxiu adjunt de text �nic.
       param in out conn: conexi�
       param in data: dades adjunts
       param in mime_type: "Content-Type" cap�alera MIME
       param in inline: Content-Disposition. TRUE= inline ; FALSE= attachment
       param in filename: nom fitxer a adjuntar
       param in last: l�mit de missatges part. Establir <last> en TRUE per el l�mit anterior
   *************************************************************************/
   PROCEDURE attach_text(
      conn IN OUT NOCOPY UTL_SMTP.connection,
      DATA IN VARCHAR2,
      mime_type IN VARCHAR2 DEFAULT 'text/plain',
      inline IN BOOLEAN DEFAULT TRUE,
      filename IN VARCHAR2 DEFAULT NULL,
      LAST IN BOOLEAN DEFAULT FALSE);

/*************************************************************************
    Enviar un arxiu adjunt de text �nic llegit des de UTL_FILE Directory.
    param in out conn: conexi�
    param in directory: UTL_FILE Directory. Directori de ubicaci� del fitxer
    param in filename: nom fitxer a adjuntar
    param in mime_type: "Content-Type" cap�alera MIME
    param in inline: Content-Disposition. TRUE= inline ; FALSE= attachment
    param in last: l�mit de missatges part. Establir <last> en TRUE per el l�mit anterior
*************************************************************************/
   PROCEDURE attach_text_readfile(
      conn IN OUT NOCOPY UTL_SMTP.connection,
      DIRECTORY IN VARCHAR2,
      filename IN VARCHAR2,
      mime_type IN VARCHAR2 DEFAULT 'text/plain',
      inline IN BOOLEAN DEFAULT TRUE,
      LAST IN BOOLEAN DEFAULT FALSE);

         /*************************************************************************
       Enviar un arxiu adjunt de text �nic llegit des de UTL_FILE Directory.
       param in out conn: conexi�
       param in directory: UTL_FILE Directory. Directori de ubicaci� del fitxer
       param in filename: nom fitxer a adjuntar
       param in mime_type: "Content-Type" cap�alera MIME
       param in inline: Content-Disposition. TRUE= inline ; FALSE= attachment
       param in last: l�mit de missatges part. Establir <last> en TRUE per el l�mit anterior
   *************************************************************************/
   PROCEDURE attach_base64_readfile(
      conn IN OUT NOCOPY UTL_SMTP.connection,
      DIRECTORY IN VARCHAR2,
      filename IN VARCHAR2,
      mime_type IN VARCHAR2 DEFAULT 'application/octet',
      inline IN BOOLEAN DEFAULT TRUE,
      LAST IN BOOLEAN DEFAULT FALSE);

/*************************************************************************
    Enviar un arxiu adjunt binari. L'adjunt ha de ser codificat en format
    de codificaci� Base-64.
    param in out conn: conexi�
    param in data: dades adjunts codificats amb Base64
    param in mime_type: "Content-Type" cap�alera MIME
    param in inline: Content-Disposition. TRUE= inline ; FALSE= attachment
    param in filename: nom fitxer a adjuntar
    param in last: l�mit de missatges part. Establir <last> en TRUE per el
                    l�mit anterior
*************************************************************************/
   PROCEDURE attach_base64(
      conn IN OUT NOCOPY UTL_SMTP.connection,
      DATA IN RAW,
      mime_type IN VARCHAR2 DEFAULT 'application/octet',
      inline IN BOOLEAN DEFAULT TRUE,
      filename IN VARCHAR2 DEFAULT NULL,
      LAST IN BOOLEAN DEFAULT FALSE);

   -- Enviar un arxiu adjunt sense l�mit de mida. En primer lloc, comen�ar
   -- l'arxiu adjunt amb begin_attachment(). Despr�s, cridar a write_text()
   -- diverses vegades per enviar l'arxiu pe�a per pe�a. Si l'arxiu adjunt es
   -- basa en text, sin� no-ASCII o conjunt de car�cters multi-byte, utilitzar
   -- write_mb_text() en el seu lloc.
   -- Per enviar fitxers adjunts binaris, el contingut binari primer ha de ser
   -- codificat en base-64 en format de codificaci� amb el paquet de
   -- utl_encode.base64_encode.
   -- Posar fi a la uni� amb end_attachment().

   /*************************************************************************
       Inici d'ajunci� de fitxers.
       param in out conn: conexi�
       param in mime_type: "Content-Type" cap�alera MIME
       param in inline: Content-Disposition. TRUE= inline ; FALSE= attachment
       param in filename: nom fitxer a adjuntar
       param in transfer_enc: Content-Transfer-Encoding
   *************************************************************************/
   PROCEDURE begin_attachment(
      conn IN OUT NOCOPY UTL_SMTP.connection,
      mime_type IN VARCHAR2 DEFAULT 'text/plain',
      inline IN BOOLEAN DEFAULT TRUE,
      filename IN VARCHAR2 DEFAULT NULL,
      transfer_enc IN VARCHAR2 DEFAULT NULL);

/*************************************************************************
    Fi de les dades adjunts.
    param in out conn: conexi�
    param in last: l�mit de missatges part. Establir <last> en TRUE per el l�mit anterior
*************************************************************************/
   PROCEDURE end_attachment(
      conn IN OUT NOCOPY UTL_SMTP.connection,
      LAST IN BOOLEAN DEFAULT FALSE);

/*************************************************************************
    Fi del correu electr�nic.
    param in out conn: conexi�
*************************************************************************/
   PROCEDURE end_mail(conn IN OUT NOCOPY UTL_SMTP.connection);

   -- Extensi� del API de correu per enviar missatges de correu electr�nic
   -- m�ltiples en una sessi� per a una millor rendiment. En primer lloc,
   -- iniciar una sessi� de correu electr�nic amb begin_session().
   -- Despr�s, comen�ar cada correu electr�nic amb una sessi� cridant
   -- begin_mail_in_session() en lloc de begin_mail().
   -- Fi del correu electr�nic amb end_mail_in_session() lloc de end_mail().
   -- Finalitzar la sessi� de correu electr�nic end_session().

   /*************************************************************************
       Iniciar sessi� smtp.
       return     : conexi�
   *************************************************************************/
   FUNCTION begin_session
      RETURN UTL_SMTP.connection;

/*************************************************************************
    Comen�ar un correu electr�nic en una sessi�.
    El format d'una adre�a de correu electr�nic �s un dels seg�ents:
        - someone@some-domain.com
        - "Alg� en algun domini" <someone@some-domain.com>
        - Alg� en algun domini <someone@some-domain.com>
    param in out conn: conexi�
    param in sender: emisor del mail.
    param in recipients: receptor del mail.
    param in subject: assumpte del mail
    param in cc: receptor copia del mail.
    param in cc0: receptor copia oculta del mail.
    param in mime_type: "Content-Type" cap�alera MIME
    param in priority: prioritat
*************************************************************************/
   PROCEDURE begin_mail_in_session(
      conn IN OUT NOCOPY UTL_SMTP.connection,
      sender IN VARCHAR2,
      recipients IN VARCHAR2,
      subject IN VARCHAR2,
      cc IN VARCHAR2 DEFAULT NULL,
      cco IN VARCHAR2 DEFAULT NULL,
      mime_type IN VARCHAR2 DEFAULT 'text/plain',
      priority IN PLS_INTEGER DEFAULT NULL);

/*************************************************************************
    Fi d'un correu electr�nic en una sessi�.
    param in out conn: conexi�
*************************************************************************/
   PROCEDURE end_mail_in_session(conn IN OUT NOCOPY UTL_SMTP.connection);

/*************************************************************************
    Finalitzar una sessi� de correu electr�nic.
    param in out conn: conexi�
*************************************************************************/
   PROCEDURE end_session(conn IN OUT NOCOPY UTL_SMTP.connection);
END pac_send_mail;

/

  GRANT EXECUTE ON "AXIS"."PAC_SEND_MAIL" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_SEND_MAIL" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_SEND_MAIL" TO "PROGRAMADORESCSI";
