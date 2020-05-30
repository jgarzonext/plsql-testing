/*
  -- INI -- IAXIS-5420 -- 28/11/2019. Se adiciona (utiliza) un parámetro de producto para verificar que "El riesgo se vincula al primer asegurado"
*/
delete  parproductos p
where p.cparpro = 'RIESGO_EN_ASEG_1';

insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (8062, 'RIESGO_EN_ASEG_1', 1, null, null, null);

insert into parproductos (SPRODUC, CPARPRO, CVALPAR, NAGRUPA, TVALPAR, FVALPAR)
values (8063, 'RIESGO_EN_ASEG_1', 1, null, null, null);
commit
/
