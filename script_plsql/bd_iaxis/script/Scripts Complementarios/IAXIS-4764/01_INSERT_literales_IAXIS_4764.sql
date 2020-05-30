DECLARE
	v_contexto NUMBER := 0;
BEGIN

	insert into axis_codliterales (SLITERA, CLITERA) values (89907017,2); 

    insert into axis_literales (CIDIOMA, SLITERA, TLITERA) VALUES (2, 89907017, 'Migración unitaria');
    insert into axis_literales (CIDIOMA, SLITERA, TLITERA) VALUES (8, 89907017, 'Migración unitaria');
        
	Insert into MENU_OPCIONES (COPCION,SLITERA, CINVCOD, CINVTIP, CMENPAD,NORDEN, TPARAME,CTIPMEN,CMODO,CUSUALT,FALTA) 
    values ('990980',89907017,'AXISSIN085','1', '990010','990980', null, '1', null,f_user,f_sysdate);

    insert into MENU_OPCIONROL (crolmen, COPCION, CUSUALT, FALTA)
    values ('MENU_TOTAL', 990980, f_user,f_sysdate);
	    
	COMMIT;
	
END;
/