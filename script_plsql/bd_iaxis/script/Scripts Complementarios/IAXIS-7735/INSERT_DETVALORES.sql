/*********************************************************************************************************************** 
   Fecha:        26/12/2019   
   Descripciòn:  insert detvalores tipo de pagador alternativo 
   Tarea jira:   IAXIS-7735    
   Autor:        Rodrigo Velosa
***********************************************************************************************************************/ 
--
DELETE FROM VALORES WHERE CVALOR = 8002027;
--
Insert into VALORES (CVALOR,CIDIOMA,TVALOR) values (8002027,1,'Tipo Pagador Alternativo');
Insert into VALORES (CVALOR,CIDIOMA,TVALOR) values (8002027,2,'Tipo Pagador Alternativo');
Insert into VALORES (CVALOR,CIDIOMA,TVALOR) values (8002027,8,'Tipo Pagador Alternativo');
--
DELETE FROM DETVALORES WHERE CVALOR = 8002027;
--
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (8002027,8,1,'Intermediario');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (8002027,8,2,'Miembro consorcio');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (8002027,8,3,'Osiris');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (8002027,8,4,'Otro');
--
COMMIT;
