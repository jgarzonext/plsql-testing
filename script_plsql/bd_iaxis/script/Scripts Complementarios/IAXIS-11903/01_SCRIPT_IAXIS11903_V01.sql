/* Formatted on 05/02/2020 17:30*/
/* **************************** 05/02/2020 17:30 **********************************************************************
Versión           Descripción
01.               -Se actualizan los productos que tendrán configuración para prima mínima en endosos.
IAXIS-11903        05/02/2020 Daniel Rodríguez
***********************************************************************************************************************/
BEGIN
--
DELETE FROM detparam d WHERE d.cparam = 'REGULARIZA' AND d.cidioma IN (1,2,8) AND d.cvalpar IN (0,1);
DELETE FROM desparam d WHERE d.cparam = 'REGULARIZA' AND d.cidioma IN (1,2,8);
DELETE FROM codparam c WHERE c.cparam = 'REGULARIZA';
--
insert into codparam (CPARAM, CUTILI, CTIPO, CGRPPAR, NORDEN, COBLIGA, TDEFECTO, CVISIBLE)
values ('REGULARIZA', 1, 2, 'GEN', NULL, 0, 0, 0);
--
insert into desparam (CPARAM, CIDIOMA, TPARAM)
values ('REGULARIZA', 1, 'Genera cessió de regularització');

insert into desparam (CPARAM, CIDIOMA, TPARAM)
values ('REGULARIZA', 2, 'Genera cesión de regularización');

insert into desparam (CPARAM, CIDIOMA, TPARAM)
values ('REGULARIZA', 8, 'Genera cesión de regularización');
--
insert into detparam (CPARAM, CIDIOMA, CVALPAR, TVALPAR)
values ('REGULARIZA', 1, 0, 'No');

insert into detparam (CPARAM, CIDIOMA, CVALPAR, TVALPAR)
values ('REGULARIZA', 1, 1, 'Si');

insert into detparam (CPARAM, CIDIOMA, CVALPAR, TVALPAR)
values ('REGULARIZA', 2, 0, 'No');

insert into detparam (CPARAM, CIDIOMA, CVALPAR, TVALPAR)
values ('REGULARIZA', 2, 1, 'Si');

insert into detparam (CPARAM, CIDIOMA, CVALPAR, TVALPAR)
values ('REGULARIZA', 8, 0, 'No');

insert into detparam (CPARAM, CIDIOMA, CVALPAR, TVALPAR)
values ('REGULARIZA', 8, 1, 'Si');
--
COMMIT;
--
EXCEPTION
   WHEN OTHERS THEN
     dbms_output.put_line('ERROR OCCURED-->'||SQLERRM);
     dbms_output.put_line('ERROR OCCURED-->'||DBMS_UTILITY.format_error_backtrace);
     ROLLBACK;
End;
/

