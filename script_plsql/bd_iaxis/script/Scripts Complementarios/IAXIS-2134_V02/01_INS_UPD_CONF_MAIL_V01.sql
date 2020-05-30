/*
   IAXIS-2134 - JLTS - 05/03/2020. Se realizan los ajustes en la parametrización
*/
---> Parametros de la empresa
-- Delete
delete parempresas p where p.cempres = 24 and p.cparam = 'DOM_MAIL';
-- Insert
insert into parempresas (CEMPRES, CPARAM, NVALPAR, TVALPAR, FVALPAR)
values (24, 'DOM_MAIL', null, '192.168.110.18', null);

---> Parametros de instalación
-- Servidor de correo
update parinstalacion p
   set p.tvalpar = '192.168.110.18'
 where p.cparame = 'MAIL_SERV';
--
update parinstalacion p
   set p.nvalpar = 25
 where p.cparame = 'MAIL_PORT';
--
commit
/
