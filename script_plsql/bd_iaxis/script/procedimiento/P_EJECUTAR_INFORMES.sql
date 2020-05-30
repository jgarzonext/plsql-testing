--------------------------------------------------------
--  DDL for Procedure P_EJECUTAR_INFORMES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_EJECUTAR_INFORMES" (
   pcempres IN NUMBER,
   pcform IN VARCHAR2,
   ptevento IN VARCHAR2,
   psproduc IN NUMBER,
   pcmap IN VARCHAR2,
   pparams IN VARCHAR2,
   psproces IN NUMBER)
AUTHID CURRENT_USER IS
   vpas           NUMBER;
   vobj           VARCHAR2(200) := 'P_EJECUTAR_INFORMES';
   vpar           VARCHAR2(500)
      := 'pcempres=' || pcempres || ' pcform=' || pcform || ' ptevento=' || ptevento
         || ' psproduc=' || psproduc || ' psproces=' || psproces;
   vcempres       VARCHAR2(10);
   verror         NUMBER;
   v_numlin       NUMBER;
   vsent          VARCHAR2(2000);
   e_salida       EXCEPTION;
   vidioma        NUMBER;
   v_error        NUMBER;

   FUNCTION f_nulos(p_camp IN VARCHAR2, p_tip IN NUMBER DEFAULT 1)
      RETURN VARCHAR2 IS
   BEGIN
      vpas := 10;

      IF p_camp IS NULL THEN
         RETURN ' null';
      ELSE
         IF p_tip = 2 THEN
            vpas := 20;
            RETURN ' to_date(' || CHR(39) || p_camp || CHR(39) || ',''ddmmyyyy'')';
         ELSE
            RETURN ' ' || CHR(39) || p_camp || CHR(39);
         END IF;
      END IF;
   END;
BEGIN
   vpas := 30;
   verror := 0;

   --Inicialització del context
   BEGIN
      IF pcempres IS NULL THEN
         vpas := 40;
         vcempres := f_parinstalacion_n('EMPRESADEF');
      ELSE
         vpas := 50;
         vcempres := pcempres;
      END IF;

      vpas := 60;
      verror := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(vcempres,
                                                                            'USER_BBDD'));
      vidioma := pac_md_common.f_get_cxtidioma();

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

   vpas := 70;
   vsent := 'DECLARE' || ' vxtimp      t_iax_impresion;' || ' vxmensajes  t_iax_mensajes;'
            || ' BEGIN :verror := pac_md_cfg.f_ejecutar_informe_batch(' || pcempres || ','
            || f_nulos(pcform) || ',' || f_nulos(ptevento) || ',' || f_nulos(psproduc) || ','
            || f_nulos(pcmap) || ',' || f_nulos(pparams) || ',' || psproces || ','
            || ' vxtimp,' || ' vxmensajes); END;';
   vpas := 80;

   EXECUTE IMMEDIATE vsent
               USING OUT verror;

   COMMIT;
EXCEPTION
   WHEN e_salida THEN
      IF psproces IS NOT NULL THEN
         verror := f_proceslin(psproces,
                               SUBSTR('ERROR ' || vobj || ' ' || SQLCODE || '-' || verror
                                      || '-' || vpas,
                                      1, 120),
                               0, v_numlin, 2);
      END IF;

      COMMIT;
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, vobj, vpas,
                  vpar || ' emp=' || vcempres || ' err=' || verror, SQLCODE || ' ' || SQLERRM);

      IF psproces IS NOT NULL THEN
         verror := f_proceslin(psproces,
                               SUBSTR('ERROR ' || vobj || ' ' || SQLCODE || '-' || verror
                                      || '-' || vpas,
                                      1, 120),
                               0, v_numlin, 2);
      END IF;

      COMMIT;
END p_ejecutar_informes;

/

  GRANT EXECUTE ON "AXIS"."P_EJECUTAR_INFORMES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_EJECUTAR_INFORMES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_EJECUTAR_INFORMES" TO "PROGRAMADORESCSI";
