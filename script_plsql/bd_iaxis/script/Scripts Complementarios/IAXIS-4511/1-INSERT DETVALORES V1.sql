delete from detvalores where cvalor = 4002 and catribu in (7,8);

Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values ('4002','1','7','poliza igual, recibo y valor diferentes(multiples recibos)');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values ('4002','2','7','poliza igual, recibo y valor diferentes(multiples recibos)');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values ('4002','8','7','poliza igual, recibo y valor diferentes(multiples recibos)');

Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values ('4002','1','8','poliza igual, recibo y valor diferentes');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values ('4002','2','8','poliza igual, recibo y valor diferentes');
Insert into DETVALORES (CVALOR,CIDIOMA,CATRIBU,TATRIBU) values ('4002','8','8','poliza igual, recibo y valor diferentes');
commit;
/
