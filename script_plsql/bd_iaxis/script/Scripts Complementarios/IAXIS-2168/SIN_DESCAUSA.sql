ALTER TABLE sin_descausa MODIFY TCAUSIN VARCHAR2(500);

insert into sin_descausa (CCAUSIN, CIDIOMA, TCAUSIN)
values (9246, 8, 'Incumplimiento de los requisitos para legalizaci�n de los subsidios entregados.');

insert into sin_descausa (CCAUSIN, CIDIOMA, TCAUSIN)
values (9247, 8, 'Apropiaci�n indebida de los dineros girados al oferente del programa de vivienda junto con sus rendimientos.');

insert into sin_descausa (CCAUSIN, CIDIOMA, TCAUSIN)
values (9248, 8, 'Incumplimiento de los requisitos para el cumplimiento del contrato de construcci�n en sitio propio.');

insert into sin_descausa (CCAUSIN, CIDIOMA, TCAUSIN)
values (9249, 8, 'Apropiaci�n indebida de los dineros girados al oferente del proyecto, constructor de la soluci�n de vivienda, junto con sus rendimientos.');

commit;
/
