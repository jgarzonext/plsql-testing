

delete from AGE_CORRETAJE where sseguro = 12613;
delete from tmp_age_corretaje where sseguro = 12613;
delete from AGE_COMIS_CORRETAJE where sseguro = 12613; 

Insert into AGE_CORRETAJE (SSEGURO,CAGENTE,NMOVIMI,NORDAGE,PCOMISI,PPARTICI,ISLIDER) values ('12613','6000043','1','1',30,'60','1');
Insert into AGE_CORRETAJE (SSEGURO,CAGENTE,NMOVIMI,NORDAGE,PCOMISI,PPARTICI,ISLIDER) values ('12613','6000220','1','2',30,'40','0');
