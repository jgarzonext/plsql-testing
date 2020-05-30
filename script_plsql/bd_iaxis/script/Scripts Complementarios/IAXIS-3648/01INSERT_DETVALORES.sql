 delete from DETVALORES where CVALOR=322 and CATRIBU=5;
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (322,1,5,'Ulae');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (322,2,5,'Ulae');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (322,8,5,'Ulae');

delete from DETVALORES where CVALOR=8001112 and CATRIBU in (40,41,42,43,44);
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (8001112,8,40,'Constitución Reserva ULAE Sin Solidaridad');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (8001112,8,41,'Constitución Reserva ULAE');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (8001112,8,42,'Disminución de reserva ULAE');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (8001112,8,43,'Aumento Reserva ULAE');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values (8001112,8,44,'Aumento Reserva ULAE Sin solidaridad');
commit;