create or replace trigger TRG_FIN_ENDEUDAMIENTO
  before insert or update
  on FIN_ENDEUDAMIENTO 
  for each row
begin
	IF INSERTING THEN
		 IF nvl(:new.ncalife,0) > 0 or nvl(:new.ncalifd,0) > 0 or nvl(:new.ncalifc,0) > 0 then
			 :new.ncalries := 3; -- Riesgo Alto
		 ELSIF nvl(:new.ncalifb,0) > 0 THEN
			 :new.ncalries := 2; -- Riesgo Medio
		 ELSIF nvl(:new.ncalifa,0) > 0 THEN
			 :new.ncalries := 1; -- Riesgo Bajo
		 ELSE -- Todos igual a cero
       :new.ncalries := 1; -- Riesgo Bajo
		 END IF;
	ELSIF UPDATING THEN
     IF nvl(:new.ncalife,0) > 0 or nvl(:new.ncalifd,0) > 0 or nvl(:new.ncalifc,0) > 0 then
       :new.ncalries := 3; -- Riesgo Alto
     ELSIF nvl(:new.ncalifb,0) > 0 THEN
       :new.ncalries := 2; -- Riesgo Medio
     ELSIF nvl(:new.ncalifa,0) > 0 THEN
       :new.ncalries := 1; -- Riesgo Bajo
		 ELSE -- Todos igual a cero
       :new.ncalries := 1; -- Riesgo Bajo
     END IF;
	ENd IF;
end TRG_FIN_ENDEUDAMIENTO;
/
