/*
 IAXIS-3288 - JLTS - 11/12/2019
 
   Se revisa y se encuentra que no está insertada en la tabla AGEREDCOM, la información para las Agencias: 
   
   20126	ARMENIA 
   20127	YOPAL 
   20128	TUNJA 
   20130	POPAYAN
    
   Por lo tanto se realizará la inserción de los datos correspondiente incluyendo la visión en los C00, C01, C02 y C03
*/

---> DELETE 
-- AGEREDCOM
delete ageredcom a 
where a.cagente in (20126,20127,20128,20130);

---> INSERT 
-- AGEREDCOM

insert into ageredcom (CAGENTE, CEMPRES, CTIPAGE, FMOVINI, FMOVFIN, FBAJA, CPERVISIO, CPERNIVEL, CPOLVISIO, CPOLNIVEL, C00, C01, C02, C03, C04, C05, C06, C07, C08, C09, C10, C11, C12)
values (20126, 24, 3, to_date('01-01-2016', 'dd-mm-yyyy'), null, null, 19000, null, 19000, 1, 19000, 20000, 20123, 20126, 0, 0, 0, 0, 0, 0, 0, 0, 0);

insert into ageredcom (CAGENTE, CEMPRES, CTIPAGE, FMOVINI, FMOVFIN, FBAJA, CPERVISIO, CPERNIVEL, CPOLVISIO, CPOLNIVEL, C00, C01, C02, C03, C04, C05, C06, C07, C08, C09, C10, C11, C12)
values (20127, 24, 3, to_date('01-01-2016', 'dd-mm-yyyy'), null, null, 19000, null, 19000, 1, 19000, 20000, 20103, 20127, 0, 0, 0, 0, 0, 0, 0, 0, 0);

insert into ageredcom (CAGENTE, CEMPRES, CTIPAGE, FMOVINI, FMOVFIN, FBAJA, CPERVISIO, CPERNIVEL, CPOLVISIO, CPOLNIVEL, C00, C01, C02, C03, C04, C05, C06, C07, C08, C09, C10, C11, C12)
values (20128, 24, 3, to_date('01-01-2016', 'dd-mm-yyyy'), null, null, 19000, null, 19000, 1, 19000, 20000, 20128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

insert into ageredcom (CAGENTE, CEMPRES, CTIPAGE, FMOVINI, FMOVFIN, FBAJA, CPERVISIO, CPERNIVEL, CPOLVISIO, CPOLNIVEL, C00, C01, C02, C03, C04, C05, C06, C07, C08, C09, C10, C11, C12)
values (20130, 24, 3, to_date('01-01-2016', 'dd-mm-yyyy'), null, null, 19000, null, 19000, 1, 19000, 20000, 20136, 20130, 0, 0, 0, 0, 0, 0, 0, 0, 0);

COMMIT
/
