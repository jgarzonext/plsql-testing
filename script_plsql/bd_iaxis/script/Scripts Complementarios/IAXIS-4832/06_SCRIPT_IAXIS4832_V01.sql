/* Formatted on 06/09/2019 17:30*/
/* **************************** 06/09/2019 17:30 **********************************************************************
Versi�n           Descripci�n
01.               - Se parametriza la opci�n direcci�n "Extranjera" en el campo C�digo V�a predio de la pantalla AXISPER012.
IAXIS-4832        06/09/2019 Daniel Rodr�guez
***********************************************************************************************************************/
BEGIN
--
DELETE FROM destipos_via d
 WHERE d.csiglas = 99;
--   
DELETE FROM tipos_via t WHERE t.csiglas = 99;
--
INSERT INTO tipos_via (CSIGLAS, TSIGLAS)
VALUES (99, ' ');
--
INSERT INTO DESTIPOS_VIA (CSIGLAS, CIDIOMA, TDENOM)
VALUES (99, 1, 'Estrangera');
--
INSERT INTO DESTIPOS_VIA (CSIGLAS, CIDIOMA, TDENOM)
VALUES (99, 2, 'Extranjera');
--
INSERT INTO DESTIPOS_VIA (CSIGLAS, CIDIOMA, TDENOM)
VALUES (99, 8, 'Extranjera');
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
