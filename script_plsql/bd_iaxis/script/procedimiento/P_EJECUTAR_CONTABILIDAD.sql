--------------------------------------------------------
--  DDL for Procedure P_EJECUTAR_CONTABILIDAD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_EJECUTAR_CONTABILIDAD" (pcempres IN NUMBER, pfcontabilidad IN DATE)
AUTHID CURRENT_USER IS
   vpas           NUMBER;
   vobj           VARCHAR2(200) := 'P_EJECUTAR_CONTABILIDAD';
   vpar           VARCHAR2(500) := 'a=' || pcempres || ' e=' || pfcontabilidad;
   vcempres       VARCHAR2(10);
   verror         NUMBER;
   v_numlin       NUMBER;
   vsent          VARCHAR2(2000);
   e_salida       EXCEPTION;
   vidioma        NUMBER;
   v_error        NUMBER;

   --
--   pruta          VARCHAR2(1000);
--   mensajes       t_iax_mensajes;
   --
   FUNCTION f_nulos(p_camp IN VARCHAR2, p_tip IN NUMBER DEFAULT 1)
      RETURN VARCHAR2 IS
   BEGIN
      vpas := 100;

      IF p_camp IS NULL THEN
         RETURN ' null';
      ELSE
         IF p_tip = 2 THEN
            vpas := 110;
            RETURN ' to_date(' || CHR(39) || p_camp || CHR(39) || ',''ddmmyyyy'')';
         ELSE
            RETURN ' ' || p_camp;
         END IF;
      END IF;
   END;
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

   vpas := 160;
   vsent := 'DECLARE' || ' vxpruta     VARCHAR2(1000);' || ' vxmensajes  t_iax_mensajes;'
            || ' BEGIN :verror := pac_cuadre_adm.f_contabiliza_diario(' || f_nulos(vcempres)
            || ',' || f_nulos(TO_CHAR(pfcontabilidad, 'ddmmyyyy'), 2) || '); END;';
   vpas := 170;

   EXECUTE IMMEDIATE vsent
               USING OUT verror;

   COMMIT;

   IF verror = 0 THEN
      v_error := pac_correo.f_envia_correo(vidioma, NULL, 15,
                                           f_axis_literales(104998, vidioma) || ' '
                                           || TO_CHAR(NVL(pfcontabilidad, f_sysdate),
                                                      'dd/mm/yyyy'));
   END IF;
EXCEPTION
   WHEN e_salida THEN
      COMMIT;
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, vobj, vpas,
                  vpar || ' emp=' || vcempres || ' err=' || verror, SQLCODE || ' ' || SQLERRM);
      COMMIT;
END p_ejecutar_contabilidad;

/

  GRANT EXECUTE ON "AXIS"."P_EJECUTAR_CONTABILIDAD" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_EJECUTAR_CONTABILIDAD" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_EJECUTAR_CONTABILIDAD" TO "PROGRAMADORESCSI";
