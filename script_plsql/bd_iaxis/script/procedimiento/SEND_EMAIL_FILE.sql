--------------------------------------------------------
--  DDL for Procedure SEND_EMAIL_FILE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."SEND_EMAIL_FILE" (
   p_from_name      IN   VARCHAR,     -- Ex:  'Tomeu Mir'
   p_from_address   IN   VARCHAR,
   p_to_address     IN   VARCHAR,
   p_subject        IN   VARCHAR,
   p_body           IN   VARCHAR,
   p_filepath       IN   VARCHAR,     -- Ex: '/samba/datos/pc/ftserver/depSEGS/interfases/in'
   p_filename       IN   VARCHAR,     -- Ex: 'test.htm'  or 'test.txt'
   p_mime_type      IN   VARCHAR,      -- Ex: 'text/html' or 'text/plain'
   p_cc_address     IN   VARCHAR DEFAULT NULL
)
AS
   crlf                  CONSTANT VARCHAR2 (10)  := UTL_TCP.crlf;
   boundary              CONSTANT VARCHAR2 (256) := '-----7D81B75CCC90D2974F7A1CBD';
   first_boundary        CONSTANT VARCHAR2 (256) := '--' || boundary || crlf;
   last_boundary         CONSTANT VARCHAR2 (256) := '--' || boundary || '--' || crlf;
   multipart_mime_type   CONSTANT VARCHAR2 (256) := 'multipart/mixed; boundary="' || boundary || '"';
   conn      UTL_SMTP.connection;
   mailhost  VARCHAR2 (255) := F_Parinstalacion_T ('MAIL_SERV');
   port      NUMBER         := F_Parinstalacion_N ('MAIL_PORT');
   --
   p_file                         UTL_FILE.FILE_TYPE;
   vline                          VARCHAR2 (2000);
   pos                            NUMBER;
   read_bytes                     NUMBER;
   DATA                           RAW (200);
   bfile_len                      NUMBER;
   --
   recipients  VARCHAR2(255);

   v_body   VARCHAR2(4000);

   PROCEDURE send_receive_header (NAME IN VARCHAR2, HEADER IN VARCHAR2)
   IS
   BEGIN
      UTL_SMTP.write_data (conn, NAME || ': ' || HEADER || crlf);
   END;

   -- *************************************************************************
   -- Function to return the next email address in the list of email addresses,
   -- separated by either a "," or a ";".  From Oracle's demo_mail.  The format
   -- of mailbox may be in one of these:
   --    someone@some-domain
   --    "Someone at some domain" <someone@some-domain>
   --    Someone at some domain <someone@some-domain>
   -- *************************************************************************
   --
   -- 07/07/2007  Tomeu   Replacement: \n -> ctrl in p_body
   --
   FUNCTION get_address(addr_list IN OUT VARCHAR2) RETURN VARCHAR2 IS

      addr VARCHAR2(256);
      i    PLS_INTEGER;

      FUNCTION lookup_unquoted_char(str  IN VARCHAR2,
                                    chrs IN VARCHAR2) RETURN PLS_INTEGER IS
         c            VARCHAR2(5);
         i            PLS_INTEGER;
         len          PLS_INTEGER;
         inside_quote BOOLEAN;

      BEGIN

         inside_quote := FALSE;
         i := 1;
         len := LENGTH(str);
         WHILE (i <= len) LOOP
            c := SUBSTR(str, i, 1);
            IF (inside_quote) THEN
               IF (c = '"') THEN
                  inside_quote := FALSE;
               ELSIF (c = '\') THEN
                  i := i + 1; -- Skip the quote character
               END IF;
               GOTO next_char;
            END IF;
            IF (c = '"') THEN
               inside_quote := TRUE;
               GOTO next_char;
            END IF;
            IF (INSTR(chrs, c) >= 1) THEN
               RETURN i;
            END IF;
            <<next_char>>
            i := i + 1;
         END LOOP;
         RETURN 0;
      END;

   BEGIN

      addr_list := LTRIM(addr_list);
      i := lookup_unquoted_char(addr_list, ',;');
      IF (i >= 1) THEN
         addr := SUBSTR(addr_list, 1, i - 1);
         addr_list := SUBSTR(addr_list, i + 1);
      ELSE
         addr := addr_list;
         addr_list := '';
      END IF;
      i := lookup_unquoted_char(addr, '<');
      IF (i >= 1) THEN
         addr := SUBSTR(addr, i + 1);
         i := INSTR(addr, '>');
         IF (i >= 1) THEN
            addr := SUBSTR(addr, 1, i - 1);
         END IF;
      END IF;
      RETURN addr;
   END;

   -- *************************************************************************
   --   PROCEDIMENT PER AFEGIR EL CONTINGUT DEL FITXER ADJUNT
   -- *************************************************************************
   PROCEDURE append_file (
      directory_path   IN       VARCHAR2,
      file_name        IN       VARCHAR2,
      file_type        IN       VARCHAR2,
      conn             IN OUT   UTL_SMTP.connection
   )
   IS
--
      file_handle      UTL_FILE.FILE_TYPE;
      bfile_handle     BFILE;
      bfile_len        INTEGER;
      pos              NUMBER;
      read_bytes       NUMBER;
      line             VARCHAR2 (1000);
      my_DATA          RAW (2000);
      my_code          NUMBER;
      my_errm          VARCHAR2 (32767);
      --
   BEGIN
      BEGIN
--        execute immediate 'create or replace directory DATA_FILE_DIR as ''' || directory_path || '''';
--        execute immediate 'grant read on directory DATA_FILE_DIR to public';
         --
         -- S'agafa el Handle al fitxer a adjuntar.
         --
         IF SUBSTR (file_type, 1, 4) != 'text'
         THEN
            bfile_handle := BFILENAME (directory_path, file_name);
            DBMS_LOB.OPEN (bfile_handle, DBMS_LOB.lob_readonly);
            bfile_len := DBMS_LOB.getlength (bfile_handle);
            pos := 1;
         ELSE
            file_handle := UTL_FILE.FOPEN (directory_path, file_name, 'r');
         END IF;
         --
         -- S'adjunta el contingut del fitxer al missatge
         --
         LOOP
           IF SUBSTR (file_type, 1, 4) != 'text'
           THEN
           -- Es un fitxer BINARI
           --
               IF pos + 57 - 1 > bfile_len
               THEN
                  read_bytes := bfile_len - pos + 1;
               ELSE
                  read_bytes := 57;
               END IF;

               DBMS_LOB.READ (bfile_handle, read_bytes, pos, my_DATA);

               UTL_SMTP.write_raw_data (conn, UTL_ENCODE.base64_encode (my_DATA));
               pos := pos + 57;

               IF pos > bfile_len
               THEN
                  EXIT;
               END IF;
            ELSE
            -- Es un fitxer de texte. S'agafa la linea i s'afegeix amb un bot de linea al final.
            --
               UTL_FILE.GET_LINE (file_handle, line);
               UTL_SMTP.write_data (conn, line || crlf);
            END IF;
         END LOOP;

      EXCEPTION
         WHEN NO_DATA_FOUND
         THEN
            NULL;
         WHEN OTHERS
         THEN
            my_code := SQLCODE;
            my_errm := SQLERRM;
            DBMS_OUTPUT.PUT_LINE ('Error code ' || my_code || ': ' || my_errm);
      END;

      -- Close the file (binary or text)
      BEGIN
      IF SUBSTR (file_type, 1, 4) != 'text'
      THEN
         DBMS_LOB.CLOSE (bfile_handle);
        DBMS_OUTPUT.PUT_LINE ('BFILE closed');
      ELSE
         UTL_FILE.FCLOSE (file_handle);
      END IF;
      EXCEPTION
        WHEN OTHERS THEN
          DBMS_OUTPUT.PUT_LINE ('Excepció tancant fitxer : '||SUBSTR(SQLERRM(SQLCODE),1,100));
          NULL;
      END;
   END append_file;
   -- *************************************************************************
   --   PROCES PRINCIPAL
   -- *************************************************************************
BEGIN
   --
   -- Obre la connexió
   --
   conn := UTL_SMTP.open_connection (mailhost, port);
   UTL_SMTP.helo (conn, mailhost);
   --
   -- Obre el missatge
   --
   UTL_SMTP.mail (conn, '< ' || p_from_address || ' >');

   -- UTL_SMTP.rcpt (conn, '< ' || p_to_address || ' >');
   recipients := p_to_address;
   WHILE recipients IS NOT NULL LOOP
     UTL_SMTP.rcpt (conn, get_address(recipients) );
   END LOOP;

   IF (p_cc_address IS NOT NULL) THEN
     UTL_smtp.rcpt(conn, p_cc_address);
   END IF;


   UTL_SMTP.open_data (conn);
   send_receive_header ('From', '"' || p_from_name || '" <' || p_from_address || '>' );
   send_receive_header ('To', '' || p_to_address || '');

   IF (p_cc_address IS NOT NULL) THEN
     send_receive_header ('Cc', '' || p_cc_address|| '');
   END IF;

   --send_header('cc',''||cc_address||'');
   send_receive_header ('Date', TO_CHAR (SYSDATE, 'dd Mon yy hh24:mi:ss') || ' +1100' );
   send_receive_header ('Subject', p_subject);
   send_receive_header ('Content-Type', multipart_mime_type);
   --
   -- Tanca la capçalera del missatge amb CRLF.
   --
   UTL_SMTP.write_data (conn, crlf);
   UTL_SMTP.write_data (conn, 'This is a multi-part message in MIME format.' || crlf );
   --
   -- Enviament del Missatge
   --
   -- 1. Body
   --
   -- replace \n -> ctrl
   IF INSTR(p_body, '\n') > 0 THEN
     v_body := REPLACE( p_body, '\n', CHR(13)||CHR(10) );  -- ctrl = CHR(13)||CHR(10)
   ELSE
     v_body := p_body;
   END IF;

   -- add body
   UTL_SMTP.write_data (conn, first_boundary);
   send_receive_header ('Content-Type', p_mime_type);
   UTL_SMTP.write_data (conn, crlf);
   UTL_SMTP.write_data (conn, v_body);
   UTL_SMTP.write_data (conn, crlf);
   --
   -- 2. afegir el document adjunt
   --
   IF p_filename IS NOT NULL THEN
       UTL_SMTP.write_data (conn, first_boundary);
       send_receive_header ('Content-Type', p_mime_type);
       send_receive_header ('Content-Disposition', 'attachment; filename= ' || p_filename );

       IF SUBSTR (p_mime_type, 1, 4) != 'text' THEN
         UTL_SMTP.write_data (conn, 'Content-Transfer-Encoding: base64');
       END IF;

       UTL_SMTP.write_data (conn, crlf);
       append_file( p_filepath, p_filename, p_mime_type, conn );
       UTL_SMTP.write_data (conn, crlf);
   END IF;

   --
   -- Tanca el missatge
   --
   UTL_SMTP.write_data (conn, last_boundary);
   --
   -- Tanca la connexió
   --
   UTL_SMTP.close_data (conn);
   UTL_SMTP.quit (conn);

EXCEPTION
  WHEN OTHERS THEN
       DBMS_OUTPUT.PUT_LINE ( SUBSTR(SQLERRM(SQLCODE),1,100) );

END Send_Email_File;
 
 

/

  GRANT EXECUTE ON "AXIS"."SEND_EMAIL_FILE" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."SEND_EMAIL_FILE" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."SEND_EMAIL_FILE" TO "PROGRAMADORESCSI";
