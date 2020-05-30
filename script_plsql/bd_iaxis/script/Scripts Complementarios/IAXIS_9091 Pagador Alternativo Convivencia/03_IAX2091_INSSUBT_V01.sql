/*********************************************************************************************************************** 
   Formatted on 11/02/2019  (Formatter Plus v.1.0) 
   Version   Descripcion 
   01.       Insert para el parametro de osiris subtabla
   IAXIS 2091 - 11/02/2019 - Angelo Benavides
***********************************************************************************************************************/ 
--
DECLARE
--
BEGIN
   --
   DELETE FROM sgt_subtabs_det WHERE CSUBTABLA =  9000009 AND CCLA1 = 1 AND CCLA2 = 3;
   --
   INSERT INTO sgt_subtabs_det (sdetalle,cempres,csubtabla,cversubt,ccla1,ccla2,ccla3,ccla4,ccla5,ccla6,ccla7,ccla8,nval1,nval2,nval3,nval4,nval5,nval6,falta,cusualt,fmodifi,cusumod,ccla9,ccla10,nval7,nval8,nval9,nval10) 
        VALUES (sdetalle_conf.nextval,24,9000009,1,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,3,NULL,NULL,NULL,NULL,TRUNC(SYSDATE),f_user,TRUNC(sysdate),f_user,NULL,NULL,NULL,NULL,NULL,NULL);
   --
   COMMIT;
END;   
/