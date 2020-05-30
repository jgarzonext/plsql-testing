create or replace procedure p_dim_grupo_poliza
is
    v_pol_id        number;
    v_rol_pol_id      number;
    v_fec_reg   date := trunc (sysdate);
	cont 			number;

    cursor cur_grupo_poliza is

        select 
        gp.num_poliza_role,
        gp.nom_persona_role,
        gp.id_persona_role,
        gp.role,
        gp.pol_sucur,
        gp.pol_coaseg,
        gp.pol_certif
        from ( 
        select distinct 
               s.npoliza num_poliza_role,
               cp.tcompani nom_persona_role,
               case when p.ctipide = 37
                    then substr(p.nnumide,1, 9) else p.nnumide end id_persona_role,
               'COASEGURADORA' role,
                substr(axis.pac_agentes.f_get_cageliq(24, 2, s.cagente),3,3) pol_sucur,
                nvl(coacua.ploccoa,0) pol_coaseg,               
                rdm.ncertdian pol_certif
        from axis.seguros s
        inner join axis.coacuadro coacua on s.sseguro = coacua.sseguro
        and coacua.ncuacoa = (select max(ncuacoa) from axis.coacuadro where sseguro = coacua.sseguro)
        left join axis.coacedido coaced on s.sseguro = coaced.sseguro 
        and coacua.ncuacoa = coaced.ncuacoa 
        and coaced.ncuacoa = (select max(ncuacoa) from axis.coacedido where sseguro = coaced.sseguro)
        left join axis.companias cp on cp.ccompani = decode(s.ctipcoa, 8, coacua.ccompan, 1, coaced.ccompan, null)
        left join axis.per_personas p on cp.sperson = p.sperson
        left join axis.movseguro m on s.sseguro = m.sseguro 
        inner join axis.rango_dian_movseguro rdm on m.nmovimi = rdm.nmovimi and s.sseguro = rdm.sseguro
        
        union 
        
        select distinct  s.npoliza num_poliza_role, 
                         pd.tnombre1 || ' ' || pd.tnombre2 ||  ' ' || pd.tapelli1 || ' ' || pd.tapelli2 nom_persona_role, 
                         case when p.ctipide = 37
                            then substr(p.nnumide,1, 9) else p.nnumide end id_persona_role, 
                         'ASEGURADO' role, 
                         substr(axis.pac_agentes.f_get_cageliq(24, 2, s.cagente),3,3) pol_sucur, 
                         nvl(c.ploccoa,0) pol_coaseg, 
                         rdm.ncertdian pol_certif
        from axis.seguros s, 
        axis.per_detper pd, 
        axis.asegurados a, 
        axis.per_personas p, 
        axis.coacuadro c, axis.rango_dian_movseguro rdm, axis.movseguro m
        where a.sseguro = s.sseguro
        and a.sperson = p.sperson
        and pd.sperson = p.sperson
        and s.sseguro = c.sseguro(+)
        and m.sseguro = rdm.sseguro
        and m.nmovimi = rdm.nmovimi 
        and s.sseguro = m.sseguro
        
        union 
        
        select distinct s.npoliza num_poliza_role, 
                        pd.tnombre1 || ' ' || pd.tnombre2 ||  ' ' || pd.tapelli1 || ' ' || pd.tapelli2 nom_persona_role, 
                        case when p.ctipide = 37
                                then substr(p.nnumide,1, 9) else p.nnumide end id_persona_role, 
                        'TOMADOR' role, 
                        substr(axis.pac_agentes.f_get_cageliq(24, 2, s.cagente),3,3) pol_sucur, 
                        nvl(c.ploccoa,0) pol_coaseg, 
                        rdm.ncertdian pol_certif 
        from axis.seguros s, 
        axis.per_detper pd, 
        axis.tomadores t, 
        axis.per_personas p, 
        axis.coacuadro c, axis.rango_dian_movseguro rdm, axis.movseguro m
        where t.sseguro = s.sseguro
        and t.sperson = pd.sperson
        and t.sperson = p.sperson
        and pd.sperson = p.sperson
        and s.sseguro = c.sseguro(+)
        and m.sseguro = rdm.sseguro
        and m.nmovimi = rdm.nmovimi 
        and s.sseguro = m.sseguro
        
        union 
        
        select distinct
               s.npoliza num_poliza_role, 
               pd.tnombre1 || ' ' || pd.tnombre2 ||  ' ' || pd.tapelli1 || ' ' || pd.tapelli2 nom_persona_role, 
               case when p.ctipide = 37
                            then substr(p.nnumide,1, 9) else p.nnumide end id_persona_role, 
                'BENEFICIARO' role, 
                substr(axis.pac_agentes.f_get_cageliq(24, 2, s.cagente),3,3) pol_sucur, 
                nvl(c.ploccoa,0) pol_coaseg, 
                rdm.ncertdian pol_certif 
        from axis.seguros s
        inner join axis.benespseg b on s.sseguro = b.sseguro
        inner join axis.per_detper pd on b.sperson = pd.sperson
        inner join axis.per_personas p on pd.sperson = p.sperson
        left join axis.coacuadro c on s.sseguro = c.sseguro
        inner join axis.movseguro m on b.nmovimi = m.nmovimi and b.sseguro = m.sseguro
        inner join axis.rango_dian_movseguro rdm on m.sseguro = rdm.sseguro and m.nmovimi = rdm.nmovimi) gp;
        

begin

	select max(pol_id) into v_pol_id from dim_grupo_poliza;
    select max(per_rol_pol_id) into v_rol_pol_id from dim_grupo_poliza;


    for reg in cur_grupo_poliza
    loop


	v_pol_id := v_pol_id + 1;
	v_rol_pol_id := v_rol_pol_id + 1;


        update dim_grupo_poliza
           set estado = 'INACTIVO',
               end_estado = v_fec_reg,
               fecha_control = v_fec_reg
         where estado = 'ACTIVO'
          and id_persona_role = reg.id_persona_role;

        insert into dim_grupo_poliza
            values(v_pol_id,
                   v_rol_pol_id,
                   reg.num_poliza_role,
                   reg.nom_persona_role,
                   reg.id_persona_role,
                   reg.role,
                   reg.pol_sucur,
                   reg.pol_coaseg,
                   reg.pol_certif,
                   v_fec_reg,
                   'ACTIVO',
                   v_fec_reg,
                   v_fec_reg,
                   v_fec_reg);
  

    END LOOP;

    COMMIT;

END p_dim_grupo_poliza;
