/*********************************************************************************************************************** 
   Formatted on 11/02/2019  (Formatter Plus v.1.0) 
   Version   Descripcion 
   01.       IAXIS-4184 proceso Judicial
   IAXIS-4184 - 04/04/2019  Cambios de campos a no modificables 
***********************************************************************************************************************/ 
DELETE FROM detvalores WHERE cvalor = 800067 AND cidioma = 8 and catribu = 3;

insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (800067, 8, 3, 'Magistrado Ponente');

/