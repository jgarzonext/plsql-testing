create or replace PROCEDURE p_dim_poliza
IS
    v_pol_id        NUMBER;
    v_fec_reg       DATE := TRUNC(sysdate);
	cont 			NUMBER;

    CURSOR cur_poliza IS

    SELECT 
       POL_NUM_POLIZA,
       POL_FECHA_EXP_POL,
       POL_ANNO_EXP_POL,
       POL_FEC_INI_POL, 
       POL_FEC_FIN_POL,
       POL_SUCUR,
       POL_CERTIF,
       POL_VBASE
  FROM (
        SELECT  
                seg.npoliza POL_NUM_POLIZA,
                TRUNC(movr.fmovdia) POL_FECHA_EXP_POL,
                EXTRACT(YEAR FROM movr.fmovdia) POL_ANNO_EXP_POL,
                TRUNC(rec.fefecto) POL_FEC_INI_POL, 
                TRUNC(rec.fvencim) POL_FEC_FIN_POL,
                SUBSTR(axis.pac_redcomercial.f_busca_padre(24, seg.cagente, NULL, NULL), 3 ,3) POL_SUCUR,
                (SELECT rd.ncertdian
                   FROM axis.rango_dian_movseguro rd
                  WHERE rd.sseguro = movs.sseguro
                    AND rd.nmovimi = movs.nmovimi) POL_CERTIF,
                CASE
                  WHEN rec.ctiprec = 9 THEN
                   vm.itotpri * -1
                  ELSE
                   vm.itotpri
                  END POL_VBASE   
          FROM axis.seguros            seg,
                axis.movseguro          movs,
                axis.vdetrecibos_monpol vm, -- COP
                axis.recibos            rec,
                axis.movrecibo          movr
         WHERE seg.sseguro = movs.sseguro
           AND rec.sseguro = seg.sseguro
           AND rec.nmovimi = movs.nmovimi
           AND rec.nrecibo = vm.nrecibo(+)
           AND rec.nrecibo = movr.nrecibo
           AND movr.smovrec IN (SELECT mv1.smovrec
                                  FROM axis.movrecibo mv1
                                 WHERE mv1.nrecibo = movr.nrecibo
                                   AND mv1.smovrec = (SELECT MAX(mv2.smovrec) 
                                                        FROM axis.movrecibo mv2
                                                       WHERE mv2.nrecibo = mv1.nrecibo
                                                         AND mv2.cestrec = 0)) -- Pendiente
           AND rec.ctiprec != 99

    UNION ALL

        -- Anulados

        SELECT
               seg.npoliza POL_NUM_POLIZA,
               TRUNC(movr.fmovdia) POL_FECHA_EXP_POL,
               EXTRACT(YEAR FROM movr.fmovdia) POL_ANNO_EXP_POL,
               TRUNC(rec.fefecto) POL_FEC_INI_POL, 
               TRUNC(rec.fvencim) POL_FEC_FIN_POL,
               SUBSTR(axis.pac_redcomercial.f_busca_padre(24, seg.cagente, NULL, NULL), 3 ,3) POL_SUCUR,
               (SELECT rd.ncertdian
                   FROM axis.rango_dian_movseguro rd
                  WHERE rd.sseguro = movs.sseguro
                    AND rd.nmovimi = movs.nmovimi) POL_CERTIF,
                CASE
                  WHEN rec.ctiprec != 9 THEN
                   vm.itotpri * -1
                  ELSE
                   vm.itotpri
                END POL_VBASE
          FROM axis.seguros            seg,
                axis.movseguro          movs,
                axis.vdetrecibos_monpol vm, -- COP
                axis.recibos            rec,
                axis.movrecibo          movr
         WHERE seg.sseguro = movs.sseguro
           AND rec.sseguro = seg.sseguro
           AND rec.nrecibo = movr.nrecibo
           AND rec.nrecibo = vm.nrecibo(+)
              -- Igualdad de nmovimi
           AND rec.nmovimi = movs.nmovimi
           AND movr.smovrec IN (SELECT mv1.smovrec
                                  FROM axis.movrecibo mv1
                                 WHERE mv1.nrecibo = movr.nrecibo
                                   AND mv1.smovrec = (SELECT MAX(mv2.smovrec) 
                                                        FROM axis.movrecibo mv2
                                                       WHERE mv2.nrecibo = mv1.nrecibo
                                                         AND mv2.cestrec IN (2))) -- Anulados
           AND rec.ctiprec != 99

         UNION ALL

        -- Cancelados
        SELECT 
                seg.npoliza POL_NUM_POLIZA,
                TRUNC(movr.fmovdia) POL_FECHA_EXP_POL,
                EXTRACT(YEAR FROM movr.fmovdia) POL_ANNO_EXP_POL,
                TRUNC(rec.fefecto) POL_FEC_INI_POL, 
                rec.fvencim POL_FEC_FIN_POL,
                SUBSTR(axis.pac_redcomercial.f_busca_padre(24, seg.cagente, NULL, NULL), 3 ,3) POL_SUCUR,
                (SELECT rd.ncertdian
                   FROM axis.rango_dian_movseguro rd
                  WHERE rd.sseguro = movs.sseguro
                    AND rd.nmovimi = rec.nmovimi) POL_CERTIF,
                    CASE
                  WHEN rec.ctiprec != 9 THEN
                   CASE
                     WHEN axis.pac_adm_cobparcial.f_get_importe_cobro_parcial(rec.nrecibo) != 0 THEN
                      axis.pac_adm_cobparcial.f_get_importe_cobrado(rec.nrecibo, 0, 2) * -1
                     ELSE
                      vm.itotpri * -1
                   END
                  ELSE
                   CASE
                     WHEN axis.pac_adm_cobparcial.f_get_importe_cobro_parcial(rec.nrecibo) != 0 THEN
                      axis.pac_adm_cobparcial.f_get_importe_cobrado(rec.nrecibo, 0, 2)
                     ELSE
                      vm.itotpri
                   END
                END POL_VBASE
          FROM axis.seguros            seg,
                axis.movseguro          movs,
                axis.vdetrecibos_monpol vm, -- COP
                axis.recibos            rec,
                axis.movrecibo          movr
         WHERE seg.sseguro = movs.sseguro
           AND rec.sseguro = seg.sseguro
           AND rec.nrecibo = vm.nrecibo(+)
           AND rec.nrecibo = movr.nrecibo
              -- Desigualdad de nmovimi solo para Cancelaciones
           AND ((rec.nmovimi = movs.nmovimi - 1 AND movs.nmovimi = (SELECT MAX(movs1.nmovimi)
                                                                      FROM axis.movseguro movs1
                                                                     WHERE movs1.sseguro = movs.sseguro
                                                                       AND movs1.cmovseg = 53)))
              --
           AND movr.smovrec IN (SELECT mv1.smovrec
                                  FROM axis.movrecibo mv1
                                 WHERE mv1.nrecibo = movr.nrecibo
                                   AND mv1.smovrec = (SELECT MAX(mv2.smovrec) 
                                                        FROM axis.movrecibo mv2
                                                       WHERE mv2.nrecibo = mv1.nrecibo
                                                         AND mv2.cestrec IN (3))) -- Cancelados
           AND rec.ctiprec != 99
    ORDER BY POL_NUM_POLIZA);


BEGIN

	SELECT MAX(pol_id) INTO v_pol_id FROM dim_poliza;

    FOR reg IN cur_poliza
    LOOP


	v_pol_id := v_pol_id + 1;

       UPDATE dim_poliza
           SET estado = 'INACTIVO',
               end_estado = v_fec_reg,
               fecha_control = v_fec_reg
         WHERE estado = 'ACTIVO'
         and pol_num_poliza = to_char(reg.pol_num_poliza);
         
        
        INSERT INTO DIM_POLIZA
                VALUES (v_pol_id,
                          reg.Pol_Num_Poliza,
                           reg.Pol_Fecha_Exp_Pol,
                           reg.Pol_Anno_Exp_Pol,
                           reg.Pol_Fec_Ini_Pol, 
                           reg.Pol_Fec_Fin_Pol,
                           reg.Pol_Sucur,
                           reg.Pol_Certif,
                           reg.Pol_Vbase,
                           v_fec_reg,
                           'ACTIVO',
                           v_fec_reg,
                           v_fec_reg,
                           v_fec_reg
                           );

    END LOOP;

    COMMIT;

END p_dim_poliza;