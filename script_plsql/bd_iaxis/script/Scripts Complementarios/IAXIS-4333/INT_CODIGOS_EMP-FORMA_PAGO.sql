update INT_CODIGOS_EMP t
set t.CVALEMP = 'C'
where t.ccodigo = 'FORMA_PAGO' and t.cempres = 24 and CVALAXIS = 18;

delete INT_CODIGOS_EMP t
where t.ccodigo = 'FORMA_PAGO' and t.cempres = 24 and t.cvalemp in ('B','E','F','N','O','Q','R','V','X','Y','T','U','F','G','H');

commit;
/

insert into INT_CODIGOS_EMP (CCODIGO, CEMPRES, CVALAXIS, CVALEMP, CVALDEF, CVALAXISDEF)
values ('FORMA_PAGO', '24', '22', 'B', null, null);

insert into INT_CODIGOS_EMP (CCODIGO, CEMPRES, CVALAXIS, CVALEMP, CVALDEF, CVALAXISDEF)
values ('FORMA_PAGO', '24', '23', 'E', null, null);

insert into INT_CODIGOS_EMP (CCODIGO, CEMPRES, CVALAXIS, CVALEMP, CVALDEF, CVALAXISDEF)
values ('FORMA_PAGO', '24', '24', 'F', null, null);

insert into INT_CODIGOS_EMP (CCODIGO, CEMPRES, CVALAXIS, CVALEMP, CVALDEF, CVALAXISDEF)
values ('FORMA_PAGO', '24', '25', 'N', null, null);

insert into INT_CODIGOS_EMP (CCODIGO, CEMPRES, CVALAXIS, CVALEMP, CVALDEF, CVALAXISDEF)
values ('FORMA_PAGO', '24', '26', 'O', null, null);

insert into INT_CODIGOS_EMP (CCODIGO, CEMPRES, CVALAXIS, CVALEMP, CVALDEF, CVALAXISDEF)
values ('FORMA_PAGO', '24', '27', 'Q', null, null);

insert into INT_CODIGOS_EMP (CCODIGO, CEMPRES, CVALAXIS, CVALEMP, CVALDEF, CVALAXISDEF)
values ('FORMA_PAGO', '24', '28', 'R', null, null);

insert into INT_CODIGOS_EMP (CCODIGO, CEMPRES, CVALAXIS, CVALEMP, CVALDEF, CVALAXISDEF)
values ('FORMA_PAGO', '24', '29', 'V', null, null);

insert into INT_CODIGOS_EMP (CCODIGO, CEMPRES, CVALAXIS, CVALEMP, CVALDEF, CVALAXISDEF)
values ('FORMA_PAGO', '24', '30', 'X', null, null);


insert into INT_CODIGOS_EMP (CCODIGO, CEMPRES, CVALAXIS, CVALEMP, CVALDEF, CVALAXISDEF)
values ('FORMA_PAGO', '24', '31', 'Y', null, null);

insert into INT_CODIGOS_EMP (CCODIGO, CEMPRES, CVALAXIS, CVALEMP, CVALDEF, CVALAXISDEF)
values ('FORMA_PAGO', '24', '32', 'T', null, null);

insert into INT_CODIGOS_EMP (CCODIGO, CEMPRES, CVALAXIS, CVALEMP, CVALDEF, CVALAXISDEF)
values ('FORMA_PAGO', '24', '33', 'U', null, null);

insert into INT_CODIGOS_EMP (CCODIGO, CEMPRES, CVALAXIS, CVALEMP, CVALDEF, CVALAXISDEF)
values ('FORMA_PAGO', '24', '34', 'G', null, null);

insert into INT_CODIGOS_EMP (CCODIGO, CEMPRES, CVALAXIS, CVALEMP, CVALDEF, CVALAXISDEF)
values ('FORMA_PAGO', '24', '35', 'H', null, null);

commit;
/


