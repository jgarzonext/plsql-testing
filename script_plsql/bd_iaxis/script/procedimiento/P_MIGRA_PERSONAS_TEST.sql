--------------------------------------------------------
--  DDL for Procedure P_MIGRA_PERSONAS_TEST
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_MIGRA_PERSONAS_TEST" (
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL')
IS
      v_sperson      per_personas.sperson%TYPE;
      v_nnumide      per_personas.nnumide%TYPE;
      v_snip         per_personas.snip%TYPE;
      v_tsiglas      per_detper.tsiglas%TYPE;
      num_err        NUMBER;
      v_cmodcon      NUMBER;   --per_contactos.cmodcon%TYPE;
      v_error        BOOLEAN := FALSE;
      v_warning      BOOLEAN := FALSE;
      v_estdes       mig_cargas_tab_mig.estdes%TYPE := NULL;
      v_1_personas   BOOLEAN := TRUE;
      v_1_detper     BOOLEAN := TRUE;
      v_1_direcciones BOOLEAN := TRUE;
      v_1_contactos  BOOLEAN := TRUE;
      v_1_ident      BOOLEAN := TRUE;
      v_1_ccc        BOOLEAN := TRUE;
      v_1_nacio      BOOLEAN := TRUE;
      v_1_antiguedad BOOLEAN := TRUE;
      v_cont         NUMBER := 0;
      v_cdomici      per_direcciones.cdomici%TYPE;
      v_existe       NUMBER;
      v_tnombre      per_detper.tnombre%TYPE;
      v_nordide      per_personas.nordide%TYPE;
      v_spersonest   estper_personas.sperson%TYPE;
      -- nuevo para controlar el digito de control
      ss             VARCHAR2(3000);
      v_propio       VARCHAR2(500);
      v_cursor       NUMBER;
      v_filas        NUMBER;
      retorno        VARCHAR2(1);
      vdigitoide     per_personas.tdigitoide%TYPE;
      vcempres       empresas.cempres%TYPE
                      := NVL(pac_md_common.f_get_cxtempresa, f_parinstalacion_n('EMPRESADEF'));
      -- No. 49 - 05/05/2014 - JLTS - Se adiciona la variable vcagente
      vcagente       agentes.cagente%TYPE;
      ndiferido      NUMBER := 0;
      v_num          number:= 0;
      --
   FUNCTION f_migra_direcciones(
      pncarga IN NUMBER,
      pntab IN NUMBER,
      ptablas IN VARCHAR2 DEFAULT 'POL',
      pmig_pk IN VARCHAR2 DEFAULT NULL)
      RETURN NUMBER IS
      num_err        NUMBER;
      v_error        BOOLEAN := FALSE;
      v_1_direc      BOOLEAN := TRUE;
      v_direc        per_direcciones%ROWTYPE;
      v_cont         NUMBER;
      v_estdes       mig_cargas_tab_mig.estdes%TYPE;
      v_sperson      estper_personas.spereal%TYPE;
   BEGIN
      UPDATE mig_cargas_tab_mig
         SET finides = f_sysdate
       WHERE ncarga = pncarga
         AND ntab = pntab;

      --  COMMIT;
      FOR x IN (SELECT   a.*, p.idperson s_sperson, p.mig_pk mig_pk_per
                    FROM mig_direcciones a, mig_personas p
                   WHERE p.mig_pk = a.mig_fk
                     AND p.mig_pk = NVL(pmig_pk, p.mig_pk)
                     AND a.ncarga != 17411
                     and a.mig_pk IN (SELECT s.mig_pk 
                                        FROM mig_personas s 
                                       WHERE s.idperson != 0 
                                         and s.ncarga !=17411 
                                         and not exists (SELECT '' 
                                                           FROM per_direcciones i 
                                                          WHERE i.sperson=s.idperson)
                                      )
                ORDER BY a.mig_pk) LOOP
         BEGIN
            IF v_1_direc THEN
               v_1_direc := FALSE;
            END IF;
            --
            v_sperson := x.s_sperson;
            --
            v_direc := NULL;
            v_direc.tdomici := pac_persona.f_tdomici(x.csiglas, x.tnomvia, x.nnumvia,
                                                     x.tcomple, x.cviavp, x.clitvp, x.cbisvp,
                                                     x.corvp, x.nviaadco, x.clitco, x.corco,
                                                     x.nplacaco, x.cor2co, x.cdet1ia,
                                                     x.tnum1ia, x.cdet2ia, x.tnum2ia,
                                                     x.cdet3ia, x.tnum3ia, x.localidad);
            v_direc.cdomici := pac_persona.f_existe_direccion(v_sperson, NVL(x.cagente, '1'),
                                                              x.ctipdir, x.csiglas, x.tnomvia,
                                                              x.nnumvia, x.tcomple,
                                                              v_direc.tdomici,
                                                              UPPER(x.cpostal), x.cpoblac,
                                                              x.cprovin);
            --
            IF v_direc.cdomici IS NULL
            THEN
               --
               v_error := FALSE;
               --
                SELECT NVL(MAX(cdomici), 0) + 1
                  INTO v_direc.cdomici
                  FROM per_direcciones
                 WHERE sperson = v_sperson;
               --
               v_direc.sperson := x.s_sperson;
               v_direc.cagente := x.cagente;
               v_direc.ctipdir := x.ctipdir;
               v_direc.csiglas := x.csiglas;
               v_direc.tnomvia := x.tnomvia;
               v_direc.nnumvia := x.nnumvia;
               v_direc.tcomple := x.tcomple;
               v_direc.cpostal := x.cpostal;
               v_direc.cpoblac := x.cpoblac;
               v_direc.cprovin := x.cprovin;
               v_direc.cusuari := f_user;
               v_direc.fmovimi := f_sysdate;
               --
               v_direc.cviavp := x.cviavp;
               v_direc.clitvp := x.clitvp;
               v_direc.cbisvp := x.cbisvp;
               v_direc.corvp := x.corvp;
               v_direc.nviaadco := x.nviaadco;
               v_direc.clitco := x.clitco;
               v_direc.corco := x.corco;
               v_direc.nplacaco := x.nplacaco;
               v_direc.cor2co := x.cor2co;
               v_direc.cdet1ia := x.cdet1ia;
               v_direc.tnum1ia := x.tnum1ia;
               v_direc.cdet2ia := x.cdet2ia;
               v_direc.tnum2ia := x.tnum2ia;
               v_direc.cdet3ia := x.cdet3ia;
               v_direc.tnum3ia := x.tnum3ia;
               v_direc.localidad := x.localidad;
               v_direc.talias := x.talias;
               -- 23289/120321 - ECP- 04/09/2012 Inicio
                  INSERT INTO per_direcciones
                       VALUES v_direc;
                       dbms_output.put_line('direcciones:'||sql%rowcount);                
               --
            END IF;

            
--            END IF;
--Contactos asociados a direccion JTS 08/02/2017 CONF-564
               --Tel¿fono
               /*IF TRIM(x.tnumtel) IS NOT NULL
                  AND NOT v_error THEN

                   DECLARE
                      v_cmodcon NUMBER;
                      v_warning BOOLEAN;
                   BEGIN
                      --
                         SELECT NVL(MAX(cmodcon), 0) + 1
                           INTO v_cmodcon
                           FROM per_contactos
                          WHERE sperson = v_sperson;

                         
                            INSERT INTO per_contactos
                                        (sperson, cagente, cmodcon, ctipcon,
                                         tcomcon, tvalcon, cusuari, fmovimi, cobliga, cdomici)
                                 VALUES (v_sperson, NVL(x.cagente, '1'), v_cmodcon, 1,
                                         NULL, x.tnumtel, f_user, f_sysdate, 0, v_direc.cdomici);
                         
                   EXCEPTION
                      WHEN OTHERS THEN
                         raise;
                   END;
               END IF;
*/
               --Fax
               /*IF TRIM(x.tnumfax) IS NOT NULL
                  AND NOT v_error THEN

                  DECLARE
                      v_cmodcon NUMBER;
                      v_warning BOOLEAN;
                 BEGIN
                      --
                       SELECT NVL(MAX(cmodcon), 0) + 1
                         INTO v_cmodcon
                         FROM per_contactos
                        WHERE sperson = v_sperson;

                       --
                          INSERT INTO per_contactos
                                      (sperson, cagente, cmodcon, ctipcon,
                                       tcomcon, tvalcon, cusuari, fmovimi, cobliga, cdomici)
                               VALUES (v_sperson, NVL(x.cagente, '1'), v_cmodcon, 2,
                                       NULL, x.tnumfax, f_user, f_sysdate, 0, v_direc.cdomici);
                         
                   EXCEPTION
                      WHEN OTHERS THEN
                         raise;
                   END;
               END IF;
*/
               --M¿vil
               /*IF TRIM(x.tnummov) IS NOT NULL
                  AND NOT v_error THEN

                   DECLARE
                      v_cmodcon NUMBER;
                      v_warning BOOLEAN;
                   BEGIN
                     -- 
                       SELECT NVL(MAX(cmodcon), 0) + 1
                         INTO v_cmodcon
                         FROM per_contactos
                        WHERE sperson = v_sperson;

                           
                          INSERT INTO per_contactos
                                      (sperson, cagente, cmodcon, ctipcon,
                                       tcomcon, tvalcon, cusuari, fmovimi, cobliga, cdomici)
                               VALUES (v_sperson, NVL(x.cagente, '1'), v_cmodcon, 5,
                                       NULL, x.tnummov, f_user, f_sysdate, 0, v_direc.cdomici);
                         --
                     EXCEPTION
                        WHEN OTHERS THEN
                           num_err :=
                              f_ins_mig_logs_axis
                                            (pncarga, x.mig_pk, 'E',
                                             'Error al insertar en PER_CONTACTOS(tnummov):'
                                             || SQLCODE || '-' || SQLERRM);
                           v_error := TRUE;
                           ROLLBACK;
                     END;
               END IF;*/

               --Mail
               /*IF TRIM(x.temail) IS NOT NULL
                  AND NOT v_error THEN

                   DECLARE
                      v_cmodcon NUMBER;
                      v_warning BOOLEAN;
                   BEGIN
                        --
                         SELECT NVL(MAX(cmodcon), 0) + 1
                           INTO v_cmodcon
                           FROM per_contactos
                          WHERE sperson = v_sperson;

                         --
                            INSERT INTO per_contactos
                                        (sperson, cagente, cmodcon, ctipcon,
                                         tcomcon, tvalcon, cusuari, fmovimi, cobliga, cdomici)
                                 VALUES (v_sperson, NVL(x.cagente, '1'), v_cmodcon, 3,
                                         NULL, x.temail, f_user, f_sysdate, 0, v_direc.cdomici);
                        --
                     EXCEPTION
                        WHEN OTHERS THEN
                           raise;
                     END;
               END IF;*/
--fin CONF-564
         EXCEPTION
            WHEN OTHERS THEN
               raise;
         END;
      --COMMIT;
      END LOOP;

      IF NOT v_1_direc THEN   -- si ha migrado una direccion como minimo miramos si ha habido errores
          
         IF v_error THEN
            v_estdes := 'ERROR';
            v_cont := 1;
         ELSE
            v_estdes := 'OK';
            v_cont := 0;
         END IF;
         --
         RETURN v_cont;
      ELSE
         -- no hay direcciones migradas
         RETURN 0;
      END IF;
      --
      RETURN 0;
   END f_migra_direcciones;
   --
   BEGIN
      --
      --    COMMIT;
      FOR x IN (SELECT   a.*
                    FROM mig_personas a
                   WHERE ncarga != 17411
                     AND idperson != 0
                ORDER BY mig_pk) 
       LOOP
         --IF x.nnumide <> 'Z' AND x.snip IS NOT NULL THEN
         v_cont := 0;
         v_error := FALSE;
         v_existe := 1;
         v_nordide := 0;
         v_sperson := x.idperson;
         --v_nnumide := x.nnumide;
         -- No. 49 - 05/05/2014 - JLTS - Se adiciona el siguiente if y se iguala la variable vcagente
         IF x.swpubli = 1 THEN
            vcagente := x.cagente;
         ELSE
            vcagente := NULL;
         END IF;
         --
                  IF x.nnumide = 'Z'
                     OR(x.nnumide IS NULL
                        AND x.snip IS NULL) THEN
                     --Si Z o numero identificativo es nulo y codigo terceros nulo, calculamos el numero identif.
                     v_nnumide := 'Z' || LPAD(v_sperson, 8, '0');
                  ELSIF x.nnumide IS NULL
                        AND x.snip IS NOT NULL THEN
                     --Si numero identificativo nulo y codigo terceros informado, se pone codigo terceros a numero identif.
                     v_nnumide := x.snip;
                  ELSE
                     v_nnumide := x.nnumide;
                  END IF;
                  --
               IF x.ctipdir IS NOT NULL
               THEN
-- jlb - miro si la direcion ya existe antes de crearla
                  IF v_existe < 0 THEN   -- si la persona ya existia miro la direccion ya existe
                     IF NVL(pac_parametros.f_parempresa_n(vcempres, 'DUP_DIRECCION'), 1) = 1 THEN   --Permite duplicar direcciones si =0
                        v_cdomici :=
                           pac_persona.f_existe_direccion(v_sperson, NVL(x.cagente, '1'),
                                                          x.ctipdir, x.ctipvia, x.tnomvia,
                                                          x.nnumvia, x.tcomple,
                                                          pac_persona.f_tdomici(x.ctipvia,
                                                                                x.tnomvia,
                                                                                x.nnumvia,
                                                                                x.tcomple),
                                                          UPPER(x.cpostal), x.cpoblac,
                                                          x.cprovin);
                     ELSE
                        v_cdomici := NULL;
                     END IF;
                  ELSE
                     v_cdomici := NULL;
                  END IF;

                   --Direcciones
                  -- IF v_cont = 0
                  IF v_cdomici IS NULL
                     AND NOT v_error
                   THEN

                     BEGIN
                        --
                           SELECT NVL(MAX(cdomici), 0) + 1
                             INTO v_cdomici
                             FROM per_direcciones
                            WHERE sperson = v_sperson;
                           --
                           INSERT INTO per_direcciones
                                       (sperson, cagente, cdomici, ctipdir,
                                        csiglas, tnomvia, nnumvia, tcomple,
                                        tdomici,
                                        cpostal, cpoblac, cprovin, cusuari, fmovimi)
                                VALUES (v_sperson, NVL(x.cagente, '1'), v_cdomici, x.ctipdir,
                                        x.ctipvia, x.tnomvia, x.nnumvia, x.tcomple,
                                        pac_persona.f_tdomici(x.ctipvia, x.tnomvia, x.nnumvia,
                                                              x.tcomple),
                                        x.cpostal, x.cpoblac, x.cprovin, f_user, f_sysdate);
                                        dbms_output.put_line('direcciones_01:'||sql%rowcount);   
                           --
                     EXCEPTION
                        WHEN OTHERS THEN
                           raise;
                     END;
                  END IF;

               END IF;   -- x.ctipdir 1
               --
               IF x.ctipdir2 IS NOT NULL THEN
                  IF v_existe < 0 THEN
                     IF NVL(pac_parametros.f_parempresa_n(vcempres, 'DUP_DIRECCION'), 1) = 1 THEN   --Permite duplicar direcciones si =0
                        v_cdomici :=
                           pac_persona.f_existe_direccion(v_sperson, NVL(x.cagente, '1'),
                                                          x.ctipdir2, x.ctipvia2, x.tnomvia2,
                                                          x.nnumvia2, x.tcomple2,
                                                          pac_persona.f_tdomici(x.ctipvia2,
                                                                                x.tnomvia2,
                                                                                x.nnumvia2,
                                                                                x.tcomple2),
                                                          UPPER(x.cpostal2), x.cpoblac2,
                                                          x.cprovin2);
                     ELSE
                        v_cdomici := NULL;
                     END IF;
                  ELSE
                     v_cdomici := NULL;
                  END IF;

                  -- IF v_cont = 0
                  IF      v_cdomici IS NULL
                     AND NOT v_error
                  THEN
                    --
                     BEGIN
                       --
                       SELECT NVL(MAX(cdomici), 0) + 1
                         INTO v_cdomici
                         FROM per_direcciones
                        WHERE sperson = v_sperson;
                       --
                       INSERT INTO per_direcciones
                                   (sperson, cagente, cdomici, ctipdir,
                                    csiglas, tnomvia, nnumvia, tcomple,
                                    tdomici,
                                    cpostal, cpoblac, cprovin, cusuari, fmovimi)
                            VALUES (v_sperson, NVL(x.cagente, '1'), v_cdomici, x.ctipdir2,
                                    x.ctipvia2, x.tnomvia2, x.nnumvia2, x.tcomple2,
                                    pac_persona.f_tdomici(x.ctipvia2, x.tnomvia2,
                                                          x.nnumvia2, x.tcomple2),
                                    x.cpostal2, x.cpoblac2, x.cprovin2, f_user, f_sysdate);
                            dbms_output.put_line('direcciones_01:'||sql%rowcount);   
                        --
                     EXCEPTION
                        WHEN OTHERS THEN
                           raise;
                     END;
                  END IF;
               END IF;   -- x.ctipdir
               --
               --Tel¿fono
               IF TRIM(x.tnumtel) IS NOT NULL
                  AND NOT v_error
               THEN
                  IF v_existe < 0 THEN
                     SELECT COUNT(1)
                       INTO v_cont
                       FROM per_contactos
                      WHERE sperson = v_sperson
                        AND cagente = NVL(x.cagente, 1)
                        AND ctipcon = 1
                        --AND f_strstd_mig(tvalcon) = f_strstd_mig(x.tnumtel);
                        AND (tvalcon) = (x.tnumtel);
                  ELSE
                     v_cont := 0;
                  END IF;
                  --
                  IF v_cont = 0 THEN
                     --
                     BEGIN
                        --
                         SELECT NVL(MAX(cmodcon), 0) + 1
                           INTO v_cmodcon
                           FROM per_contactos
                          WHERE sperson = v_sperson;
                         --
                            INSERT INTO per_contactos
                                        (sperson, cagente, cmodcon, ctipcon,
                                         tcomcon, tvalcon, cusuari, fmovimi, cobliga)
                                 VALUES (v_sperson, NVL(x.cagente, '1'), v_cmodcon, 1,
                                         NULL, x.tnumtel, f_user, f_sysdate, 0);
                                        dbms_output.put_line('percontactos_01:'||sql%rowcount);   
                        --
                     EXCEPTION
                        WHEN OTHERS THEN
                           raise;
                     END;
                  END IF;
               END IF;
               --
               --Fax
               IF TRIM(x.tnumfax) IS NOT NULL
                  AND NOT v_error
               THEN
                 --
                  IF v_existe < 0 THEN
                     SELECT COUNT(*)
                       INTO v_cont
                       FROM per_contactos
                      WHERE sperson = v_sperson
                        AND cagente = NVL(x.cagente, 1)
                        AND ctipcon = 2
                        --AND f_strstd_mig(tvalcon) = f_strstd_mig(x.tnumfax);
                        AND (tvalcon) = (x.tnumfax);
                  ELSE
                     v_cont := 0;
                  END IF;

                  IF v_cont = 0 THEN
                     --
                     BEGIN
                        --
                           SELECT NVL(MAX(cmodcon), 0) + 1
                             INTO v_cmodcon
                             FROM per_contactos
                            WHERE sperson = v_sperson;
                           --
                              INSERT INTO per_contactos
                                          (sperson, cagente, cmodcon, ctipcon,
                                           tcomcon, tvalcon, cusuari, fmovimi, cobliga)
                                   VALUES (v_sperson, NVL(x.cagente, '1'), v_cmodcon, 2,
                                           NULL, x.tnumfax, f_user, f_sysdate, 0);
                                        dbms_output.put_line('percontactos_02:'||sql%rowcount);   
                           --
                      EXCEPTION
                        WHEN OTHERS THEN
                           raise;
                     END;
                  END IF;
                  --
               END IF;
               --
               --M¿vil
               IF TRIM(x.tnummov) IS NOT NULL
                  AND NOT v_error
                THEN
                  -- Bug 0014185 - JMF - 25/05/2010
                  IF v_existe < 0 THEN
                     SELECT COUNT(*)
                       INTO v_cont
                       FROM per_contactos
                      WHERE sperson = v_sperson
                        AND cagente = NVL(x.cagente, 1)
                        AND ctipcon = 5
                        --AND f_strstd_mig(tvalcon) = f_strstd_mig(x.tnummov);
                        AND (tvalcon) = (x.tnummov);
                  ELSE
                     v_cont := 0;
                  END IF;

                  IF v_cont = 0 THEN
                     --
                     BEGIN
                        --
                           SELECT NVL(MAX(cmodcon), 0) + 1
                             INTO v_cmodcon
                             FROM per_contactos
                            WHERE sperson = v_sperson;
                           --
                              INSERT INTO per_contactos
                                          (sperson, cagente, cmodcon, ctipcon,
                                           tcomcon, tvalcon, cusuari, fmovimi, cobliga)
                                   VALUES (v_sperson, NVL(x.cagente, '1'), v_cmodcon, 5,
                                           NULL, x.tnummov, f_user, f_sysdate, 0);
                                        dbms_output.put_line('percontactos_03:'||sql%rowcount);   
                        --
                     EXCEPTION
                        WHEN OTHERS THEN
                           raise;
                     END;
                  END IF;
               END IF;
               --
               --Mail
               IF TRIM(x.temail) IS NOT NULL
                  AND NOT v_error
               THEN
                 --
                  IF v_existe < 0 THEN
                     SELECT COUNT(*)
                       INTO v_cont
                       FROM per_contactos
                      WHERE sperson = v_sperson
                        AND cagente = NVL(x.cagente, 1)
                        AND ctipcon = 3
                        --AND f_strstd_mig(tvalcon) = f_strstd_mig(x.temail);
                        AND (tvalcon) = (x.temail);
                  ELSE
                     v_cont := 0;
                  END IF;
                  --
                  IF v_cont = 0 THEN
                     --
                     BEGIN
                        --
                         SELECT NVL(MAX(cmodcon), 0) + 1
                           INTO v_cmodcon
                           FROM per_contactos
                          WHERE sperson = v_sperson;
                        --
                          INSERT INTO per_contactos
                                      (sperson, cagente, cmodcon, ctipcon,
                                       tcomcon, tvalcon, cusuari, fmovimi, cobliga)
                               VALUES (v_sperson, NVL(x.cagente, '1'), v_cmodcon, 3,
                                       NULL, x.temail, f_user, f_sysdate, 0);
                                        dbms_output.put_line('percontactos_04:'||sql%rowcount);   
                        --
                     EXCEPTION
                        WHEN OTHERS THEN
                           RAISE;
                     END;
                  END IF;
               END IF;
               --
               v_existe := -1;
               v_error := false;
               dbms_output.put_line('v_nnumide:'||v_nnumide||', v_existe:'||v_existe);
               --Identificador
               IF v_nnumide IS NOT NULL
                  AND NOT v_error
                THEN
                  --
                  IF v_existe < 0 THEN
                     --
                     SELECT COUNT(*)
                       INTO v_cont
                       FROM per_identificador
                      WHERE sperson = v_sperson
                        AND cagente = NVL(x.cagente, 1)
                        AND ctipide = x.ctipide;
                  ELSE
                     v_cont := 0;
                  END IF;
               dbms_output.put_line('v_cont:'||v_cont);

                  IF v_cont = 0 THEN
                     BEGIN

                           INSERT INTO per_identificador
                                       (sperson, cagente, ctipide, nnumide,
                                        swidepri, femisio, fcaduca)
                                VALUES (v_sperson, NVL(x.cagente, '1'), x.ctipide, v_nnumide,
                                        1, f_sysdate, NULL);
                                        dbms_output.put_line('per_identificador_01:'||sql%rowcount);   

                     EXCEPTION
                        WHEN OTHERS THEN
                           raise;
                     END;
                  END IF;
               END IF;

               --Segundo Identificador
               IF x.ctipide2 IS NOT NULL
                  AND x.nnumide2 IS NOT NULL
                  AND NOT v_error THEN
                     --
               dbms_output.put_line('2.v_cont:'||v_cont);
                  IF v_cont = 0 THEN
                     BEGIN

                           INSERT INTO per_identificador
                                       (sperson, cagente, ctipide,
                                        nnumide, swidepri, femisio, fcaduca)
                                VALUES (v_sperson, NVL(x.cagente, '1'), x.ctipide2,
                                        x.nnumide2, 1, f_sysdate, NULL);
                                        dbms_output.put_line('per_identificador_02:'||sql%rowcount);   
                         --
                     EXCEPTION
                        WHEN OTHERS THEN
                           raise;
                     END;
                  END IF;
               END IF;
               --
               /**/
         --COMMIT;
      END LOOP;
      --
      v_num := f_migra_direcciones(0,0);
      dbms_output.put_line('v_num:'||v_num);     
      --
   END p_migra_personas_test;

/

  GRANT EXECUTE ON "AXIS"."P_MIGRA_PERSONAS_TEST" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_MIGRA_PERSONAS_TEST" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_MIGRA_PERSONAS_TEST" TO "PROGRAMADORESCSI";
