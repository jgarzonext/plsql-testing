/*********************************************************************************************************************** 
   Formatted on 11/02/2019  (Formatter Plus v.1.0) 
   Version   Descripcion 
   01.       IAXIS-2134 TIPO DE SINIESTRO 
   IAXIS-22134 - 04/04/2019  Cambios de campos a no modificables 
***********************************************************************************************************************/ 
DECLARE
--
DELETE FROM detvalores WHERE cvalor = 8001093 AND cidioma = 8


insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8001093, 8, 1, 'CAMARA DE COMERCIO');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8001093, 8, 2, 'CENTRO DE CONCILIACION ');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8001093, 8, 3, 'CENTRO DE SERVICIO');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8001093, 8, 4, 'CONSEJO DE ESTADO');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8001093, 8, 5, 'CONSEJO SUPERIOR DE LA JUDICATURA');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8001093, 8, 6, 'CONTRALORIA DEPARTAMENTAL');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8001093, 8, 7, 'CONTRALORIA DISTRITAL');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8001093, 8, 8, 'CONTRALORIA GENERAL');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8001093, 8, 9, 'CONTRALORIA MUNICIPAL');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8001093, 8, 10, 'CORTE CONSTITUCIONAL');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8001093, 8, 11, 'CORTE SUPREMA DE JUSTICIA');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8001093, 8, 12, 'DESPACHO');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8001093, 8, 13, 'FISCALIA');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8001093, 8, 14, 'GERENCIA DEPARTAMENTAL');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8001093, 8, 15, 'JURISDICCION ESPECIAL');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8001093, 8, 16, 'JUZGADO');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8001093, 8, 17, 'PERSONERIA');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8001093, 8, 18, 'PROCURADURIA');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8001093, 8, 19, 'SALA');
insert into detvalores (CVALOR, CIDIOMA, CATRIBU, TATRIBU)
values (8001093, 8, 20, 'TRIBUNAL');

--
COMMIT;  
--
END; 
/  
