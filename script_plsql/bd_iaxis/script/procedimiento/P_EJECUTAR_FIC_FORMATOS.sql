--------------------------------------------------------
--  DDL for Procedure P_EJECUTAR_FIC_FORMATOS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_EJECUTAR_FIC_FORMATOS" (
   pcempres IN NUMBER,
   ptgestor IN VARCHAR2,
   ptformat IN VARCHAR2,
   panio IN NUMBER,
   pmes IN VARCHAR2,
   pmes_dia IN VARCHAR2,
   pchk_genera IN VARCHAR2,
   pchkescribe IN VARCHAR2,
   psproces NUMBER)
AUTHID CURRENT_USER IS
   vpas           NUMBER;
   vobj           VARCHAR2(200) := 'P_EJECUTAR_FIC_FORMATOS';
   vpar           VARCHAR2(500)
      := 'a=' || pcempres || ' b=' || ptgestor || ' c=' || ptformat || ' d=' || panio || ' e='
         || pmes || ' f=' || pmes_dia || ' g=' || pchk_genera || ' h=' || pchkescribe || ' i='
         || psproces;
   vcempres       VARCHAR2(10);
   verror         NUMBER;
   vsent          VARCHAR2(2000);
   e_salida       EXCEPTION;
BEGIN
   vpas := 120;
   verror := 0;

   --Inicialització del context
   BEGIN
      IF pcempres IS NULL THEN
         vpas := 130;
         vcempres := f_parinstalacion_n('EMPRESADEF');
      ELSE
         vpas := 140;
         vcempres := pcempres;
      END IF;

      vpas := 150;
      verror := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(vcempres,
                                                                            'USER_BBDD'));

      IF verror > 0 THEN
         p_tab_error(f_sysdate, f_user, vobj, vpas, vpar || ' vcempres=' || vcempres, verror);
         RAISE e_salida;
      END IF;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, vobj, vpas, vpar || ' vcempres=' || vcempres,
                     SQLCODE || ' ' || SQLERRM);
         RAISE e_salida;
   END;

   vpas := 160;
   vsent := 'DECLARE' || ' vxpruta     VARCHAR2(1000);' || ' vxmensajes  t_iax_mensajes;'
            || ' BEGIN :verror := pac_fic_formatos.f_genera_formatos(' || vcempres || ','''
            || ptgestor || ''',''' || ptformat || ''',' || ' ' || panio || ',' || ' ''' || pmes
            || ''',' || ' ''' || pmes_dia || ''',' || ' ''' || pchk_genera || ''',' || ' '''
            || pchkescribe || ''', ' || psproces || '); END;';
   vpas := 170;

   EXECUTE IMMEDIATE vsent
               USING OUT verror;

   COMMIT;
EXCEPTION
   WHEN e_salida THEN
      COMMIT;
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, vobj, vpas,
                  vpar || ' emp=' || vcempres || ' err=' || verror, SQLCODE || ' ' || SQLERRM);
      COMMIT;
END p_ejecutar_fic_formatos;

/

  GRANT EXECUTE ON "AXIS"."P_EJECUTAR_FIC_FORMATOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_EJECUTAR_FIC_FORMATOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_EJECUTAR_FIC_FORMATOS" TO "PROGRAMADORESCSI";
