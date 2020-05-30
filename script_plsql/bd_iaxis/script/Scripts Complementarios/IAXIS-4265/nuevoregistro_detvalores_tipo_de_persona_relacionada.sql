delete from DETVALORES where CVALOR=800111 and CIDIOMA=1 and CATRIBU=7 ;
/
delete from DETVALORES where CVALOR=800111 and CIDIOMA=2 and CATRIBU=7 ;
/
delete from DETVALORES where CVALOR=800111 and CIDIOMA=8 and CATRIBU=7 ;
/
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (800111,1,7,'Tercero afectado');
/
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (800111,2,7,'Tercero afectado');
/
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (800111,8,7,'Tercero afectado');
/
commit;
/