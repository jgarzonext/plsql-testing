create or replace PROCEDURE p_dim_intermediario
IS
    v_inter_id        NUMBER;
    v_fec_reg   DATE := TRUNC (sysdate);

    CURSOR cur_intermediario IS
          SELECT DISTINCT 
                decode(A.ctipage, 4, 100, 5, 200, 6, 300, NULL) intrm_intermediario_tid,
                CASE WHEN P.ctipper = 2
                    THEN substr(P.nnumide,1, 9) ELSE P.nnumide END  intrm_intermediario,
                A.cagente intrm_cod_intermediario,
                axis.pac_isqlfor.f_persona(NULL, NULL, P.sperson) intrm_intermediario_nom,
                pd.tdomici intrm_direcc_oficina,
                nvl(axis.pac_isqlfor.f_poblacion(P.sperson, pd.cdomici), ' ') intrm_ciudad,
                nvl(axis.pac_isqlfor.f_provincia(P.sperson, pd.cdomici), ' ') intrm_departamento,
                nvl(axis.pac_isqlfor.f_per_contactos(A.sperson, 3), ' ') intrm_email,
                nvl(axis.pac_isqlfor.f_per_contactos(A.sperson, 6), ' ') intrm_telefono_celular,
                nvl(axis.pac_isqlfor.f_per_contactos(A.sperson, 1), ' ') intrm_telefono_oficina,
                nvl(axis.pac_isqlfor.f_per_contactos(A.sperson, 2), ' ') intrm_num_fax,
                fg.cciiu intrm_ciiu,
                ciiu.tciiu intrm_ciiu_desc,
                decode (axis.pac_isqlfor.f_sucursal(A.cagente), '**', 'COMPAÑÍA', axis.pac_isqlfor.f_sucursal(A.cagente)) intrm_sucursal,
                axis.pac_isqlfor_conf.f_representante_legal(P.sperson, 2) intrm_represente_legal,
                A.claveinter intrm_clave,    
                 'ACTIVO' estado,
                rg.cregfiscal intrm_cattributaria, 
                P.ctipper intrm_tipper,
                    decode(A.ccomisi,0 , 'NO', 'SI' )intrm_giro_com
            FROM axis.agentes A
            INNER JOIN axis.agentes_comp ac ON A.cagente = ac.cagente
            INNER JOIN axis.per_personas P ON A.sperson = P.sperson
            LEFT JOIN axis.per_direcciones pd ON P.sperson = pd.sperson  
            AND pd.cdomici = (SELECT MIN(cdomici) FROM axis.per_direcciones WHERE sperson = P.sperson)

            LEFT JOIN axis.fin_general fg ON P.sperson = fg.sperson
            LEFT JOIN axis.per_ciiu ciiu ON fg.cciiu = ciiu.cciiu AND ciiu.cidioma = 8
            INNER JOIN axis.per_regimenfiscal rg ON P.sperson = rg.sperson 
            AND fefecto = (SELECT MAX (fefecto) FROM axis.per_regimenfiscal WHERE sperson =  rg.sperson)
            WHERE axis.pac_contexto.f_inicializarctx(axis.pac_parametros.f_parempresa_t(24,'USER_BBDD'))=0
            ORDER BY A.cagente
            ;

BEGIN

	SELECT MAX(intrm_id) INTO v_inter_id FROM dim_intermediario;

    FOR reg IN cur_intermediario
    LOOP

	v_inter_id := v_inter_id + 1;

        UPDATE dim_intermediario
           SET estado = 'INACTIVO',
               end_estado = v_fec_reg,
               fecha_control = v_fec_reg
         WHERE estado = 'ACTIVO'
          and intrm_cod_intermediario = to_char(reg.intrm_cod_intermediario);
           
        INSERT INTO DIM_INTERMEDIARIO
                VALUES (v_inter_id,
                    reg.intrm_intermediario_tid,
                    reg.intrm_intermediario,
                    reg.intrm_cod_intermediario,
                    reg.intrm_intermediario_nom,
                    ' ',
                    reg.intrm_direcc_oficina,
                    reg.intrm_ciudad,
                    reg.intrm_departamento,
                    reg.intrm_email,
                    reg.intrm_telefono_celular,
                    reg.intrm_telefono_oficina,
                    ' ',
                    reg.intrm_num_fax,
                    reg.intrm_ciiu,
                    reg.intrm_ciiu_desc,
                    reg.intrm_sucursal,
                    reg.intrm_represente_legal,
                    reg.intrm_clave,
                    ' ',
                    v_fec_reg,
                    'ACTIVO',
                     v_fec_reg,
                     v_fec_reg,
                     v_fec_reg,
                     v_fec_reg,
                     v_fec_reg,
                    reg.intrm_cattributaria,
                    reg.intrm_tipper,
                    null,
                    reg.intrm_giro_com,
                    ' ');

    END LOOP;

    COMMIT;

END p_dim_intermediario;