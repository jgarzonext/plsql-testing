CREATE OR REPLACE PROCEDURE P_DIM_PERSONA IS
    cont        NUMBER;
    v_fec_reg   DATE := TRUNC(SYSDATE);

    CURSOR cur_personas IS
          SELECT DISTINCT
                 p.sperson per_codigo,
                 p.nnumide per_persona,
                 axis.pac_isqlfor.f_persona(NULL, NULL, p.sperson) per_persona_nombre,
                 DECODE(p.ctipper, 1, 10, 20) per_tipo_persona,
                 axis.ff_desvalorfijo(85, 8, p.ctipper) per_tipo_persona_desc,
                 SUBSTR(NVL(NVL(dir_of.tdomici, dir_otra.tdomici), ' '), 1, 80) per_direcc_oficina,
                 SUBSTR(NVL(dir_res.tdomici, ' '), 1, 80) per_direcc_residencia,
                 NVL(axis.pac_isqlfor.f_poblacion(
                         p.sperson,
                         NVL(NVL(dir_of.cdomici, dir_res.cdomici),
                             dir_otra.cdomici)),
                     ' ') per_ciudad,
                 NVL(axis.pac_isqlfor.f_provincia(
                         p.sperson,
                         NVL(NVL(dir_of.cdomici, dir_res.cdomici),
                             dir_otra.cdomici)),
                     ' ') per_departamento,
                 NVL(axis.pac_isqlfor.f_per_contactos(p.sperson, 3), 'No registra') per_email,
                 NVL(axis.pac_isqlfor.f_per_contactos(p.sperson, 6), 'No registra') per_telefono_celular,
                 NVL(axis.pac_isqlfor.f_per_contactos(p.sperson, 1), 'No registra') per_telefono_oficina,
                 NVL(axis.pac_isqlfor.f_per_contactos(p.sperson, 2), ' ') per_num_fax,
                 fg1.cciiu per_ciiu,
                 ciiu.tciiu per_ciiu_desc,
                 DECODE(axis.pac_isqlfor.f_sucursal(usu.cdelega),
                        '**', 'COMPAÑÍA',
                        axis.pac_isqlfor.f_sucursal(usu.cdelega)) per_sucursal,
                 SUBSTR(axis.pac_isqlfor_conf.f_representante_legal(p.sperson, 2), 1, 80) per_represente_legal,
                 NVL(fin_cupos.icupos, 0) per_cupo_provisional,
                 NVL(fin_cupos.icupog, 0) per_cupo_afianzado,
                 fin_cupos.fcupo per_fecha_cupo,
                 (SELECT DECODE(nvalpar,  1, 'SI',  2, 'NO',  ' ')
                    FROM axis.per_parpersonas
                   WHERE p.sperson = sperson
                     AND p.cagente = cagente
                     AND cparam = 'PER_EXCENTO_CONTGAR') per_exento_contragar,
                 DECODE((SELECT nvalpar
                           FROM axis.per_parpersonas
                          WHERE p.sperson = sperson
                            AND p.cagente = cagente
                            AND cparam = 'EXEN_CIRCULAR'),
                        1, 'SI',
                        'NO') per_exento_circ_conoc,
                 (SELECT NVL(TRUNC(fvalpar), '')
                    FROM axis.per_parpersonas
                   WHERE p.sperson = sperson
                     AND p.cagente = cagente
                     AND cparam = 'FECHA_PRI_POL') per_fecha_ingreso,
                 (SELECT DECODE(ctipage,
                                0, '',
                                1, '',
                                2, '',
                                3, '',
                                cagente)
                    FROM axis.agentes
                   WHERE usu.cdelega = cagente) per_confired,
                 SUBSTR(axis.ff_desvalorfijo(8001073, 8, fg1.ctipsoci), 1, 60) tiposoc,
                 SUBSTR(DECODE(axis.pac_isqlfor.f_sucursal(usu_alt.cdelega),
                               '**', 'COMPAÑÍA',
                               axis.pac_isqlfor.f_sucursal(usu_alt.cdelega)),
                        1, 12) per_sucrea,
                 SUBSTR(DECODE(axis.pac_isqlfor.f_sucursal(usu.cdelega),
                                '**', 'COMPAÑÍA',
                                axis.pac_isqlfor.f_sucursal(usu.cdelega)),
                        1, 12) per_sucmod,
                 TRUNC(p.falta) per_fecrea,
                 TRUNC(p.fmovimi) per_fecmod
            FROM axis.per_personas p
                 INNER JOIN axis.fin_general fg1 ON p.sperson = fg1.sperson
                 INNER JOIN axis.usuarios usu ON p.cusuari = usu.cusuari
                 INNER JOIN axis.usuarios usu_alt ON p.cusuari = usu_alt.cusuari
                 LEFT JOIN
                 (SELECT /*+ INDEX_JOIN(FI) */
                         fg2.sperson,
                         fg2.sfinanci,
                         fi.fcupo,
                         fi.icupog,
                         fi.icupos
                    FROM axis.fin_general fg2
                         INNER JOIN axis.fin_indicadores fi
                             ON fg2.sfinanci = fi.sfinanci
                   WHERE fi.findicad = (SELECT MAX(findicad)
                                          FROM axis.fin_indicadores
                                         WHERE sfinanci = fi.sfinanci)) fin_cupos ON p.sperson = fin_cupos.sperson
                                                                                 AND fg1.sfinanci = fin_cupos.sfinanci
                 LEFT JOIN axis.per_direcciones dir_of ON p.sperson = dir_of.sperson
                                                      AND dir_of.ctipdir IN (1, 10, 11)
                                                      AND dir_of.cdomici = (SELECT MIN(cdomici)
                                                                              FROM axis.per_direcciones per_direcciones1
                                                                             WHERE sperson = p.sperson
                                                                               AND ctipdir IN (1, 10, 11))
                 LEFT JOIN axis.per_direcciones dir_res ON p.sperson = dir_res.sperson
                                                       AND dir_res.ctipdir IN (3, 9, 12)
                                                       AND dir_res.cdomici = (SELECT MIN(cdomici)
                                                                                FROM axis.per_direcciones per_direcciones2
                                                                               WHERE sperson = p.sperson
                                                                                 AND ctipdir IN (3, 9, 12))
                 LEFT JOIN axis.per_direcciones dir_otra ON p.sperson = dir_otra.sperson
                                                        AND dir_otra.ctipdir NOT IN (1, 3, 9, 10, 11, 12)
                                                        AND dir_otra.cdomici = (SELECT MIN(cdomici)
                                                                                  FROM axis.per_direcciones per_direcciones3
                                                                                 WHERE sperson = p.sperson
                                                                                   AND ctipdir NOT IN (1, 3, 9, 10, 11, 12))
                 LEFT JOIN axis.per_ciiu ciiu ON fg1.cciiu = ciiu.cciiu
                                             AND ciiu.cidioma = 8
        ORDER BY p.sperson DESC;

BEGIN

	FOR reg IN cur_personas LOOP

		UPDATE dim_persona
           SET estado = 'INACTIVO',
               end_estado = v_fec_reg,
               fecha_control = v_fec_reg
         WHERE estado = 'ACTIVO'
           AND per_persona = reg.per_persona
           AND per_codigo = TO_CHAR(reg.per_codigo);

        INSERT INTO dim_persona(per_codigo,
                                per_persona,
                                per_persona_nombre,
                                per_tipo_persona,
                                per_tipo_persona_desc,
                                per_direcc_oficina,
                                per_direcc_residencia,
                                per_ciudad,
                                per_departamento,
                                per_email,
                                per_telefono_celular,
                                per_telefono_oficina,
                                per_num_extension,
                                per_num_fax,
                                per_ciiu,
                                per_ciiu_desc,
                                per_sucursal,
                                per_represente_legal,
                                per_cumulo_confisco,
                                per_cupo_provisional,
                                per_cupo_afianzado,
                                per_fecha_cupo,
                                per_exento_contragar,
                                per_exento_circ_conoc,
                                per_fecha_ingreso,
                                per_confired,
                                fecha_registro,
                                estado,
                                start_estado,
                                end_estado,
                                fecha_control,
                                fecha_inicial,
                                fecha_fin,
                                tiposoc,
                                per_sucrea,
                                per_sucmod,
                                per_fecrea,
                                per_fecmod)
             VALUES (reg.per_codigo,
                     reg.per_persona,
                     reg.per_persona_nombre,
                     reg.per_tipo_persona,
                     reg.per_tipo_persona_desc,
                     reg.per_direcc_oficina,
                     reg.per_direcc_residencia,
                     reg.per_ciudad,
                     reg.per_departamento,
                     reg.per_email,
                     reg.per_telefono_celular,
                     reg.per_telefono_oficina,
                     '',
                     reg.per_num_fax,
                     reg.per_ciiu,
                     reg.per_ciiu_desc,
                     reg.per_sucursal,
                     reg.per_represente_legal,
                     0,
                     reg.per_cupo_provisional,
                     reg.per_cupo_afianzado,
                     reg.per_fecha_cupo,
                     reg.per_exento_contragar,
                     reg.per_exento_circ_conoc,
                     reg.per_fecha_ingreso,
                     reg.per_confired,
                     v_fec_reg,
                     'ACTIVO',
                     v_fec_reg,
                     NULL,
                     v_fec_reg,
                     v_fec_reg,
                     v_fec_reg,
                     reg.tiposoc,
                     reg.per_sucrea,
                     reg.per_sucmod,
                     reg.per_fecrea,
                     reg.per_fecmod);
    END LOOP;

    COMMIT;

END p_dim_persona;
/