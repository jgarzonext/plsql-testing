--------------------------------------------------------
--  DDL for Procedure P_EJECUTAR_CARTERA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_EJECUTAR_CARTERA" (
   psproces IN NUMBER,
   pmodo IN VARCHAR2,
   pcempres IN NUMBER,
   pnpoliza IN NUMBER,
   pfperini IN DATE,
   pncertif IN NUMBER,
   pmoneda IN NUMBER,
   pcidioma IN NUMBER,
   psprocar IN NUMBER,
   prenuevan IN NUMBER,
   pmens IN VARCHAR2,
   pfcartera IN DATE DEFAULT NULL)
AUTHID CURRENT_USER IS
   vpas           NUMBER;
   vobj           VARCHAR2(200) := 'P_EJECUTAR_CARTERA';
   vpar           VARCHAR2(500)
      := 'a=' || psproces || ' e=' || pmodo || ' m=' || pcempres || ' l=' || pnpoliza || ' p='
         || pfperini || ' f=' || pfcartera || ' s=' || pncertif || ' j=' || pmoneda || ' n='
         || pcidioma || ' y=' || psprocar || ' t=' || prenuevan;
   vcempres       VARCHAR2(10);
   verror         NUMBER;
   v_numlin       NUMBER;
   vsent          VARCHAR2(2000);
   e_salida       EXCEPTION;

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

      IF f_user IS NULL THEN
         verror := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(vcempres,
                                                                               'USER_BBDD'));
      END IF;

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
   vsent := 'DECLARE' || ' vmens VARCHAR(250);'
            || ' BEGIN :verror := pac_dincartera.f_ejecutar_cartera(' || f_nulos(psproces)
            || ',' || CHR(39) || pmodo || CHR(39) || ',' || f_nulos(pcempres) || ','
            || f_nulos(pnpoliza) || ',' || f_nulos(TO_CHAR(pfperini, 'ddmmyyyy'), 2) || ','
            || f_nulos(TO_CHAR(pfcartera, 'ddmmyyyy'), 2) || ',' || f_nulos(pncertif) || ','
            || f_nulos(pmoneda) || ',' || f_nulos(pcidioma) || ',' || f_nulos(psprocar) || ','
            || f_nulos(prenuevan) || ',vmens); END;';
   vpas := 170;

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
END p_ejecutar_cartera;

/

  GRANT EXECUTE ON "AXIS"."P_EJECUTAR_CARTERA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_EJECUTAR_CARTERA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_EJECUTAR_CARTERA" TO "PROGRAMADORESCSI";
