--select * from age_corretaje where sseguro = 534
DROP TABLE AGE_COMIS_CORRETAJE;
--
  CREATE TABLE AGE_COMIS_CORRETAJE
   (sseguro NUMBER, 
    cagente NUMBER,
    nmovimi NUMBER,
    nordage NUMBER,
    icomisi NUMBER,
    ivacomisi NUMBER);  

DROP TABLE TMP_AGE_CORRETAJE;
    
  CREATE TABLE TMP_AGE_CORRETAJE 
   (SSEGURO NUMBER , 
	CAGENTE NUMBER , 
	NMOVIMI NUMBER(4,0) , 
	NORDAGE NUMBER(2,0) , 
	PCOMISI NUMBER(5,2) , 
	PPARTICI NUMBER(5,2) , 
	ISLIDER NUMBER(1,0));     
/   
  
create or replace synonym AXIS00.AGE_COMIS_CORRETAJE
  for AXIS.AGE_COMIS_CORRETAJE;
  
grant select, insert, update, delete on AGE_COMIS_CORRETAJE to R_AXIS;

create or replace synonym AXIS00.AGE_COMIS_CORRETAJE
  for AXIS.AGE_COMIS_CORRETAJE;
  
grant select, insert, update, delete on AGE_COMIS_CORRETAJE to PROGRAMADORESCSI;

create or replace synonym AXIS00.AGE_COMIS_CORRETAJE
  for AXIS.AGE_COMIS_CORRETAJE;
  
grant select, insert, update, delete on AGE_COMIS_CORRETAJE to AXIS00;

--********************************

create or replace synonym AXIS00.TMP_AGE_CORRETAJE
  for AXIS.TMP_AGE_CORRETAJE;
  
grant select, insert, update, delete on TMP_AGE_CORRETAJE to R_AXIS;

create or replace synonym AXIS00.TMP_AGE_CORRETAJE
  for AXIS.TMP_AGE_CORRETAJE;
  
grant select, insert, update, delete on TMP_AGE_CORRETAJE to PROGRAMADORESCSI;

create or replace synonym AXIS00.TMP_AGE_CORRETAJE
  for AXIS.TMP_AGE_CORRETAJE;
  
grant select, insert, update, delete on TMP_AGE_CORRETAJE to AXIS00;