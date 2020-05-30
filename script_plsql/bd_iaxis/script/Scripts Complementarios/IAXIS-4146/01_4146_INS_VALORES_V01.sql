delete detvalores d
where d.cvalor = 3000;
--
delete valores v
where v.cvalor = 3000; 
--
insert into valores (CVALOR, CIDIOMA, TVALOR)
values (3000, 1, 'Califi. ries. endeu. s.finan');

insert into valores (CVALOR, CIDIOMA, TVALOR)
values (3000, 2, 'Califi. ries. endeu. s.finan');

insert into valores (CVALOR, CIDIOMA, TVALOR)
values (3000, 8, 'Califi. ries. endeu. s.finan');
--

insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (3000, 8, 1, 'Baja');

insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (3000, 8, 2, 'Media');

insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (3000, 8, 3, 'Alta');
COMMIT
/
