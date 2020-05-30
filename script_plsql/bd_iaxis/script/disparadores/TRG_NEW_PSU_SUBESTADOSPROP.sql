--------------------------------------------------------
--  DDL for Trigger TRG_NEW_PSU_SUBESTADOSPROP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_NEW_PSU_SUBESTADOSPROP" 
  BEFORE INSERT ON PSU_RETENIDAS
  FOR EACH ROW
DECLARE
	vsubestados number;
  Vcsituac    NUMBER;
  Vcreteni     NUMBER;
  Vversion     NUMBER;
BEGIN

  SELECT csituac ,creteni
  INTO Vcsituac, Vcreteni
  FROM SEGUROS
  WHERE SSEGURO = :NEW.SSEGURO;

  begin
  select max(NVERSION)+1
	into Vversion
	from PSU_SUBESTADOSPROP
	 where sseguro = :new.SSEGURO;
  exception
    when OTHERS THEN

	Vversion := 1;

  end;

  if(((Vcsituac = 4 or Vcsituac = 5) and Vcreteni = 2) AND (PAC_PARAMETROS.f_parempresa_n('24','SUBESTADOSPROP') = 1) ) then

   select count(1)
	 into vsubestados
	 from PSU_SUBESTADOSPROP
	 where nmovimi = :new.NMOVIMI
	   and SSEGURO = :NEW.SSEGURO;

    if vsubestados = 0 then

     insert into PSU_SUBESTADOSPROP(COBSERVACIONES,CSUBESTADO,CUSUALT,FALTA,NMOVIMI,
                      NVERSION,NVERSIONSUBEST,SSEGURO)
         values(:new.OBSERV,9,F_USER,:new.FMOVIMI,:new.NMOVIMI,NVL(Vversion,1),NVL(:new.CSUBESTADO,4),:new.SSEGURO);

    else

		insert into PSU_SUBESTADOSPROP(COBSERVACIONES,CSUBESTADO,CUSUALT,FALTA,NMOVIMI,
                      NVERSION,NVERSIONSUBEST,SSEGURO)
         values(:new.OBSERV,1,F_USER,:new.FMOVIMI,:new.NMOVIMI,Vversion,NVL(:new.CSUBESTADO,4),:new.SSEGURO);

    end if;

   end if;

END TRG_NEW_PSU_SUBESTADOSPROP;


/
ALTER TRIGGER "AXIS"."TRG_NEW_PSU_SUBESTADOSPROP" ENABLE;
