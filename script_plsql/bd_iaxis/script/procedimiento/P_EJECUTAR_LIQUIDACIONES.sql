--------------------------------------------------------
--  DDL for Procedure P_EJECUTAR_LIQUIDACIONES
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_EJECUTAR_LIQUIDACIONES" (
   pcagente IN NUMBER,
   pcempres IN NUMBER,
   pmodo IN NUMBER,
   pfecliq IN DATE,
   psproces IN NUMBER,
   psucursal IN NUMBER DEFAULT NULL,
   padnsuc IN NUMBER DEFAULT NULL,
   pcliquido IN NUMBER DEFAULT NULL)
AUTHID CURRENT_USER IS
   vpas           NUMBER;
   vobj           VARCHAR2(200) := 'P_EJECUTAR_LIQUIDACIONES';
   vpar           VARCHAR2(500)
      := 'a=' || pcagente || ' e=' || pcempres || ' m=' || pmodo || ' l=' || pfecliq || ' p='
         || psproces || ' s=' || psucursal || ' a=' || padnsuc || ' l=' || pcliquido;
   vcempres       VARCHAR2(10);
   verror         NUMBER;
   v_numlin       NUMBER;
   vsent          VARCHAR2(2000);
   e_salida       EXCEPTION;
   vidioma        NUMBER;
   v_error        NUMBER;
   --BUG 36509 KJSC 11/09/2015 Generar el listado de liquidaciones de un agente
   mensajes       t_iax_mensajes;
   puser          VARCHAR2(1000);
   piddocgedox    NUMBER;
   vtamano        age_documentos.tamano%TYPE;

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
      puser := f_user;

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
            || ' BEGIN :verror := pac_md_liquida.f_liquidaliq(' || f_nulos(pcagente) || ','
            || f_nulos(vcempres) || ',' || f_nulos(pmodo) || ','
            || f_nulos(TO_CHAR(pfecliq, 'ddmmyyyy'), 2) || ',' || f_nulos(psproces) || ','
            || ' vxpruta,' || ' vxmensajes,' || f_nulos(psucursal) || ',' || f_nulos(padnsuc)
            || ',' || f_nulos(pcliquido) || '); END;';
   vpas := 170;

   EXECUTE IMMEDIATE vsent
               USING OUT verror;

   COMMIT;
   vpas := 260;

   --FIN BUG 36509 KJSC 11/09/2015 Generar el listado de liquidaciones de un agente
   IF verror = 0 THEN
      -- BUG: 25910  AMJ  05/02/2013  0025910: LCOL: Enviament de correu en el proc?s de liquidaci?  Ini
      v_error := pac_correo.f_envia_correo(vidioma, psproces);
   -- BUG: 25910  AMJ 05/02/2013 0025910: LCOL: Enviament de correu en el proc?s de liquidaci?   Fin
   END IF;
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
END p_ejecutar_liquidaciones;

/

  GRANT EXECUTE ON "AXIS"."P_EJECUTAR_LIQUIDACIONES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_EJECUTAR_LIQUIDACIONES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_EJECUTAR_LIQUIDACIONES" TO "PROGRAMADORESCSI";
