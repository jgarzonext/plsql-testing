create or replace PROCEDURE P_REVERSA_RECIBO  
(
  P_NRECIBO IN NUMBER,
  P_NRECCAJ IN NUMBER DEFAULT NULL
) AS 
v_count_parcial NUMBER(4);
v_count_rec_tot_cob NUMBER(4);
v_count_rec_tot_pend NUMBER(4);
v_count_reccaj NUMBER(4);
v_error_parcial NUMBER(4);
--
v_smovagr movrecibo.smovagr%TYPE;
v_cestant movrecibo.cestant%TYPE;
v_fmovini movrecibo.fmovini%TYPE;
v_fmovfin movrecibo.fmovfin%TYPE;
v_fcontab movrecibo.fcontab%TYPE;
v_fmovdia movrecibo.fmovdia%TYPE;
v_cdelega movrecibo.cdelega%TYPE;
v_ctipcob movrecibo.ctipcob%TYPE;
v_fefeadm movrecibo.fefeadm%TYPE;
v_cusuari movrecibo.cusuari%TYPE;
v_nreccaj movrecibo.nreccaj%TYPE;
--
v_smovrec NUMBER(20);
--
v_norden NUMBER(4);
v_norden_ini NUMBER(4) := 1;
v_norden_det_parc NUMBER(4);
--
-- SPV IAXIS-4156				 
CURSOR v_detmovrecibo IS
 SELECT norden, iimporte,
        fmovimi, fefeadm,
        cusuari,sdevolu,
        nnumnlin, cbancar1,
        nnumord,fcontab,
        iimporte_moncon,
		fcambio
 FROM detmovrecibo
  WHERE nrecibo = p_nrecibo;
--
CURSOR v_detmov_parc IS
 SELECT smovrec, norden, nrecibo,cconcep,cgarant,
        nriesgo, iconcep,iconcep_monpol
  FROM detmovrecibo_parcial
    WHERE nrecibo = p_nrecibo;
--
CURSOR c_rec_abon IS
   SELECT movr.nreccaj
	FROM movrecibo movr JOIN detmovrecibo dmovr
	 ON movr.nrecibo = dmovr.nrecibo
	WHERE movr.nrecibo = p_nrecibo;
--
CURSOR c_detmov_ab IS
     SELECT dmovr.*
	FROM movrecibo movr JOIN detmovrecibo dmovr
	 ON (movr.nrecibo = dmovr.nrecibo
       AND movr.nreccaj = dmovr.nreccaj)
	WHERE movr.nrecibo = p_nrecibo
      AND movr.nreccaj IS NOT NULL;
--
CURSOR c_detmov_par_ab iS
    SELECT smovrec, norden, nrecibo,cconcep,cgarant,
        nriesgo, iconcep,iconcep_monpol,cmreca,
        nreccaj
  FROM detmovrecibo_parcial
    WHERE nrecibo =p_nrecibo
  ORDER BY norden, cconcep;
--
CURSOR c_detmov_ab_rcaj IS  
  SELECT dmovr.*
	FROM movrecibo movr JOIN detmovrecibo dmovr
	 ON (movr.nrecibo = dmovr.nrecibo
       AND movr.nreccaj = dmovr.nreccaj)
	WHERE movr.nrecibo = p_nrecibo
	  AND dmovr.nreccaj = p_nreccaj
      AND movr.nreccaj IS NOT NULL;
--
CURSOR c_detmov_par_ab_rcaj iS
    SELECT smovrec, norden, nrecibo,cconcep,cgarant,
        nriesgo, iconcep,iconcep_monpol,cmreca,
        nreccaj
  FROM detmovrecibo_parcial
    WHERE nrecibo =p_nrecibo
	 AND nreccaj = p_nreccaj
  ORDER BY norden, cconcep;
--
BEGIN
    --
    -- Buscamos primero los datos del movrecibo cobrado
       SELECT COUNT(*)
         INTO v_count_rec_tot_cob
        FROM movrecibo
          WHERE nrecibo = p_nrecibo
            AND cestrec = 1;
       -- Validamos recibos pendientes si estan o no reversados
         SELECT COUNT(*)
         INTO v_count_rec_tot_pend
        FROM movrecibo
          WHERE nrecibo = p_nrecibo
            AND cestrec = 0;
      --
      p_control_error('SPV','P_REVERSA_RECIBO','v_count_rec_tot_cob '||v_count_rec_tot_cob||' v_count_rec_tot_pend '||v_count_rec_tot_pend);
       IF v_count_rec_tot_cob > 0 AND v_count_rec_tot_pend = 1 THEN
         --
         p_control_error('SPV','P_REVERSA_RECIBO','Se puede reversar');
         --
         SELECT smovagr,cestant,
                fmovini,fmovfin,
                fcontab,fmovdia,
                cdelega,ctipcob,
                fefeadm, cusuari
           INTO v_smovagr,v_cestant,
                v_fmovini, v_fmovfin,
                v_fcontab,v_fmovdia,
                v_cdelega, v_ctipcob,
                v_fefeadm,v_cusuari
          FROM movrecibo
          WHERE nrecibo = p_nrecibo
            AND cestrec = 0;
         --
         UPDATE movrecibo
           SET fmovfin = v_fmovfin
         WHERE nrecibo = p_nrecibo
             AND cestrec = 1;
         --
         v_smovrec := smovrec.nextval;
         --
         INSERT INTO movrecibo (smovrec,nrecibo,cusuari,
                                smovagr,cestrec,cestant,
                                fmovini,fmovfin,fcontab,
                                fmovdia,cdelega,ctipcob,
                                fefeadm)
                        VALUES (v_smovrec,p_nrecibo,v_cusuari,
                                v_smovagr,0,v_cestant,
                                v_fmovini,NULL,v_fcontab,
                                v_fmovdia,v_cdelega,v_ctipcob,
                                v_fefeadm);
        --
        UPDATE recibos
          SET fefecto = f_sysdate
        WHERE nrecibo = p_nrecibo;
        -- 
        COMMIT;
        --
        v_error_parcial := 0;
        --
       ELSE
          --
         v_error_parcial := 1;
       END IF;
    --
    SELECT COUNT(*)
     INTO v_count_parcial
       FROM detmovrecibo
    WHERE nrecibo = p_nrecibo;
    --
    IF v_count_parcial = 0 THEN  -- pago total
       IF v_error_parcial = 0 THEN
        --
        p_control_error('SPV','P_REVERSA_RECIBO','Recibo con pago total reversado exitosamente');
        --
      ELSE
        p_control_error('SPV','P_REVERSA_RECIBO','El recibo no ha sido cobrado o fue reversado');
       END IF;
    ELSE
        p_control_error('SPV','P_REVERSA_RECIBO','v_error_parcial '||v_error_parcial);
        IF v_error_parcial = 0 THEN
         --
         FOR i IN v_detmovrecibo LOOP
           --
           BEGIN
             --
             INSERT INTO detmovrecibo (smovrec, norden, iimporte,
                                    fmovimi, fefeadm,nrecibo,
                                    cusuari,sdevolu,
                                    nnumnlin, cbancar1,
                                    nnumord,fcontab,
                                    iimporte_moncon,
									fcambio) VALUES
                                    (v_smovrec,i.norden,i.iimporte*(-1),
                                    i.fmovimi,i.fefeadm,p_nrecibo,
                                    i.cusuari, i.sdevolu,
                                    i.nnumnlin,i.cbancar1,
                                    i.nnumord,i.fcontab,
                                    i.iimporte_moncon*(-1),
									i.fcambio);
               p_control_error('SPV','P_REVERSA_RECIBO','Inserto en detmovrecibo');
               --
           EXCEPTION WHEN OTHERS THEN
             --
             p_control_error('SPV','P_REVERSA_RECIBO','smovrec '||v_smovrec );
             p_control_error('SPV','P_REVERSA_RECIBO','Se presento el error al insertar en detmovrecibo '||SQLERRM );
             --
           END;
           --
         END LOOP;
         --
         COMMIT;
         --
         FOR j IN  v_detmov_parc LOOP
            --
            BEGIN
                --
                INSERT INTO detmovrecibo_parcial (smovrec, norden, nrecibo,cconcep,cgarant,
                                                  nriesgo, iconcep,iconcep_monpol) VALUES
                                                 (v_smovrec,j.norden, p_nrecibo, j.cconcep, j.cgarant,
                                                  j.nriesgo, j.iconcep*(-1), j.iconcep_monpol*(-1));
            EXCEPTION WHEN OTHERS THEN
             --
             p_control_error('SPV','P_REVERSA_RECIBO','smovrec 2 '||v_smovrec );
             p_control_error('SPV','P_REVERSA_RECIBO','Se presento el error al insertar en detmovrecibo_parcial '||SQLERRM );
             --
           END;
           --
         END LOOP;
         --
         COMMIT;
         --
         p_control_error('SPV','P_REVERSA_RECIBO','Recibo con pago parcial reversado exitosamente');
         --
        ELSE
          --
          p_control_error('SPV','P_REVERSA_RECIBO','El recibo no ha sido cobrado o fue reversado');
			  --
			  IF p_nreccaj IS NULL THEN
					--
					SELECT MAX(norden) + 1
					  INTO v_norden
					 FROM detmovrecibo
					 WHERE nrecibo = p_nrecibo;
				   --
					FOR k IN c_detmov_ab LOOP
					  --
					  BEGIN
						--
						INSERT INTO detmovrecibo (smovrec, norden, iimporte,
												fmovimi, fefeadm,nrecibo,
												cusuari,sdevolu,
												nnumnlin, cbancar1,
												nnumord,fcontab,
												iimporte_moncon,
												fcambio,cmreca,
												nreccaj) VALUES
												(k.smovrec,v_norden,k.iimporte*(-1),
												k.fmovimi,k.fefeadm,p_nrecibo,
												k.cusuari, k.sdevolu,
												k.nnumnlin,k.cbancar1,
												k.nnumord,k.fcontab,
												k.iimporte_moncon*(-1),
												k.fcambio,k.cmreca, 
												k.nreccaj);
						p_control_error('SPV','P_REVERSA_RECIBO','Inserto en detmovrecibo abono parcial ');
						--
						v_norden := v_norden + 1;
						--
					  EXCEPTION WHEN OTHERS THEN
						--
						p_control_error('SPV','P_REVERSA_RECIBO','Se presento el error al insertar en detmovrecibo '||SQLERRM );
						--
					  END;
					  --
				  END LOOP;
				  -- 
				  SELECT MAX(norden) + 1
					INTO v_norden
				  FROM detmovrecibo_parcial
				   WHERE nrecibo = p_nrecibo;
				  --
				  FOR l IN c_detmov_par_ab LOOP
					--
					IF v_norden_ini <> l.norden THEN
					 --
					 v_norden := v_norden + 1;
					 v_norden_ini := l.norden;
					 --
					END IF;
					--
					BEGIN
					  --
					  INSERT INTO detmovrecibo_parcial (smovrec, norden, nrecibo,cconcep,cgarant,
													  nriesgo, iconcep,iconcep_monpol,cmreca,nreccaj) VALUES
													 (l.smovrec,v_norden, p_nrecibo, l.cconcep, l.cgarant,
													  l.nriesgo, l.iconcep*(-1), l.iconcep_monpol*(-1),
													  l.cmreca, l.nreccaj);
					   --			   
					EXCEPTION WHEN OTHERS THEN
						--
						p_control_error('SPV','P_REVERSA_RECIBO','Se presento el error al insertar en detmovrecibo_parcial '||SQLERRM );
						--
					END;
					--
					END LOOP;
		      ELSE
			    --
		         SELECT MAX(norden) + 1
				   INTO v_norden
				   FROM detmovrecibo
					 WHERE nrecibo = p_nrecibo;
				--
				v_norden_det_parc := v_norden;
				--
				FOR k IN c_detmov_ab_rcaj LOOP
				  --
				  BEGIN
				    --
					INSERT INTO detmovrecibo (smovrec, norden, iimporte,
												fmovimi, fefeadm,nrecibo,
												cusuari,sdevolu,
												nnumnlin, cbancar1,
												nnumord,fcontab,
												iimporte_moncon,
												fcambio,cmreca,
												nreccaj) VALUES
												(k.smovrec,v_norden,k.iimporte*(-1),
												k.fmovimi,k.fefeadm,p_nrecibo,
												k.cusuari, k.sdevolu,
												k.nnumnlin,k.cbancar1,
												k.nnumord,k.fcontab,
												k.iimporte_moncon*(-1),
												k.fcambio,k.cmreca, 
												k.nreccaj);
						--
						p_control_error('SPV','P_REVERSA_RECIBO','Inserto en detmovrecibo abono parcial un recibo de caja ');
						--
						v_norden := v_norden + 1;
						--
				  EXCEPTION WHEN OTHERS THEN
						--
						p_control_error('SPV','P_REVERSA_RECIBO','Se presento el error al insertar en detmovrecibo un recibo de caja '||SQLERRM );
						--
					  END;
				END LOOP;
				--
				SELECT MIN(norden)
					INTO v_norden_ini
				  FROM detmovrecibo_parcial
				   WHERE nrecibo = p_nrecibo
				     AND nreccaj = p_nreccaj;
				 --
				 FOR l IN c_detmov_par_ab_rcaj LOOP
					--
					IF v_norden_ini <> l.norden THEN
					 --
					 v_norden_det_parc := v_norden_det_parc + 1;
					 v_norden_ini := l.norden;
					 --
					END IF;
					--
					BEGIN
					  --
					  INSERT INTO detmovrecibo_parcial (smovrec, norden, nrecibo,cconcep,cgarant,
													  nriesgo, iconcep,iconcep_monpol,cmreca,nreccaj) VALUES
													 (l.smovrec,v_norden_det_parc, p_nrecibo, l.cconcep, l.cgarant,
													  l.nriesgo, l.iconcep*(-1), l.iconcep_monpol*(-1),
													  l.cmreca, p_nreccaj);
					   --			   
					EXCEPTION WHEN OTHERS THEN
						--
						p_control_error('SPV','P_REVERSA_RECIBO','Se presento el error al insertar en detmovrecibo_parcial un recibo de caja '||SQLERRM );
						--
					END;
					--
					END LOOP;
					--
			  END IF;
			  --
			  COMMIT;
          --
        END IF;
        --
    END IF;
    --
END P_REVERSA_RECIBO;