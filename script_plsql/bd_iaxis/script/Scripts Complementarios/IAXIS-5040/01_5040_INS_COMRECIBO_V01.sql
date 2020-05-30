-- DROP CONSTRAINT
BEGIN
	PAC_SKIP_ORA.p_comprovaconstraint('COMRECIBO_PK','COMRECIBO');
END;
/
-- DROP INDEX
BEGIN
	PAC_SKIP_ORA.p_comprovadrop('COMRECIBO_PK','INDEX');
END;
/
BEGIN
  PAC_SKIP_ORA.p_comprovacolumn('COMRECIBO','CCOMPAN');
END;
/
-- Add/modify columns 
alter table COMRECIBO add ccompan number(3);
-- Add comments to the columns 
comment on column COMRECIBO.ccompan
  is 'Código compañía (Si es cero es por corretaje)';
--
update comrecibo c
   set c.ccompan = 0
/
COMMIT
/
--
-- Add/modify columns 
alter table COMRECIBO modify ccompan not null;
-- Create/Recreate primary, unique and foreign key constraints 
/*alter table COMRECIBO
  drop constraint COMRECIBO_PK cascade;*/
alter table COMRECIBO
  add constraint COMRECIBO_PK primary key (NRECIBO, NNUMCOM, CAGENTE, CCOMPAN);
