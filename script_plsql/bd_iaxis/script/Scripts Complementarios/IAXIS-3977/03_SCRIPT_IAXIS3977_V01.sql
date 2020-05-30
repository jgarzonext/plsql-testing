/* Formatted on 21/08/2019 16:30*/
/* **************************** 21/08/2019 16:30 **********************************************************************
Versión           Descripción
01.               - Se actualiza la comisión con porcentaje "0" para las agencias: Tunja, Yopal, Armenia.
IAXIS-3977        21/08/2019 Daniel Rodríguez
***********************************************************************************************************************/
BEGIN
--
-- Se actualiza la comisión con porcentaje "0" para las agencias: Tunja, Yopal, Armenia.
-- 
DELETE FROM comisionvig_agente c WHERE c.cagente IN  (20128, 20127, 20126);
--
INSERT INTO comisionvig_agente (CAGENTE, CCOMISI, FINIVIG, FFINVIG, CCOMIND, FALTA, CUSUALT, FMODIF, CUSUMOD)
VALUES (20126, 0, to_date('01-01-2017', 'dd-mm-yyyy'), to_date('31-12-2017', 'dd-mm-yyyy'), 0, f_sysdate, f_user, NULL, NULL);

INSERT INTO comisionvig_agente (CAGENTE, CCOMISI, FINIVIG, FFINVIG, CCOMIND, FALTA, CUSUALT, FMODIF, CUSUMOD)
VALUES (20126, 2, to_date('01-01-2018', 'dd-mm-yyyy'), NULL, 0, f_sysdate, f_user, NULL, NULL);

INSERT INTO comisionvig_agente (CAGENTE, CCOMISI, FINIVIG, FFINVIG, CCOMIND, FALTA, CUSUALT, FMODIF, CUSUMOD)
VALUES (20127, 0, to_date('01-01-2017', 'dd-mm-yyyy'), to_date('31-12-2017', 'dd-mm-yyyy'), 0, f_sysdate, f_user, NULL, NULL);

INSERT INTO comisionvig_agente (CAGENTE, CCOMISI, FINIVIG, FFINVIG, CCOMIND, FALTA, CUSUALT, FMODIF, CUSUMOD)
VALUES (20127, 2, to_date('01-01-2018', 'dd-mm-yyyy'), NULL, 0, f_sysdate, f_user, NULL, NULL);

INSERT INTO comisionvig_agente (CAGENTE, CCOMISI, FINIVIG, FFINVIG, CCOMIND, FALTA, CUSUALT, FMODIF, CUSUMOD)
VALUES (20128, 0, to_date('01-01-2017', 'dd-mm-yyyy'), to_date('31-12-2017', 'dd-mm-yyyy'), 0, f_sysdate, f_user, NULL, NULL);

INSERT INTO comisionvig_agente (CAGENTE, CCOMISI, FINIVIG, FFINVIG, CCOMIND, FALTA, CUSUALT, FMODIF, CUSUMOD)
VALUES (20128, 2, to_date('01-01-2018', 'dd-mm-yyyy'), NULL, 0, f_sysdate, f_user, NULL, NULL);
--
-- Se actualiza la visión de personas de las agencias: Tunja, Yopal, Armenia.
--
UPDATE redcomercial r SET r.cpervisio = 19000 WHERE r.cagente IN (20128, 20127, 20126);
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

