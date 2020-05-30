create or replace PROCEDURE p_dim_entidad
IS
    v_ent_id        NUMBER;
    v_fec_reg   DATE := TRUNC (sysdate);
	
    CURSOR cur_entidad IS
         select 
              distinct  t.sperson ent_codigo,
                case when p.ctipide = 37
                    then substr(p.nnumide,1, 9) else p.nnumide end ent_nit, 
                    case when fg1.ctipsoci = 10 then 50  
                         when fg1.ctipsoci = 17 then 10
                         when fg1.ctipsoci = 9 then 60
                         when p.ctipper = 1 then 10
                       else 20  
                    end ent_tipper,
            pd.tnombre1 || ' ' || pd.tnombre2 ||  ' ' || pd.tapelli1 || ' ' || pd.tapelli2 ent_nombre, 
            pr.cregfiscal cattributaria,
              case  
                when p.ctipide = 37  
                and  p.tdigitoide is null then substr(p.nnumide, 10,10) 
                else p.tdigitoide end digito
            from axis.tomadores t
            inner join axis.asegurados a on t.sperson = a.sperson
            inner join axis.per_personas p on a.sperson = p.sperson 
            inner join axis.per_detper pd on p.sperson = pd.sperson
            left join axis.fin_general fg1 on p.sperson = fg1.sperson
            left join axis.per_regimenfiscal pr on pd.sperson = pr.sperson and pr.fefecto = (select max (fefecto) from axis.per_regimenfiscal where sperson =  pr.sperson)        
            ; 

BEGIN

	SELECT MAX(ent_id) INTO v_ent_id FROM dim_entidad;

    FOR reg IN cur_entidad
    LOOP


	v_ent_id := v_ent_id + 1;

        UPDATE dim_entidad
           SET estado = 'INACTIVO',
               end_estado = v_fec_reg,
               fecha_control = v_fec_reg
         WHERE estado = 'ACTIVO'
          and ent_codigo = to_char(reg.ent_codigo)
          and ent_nit = reg.ent_nit;

        INSERT INTO DIM_ENTIDAD
                VALUES (v_ent_id,
                        reg.ent_codigo,
                        reg.ent_nit,
                        reg.ent_tipper,
                        reg.ent_nombre,
                        v_fec_reg,
                        'ACTIVO',
                        v_fec_reg,
                        v_fec_reg,
                        v_fec_reg,
                        reg.cattributaria,
                        reg.digito);

    END LOOP;

    COMMIT;

END p_dim_entidad;