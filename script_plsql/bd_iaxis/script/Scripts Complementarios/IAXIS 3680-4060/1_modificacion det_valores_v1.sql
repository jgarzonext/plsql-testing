--select * from detvalores where cvalor = 4002 and catribu = 1;

update detvalores set tatribu = 'Poliza, recibo y valor iguales' where cvalor = 4002 and catribu = 1;
update detvalores set tatribu = 'Poliza, valor igual-recibo diferente' where cvalor = 4002 and catribu = 2;
update detvalores set tatribu = 'recibo, valor igual-poliza diferente' where cvalor = 4002 and catribu = 4;
update detvalores set tatribu = 'recibo igual-poliza y valor diferentes' where cvalor = 4002 and catribu = 5;
update detvalores set tatribu = 'poliza y recibo no encontrados en confianza' where cvalor = 4002 and catribu = 6;

--select * from detvalores where cvalor = 4001 and catribu = 8;

insert into detvalores values (4001,1,9,'Pago directo a la CIA');
insert into detvalores values (4001,2,9,'Pago directo a la CIA');
insert into detvalores values (4001,8,9,'Pago directo a la CIA');

