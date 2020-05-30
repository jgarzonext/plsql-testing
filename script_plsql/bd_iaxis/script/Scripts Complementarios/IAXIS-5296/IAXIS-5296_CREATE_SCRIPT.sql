---IAXIS-5296 VIEW FACT_RADICADOR
 
CREATE TABLE TBL_FACT_RADICADOR_DUMMY
(
 START_DATE  DATE,
 END_DATE  DATE
)

/
create or replace PROCEDURE PROC_INS_FACT_RADICADOR (p_ins  DATE,p_end DATE)
AS
v_count   number (10);
BEGIN

select count(*) into v_count
from TBL_FACT_RADICADOR_DUMMY;

if v_count=0
THEN
insert into TBL_FACT_RADICADOR_DUMMY
(start_date,end_date) values(p_ins,p_end);
COMMIT;
else
UPDATE TBL_FACT_RADICADOR_DUMMY
SET start_date= p_ins,
    end_date= p_end;
COMMIT;
end if;
END;