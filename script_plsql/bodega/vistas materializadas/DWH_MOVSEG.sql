--------------------------------------------------------
--  DDL for Materialized View DWH_MOVSEG
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "CONF_DWH"."DWH_MOVSEG" ("SSEGURO", "NUM_MOVIMI", "COD_MOTIVOMOV", "DES_MOTIVOMOV", "FMOVIMI", "AAAA_FMOVIMI", "MM_FMOVIMI", "DD_FMOVIMI", "COD_MOVIMI_SEG", "DES_MOVIMI_SEG", "FEFECTO", "AAAA_FEFECTO", "MM_FEFECTO", "DD_FEFECTO", "NEMPLEADO", "COD_OFICINA", "COD_SITUACION", "DES_SITUACION", "COD_TIPBAN", "DES_TIPBAN", "COD_CBANCAR", "COD_FORMAPAGO", "DES_FORMAPAGO", "FEMISIO", "TIPOBAJA")
  ORGANIZATION HEAP PCTFREE 10 PCTUSED 0 INITRANS 2 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CONF_DWH" 
  BUILD IMMEDIATE
  USING INDEX 
  REFRESH FORCE ON DEMAND
  USING DEFAULT LOCAL ROLLBACK SEGMENT
  USING ENFORCED CONSTRAINTS DISABLE QUERY REWRITE
  AS SELECT mv.sseguro, mv.nmovimi num_movimi, mv.cmotmov cod_motivomov, mtm.tmotmov des_motivomov,
       mv.fmovimi, TO_CHAR(mv.fmovimi, 'yyyy') aaaa_fmovimi,
       TO_CHAR(mv.fmovimi, 'mm') mm_fmovimi, TO_CHAR(mv.fmovimi, 'dd') dd_fmovimi,
       mv.cmovseg cod_movimi_seg, ff_desvalorfijo(16, 2, mv.cmovseg) des_movimi_seg,
       mv.fefecto, TO_CHAR(mv.fefecto, 'yyyy') aaaa_fefecto,
       TO_CHAR(mv.fefecto, 'mm') mm_fefecto, TO_CHAR(mv.fefecto, 'dd') dd_fefecto,
       mv.nempleado, mv.coficin cod_oficina, hsg.csituac cod_situacion,
       ff_desvalorfijo(61, 2, hsg.csituac) des_situacion, hsg.ctipban cod_tipban,
       ff_desvalorfijo(274, 2, hsg.ctipban) des_tipban, 
       hsg.cbancar cod_cbancar,
       hsg.cforpag cod_formapago, ff_desvalorfijo(17, 2, hsg.cforpag) des_formapago,
       mv.femisio, ff_desvalorfijo(553, 2, c.ctipbaja) Tipobaja      
  FROM movseguro mv, seguros se,
       (SELECT sseguro, nmovimi, csituac, cforpag, ctipban, cbancar
          FROM historicoseguros
        UNION
        SELECT sseguro, 0, csituac, cforpag, ctipban, cbancar
          FROM seguros s) hsg,
       motmovseg mtm,
       (select s1.sseguro, m1.nmovimi, max(ca.CTIPBAJA) ctipbaja
        from   seguros s1, movseguro m1, causanul ca
        where  m1.sseguro=s1.sseguro
        and    ca.sproduc = s1.SPRODUC
        and    ca.CMOTMOV = m1.CMOTMOV
        group  by s1.sseguro, m1.nmovimi) c
 WHERE mv.sseguro = hsg.sseguro
   AND(mv.nmovimi = hsg.nmovimi
       OR(hsg.nmovimi = 0
          AND NOT EXISTS(SELECT nmovimi
                           FROM historicoseguros h2
                          WHERE h2.sseguro = mv.sseguro
                            AND h2.nmovimi = mv.nmovimi)))
   AND mv.cmotmov = mtm.cmotmov
   and se.sseguro = mv.sseguro 
   and c.sseguro(+) = mv.sseguro
   and c.nmovimi(+) = mv.nmovimi
   AND mtm.cidioma = 2 ;

   COMMENT ON MATERIALIZED VIEW "CONF_DWH"."DWH_MOVSEG"  IS 'snapshot table for snapshot DWH_MOVSEG (20150908)';
