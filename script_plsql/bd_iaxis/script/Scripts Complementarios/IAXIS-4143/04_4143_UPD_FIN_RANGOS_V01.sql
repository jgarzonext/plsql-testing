DELETE fin_rangos r WHERE cvariable LIKE 'CALIFICACION_CIFIN%' and r.ANIO = 2019;
--
insert into fin_rangos (CVARIABLE, NDESDE, NHASTA, TRANGO, NCALPRO, ANIO)
values ('CALIFICACION_CIFIN', -100000, 369, '-', 0.4, 2019);

insert into fin_rangos (CVARIABLE, NDESDE, NHASTA, TRANGO, NCALPRO, ANIO)
values ('CALIFICACION_CIFIN', 370, 664, '-', 0.6, 2019);

insert into fin_rangos (CVARIABLE, NDESDE, NHASTA, TRANGO, NCALPRO, ANIO)
values ('CALIFICACION_CIFIN', 665, 743, '-', 0.8, 2019);

insert into fin_rangos (CVARIABLE, NDESDE, NHASTA, TRANGO, NCALPRO, ANIO)
values ('CALIFICACION_CIFIN', 744, 782, '-', 2, 2019);

insert into fin_rangos (CVARIABLE, NDESDE, NHASTA, TRANGO, NCALPRO, ANIO)
values ('CALIFICACION_CIFIN', 783, 810, '-', 2.5, 2019);

insert into fin_rangos (CVARIABLE, NDESDE, NHASTA, TRANGO, NCALPRO, ANIO)
values ('CALIFICACION_CIFIN', 811, 831, '-', 3, 2019);

insert into fin_rangos (CVARIABLE, NDESDE, NHASTA, TRANGO, NCALPRO, ANIO)
values ('CALIFICACION_CIFIN', 832, 852, '-', 3.5, 2019);

insert into fin_rangos (CVARIABLE, NDESDE, NHASTA, TRANGO, NCALPRO, ANIO)
values ('CALIFICACION_CIFIN', 853, 868, '-', 4, 2019);

insert into fin_rangos (CVARIABLE, NDESDE, NHASTA, TRANGO, NCALPRO, ANIO)
values ('CALIFICACION_CIFIN', 869, 1000, '-', 5, 2019);
COMMIT
/
