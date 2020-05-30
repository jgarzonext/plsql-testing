/* Formatted on 27/08/2019 16:00*/
/* **************************** 27/08/2019 16:00 **********************************************************************
Versión           Descripción
01.               -Se quita toda referencia a la pantalla AXISCTR192 - "Beneficiario del retorno" al presionar el botón
                   "Anterior" en la pantalla de CO-Corretajes.
IAXIS-5092        27/08/2019 Daniel Rodríguez
***********************************************************************************************************************/
BEGIN
--
UPDATE cfg_wizard_forms c
   SET c.cform_ant = 'AXISCTR207'
 WHERE c.cempres = 24
   AND c.cidcfg IN (7200,
                    684999,
                    684998,
                    684997,
                    684996,
                    710204,
                    790001,
                    790002,
                    790003)
   AND c.cform_act = 'AXISCTR175'
   AND c.ccampo_act = '*'
   AND c.cform_sig IN ('AXISCTR006',
                       'AXISCTR024',
                       'AXISCTR005',
                       'AXISCTR031',
                       'AXISCTR024',
                       'AXISCTR008',
                       'AXISCTR008',
                       'AXISCTR112',
                       'AXISCTR008');
--
COMMIT;
EXCEPTION
   WHEN OTHERS THEN
     dbms_output.put_line('ERROR OCCURRED-->'||SQLERRM);
     dbms_output.put_line('ERROR OCCURRED-->'||DBMS_UTILITY.format_error_backtrace);
     ROLLBACK;
End;
/

