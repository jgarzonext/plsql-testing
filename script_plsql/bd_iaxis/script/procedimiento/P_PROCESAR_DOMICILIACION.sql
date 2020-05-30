--------------------------------------------------------
--  DDL for Procedure P_PROCESAR_DOMICILIACION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_PROCESAR_DOMICILIACION" (pfinicio IN DATE, pffin IN DATE)
AUTHID CURRENT_USER IS
   /******************************************************************************
   NOMBRE:       P_PROCESAR_DOMICILIACION
   PROPÓSITO:    Procedimiento que se programará a través de la consulta “Procesos Batch”
   REVISIONES:
   Ver        Fecha        Autor             Descripción
   ---------  ----------  ---------------  ------------------------------------
   1.0        20/11/2015  ALUNA               1. Creación del procedure.

   ******************************************************************************/
   vnumerr        NUMBER;
   v_object       VARCHAR(100) := 'P_PROCESAR_DOMICILIACION';
   vpasexec       NUMBER := 0;
   v_titulo       VARCHAR(2000);
   vsproces       NUMBER;
   v_sproces      NUMBER;
   campo1_out     NUMBER;
   campo2_out     NUMBER;
   campo3_out     NUMBER;
   estado         VARCHAR(100);
   conn           UTL_SMTP.connection;
   mail_sender    VARCHAR2(2000);
   vemail         VARCHAR2(2000);
   mail_cc        VARCHAR2(1500);
   mail_cco       VARCHAR2(1500);
   v_linea        NUMBER;
BEGIN
   vpasexec := 10;
   v_titulo := 'Proceso Domiciliación';
   vnumerr := f_procesini(f_user, 23, 'DOMICILIACION', v_titulo, vsproces);
   p_tab_error(f_sysdate, f_user, v_object, vpasexec, vsproces, SQLERRM);
   vpasexec := 20;

   INSERT INTO domisaux
               (sproces, cramo, cmodali, ctipseg, ccolect)
        VALUES (vsproces, 303, 0, 0, 0);

   INSERT INTO domisaux
               (sproces, cramo, cmodali, ctipseg, ccolect)
        VALUES (vsproces, 303, 1, 0, 0);

   vpasexec := 30;
   vnumerr := pac_domis.f_domiciliar(vsproces, 23, pffin, NULL, NULL, NULL, NULL, NULL, NULL,
                                     NULL, NULL, NULL, NULL, pfinicio, NULL, NULL, NULL, NULL,
                                     NULL, NULL, campo1_out, campo2_out, campo3_out);
   p_tab_error(f_sysdate, f_user, v_object, vpasexec, vnumerr, SQLERRM);
   vpasexec := 40;

   IF vnumerr = 0 THEN
      estado := 'EXITOSO';
   ELSE
      estado := 'FALLIDO';
   END IF;

   p_tab_error(f_sysdate, f_user, v_object, vpasexec, estado, SQLERRM);
   vpasexec := 50;

   SELECT remitente
     INTO mail_sender
     FROM mensajes_correo
    WHERE scorreo = 312;

   vpasexec := 60;

   SELECT remitente
     INTO vemail
     FROM mensajes_correo
    WHERE scorreo = 313;

   vpasexec := 70;
   conn := pac_send_mail.begin_mail(sender => mail_sender, recipients => vemail, cc => mail_cc,
                                    cco => mail_cco,
                                    subject => 'Domiciliacion Automatica PFINI - PFFIN',
                                    mime_type => pac_send_mail.multipart_mime_type
                                     || '; charset=iso-8859-1');
   vpasexec := 80;
   pac_send_mail.attach_text(conn => conn,
                             DATA => 'Estado de la domiciliación automática  = ' || estado
                              || '  | Fecha desde =  ' || pfinicio || ' |Fecha Hasta: '
                              || pffin,
                             mime_type => 'text/html');
   vpasexec := 90;
   pac_send_mail.end_attachment(conn);
   vpasexec := 100;
   pac_send_mail.end_mail(conn => conn);
   vpasexec := 110;
   vnumerr := f_proceslin(v_sproces,
                          'Estado de la domiciliación automática  = ' || estado
                          || '  | Fecha desde =  ' || pfinicio || ' |Fecha Hasta: ' || pffin,
                          0, v_linea);
   p_tab_error(f_sysdate, f_user, v_object, vpasexec, vnumerr, SQLERRM);
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, v_object, vpasexec, '', SQLCODE || ' - ' || SQLERRM);
END p_procesar_domiciliacion;

/

  GRANT EXECUTE ON "AXIS"."P_PROCESAR_DOMICILIACION" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_PROCESAR_DOMICILIACION" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_PROCESAR_DOMICILIACION" TO "PROGRAMADORESCSI";
