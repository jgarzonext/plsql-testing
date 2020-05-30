/*********************************************************************************************************************** 
   Formatted on 11/02/2019  (Formatter Plus v.1.0) 
   Version   Descripcion 
   01.       insert detvalores tipo de pagador alternativo 
   TC464 - 11/02/2019 - Angelo Benavides
***********************************************************************************************************************/ 
--
DELETE FROM VALORES WHERE CVALOR = 8002010;
--
Insert into VALORES (CVALOR,CIDIOMA,TVALOR) values (8002010,1,'Tipo Pagador Alternativo');
Insert into VALORES (CVALOR,CIDIOMA,TVALOR) values (8002010,2,'Tipo Pagador Alternativo');
Insert into VALORES (CVALOR,CIDIOMA,TVALOR) values (8002010,8,'Tipo Pagador Alternativo');
--
DELETE FROM DETVALORES WHERE CVALOR = 8002010;
--
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (8002010,8,1,'Intermediario');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (8002010,8,2,'Miembro consorcio');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (8002010,8,3,'Oziris');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (8002010,8,4,'Otro');
--
COMMIT;

