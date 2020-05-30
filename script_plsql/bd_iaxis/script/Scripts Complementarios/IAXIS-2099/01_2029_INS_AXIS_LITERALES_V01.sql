/*
  IAXIS-7497 - JLTS - 19/02/2020
*/
---> DELETE
-- 
-- AXIS_LITERALES
--
delete AXIS_LITERALES a where a.slitera = 89907104;
-- 
-- AXIS_CODLITERALES
--
delete AXIS_CODLITERALES a where a.slitera = 89907104;
---> INSERT 
--
-- AXIS_CODLITERALES
--
insert into AXIS_CODLITERALES(slitera, clitera)
values(89907104,3);
--
-- AXIS_LITERALES
--
insert into AXIS_LITERALES(cidioma, slitera, tlitera)
values(8,89907104,'Se debe actualizar la información financiera del cliente');

commit;
/
