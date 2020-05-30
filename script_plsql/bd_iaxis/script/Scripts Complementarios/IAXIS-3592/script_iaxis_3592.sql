/* Formatted on 2019/05/29 15:19 (Formatter Plus v4.8.8) */
UPDATE parproductos
   SET cvalpar = 30
 WHERE cparpro = 'DIAS_CONVENIO_RNODOM';
/
DELETE      detvalores
      WHERE cvalor = 61 AND catribu = 19;

INSERT INTO detvalores
            (cvalor, cidioma, catribu, tatribu
            )
     VALUES (61, 1, 19, 'Cancel·lació de pòlissa per Impagament'
            );
/
INSERT INTO detvalores
            (cvalor, cidioma, catribu, tatribu
            )
     VALUES (61, 2, 19, 'Cancelación de póliza por Impago'
            );
INSERT INTO detvalores
            (cvalor, cidioma, catribu, tatribu
            )
     VALUES (61, 8, 19, 'Cancelación de póliza por Impago'
            );
/
ALTER             TABLE seguros
DROP CONSTRAINT ck_seguros_csituac;
/
ALTER TABLE seguros
ADD
( CONSTRAINT ck_seguros_csituac
 CHECK (csituac IN(0,1,2,3,4,5,7,8,9,10,11,12,13,14,15,16,17,18,19))
 );
/
ALTER             TABLE movseguro
DROP CONSTRAINT movseguro_cmovseg_ck;
/
ALTER TABLE movseguro ADD (
  CONSTRAINT movseguro_cmovseg_ck
 CHECK (cmovseg IN (0,1,2,3,4,5,6,10,11,12,52,53)));
UPDATE motmovseg
   SET tmotmov = 'Cancelación de póliza por Impago',
       tsuplem = 'Cancelación de póliza por Impago'
 WHERE cmotmov = 321 AND cidioma IN (2, 8);
/
UPDATE motmovseg
   SET tmotmov = 'Cancel·lació de pòlissa per Impagament',
       tsuplem = 'Cancel·lació de pòlissa per Impagament'
 WHERE cmotmov = 321 AND cidioma IN (1);
COMMIT ;
/
DELETE      detvalores
      WHERE cvalor = 251 AND catribu = 36;
/
INSERT INTO detvalores
            (cvalor, cidioma, catribu, tatribu
            )
     VALUES (251, 1, 36, 'Cancel·lació de pòlissa per Impagament'
            );
/
INSERT INTO detvalores
            (cvalor, cidioma, catribu, tatribu
            )
     VALUES (251, 2, 36, 'Cancelación de póliza por Impago'
            );
/
INSERT INTO detvalores
            (cvalor, cidioma, catribu, tatribu
            )
     VALUES (251, 8, 36, 'Cancelación de póliza por Impago'
            );
COMMIT ;
/
DELETE      detvalores
      WHERE cvalor = 16 AND catribu = 53;
/
INSERT INTO detvalores
            (cvalor, cidioma, catribu, tatribu
            )
     VALUES (16, 1, 53, 'Moviment cancel'
            );
INSERT INTO detvalores
            (cvalor, cidioma, catribu, tatribu
            )
     VALUES (16, 2, 53, 'Movimiento cancelación'
            );
INSERT INTO detvalores
            (cvalor, cidioma, catribu, tatribu
            )
     VALUES (16, 8, 53, 'Movimiento cancelación'
            );
COMMIT ;
/
UPDATE codimotmov
   SET cmovseg = 53
 WHERE cmotmov = 321;
COMMIT ;
/
DELETE      detmodconta_interf
      WHERE smodcon = 1 AND cempres = 24 AND nlinea IN (216, 230, 6, 11);
INSERT INTO detmodconta_interf
            (smodcon, cempres, nlinea, ttippag, ccuenta,
             tseldia,
             claenlace, tlibro, tipofec
            )
     VALUES (1, 24, 216, 4, '412155',
             'SELECT ''0101'' coletilla,''Cancelaciones y/o anulaciones cumplimiento (5)'' descrip,
  pac_contab_conf.f_valor_cancel(r.nrecibo,0) importe,
   LPAD (99, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121550101),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_primas_emitidas(SG.SSEGURO,f_sysdate),0), 2, ''0'')
|| LPAD(pac_contab_conf.f_valor_cancel(r.nrecibo,0), 23, ''0'')
|| LPAD(pac_contab_conf.f_valor_cancel(r.nrecibo,4), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121550101),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg,tomadores t, per_personas p, movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 3
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND v.nrecibo = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 and ms.cmotmov in (306,666,321)
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 801
 AND sg.ctipcoa in (0,1)
 AND r.ctiprec in (0,9)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
/* and sg.npoliza IN (
      select s.npoliza
        from seguros s, movrecibo mv , recibos rb
       where mv.nrecibo = rb.nrecibo
         AND rb.sseguro = s.sseguro
         and to_Char(s.femisio,''yyyy'') <> to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''dd/mm/yyyy'') > to_Char(rb.fefecto,''dd/mm/yyyy'')
         AND to_Char(mv.fmovdia,''yyyy'') = to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''mm'') in (''01'',''02''))*/
   AND r.nrecibo = #idpago',
             '1', '0L1L', 1
            );
INSERT INTO detmodconta_interf
            (smodcon, cempres, nlinea, ttippag, ccuenta,
             tseldia,
             claenlace, tlibro, tipofec
            )
     VALUES (1, 24, 230, 4, '412155',
             'SELECT ''0101'' coletilla,''Cancelaciones y/o anulaciones cumplimiento (21)'' descrip,
   pac_contab_conf.f_valor_cancel(r.nrecibo,0) importe,
   LPAD (99, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(01, 2, ''0'')
|| LPAD(to_char(M.FMOVDIA ,''YYYY''), 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121550101),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_agente(sg.cagente, 1,f_sysdate),0), 2, ''0'')
|| LPAD(pac_contab_conf.f_valor_cancel(r.nrecibo,0), 23, ''0'')
|| LPAD(pac_contab_conf.f_valor_cancel(r.nrecibo,4), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(m.fmovdia,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121550101),''C''), 1, ''0''),''D'',''I'',''K'',''I'',0), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
 FROM movrecibo m, recibos r, vdetrecibos_monpol vm,  seguros sg, tomadores t, per_personas p,  movseguro ms
 WHERE m.nrecibo = r.nrecibo
 AND m.cestrec = 3
 AND m.cestant = 0
 AND vm.nrecibo(+) = r.nrecibo
 AND r.sseguro = sg.sseguro
 AND t.sseguro = sg.sseguro
 AND sg.sseguro = ms.sseguro
 and MS.cmotmov  NOT IN (324,321)
 AND NVL(r.sperson, t.sperson) = p.sperson
 AND sg.cramo = 801
 AND sg.ctipcoa = 8
 AND r.ctiprec in (0,1)
 AND m.fmovfin IS NULL
 AND r.cestaux in (0,1)
 /*and sg.npoliza IN (
      select s.npoliza
        from seguros s, movrecibo mv , recibos rb
       where mv.nrecibo = rb.nrecibo
         AND rb.sseguro = s.sseguro
         and to_Char(s.femisio,''yyyy'') <> to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''dd/mm/yyyy'') > to_Char(rb.fefecto,''dd/mm/yyyy'')
         AND to_Char(mv.fmovdia,''yyyy'') = to_Char(F_SYSDATE,''yyyy'')
         AND to_Char(mv.fmovdia,''mm'') in (''01'',''02''))*/
   AND r.nrecibo = #idpago',
             '1', '0L1L', 1
            );

INSERT INTO detmodconta_interf
            (smodcon, cempres, nlinea, ttippag, ccuenta,
             tseldia,
             claenlace, tlibro, tipofec
            )
     VALUES (1, 24, 6, 4, '412155',
             'SELECT ''0101'' coletilla,''Descancelaciones Cumplimiento '' descrip,
   NVL(vm.iprinet, v.iprinet) importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121550101),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_impuestos_conf.f_indicador_primas_emitidas(t.sperson,f_sysdate),0), 2, ''0'')
|| LPAD(NVL(vm.iprinet,v.iprinet), 23, ''0'')
|| LPAD(NVL(vm.itotimp,v.itotimp), 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121550101),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(r.nrecibo, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg, tomadores t, per_personas p
 WHERE m.nrecibo = r.nrecibo
   AND m.cestrec = 0
   AND m.cestant = 0
   AND vm.nrecibo(+) = r.nrecibo
   AND v.nrecibo = r.nrecibo
   AND r.sseguro = sg.sseguro
   AND t.sseguro = sg.sseguro
   AND NVL(r.sperson, t.sperson) = p.sperson
   AND sg.cramo = 801
   AND sg.ctipcoa in (0,1)
   AND r.ctiprec = 0 -- DESCANCELACION
   AND m.fmovfin IS NULL
   AND r.cestaux in (0,1)
   AND r.nrecibo = #idpago',
             '1', NULL, 1
            );
INSERT INTO detmodconta_interf
            (smodcon, cempres, nlinea, ttippag, ccuenta,
             tseldia,
             claenlace, tlibro, tipofec
            )
     VALUES (1, 24, 11, 4, '412155',
             'SELECT ''0101'' coletilla,''Descancelaciones Cumplimiento '' descrip,
   NVL(vm.iprinet, v.iprinet) importe,
   LPAD (01, 2, ''0'')
|| LPAD(1000, 4, ''0'')
|| LPAD(''COP'', 5, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 4, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_contab_trm(SG.SSEGURO,NULL),0), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_moneda(pac_contab_conf.f_mon_poliza(SG.SSEGURO)),0), 12, ''0'')
|| LPAD(''WIAXIS'', 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_tipo(4121550101),''C''), 1, ''0'')
|| LPAD(t.sperson, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_pagador_alt(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(''Z001'', 4, ''0'')
|| LPAD(TO_CHAR(R.FVENCIM,''YYYY-MM-DD''),10,''0'')
|| LPAD(DECODE(LPAD(NVL(pac_contab_conf.f_tipo(4121550101),''C''), 1, ''0''),''D'',''I'',''K'',''I'',''0''), 1, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 2, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(0, 23, ''0'')
|| LPAD(r.nrecibo, 18, ''0'')
|| LPAD(0, 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_segmento(SG.SSEGURO),0), 10, ''0'')
|| LPAD(NVL(pac_contab_conf.f_division(SG.SSEGURO,sg.cagente),0), 4, ''0'')
|| LPAD(pac_contab_conf.f_persona(t.sperson,null,null,null), 12, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzfipoliza(SG.SSEGURO),0), 20, ''0'')
|| LPAD(NVL(PAC_CONTAB_CONF.f_region(NULL,SG.CAGENTE),0), 2, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzproducto(SG.SSEGURO),0), 18, ''0'')
|| LPAD(0, 15, ''0'')
|| LPAD(NVL(pac_contab_conf.f_zzcertific(SG.SSEGURO),0), 10, ''0'')
|| LPAD(0, 1, ''0'')
|| LPAD(0, 17, ''0'') otros,
GREATEST(r.fefecto, TRUNC(m.fefeadm)) fecha
  FROM movrecibo m, recibos r, vdetrecibos_monpol vm, vdetrecibos v, seguros sg, tomadores t, per_personas p
 WHERE m.nrecibo = r.nrecibo
   AND m.cestrec = 0
   AND m.cestant = 0
   AND vm.nrecibo(+) = r.nrecibo
   AND v.nrecibo = r.nrecibo
   AND r.sseguro = sg.sseguro
   AND t.sseguro = sg.sseguro
   AND NVL(r.sperson, t.sperson) = p.sperson
   AND sg.cramo = 801
   AND sg.ctipcoa in (0,1)
   AND r.ctiprec = 0 -- DESCANCELACION
   AND m.fmovfin IS NULL
   AND r.cestaux in (0,1)
   AND r.nrecibo = #idpago',
             '1', NULL, 1
            );
COMMIT ;
/

BEGIN
   INSERT INTO parempresas
               (cempres, cparam, nvalpar, tvalpar, fvalpar
               )
        VALUES (24, 'AGENDA_COBRO_PARCIAL', 1, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO parempresas
               (cempres, cparam, nvalpar, tvalpar, fvalpar
               )
        VALUES (24, 'AGENDA_DEVOLU', 1, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO parempresas
               (cempres, cparam, nvalpar, tvalpar, fvalpar
               )
        VALUES (24, 'INVERT_APUNTE_CONTA', 1, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

COMMIT ;
/

BEGIN
   INSERT INTO parempresas
               (cempres, cparam, nvalpar, tvalpar, fvalpar
               )
        VALUES (24, 'RECIBO_TTRANSC', 1, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   INSERT INTO axis_literales
               (cidioma, slitera, tlitera
               )
        VALUES (8, 9908676, 'Lista impagos'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

COMMIT ;
/

BEGIN
   INSERT INTO axis_literales
               (cidioma, slitera, tlitera
               )
        VALUES (2, 9908676, 'Lista impagos'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

COMMIT ;
/

BEGIN
   INSERT INTO axis_literales
               (cidioma, slitera, tlitera
               )
        VALUES (1, 9908676, 'Lista impagos'
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;
/

BEGIN
   UPDATE detvalores
      SET tatribu = 'Cancelar Póliza'
    WHERE cvalor = 204 AND catribu = 0;
END;
/

BEGIN
   UPDATE detvalores
      SET tatribu = 'Cancelado'
    WHERE catribu = 3 AND cvalor = 383;
END;
/

BEGIN
   UPDATE detvalores
      SET tatribu = 'Cancelado'
    WHERE catribu = 3 AND cvalor = 1;
END;
/
COMMIT ;
/

DECLARE
   CURSOR c_prod
   IS
      SELECT sproduc
        FROM productos
       WHERE cramo = 801;
BEGIN
   FOR i IN c_prod
   LOOP
      BEGIN
         INSERT INTO cfg_accion
                     (cempres, ccfgacc, caccion, sproduc, crealiza
                     )
              VALUES (24, 'CFG_ACC_CENTRAL', 'REHAB_POLIZA_IMP', i.sproduc, 1
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;
   END LOOP;

   COMMIT;
END;
/