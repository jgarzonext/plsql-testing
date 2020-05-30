CREATE OR REPLACE PROCEDURE p_dim_persona_vinculacion
IS
    v_pervin_id   NUMBER;
    cont          NUMBER;
    v_fec_reg     DATE := TRUNC(SYSDATE);

    CURSOR cur_pervin IS
          SELECT *
            FROM (SELECT DISTINCT
                         p1.sperson pervin_codigo,
                         CASE
                             WHEN p1.ctipide = 37 THEN SUBSTR(p1.nnumide, 1, 9)
                             ELSE p1.nnumide
                         END pervin_persona,
                         1 pervin_instancia
                    FROM axis.per_personas p1
                         INNER JOIN axis.tomadores t
                             ON p1.sperson = t.sperson
                  
				  UNION
                  
				  SELECT /*+ USE_NL(A) ORDERED */
                         DISTINCT
                         p2.sperson pervin_codigo,
                         CASE
                             WHEN p2.ctipide = 37 THEN SUBSTR(p2.nnumide, 1, 9)
                             ELSE p2.nnumide
                         END pervin_persona,
                         60 pervin_instancia
                    FROM axis.per_personas p2
                         INNER JOIN axis.asegurados a
                             ON p2.sperson = a.sperson + 0
                  
				  UNION
                  
				  SELECT DISTINCT
                         p3.sperson pervin_codigo,
                         CASE
                             WHEN p3.ctipide = 37 THEN SUBSTR(p3.nnumide, 1, 9)
                             ELSE p3.nnumide
                         END pervin_persona,
                         5 pervin_instancia
                    FROM axis.per_personas p3
                         INNER JOIN axis.benespseg b
                             ON p3.sperson = b.sperson
                  
				  UNION
                  
				  SELECT DISTINCT
                         p4.sperson pervin_codigo,
                         CASE
                             WHEN p4.ctipide = 37 THEN SUBSTR(p4.nnumide, 1, 9)
                             ELSE p4.nnumide
                         END pervin_persona,
                         2 pervin_instancia
                    FROM axis.per_personas p4
                         INNER JOIN axis.agentes age
                             ON p4.sperson = age.sperson
                   WHERE age.ctipage NOT IN (0, 1, 2, 3)
                  
				  UNION
                  
				  SELECT DISTINCT
                         p5.sperson pervin_codigo,
                         CASE
                             WHEN p5.ctipide = 37 THEN SUBSTR(p5.nnumide, 1, 9)
                             ELSE p5.nnumide
                         END pervin_persona,
                         4 pervin_instancia
                    FROM axis.per_personas p5
                         INNER JOIN axis.companias com
                             ON p5.sperson = com.sperson
                   WHERE com.ctipcom = 2
                     AND (com.fbaja IS NULL
                       OR TRUNC(com.fbaja) > TRUNC(SYSDATE))
                  
				  UNION
                  
				  SELECT DISTINCT
                         p6.sperson pervin_codigo,
                         CASE
                             WHEN p6.ctipide = 37 THEN SUBSTR(p6.nnumide, 1, 9)
                             ELSE p6.nnumide
                         END pervin_persona,
                         99 pervin_instancia
                    FROM axis.per_personas p6
                         INNER JOIN axis.fin_general fg
                             ON p6.sperson = fg.sperson
                   WHERE fg.ctipsoci IN (9, 10)
				 ) v
        ORDER BY pervin_codigo, pervin_instancia;

BEGIN
    
	SELECT MAX(pervin_id) INTO v_pervin_id FROM dim_persona_vinculacion;

    FOR reg IN cur_pervin
    LOOP
        
		UPDATE dim_persona_vinculacion
           SET estado = 'INACTIVO',
               end_estado = v_fec_reg,
               fecha_control = v_fec_reg
         WHERE estado = 'ACTIVO'
           AND pervin_codigo = TO_CHAR(reg.pervin_codigo)
           AND pervin_persona = reg.pervin_persona
           AND pervin_instancia = reg.pervin_instancia;

        v_pervin_id := v_pervin_id + 1;

        INSERT INTO dim_persona_vinculacion(pervin_id,
                                            pervin_codigo,
                                            pervin_persona,
                                            pervin_instancia,
                                            fecha_registro,
                                            estado,
                                            start_estado,
                                            end_estado,
                                            fecha_control,
                                            fecha_inicial,
                                            fecha_fin)
             VALUES (v_pervin_id,
                     reg.pervin_codigo,
                     reg.pervin_persona,
                     reg.pervin_instancia,
                     v_fec_reg,
                     'ACTIVO',
                     v_fec_reg,
                     NULL,
                     v_fec_reg,
                     v_fec_reg,
                     v_fec_reg);
    END LOOP;

    COMMIT;
	
END p_dim_persona_vinculacion;
/