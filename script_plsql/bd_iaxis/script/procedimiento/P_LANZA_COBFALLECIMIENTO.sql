--------------------------------------------------------
--  DDL for Procedure P_LANZA_COBFALLECIMIENTO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_LANZA_COBFALLECIMIENTO" (
   p_inicobertura IN VARCHAR2,
   p_fincobertura IN VARCHAR2,
   p_fichero IN VARCHAR2,
   p_fgenerado OUT VARCHAR2,
   p_error OUT NUMBER,
   p_cempres IN NUMBER,
   p_tipoenvio IN NUMBER DEFAULT 1,
   p_tipofichero IN NUMBER DEFAULT 1,   -- Bug 18006 - APD - 21/03/2011 - se añade el parametro
   p_modoejecucion IN NUMBER DEFAULT 1)   -- Bug 18006 - APD - 21/03/2011 - se añade el parametro
AUTHID CURRENT_USER IS
   /******************************************************************************
      NOMBRE:      P_LANZA_COBFALLECIMIENTO
      PROPÓSITO:   Funció que genera els registres de cobertura de mort
     Paràmetres entrada: - p_inicobertura -> data inicial
                         - p_fincobertura -> data fitxer
                         - p_fichero      -> nom fitxer on es grabarà la informació
                         - p_cempres      -> empresa
                         - p_tipoEnvio    -> Tipo 0-Inicial, 1-Periodico.
                         - p_tipofichero  -> Valor del parempresa TIPOFICHCOBFALL
                         - p_modoejecucion-> 1-Desde pantalla, 2-Desde package
     Paràmetres sortida: - p_fgenerado    -> Nombre/patch completo del fichero generado
                         - mensajes      -> Missatges d'error
     return:             retorna 0 si va tot bé, sino el codi de l'error

      REVISIONES:
      Ver        Fecha        Autor             Descripción
      ---------  ----------  ---------------  ------------------------------------
      1.0        17/02/2010   JMF              1. 0013247 Afegir param p_fgenerado: Nombre/patch completo del fichero generado
      2.0        14/04/2010   JMF              2. 0014113 Afegir param p_tipoEnvio: 0-Carga inicial, 1-registre periòdic.
      3.0        02/07/2010   JMF              3. 0015209 Afegir calcul num. movimient per alguns productes sens garanseg migrats.
      4.0        20/12/2010   JMF              4. 0016853 CEM800 - Registro Contratos Fallecimiento incidencias de envío periódicos
      5.0        21/03/2011   APD              5. 0018006: CX703 - Revisió generació registre cobertures de mort
   ******************************************************************************/
   v_obj          VARCHAR2(0100) := 'P_LANZA_COBFALLECIMIENTO';
   v_par          VARCHAR2(1000)
      := 'ini=' || p_inicobertura || ' fin=' || p_fincobertura || ' fic=' || p_fichero
         || ' emp=' || p_cempres || ' tip=' || p_tipoenvio || ' tipofichero=' || p_tipofichero;
   k_reg_commit   NUMBER := 500;   -- BUG 0015209 07/07/2010: Cada cert número registres fa commit

   /*  formato de las fechas YYYYMMDD  */
   CURSOR c_xml(pcmapead IN VARCHAR2) IS
      SELECT x.tcharset
        FROM map_cabecera_xml x
       WHERE x.cmapead = pcmapead;

   r_xml          c_xml%ROWTYPE;
   v_error        NUMBER := 0;
   vdescerror     VARCHAR2(512);
   vcmapead       VARCHAR2(5);
   vsmapead       NUMBER;
   vnom           VARCHAR2(50);
   e_map_error    EXCEPTION;
   doc            xmldom.domdocument;
   datos          VARCHAR2(32000);
   v_map          map_cabecera.cmapead%TYPE;
   n_linerr       NUMBER(4);
   -- BUG 0016853 - 20/12/2010 - JMF
   d_ini          DATE := TO_DATE(p_inicobertura, 'YYYY/MM/DD');
   d_fin          DATE := TO_DATE(p_fincobertura, 'YYYY/MM/DD');
   psmovimi       NUMBER;
   d_fec          DATE;
   v_retorno      VARCHAR2(4000);
   --
   v_fitxer       UTL_FILE.file_type;
   v_nomfitxer    VARCHAR2(1000);
   v_path         VARCHAR2(100);
   v_path2        VARCHAR2(100);

   FUNCTION f_valor_linia(
      psepara IN VARCHAR2,
      plinia IN VARCHAR2,
      ppos IN NUMBER,
      plong IN NUMBER)
      RETURN VARCHAR2 IS
      vvalor         VARCHAR2(4000);
   BEGIN
      n_linerr := 1000;

      IF ppos IS NULL
         OR plong IS NULL THEN
         n_linerr := 1005;
         vvalor := plinia;
      ELSIF psepara IS NULL THEN
         n_linerr := 1010;
         vvalor := SUBSTR(plinia, ppos, plong);
      ELSE
         IF INSTR(plinia, psepara, 1) <> 0 THEN
            IF ppos = 0
               AND INSTR(plinia, psepara, 1) = 1 THEN
               n_linerr := 1015;
               vvalor := NULL;
            ELSE
               IF INSTR(plinia, psepara, 2 - ppos, plong + ppos) = 0 THEN
                  --estem a l'últim troç
                  n_linerr := 1020;
                  vvalor := SUBSTR(plinia, INSTR(plinia, psepara, ppos, plong) + ppos,
                                   ABS(LENGTH(plinia) + 1
                                       - INSTR(plinia, psepara, ppos, plong) - 1));
               ELSE
                  --estem a un troç intermig
                  n_linerr := 1025;
                  vvalor := SUBSTR(plinia, INSTR(plinia, psepara, ppos, plong) + ppos,
                                   ABS(INSTR(plinia, psepara, 2 - ppos, plong + ppos)
                                       - INSTR(plinia, psepara, ppos, plong) - 1));
               END IF;
            END IF;
         ELSE
            n_linerr := 1030;
            vvalor := plinia;
         END IF;
      END IF;

      n_linerr := 1035;
      RETURN vvalor;
   END f_valor_linia;

   FUNCTION f_busca_persona(p_per IN NUMBER, p_vis IN NUMBER, p_fec IN DATE)
      RETURN VARCHAR2 IS
      v_ret          VARCHAR2(4000);
      n_his          NUMBER;
   BEGIN
      v_ret := NULL;

      SELECT MIN(hp2.norden)
        INTO n_his
        FROM hisper_detper hp2
       WHERE hp2.sperson = p_per
         AND hp2.cagente = p_vis
         AND LTRIM(hp2.tnombre || hp2.tapelli1 || hp2.tapelli2) IS NOT NULL
         AND hp2.fmovimi >= p_fec;

      IF n_his IS NULL THEN
         SELECT p2.tnombre || '|' || p2.tapelli1 || '|' || p2.tapelli2
           INTO v_ret
           FROM per_detper p2
          WHERE p2.sperson = p_per
            AND p2.cagente = p_vis;
      ELSE
         SELECT hpp.tnombre || '|' || hpp.tapelli1 || '|' || hpp.tapelli2
           INTO v_ret
           FROM hisper_detper hpp
          WHERE hpp.sperson = p_per
            AND hpp.cagente = p_vis
            AND hpp.norden = n_his;
      END IF;

      SELECT MIN(hp2.norden)
        INTO n_his
        FROM hisper_personas hp2
       WHERE hp2.sperson = p_per
         AND hp2.fmovimi >= p_fec;

      IF n_his IS NULL THEN
         SELECT v_ret || '|' || p22.nnumide || '|' || p22.ctipide
           INTO v_ret
           FROM per_personas p22
          WHERE p22.sperson = p_per;
      ELSE
         SELECT v_ret || '|' || hpp.nnumide || '|' || hpp.ctipide
           INTO v_ret
           FROM hisper_personas hpp
          WHERE hpp.sperson = p_per
            AND hpp.norden = n_his;
      END IF;

      RETURN v_ret;
   END;

   PROCEDURE pcob_fall(psmapead IN NUMBER) IS
      vtotal         VARCHAR2(1000);
      --
      vtipsegu       VARCHAR2(37);
      vtipaseg       VARCHAR2(10);
      vtipasie       VARCHAR2(12);
      vreferen       VARCHAR2(60);
      vtipcobe       VARCHAR2(9);
      vnomaseg       VARCHAR2(50);
      vap1aseg       VARCHAR2(50);
      vap2aseg       VARCHAR2(50);
      vindidoc       VARCHAR2(1);
      vtipodoc       VARCHAR2(10);
      vinicobe       VARCHAR2(10);
      vfincobe       VARCHAR2(10);
      vnumorde       VARCHAR2(3);
      vnumclie1      VARCHAR2(8);
      vnumclie2      VARCHAR2(8);
      vnomaseg2      VARCHAR2(50);
      vap1aseg2      VARCHAR2(50);
      vap2aseg2      VARCHAR2(50);
      vindidoc2      VARCHAR2(1);
      vtipodoc2      VARCHAR2(10);
      vclimodif      VARCHAR2(1);
      --
      v_error        NUMBER := 0;
      vdescerror     VARCHAR2(512);
      v_map          map_cabecera.cmapead%TYPE;
      vsmapead       int_cobertura_fall.smapead%TYPE;
      e_map_error    EXCEPTION;
      vninstr        NUMBER;
      vninstr_ant    NUMBER;
      vtdesmovimi    int_cobertura_fall.tdesmovimi%TYPE;

      --
      CURSOR c_dades IS
         SELECT 'Resto Seguros' tipsegu, 'nominado' tipaseg, tdesmovimi, 'Vida' tipcobe
           FROM int_cobertura_fall
          WHERE   --cmapead = pcmapead
                --AND
                smapead = psmapead;

      FUNCTION f_substr(pstr IN VARCHAR2, pnstrant IN NUMBER, pnstr OUT NUMBER)
         RETURN VARCHAR2 IS
         vstr           VARCHAR2(1000);
      BEGIN
         SELECT INSTR(pstr, '|', pnstrant + 1)
           INTO pnstr
           FROM DUAL;

         SELECT SUBSTR(pstr, pnstrant + 1, pnstr - pnstrant - 1)
           INTO vstr
           FROM DUAL;

         RETURN vstr;
      END;
   BEGIN
      FOR i IN c_dades LOOP
         BEGIN
            -- Se añade el '|' al final de la cadena para poder contrarlar el ulitmo
            -- valor
            vtdesmovimi := i.tdesmovimi || '|';
            -- Tipo Seguro
            vtipsegu := RPAD(NVL(i.tipsegu, ' '), 37, ' ');
            -- Tipo Asegurado
            vtipaseg := RPAD(NVL(i.tipaseg, ' '), 10, ' ');
            -- Tipo Asiento
            vninstr := 0;
            vtipasie := f_substr(vtdesmovimi, vninstr, vninstr_ant);
            vtipasie := RPAD(NVL(vtipasie, ' '), 12, ' ');
            -- Referencia contrato
            vninstr := vninstr_ant;
            vreferen := f_substr(vtdesmovimi, vninstr, vninstr_ant);
            vreferen := RPAD(NVL(vreferen, ' '), 60, ' ');
            -- Tipo Cobertura
            vtipcobe := RPAD(NVL(i.tipcobe, ' '), 9, ' ');
            -- Nombre Asegurado
            vninstr := vninstr_ant;
            vnomaseg := f_substr(vtdesmovimi, vninstr, vninstr_ant);
            vnomaseg := RPAD(NVL(vnomaseg, ' '), 50, ' ');
            -- Apellido 1 Asegurado
            vninstr := vninstr_ant;
            vap1aseg := f_substr(vtdesmovimi, vninstr, vninstr_ant);
            vap1aseg := RPAD(NVL(vap1aseg, ' '), 50, ' ');
            -- Apellido 2 Asegurado
            vninstr := vninstr_ant;
            vap2aseg := f_substr(vtdesmovimi, vninstr, vninstr_ant);
            vap2aseg := RPAD(NVL(vap2aseg, ' '), 50, ' ');
            -- Tipo documento
            vninstr := vninstr_ant;
            vtipodoc := f_substr(vtdesmovimi, vninstr, vninstr_ant);
            vtipodoc := RPAD(NVL(vtipodoc, ' '), 10, ' ');
            -- Indicador documento
            vninstr := vninstr_ant;
            vindidoc := f_substr(vtdesmovimi, vninstr, vninstr_ant);

            IF vindidoc = '1' THEN
               vindidoc := 'N';   -- NIF
            ELSIF vindidoc = '3' THEN
               vindidoc := 'P';   -- Pasaporte
            ELSIF vindidoc = '4' THEN
               vindidoc := 'T';   -- Tarjeta residencia
            ELSE
               vindidoc := 'D';   -- Desconocido
            END IF;

            vindidoc := RPAD(NVL(vindidoc, ' '), 1, ' ');
            -- Inicio cobertura
            vninstr := vninstr_ant;
            vinicobe := f_substr(vtdesmovimi, vninstr, vninstr_ant);
            vinicobe := RPAD(NVL(vinicobe, ' '), 10, ' ');
            -- Fin cobertura
            vninstr := vninstr_ant;
            vfincobe := f_substr(vtdesmovimi, vninstr, vninstr_ant);
            vfincobe := RPAD(NVL(vfincobe, ' '), 10, ' ');
            --
            vnumorde := LPAD('0', 3, '0');
            vnumclie1 := RPAD(' ', 8, ' ');
            vnumclie2 := RPAD(' ', 8, ' ');
            vnomaseg2 := RPAD(' ', 50, ' ');
            vap1aseg2 := RPAD(' ', 50, ' ');
            vap2aseg2 := RPAD(' ', 50, ' ');
            vindidoc2 := RPAD(' ', 1, ' ');
            vtipodoc2 := RPAD(' ', 10, ' ');
            vclimodif := RPAD(' ', 1, ' ');
            vtotal := vtipsegu || vtipaseg || vtipasie || vreferen || vtipcobe || vnomaseg
                      || vap1aseg || vap2aseg || vindidoc || vtipodoc || vinicobe || vfincobe
                      || vnumorde || vnumclie1 || vnumclie2 || vnomaseg2 || vap1aseg2
                      || vap2aseg2 || vindidoc2 || vtipodoc2 || vclimodif;
            UTL_FILE.put_line(v_fitxer, vtotal);
         EXCEPTION
            WHEN OTHERS THEN
               NULL;
         END;
      END LOOP;
   EXCEPTION
      WHEN e_map_error THEN
         ROLLBACK;
         p_tab_error(f_sysdate, f_user, 'pcob_fall', 1, vdescerror || ': ' || SQLERRM,
                     SQLCODE);
      WHEN OTHERS THEN
         ROLLBACK;
         p_tab_error(f_sysdate, f_user, 'pcob_fall', 2, SQLERRM, SQLCODE);
   END pcob_fall;
BEGIN
   --
   -- El proces genera informació a la taula temporal,
   -- ja sigui informació inicial (abans map 9234),
   -- o ja sigui informació periodica (abans map 234).
   -- (degut a la complexitat es pasa els maps a bbdd).
   -- Una vegada tenim la taula temporal, generem el fitxer
   -- amb el map 233.
   --

   -- Esborrem el contingut de la taula temporal.
   n_linerr := 1040;

   DELETE FROM int_cobertura_fall;

   COMMIT;   --BUG 0015209 07/07/2010
   -- ini BUG 0014113 - 14/04/2010 - JMF
   n_linerr := 1045;

   IF p_tipoenvio = 0 THEN
      v_map := '9234';   -- generant el fitxer de càrrega inicial

------------------------------------------------------------------------------------------------------------
      DECLARE
         n_per          NUMBER;
         n_age          NUMBER;
         --
         n_vis          NUMBER;
         v_p1           VARCHAR2(4000);
         v_p2           VARCHAR2(4000);
         v_p3           VARCHAR2(4000);

         --
         CURSOR c_total IS
            --CURSOR c_altas IS
            -- ini BUG 0015209 - 02/07/2010 - JMF Existen algunos productos que no tienen migrada la información de garantias para movimiento 1.
            SELECT   --BUG 0015209 07/07/2010 /*+ RULE */
                   DISTINCT (TO_CHAR(m.femisio, 'dd/mm/yyyy hh24:mi:ss') || ';'
                             || 'Inscripción' || '|' || s.npoliza || '|' || ';' || p.sperson
                             || ';' || s.cagente || ';' || '|'
                             || TO_CHAR(DECODE(g.nmovimi, m.nmovimi, g.finiefe, s.fefecto),
                                        'yyyy-mm-dd')
                             || '|' || TO_CHAR(NVL(fcancel, fvencim), 'yyyy-mm-dd')) linea
                       FROM seguros s, movseguro m, asegurados a, per_detper p, garanseg g
                      WHERE s.cempres = f_empres
                        AND p.cagente = ff_agente_cpervisio(s.cagente)
                        AND s.sseguro = m.sseguro
                        AND s.sseguro = g.sseguro
                        AND m.sseguro = g.sseguro
                        AND(   --BUG 0015209 07/07/2010: (g.nmovimi = m.nmovimi)
                               --OR
                            (NOT EXISTS(SELECT 1
                                          FROM garanseg x
                                         WHERE x.sseguro = s.sseguro
                                           AND x.nmovimi = m.nmovimi))
                            AND(g.nmovimi = (SELECT MIN(g1.nmovimi)
                                               FROM garanseg g1
                                              WHERE g1.sseguro = s.sseguro
                                                AND NVL(f_pargaranpro_v(s.cramo, s.cmodali,
                                                                        s.ctipseg, s.ccolect,
                                                                        s.cactivi, g1.cgarant,
                                                                        'TIPO'),
                                                        0) IN(6, 13))))
                        AND s.csituac IN(0, 5)
                        AND m.cmotmov = 100   --Altas
                        AND s.sseguro = a.sseguro
                        AND a.sperson = p.sperson
                        AND pac_anulacion.f_anulada_al_emitir(s.sseguro) = 0
                        AND NOT EXISTS(SELECT 'x'
                                         FROM seguros_ren sr
                                        WHERE sr.sseguro = s.sseguro
                                          AND pcapfall = 0)
                        AND TRUNC(m.femisio) BETWEEN d_ini AND d_fin
                        AND NVL(f_pargaranpro_v(s.cramo, s.cmodali, s.ctipseg, s.ccolect,
                                                s.cactivi, g.cgarant, 'TIPO'),
                                0) IN(6, 13)
            UNION
            SELECT   --BUG 0015209 07/07/2010 /*+ RULE * /
                   DISTINCT (TO_CHAR(m.fmovimi, 'dd/mm/yyyy hh24:mi:ss') || ';'
                             || 'Inscripción' || '|' || s.npoliza || '|' || ';' || p.sperson
                             || ';' || s.cagente || ';' || '|'
                             || TO_CHAR(g.finiefe, 'yyyy-mm-dd') || '|'
                             || TO_CHAR(NVL(fcancel, fvencim), 'yyyy-mm-dd')) linea
                       FROM seguros s, movseguro m, asegurados a, per_detper p, garanseg g
                      WHERE s.cempres = f_empres
                        AND p.cagente = ff_agente_cpervisio(s.cagente)
                        AND s.sseguro = m.sseguro
                        AND s.sseguro = g.sseguro
                        AND m.sseguro = g.sseguro
                        AND s.csituac IN(0, 5)
                        AND m.cmovseg = 4   -- Rehabilitació
                        AND g.nmovimi = (SELECT MAX(nmovimi)
                                           FROM garanseg
                                          WHERE sseguro = s.sseguro)
                        AND s.sseguro = a.sseguro
                        AND a.sperson = p.sperson
                        AND pac_anulacion.f_anulada_al_emitir(s.sseguro) = 0
                        AND NOT EXISTS(SELECT 'x'
                                         FROM seguros_ren sr
                                        WHERE sr.sseguro = s.sseguro
                                          AND pcapfall = 0)
                        AND TRUNC(m.femisio) BETWEEN d_ini AND d_fin
                        AND NVL(f_pargaranpro_v(s.cramo, s.cmodali, s.ctipseg, s.ccolect,
                                                s.cactivi, g.cgarant, 'TIPO'),
                                0) IN(6, 13)
            UNION ALL
            --CURSOR c_bajas IS
            SELECT   --BUG 0015209 07/07/2010 /*+ RULE * /
                   DISTINCT (TO_CHAR(m.fmovimi, 'dd/mm/yyyy hh24:mi:ss') || ';'
                             || 'Cancelación' || '|' || s.npoliza || '|' || ';' || a.sperson
                             || ';' || s.cagente || ';' || '|'
                             || TO_CHAR(s.fefecto, 'yyyy-mm-dd') || '|'
                             || TO_CHAR(s.fanulac, 'yyyy-mm-dd')) linea
                       FROM seguros s, movseguro m, asegurados a, garanseg g
                      WHERE s.cempres = f_empres
                        AND s.fefecto <> s.fanulac
                        AND s.csituac = 2
                        AND s.sseguro = m.sseguro
                        AND s.sseguro = g.sseguro
                        AND m.sseguro = g.sseguro
                        AND g.nmovimi = (SELECT MAX(g1.nmovimi)
                                           FROM garanseg g1
                                          WHERE g1.sseguro = s.sseguro)
                        AND s.sseguro = a.sseguro
                        AND pac_anulacion.f_anulada_al_emitir(s.sseguro) = 0
                        AND NOT EXISTS(SELECT 'x'
                                         FROM seguros_ren sr
                                        WHERE sr.sseguro = s.sseguro
                                          AND pcapfall = 0)
                        AND m.cmovseg = 3
                        AND NOT(m.cmotmov IN(511, 505, 306)
                                OR(m.cmotmov = 322
                                   AND f_prod_ahorro(s.sproduc) = 1))
                        AND TRUNC(m.femisio) BETWEEN d_ini AND d_fin
                        AND NVL(f_pargaranpro_v(s.cramo, s.cmodali, s.ctipseg, s.ccolect,
                                                s.cactivi, g.cgarant, 'TIPO'),
                                0) IN(6, 13);
      BEGIN
         n_linerr := 1050;

         SELECT smapead.NEXTVAL
           INTO vsmapead
           FROM DUAL;

         psmovimi := 0;

         FOR f1 IN c_total LOOP
            BEGIN
               n_linerr := 1055;
               psmovimi := psmovimi + 1;
               n_linerr := 1060;
               d_fec := TO_DATE(f_valor_linia(';', f1.linea, 0, 1), 'dd/mm/yyyy hh24:mi:ss');
               n_linerr := 1065;
               n_per := f_valor_linia(';', f1.linea, 1, 2);
               n_linerr := 1070;
               n_age := f_valor_linia(';', f1.linea, 1, 3);
               n_linerr := 1075;
               v_p1 := f_valor_linia(';', f1.linea, 1, 1);
               n_linerr := 1080;
               v_p3 := f_valor_linia(';', f1.linea, 1, 4);
               n_linerr := 1085;
               n_vis := ff_agente_cpervisio(n_age);
               n_linerr := 1090;
               v_p2 := f_busca_persona(n_per, n_vis, d_fec);
               n_linerr := 1120;
               v_retorno := v_p1 || v_p2 || v_p3;

               INSERT INTO int_cobertura_fall
                           (smapead, cmapead, fmovimi, smovimi, tdesmovimi)
                    VALUES (vsmapead, v_map, d_fec, psmovimi, v_retorno);

               IF MOD(psmovimi, k_reg_commit) = 0 THEN
                  COMMIT;
               END IF;
            EXCEPTION
               WHEN OTHERS THEN
                  p_tab_error(f_sysdate, f_user, v_obj || ' ' || v_map, n_linerr,
                              'OTHERS: ' || v_par, SQLERRM);
            END;
         END LOOP;
      END;
------------------------------------------------------------------------------------------------------------
   ELSE
      v_map := '234';   -- fitxer de registre periòdic.

      DECLARE
         psmovimi       NUMBER;
         d_fec          DATE;
         v_retorno      VARCHAR2(4000);
         n_per          NUMBER;
         n_age          NUMBER;
         --
         n_vis          NUMBER;
         v_p1           VARCHAR2(4000);
         v_p2           VARCHAR2(4000);
         v_p3           VARCHAR2(4000);

         CURSOR c_periodic IS
---------------------------
-- 234002 movimientos altas
---------------------------
            SELECT DISTINCT m.femisio fec, 'Inscripción' || '|' || s.npoliza v1,
                            a.sperson per, s.cagente age,
                            TO_CHAR(g.finiefe, 'yyyy-mm-dd') || '|'
                            || TO_CHAR(fvencim, 'yyyy-mm-dd') v3,
                            234100 sel
                       FROM seguros s, movseguro m, asegurados a, garanseg g
                      WHERE s.cempres = f_empres
                        AND s.sseguro = m.sseguro
                        AND s.sseguro = g.sseguro
                        AND s.csituac IN(0, 5)
                        AND m.sseguro = g.sseguro
                        AND m.nmovimi = g.nmovimi
                        AND m.cmotmov = 100
                        AND NOT EXISTS(SELECT 1
                                         FROM movseguro m1
                                        WHERE m1.sseguro = s.sseguro
                                          AND m1.cmovseg = 3
                                          AND TRUNC(m1.femisio) = TRUNC(m.femisio)
                                          AND NOT(m1.cmotmov IN(511, 505, 306)
                                                  OR(m1.cmotmov = 322
                                                     AND f_prod_ahorro(s.sproduc) = 1)))
                        AND s.sseguro = a.sseguro
                        AND pac_anulacion.f_anulada_al_emitir(s.sseguro) = 0
                        AND NOT EXISTS(SELECT 1
                                         FROM seguros_ren sr
                                        WHERE sr.sseguro = s.sseguro
                                          AND pcapfall = 0)
                        AND TRUNC(m.femisio) BETWEEN d_ini AND d_fin
                        AND NVL(f_pargaranpro_v(s.cramo, s.cmodali, s.ctipseg, s.ccolect,
                                                s.cactivi, g.cgarant, 'TIPO'),
                                0) IN(6, 13)
            UNION ALL
            SELECT DISTINCT m.femisio fec,
                                           -- BUG 0016853 - 20/12/2010 - JMF
                                           'Modificación' || '|' || s.npoliza v1,
                            a.sperson per, s.cagente age,
                            TO_CHAR(g.finiefe, 'yyyy-mm-dd') || '|'
                            || TO_CHAR(fvencim, 'yyyy-mm-dd') v3,
                            234101 sel
                       FROM seguros s, movseguro m, asegurados a, garanseg g
                      WHERE s.cempres = f_empres
                        AND s.sseguro = m.sseguro
                        AND s.sseguro = g.sseguro
                        AND s.csituac IN(0, 5)
                        AND m.sseguro = g.sseguro
                        AND m.cmovseg = 4
                        AND g.nmovimi = (SELECT MAX(nmovimi)
                                           FROM garanseg
                                          WHERE sseguro = s.sseguro)
                        AND s.sseguro = a.sseguro
                        AND NOT EXISTS(SELECT 1
                                         FROM movseguro m2
                                        WHERE m2.sseguro = s.sseguro
                                          AND m2.cmovseg = 3
                                          AND TRUNC(m2.femisio) = TRUNC(m.femisio)
                                          AND NOT(m2.cmotmov IN(511, 505, 306)
                                                  OR(m2.cmotmov = 322
                                                     AND f_prod_ahorro(s.sproduc) = 1)))
                        AND pac_anulacion.f_anulada_al_emitir(s.sseguro) = 0
                        AND NOT EXISTS(SELECT 1
                                         FROM seguros_ren sr
                                        WHERE sr.sseguro = s.sseguro
                                          AND pcapfall = 0)
                        AND TRUNC(m.femisio) BETWEEN d_ini AND d_fin
                        AND NVL(f_pargaranpro_v(s.cramo, s.cmodali, s.ctipseg, s.ccolect,
                                                s.cactivi, g.cgarant, 'TIPO'),
                                0) IN(6, 13)
            UNION ALL
-------------------------------
-- 234006 movimientos altas nif
-------------------------------
            SELECT DISTINCT hp.fmovimi + 0.00001 fec, 'Inscripción' || '|' || s.npoliza v1,
                            a.sperson per, s.cagente age,
                            TO_CHAR(s.fefecto, 'yyyy-mm-dd') || '|'
                            || TO_CHAR(NVL(fcancel, fvencim), 'yyyy-mm-dd') v3,
                            234102 sel
                       FROM seguros s, asegurados a, per_personas p, per_detper dp,
                            hisper_detper hp, hisper_personas hpp, garanseg g
                      WHERE s.cempres = f_empres
                        AND s.sseguro = a.sseguro
                        AND s.sseguro = g.sseguro
                        AND g.nmovimi = (SELECT MAX(g1.nmovimi)
                                           FROM garanseg g1
                                          WHERE g1.sseguro = s.sseguro
                                            AND g1.finiefe <= hp.fmovimi)
                        AND a.sperson = p.sperson
                        AND dp.sperson = p.sperson
                        AND dp.cagente = ff_agente_cpervisio(s.cagente)
                        AND p.sperson = hp.sperson
                        AND TRUNC(hpp.fmovimi) BETWEEN d_ini AND d_fin
                        AND f_vigente(s.sseguro, NULL, hp.fmovimi) = 0   /* 0 indica vigent */
                        AND pac_anulacion.f_anulada_al_emitir(s.sseguro) = 0
                        AND NOT EXISTS(SELECT 'x'
                                         FROM seguros_ren sr
                                        WHERE sr.sseguro = s.sseguro
                                          AND pcapfall = 0)
                        AND NVL(f_pargaranpro_v(s.cramo, s.cmodali, s.ctipseg, s.ccolect,
                                                s.cactivi, g.cgarant, 'TIPO'),
                                0) IN(6, 13)
                        AND hp.sperson = hpp.sperson
                        AND hp.norden = hpp.norden
                        AND hp.cagente = ff_agente_cpervisio(s.cagente)
                        AND p.nnumide <>
                              hpp.nnumide   /* Canvi de NIF, nou NIF enviat cam a ALTA i NIF vell enviat com a BAIXA */
                        AND hpp.norden = (SELECT MAX(hp2.norden)
                                            FROM hisper_personas hp2
                                           WHERE hp2.sperson = hpp.sperson
                                             AND p.nnumide <> hp2.nnumide)
            UNION ALL
            SELECT DISTINCT hp.fmovimi + 0.00001 fec, 'Inscripción' || '|' || s.npoliza v1,
                            a.sperson per, s.cagente age,
                            TO_CHAR(s.fefecto, 'yyyy-mm-dd') || '|'
                            || TO_CHAR(NVL(fcancel, fvencim), 'yyyy-mm-dd') v3,
                            234103 sel
                       FROM seguros s, asegurados a, hisper_detper hp, hisper_personas hpp,
                            hisper_detper hp2, hisper_personas hpp2, garanseg g
                      WHERE s.cempres = f_empres
                        AND s.sseguro = a.sseguro
                        AND hp.sperson = hpp.sperson
                        AND hp.norden = hpp.norden
                        AND hp.cagente = ff_agente_cpervisio(s.cagente)
                        AND hp2.sperson = hpp2.sperson
                        AND hp2.norden = hpp2.norden
                        AND hp2.cagente = ff_agente_cpervisio(s.cagente)
                        AND s.sseguro = g.sseguro
                        AND g.nmovimi = (SELECT MAX(g1.nmovimi)
                                           FROM garanseg g1
                                          WHERE g1.sseguro = s.sseguro
                                            AND g1.finiefe <= hp.fmovimi)
                        AND a.sperson = hp.sperson
                        AND hpp.sperson = hpp2.sperson
                        AND TRUNC(hpp.fmovimi) BETWEEN d_ini AND d_fin
                        AND f_vigente(s.sseguro, NULL, hp.fmovimi) = 0   /* 0 indica vigent */
                        AND pac_anulacion.f_anulada_al_emitir(s.sseguro) = 0
                        AND NOT EXISTS(SELECT 'x'
                                         FROM seguros_ren sr
                                        WHERE sr.sseguro = s.sseguro
                                          AND pcapfall = 0)
                        AND NVL(f_pargaranpro_v(s.cramo, s.cmodali, s.ctipseg, s.ccolect,
                                                s.cactivi, g.cgarant, 'TIPO'),
                                0) IN(6, 13)
                        AND hpp.nnumide <>
                              hpp2.nnumide   /* Canvi de NIF, nou NIF enviat cam a ALTA i NIF vell enviat com a BAIXA */
                        AND hpp.norden = (SELECT MAX(hp3.norden)
                                            FROM hisper_personas hp3
                                           WHERE hp3.sperson = hpp2.sperson
                                             AND hpp2.nnumide <> hp3.nnumide
                                             AND hp3.fmovimi < hpp2.fmovimi)
            UNION ALL
---------------------------
-- 234003 movimientos modificaciones
---------------------------
            SELECT DISTINCT m.fmovimi fec, 'Modificación' || '|' || s.npoliza v1,
                            a.sperson per, s.cagente age,
                            TO_CHAR(s.fefecto, 'yyyy-mm-dd') || '|'
                            || TO_CHAR(NVL(fcancel, fvencim), 'yyyy-mm-dd') v3,
                            234104 sel
                       FROM seguros s, movseguro m, asegurados a, per_personas p,
                            per_detper dp, garanseg g
                      WHERE s.cempres = f_empres
                        AND s.sseguro = m.sseguro
                        AND s.sseguro = g.sseguro
                        AND m.sseguro = g.sseguro
                        AND m.nmovimi = g.nmovimi
                        AND s.sseguro = a.sseguro
                        AND a.sperson = p.sperson
                        AND dp.sperson = p.sperson
                        AND dp.cagente = ff_agente_cpervisio(s.cagente)
                        AND pac_anulacion.f_anulada_al_emitir(s.sseguro) = 0
                        AND NOT EXISTS(SELECT 1
                                         FROM seguros_ren sr
                                        WHERE sr.sseguro = s.sseguro
                                          AND pcapfall = 0)
                        AND m.cmotmov = 226   /*suplemento de cambio fvencimiento*/
                        AND NOT EXISTS(SELECT 1
                                         FROM movseguro m3
                                        WHERE m3.sseguro = s.sseguro
                                          AND TRUNC(m3.femisio) = TRUNC(m.femisio)
                                          AND m3.cmovseg = 4)
                        AND TRUNC(m.femisio) BETWEEN d_ini AND d_fin
                        AND NVL(f_pargaranpro_v(s.cramo, s.cmodali, s.ctipseg, s.ccolect,
                                                s.cactivi, g.cgarant, 'TIPO'),
                                0) IN(6, 13)
            UNION
            SELECT DISTINCT m.fmovimi fec, 'Modificación' || '|' || s.npoliza v1,
                            a.sperson per, s.cagente age,
                            TO_CHAR(s.fefecto, 'yyyy-mm-dd') || '|'
                            || TO_CHAR(s.fanulac, 'yyyy-mm-dd') v3,
                            234105 sel
                       FROM seguros s, movseguro m, asegurados a, garanseg g
                      WHERE s.cempres = f_empres
                        AND s.sseguro = m.sseguro
                        AND s.sseguro = g.sseguro
                        AND m.sseguro = g.sseguro
                        AND g.nmovimi = (SELECT MAX(g1.nmovimi)
                                           FROM garanseg g1
                                          WHERE g1.sseguro = s.sseguro)
                        AND s.sseguro = a.sseguro
                        AND pac_anulacion.f_anulada_al_emitir(s.sseguro) = 0
                        AND NOT EXISTS(SELECT 'x'
                                         FROM seguros_ren sr
                                        WHERE sr.sseguro = s.sseguro
                                          AND pcapfall = 0)
                        AND m.cmovseg = 3
                        AND NOT(m.cmotmov IN(511, 505, 306)
                                OR(m.cmotmov = 322
                                   AND f_prod_ahorro(s.sproduc) = 1))
                        AND NOT EXISTS(SELECT 1
                                         FROM movseguro m2
                                        WHERE m2.sseguro = s.sseguro
                                          AND TRUNC(m2.femisio) = TRUNC(m.femisio)
                                          AND m2.cmovseg = 4)
                        AND TRUNC(m.femisio) BETWEEN d_ini AND d_fin
                        AND NVL(f_pargaranpro_v(s.cramo, s.cmodali, s.ctipseg, s.ccolect,
                                                s.cactivi, g.cgarant, 'TIPO'),
                                0) IN(6, 13)
            UNION ALL
---------------------------
-- 234008 movimientos modificaciones nombre
---------------------------
            SELECT DISTINCT hp.fmovimi fec, 'Modificación' || '|' || s.npoliza v1,
                            a.sperson per, s.cagente age,
                            TO_CHAR(s.fefecto, 'yyyy-mm-dd') || '|'
                            || TO_CHAR(NVL(fcancel, fvencim), 'yyyy-mm-dd') v3,
                            234106 sel
                       FROM seguros s, asegurados a, per_personas p, per_detper dp,
                            hisper_detper hp, garanseg g
                      WHERE s.cempres = f_empres
                        AND s.sseguro = a.sseguro
                        AND s.sseguro = g.sseguro
                        AND g.nmovimi = (SELECT MAX(g1.nmovimi)
                                           FROM garanseg g1
                                          WHERE g1.sseguro = s.sseguro
                                            AND g1.finiefe <= hp.fmovimi)
                        AND a.sperson = p.sperson
                        AND dp.sperson = p.sperson
                        AND dp.cagente = ff_agente_cpervisio(s.cagente)
                        AND p.sperson = hp.sperson
                        AND TRUNC(hp.fmovimi) BETWEEN d_ini AND d_fin
                        AND f_vigente(s.sseguro, NULL, hp.fmovimi) = 0   /* 0 indica vigent */
                        AND pac_anulacion.f_anulada_al_emitir(s.sseguro) = 0
                        AND NOT EXISTS(SELECT 'x'
                                         FROM seguros_ren sr
                                        WHERE sr.sseguro = s.sseguro
                                          AND pcapfall = 0)
                        AND NVL(f_pargaranpro_v(s.cramo, s.cmodali, s.ctipseg, s.ccolect,
                                                s.cactivi, g.cgarant, 'TIPO'),
                                0) IN(6, 13)
                        AND(dp.tapelli1 || dp.tapelli2 || dp.tnombre <>
                                                       hp.tapelli1 || hp.tapelli2 || hp.tnombre)
                        AND hp.norden = (SELECT MAX(hp2.norden)
                                           FROM hisper_personas hp2
                                          WHERE hp2.sperson = hp.sperson)
            UNION
            SELECT DISTINCT hp.fmovimi fec, 'Modificación' || '|' || s.npoliza v1,
                            a.sperson per, s.cagente age,
                            TO_CHAR(s.fefecto, 'yyyy-mm-dd') || '|'
                            || TO_CHAR(NVL(fcancel, fvencim), 'yyyy-mm-dd') v3,
                            234107 sel
                       FROM seguros s, asegurados a, hisper_detper hp, hisper_personas hpp,
                            hisper_detper hp2, hisper_personas hpp2, garanseg g
                      WHERE s.cempres = f_empres
                        AND s.sseguro = a.sseguro
                        AND hp.sperson = hpp.sperson
                        AND hp.norden = hpp.norden
                        AND hp.cagente = ff_agente_cpervisio(s.cagente)
                        AND hp2.sperson = hpp2.sperson
                        AND hp2.norden = hpp2.norden
                        AND hp2.cagente = ff_agente_cpervisio(s.cagente)
                        AND s.sseguro = g.sseguro
                        AND g.nmovimi = (SELECT MAX(g1.nmovimi)
                                           FROM garanseg g1
                                          WHERE g1.sseguro = s.sseguro
                                            AND g1.finiefe <= hp.fmovimi)
                        AND a.sperson = hp.sperson
                        AND hpp.sperson = hpp2.sperson
                        AND TRUNC(hpp.fmovimi) BETWEEN d_ini AND d_fin
                        AND f_vigente(s.sseguro, NULL, hp.fmovimi) = 0   /* 0 indica vigent */
                        AND pac_anulacion.f_anulada_al_emitir(s.sseguro) = 0
                        AND NOT EXISTS(SELECT 'x'
                                         FROM seguros_ren sr
                                        WHERE sr.sseguro = s.sseguro
                                          AND pcapfall = 0)
                        AND NVL(f_pargaranpro_v(s.cramo, s.cmodali, s.ctipseg, s.ccolect,
                                                s.cactivi, g.cgarant, 'TIPO'),
                                0) IN(6, 13)
                        AND((SUBSTR(hp.tapelli1, 0, 40) || ' ' || SUBSTR(hp.tapelli2, 0, 20))
                            || hp.tnombre <> (SUBSTR(hp2.tapelli1, 0, 40) || ' '
                                              || SUBSTR(hp2.tapelli2, 0, 20))
                                             || hp2.tnombre)
                        AND hpp2.norden = (SELECT MIN(hp3.norden)
                                             FROM hisper_detper hp3
                                            WHERE hp3.sperson = hp.sperson
                                              AND((SUBSTR(hp3.tapelli1, 0, 40) || ' '
                                                   || SUBSTR(hp3.tapelli2, 0, 20))
                                                  || hp3.tnombre <>
                                                     (SUBSTR(hp.tapelli1, 0, 40) || ' '
                                                      || SUBSTR(hp.tapelli2, 0, 20))
                                                     || hp.tnombre)
                                              AND hp3.fmovimi > hpp.fmovimi)
            UNION ALL
---------------------------
-- 234004 movimientos cancelaciones
---------------------------
            SELECT DISTINCT m.fmovimi fec, 'Cancelación' || '|' || s.npoliza v1, a.sperson per,
                            s.cagente age,
                            TO_CHAR(s.fefecto, 'yyyy-mm-dd') || '|'
                            || TO_CHAR(NVL(fcancel, fvencim), 'yyyy-mm-dd') v3,
                            234108 sel
                       FROM seguros s, movseguro m, asegurados a, garanseg g
                      WHERE s.cempres = f_empres
                        AND s.sseguro = m.sseguro
                        AND s.sseguro = g.sseguro
                        AND m.sseguro = g.sseguro
                        AND g.nmovimi = (SELECT MAX(nmovimi)
                                           FROM garanseg
                                          WHERE sseguro = s.sseguro)
                        AND s.sseguro = a.sseguro
                        AND pac_anulacion.f_anulada_al_emitir(s.sseguro) = 0
                        AND NOT EXISTS(SELECT 'x'
                                         FROM seguros_ren sr
                                        WHERE sr.sseguro = s.sseguro
                                          AND pcapfall = 0)
                        AND m.cmovseg = 3   --Bajas
                        AND(m.cmotmov IN(511, 505, 306)
                            OR(m.cmotmov = 322
                               AND f_prod_ahorro(s.sproduc) = 1))
                        AND TRUNC(m.femisio) BETWEEN d_ini AND d_fin
                        AND NOT EXISTS(SELECT 1
                                         FROM movseguro m2
                                        WHERE m2.sseguro = s.sseguro
                                          AND m2.cmotmov = 100
                                          AND TRUNC(m2.femisio) BETWEEN d_ini AND d_fin)
                        AND NVL(f_pargaranpro_v(s.cramo, s.cmodali, s.ctipseg, s.ccolect,
                                                s.cactivi, g.cgarant, 'TIPO'),
                                0) IN(6, 13)
            UNION ALL
---------------------------
-- 234007 movimientos cancelaciones nif
---------------------------
            SELECT DISTINCT hp.fmovimi fec, 'Cancelación' || '|' || s.npoliza v1,
                            a.sperson per, s.cagente age,
                            TO_CHAR(s.fefecto, 'yyyy-mm-dd') || '|'
                            || TO_CHAR(NVL(fcancel, fvencim), 'yyyy-mm-dd') v3,
                            234109 sel
                       FROM seguros s, asegurados a, per_personas p, hisper_detper hp,
                            hisper_personas hpp, garanseg g
                      WHERE s.cempres = f_empres
                        AND s.sseguro = a.sseguro
                        AND s.sseguro = g.sseguro
                        AND hp.sperson = hpp.sperson
                        AND hp.norden = hpp.norden
                        AND hp.cagente = ff_agente_cpervisio(s.cagente)
                        AND g.nmovimi = (SELECT MAX(g1.nmovimi)
                                           FROM garanseg g1
                                          WHERE g1.sseguro = s.sseguro
                                            AND g1.finiefe <= hpp.fmovimi)
                        AND a.sperson = p.sperson
                        AND p.sperson = hpp.sperson
                        AND TRUNC(hp.fmovimi) BETWEEN d_ini AND d_fin
                        AND f_vigente(s.sseguro, NULL, hpp.fmovimi) = 0   /* 0 indica vigent */
                        AND pac_anulacion.f_anulada_al_emitir(s.sseguro) = 0
                        AND NOT EXISTS(SELECT 'x'
                                         FROM seguros_ren sr
                                        WHERE sr.sseguro = s.sseguro
                                          AND pcapfall = 0)
                        AND NVL(f_pargaranpro_v(s.cramo, s.cmodali, s.ctipseg, s.ccolect,
                                                s.cactivi, g.cgarant, 'TIPO'),
                                0) IN(6, 13)
                        AND p.nnumide <>
                              hpp.nnumide   /* Canvi de NIF, nou NIF enviat cam a ALTA i NIF vell enviat com a BAIXA */
                        AND hpp.norden = (SELECT MAX(hp2.norden)
                                            FROM hisper_personas hp2
                                           WHERE hp2.sperson = p.sperson
                                             AND p.nnumide <> hp2.nnumide)
            UNION
            SELECT DISTINCT hp.fmovimi fec, 'Cancelación' || '|' || s.npoliza v1,
                            a.sperson per, s.cagente age,
                            TO_CHAR(s.fefecto, 'yyyy-mm-dd') || '|'
                            || TO_CHAR(NVL(fcancel, fvencim), 'yyyy-mm-dd') v3,
                            234110 sel
                       FROM seguros s, asegurados a, hisper_detper hp, hisper_personas hpp,
                            hisper_detper hp2, hisper_personas hpp2, per_personas p,
                            garanseg g
                      WHERE s.cempres = f_empres
                        AND s.sseguro = a.sseguro
                        AND hp.sperson = hpp.sperson
                        AND hp.norden = hpp.norden
                        AND hp.cagente = ff_agente_cpervisio(s.cagente)
                        AND hp2.sperson = hpp2.sperson
                        AND hp2.norden = hpp2.norden
                        AND hp2.cagente = ff_agente_cpervisio(s.cagente)
                        AND s.sseguro = g.sseguro
                        AND g.nmovimi = (SELECT MAX(g1.nmovimi)
                                           FROM garanseg g1
                                          WHERE g1.sseguro = s.sseguro
                                            AND g1.finiefe <= hp.fmovimi)
                        AND a.sperson = p.sperson
                        AND p.sperson = hpp.sperson
                        AND hpp.sperson = hpp2.sperson
                        AND TRUNC(hpp.fmovimi) BETWEEN d_ini AND d_fin
                        AND f_vigente(s.sseguro, NULL, hpp.fmovimi) = 0   /* 0 indica vigent */
                        AND pac_anulacion.f_anulada_al_emitir(s.sseguro) = 0
                        AND NOT EXISTS(SELECT 'x'
                                         FROM seguros_ren sr
                                        WHERE sr.sseguro = s.sseguro
                                          AND pcapfall = 0)
                        AND NVL(f_pargaranpro_v(s.cramo, s.cmodali, s.ctipseg, s.ccolect,
                                                s.cactivi, g.cgarant, 'TIPO'),
                                0) IN(6, 13)
                        AND p.nnumide <>
                              hpp2.nnumide   /* Canvi de NIF, nou NIF enviat cam a ALTA i NIF vell enviat com a BAIXA */
                        AND hpp.nnumide <> hpp2.nnumide
                        AND hpp.norden = (SELECT MAX(hp3.norden)
                                            FROM hisper_personas hp3
                                           WHERE hp3.sperson = hpp2.sperson
                                             AND hpp2.nnumide <> hp3.nnumide
                                             AND hp3.fmovimi < hpp2.fmovimi);
      BEGIN
         n_linerr := 1200;

         SELECT smapead.NEXTVAL
           INTO vsmapead
           FROM DUAL;

         psmovimi := 0;
         n_linerr := 1205;

         FOR f2 IN c_periodic LOOP
            BEGIN
               n_linerr := 1210;
               psmovimi := psmovimi + 1;
               n_linerr := 1215;
               d_fec := f2.fec;
               v_p1 := f2.v1;
               n_per := f2.per;
               n_age := f2.age;
               v_p3 := f2.v3;
               n_linerr := 1220;
               n_vis := ff_agente_cpervisio(n_age);
               n_linerr := 1225;
               v_p2 := f_busca_persona(n_per, n_vis, d_fec);
               n_linerr := 1230;
               v_retorno := v_p1 || '|' || v_p2 || '|' || v_p3;
               n_linerr := 1235;

               INSERT INTO int_cobertura_fall
                           (smapead, cmapead, fmovimi, smovimi, tdesmovimi)
                    VALUES (vsmapead, f2.sel, d_fec, psmovimi, v_retorno);

               IF MOD(psmovimi, k_reg_commit) = 0 THEN
                  COMMIT;
               END IF;
            EXCEPTION
               WHEN OTHERS THEN
                  p_tab_error(f_sysdate, f_user, v_obj || ' ' || v_map, n_linerr,
                              'OTHERS: ' || v_par, SQLERRM);
            END;
         END LOOP;
      END;
   ------Llencem el MAP que ens fa el volcat de la informació a la taula temporal.
   ----n_linerr := 1020;
   ----pac_map.p_carga_parametros_fichero(v_map, p_inicobertura || '|' || p_fincobertura);
   ----n_linerr := 1030;
   ----v_error := pac_map.carga_map(v_map, vsmapead);
   ----IF v_error <> 0 THEN
   ----   vdescerror := 'Error el generar el MAP ' || v_map;
   ----   RAISE e_map_error;
   ---END IF;
   END IF;

   -- fin BUG 0014113 - 14/04/2010 - JMF
   n_linerr := 1040;
   COMMIT;

   -- Bug 18006 - APD - 29/03/2011 - la ruta donde se genera el ficnero depende de si se
   -- genera el fichero desde pantalla o desde un package
   IF p_modoejecucion = 1 THEN   -- pantalla
      v_path := f_parinstalacion_t('INFORMES');
      v_path2 := f_parinstalacion_t('INFORMES_C');
   ELSE   -- p_modoejecucion = 2 -- package
      v_path := pac_nombres_ficheros.ff_ruta_fichero(p_cempres, 205, 1);
      v_path2 := pac_nombres_ficheros.ff_ruta_fichero(p_cempres, 205, 2);
   END IF;

   -- fin Bug 18006 - APD - 29/03/2011
   -- Bug 18006 - APD - 21/03/2011 - Segun el valor del parametro p_tipofichero se generará el
   -- fichero de cobertura de fallecimiento en un formato u otro
   IF p_tipofichero = 1 THEN   -- Se crea el fichero en formato XML
      -- Llecem el MAP que genera el fitxer de sortida. Hi hem afegit el paràmetre vsmapead en el pas de paràmetres.
      --BUG 8453 - 12/06/2009 - JRB - Se añade envío de empresa al map.
      v_map := '233';
      n_linerr := 1050;
      pac_map2.p_genera_parametros_xml(v_map,
                                       vsmapead || '|' || p_inicobertura || '|'
                                       || p_fincobertura || '|' || p_cempres || '|'
                                       || p_tipoenvio);
      n_linerr := 1060;
      v_error := pac_map2.genera_map(v_map, vsmapead);

      IF v_error <> 0 THEN
         vdescerror := 'Error el generar el MAP ' || v_map;
         RAISE e_map_error;
      END IF;

      -- dra 20-1-2008: bug mantis 8665
      n_linerr := 1070;

      OPEN c_xml(v_map);

      FETCH c_xml
       INTO r_xml;

      CLOSE c_xml;

      n_linerr := 1080;
      -- Bug 18006 - APD - 29/03/2011
--      vnom := f_parinstalacion_t('INFORMES');
      -- Fin Bug 18006 - APD - 29/03/2011
      n_linerr := 1090;
      doc := pac_map2.f_obtener_xml;
      n_linerr := 1100;
      -- Bug 18006 - APD - 29/03/2011
      --xmldom.writetofile(doc, vnom || '\' || p_fichero || '.xml', NVL(r_xml.tcharset, 'UTF-8'));
      xmldom.writetofile(doc, v_path || '\' || p_fichero || '.xml',
                         NVL(r_xml.tcharset, 'UTF-8'));
      -- Fin Bug 18006 - APD - 29/03/2011
      -- Bug 0013247 - 17/02/2010 - JMF: Afegir param p_fgenerado: Nombre/patch completo del fichero generado
      -- Bug 0013247 - 17/02/2010 - JMF: la ruta equivalente mapeada
      n_linerr := 1110;
      -- Bug 18006 - APD - 29/03/2011
      --p_fgenerado := f_parinstalacion_t('INFORMES_C') || '\' || p_fichero || '.xml';
      p_fgenerado := v_path2 || '\' || p_fichero || '.xml';
      -- Fin Bug 18006 - APD - 29/03/2011
      n_linerr := 1120;
   ELSIF p_tipofichero = 2 THEN   --Se crea el fichero en formato TXT
      --Renovacion de condiciones, es diario
      n_linerr := 1130;
      v_nomfitxer := '_' || p_fichero || '.txt';
      v_fitxer := UTL_FILE.fopen(v_path, v_nomfitxer, 'w');
      n_linerr := 1140;
      pcob_fall(vsmapead);
      n_linerr := 1150;
      UTL_FILE.fclose(v_fitxer);
      n_linerr := 1160;
      UTL_FILE.frename(v_path, v_nomfitxer, v_path, LTRIM(v_nomfitxer, '_'), TRUE);
      n_linerr := 1170;
      p_fgenerado := v_path2 || '\' || LTRIM(v_nomfitxer, '_');
   END IF;

   n_linerr := 1200;
   -- Fin Bug 18006 - APD - 21/03/2011
   p_error := 0;
EXCEPTION
   WHEN e_map_error THEN
      p_error := 180237;
      ROLLBACK;
      p_tab_error(f_sysdate, f_user, v_obj || ' ' || v_map, n_linerr,
                  vdescerror || ':' || SQLCODE || ':' || v_par, SQLERRM);
   WHEN OTHERS THEN
      p_error := 180237;
      ROLLBACK;
      p_tab_error(f_sysdate, f_user, v_obj || ' ' || v_map, n_linerr, SQLCODE || ':' || v_par,
                  SQLERRM);
END p_lanza_cobfallecimiento;
 
 

/

  GRANT EXECUTE ON "AXIS"."P_LANZA_COBFALLECIMIENTO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_LANZA_COBFALLECIMIENTO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_LANZA_COBFALLECIMIENTO" TO "PROGRAMADORESCSI";
