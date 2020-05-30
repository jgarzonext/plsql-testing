/* Formatted on 06/07/2019 02:15 AM IST */
/* **************************** 06/07/2019 02:15 AM IST **********************************************************************
Versión           Descripción
01.               - Obligatoriedad Campos Indicadores Personas
IAXIS-4729       06/07/2019 Harshita Bhargava
***********************************************************************************************************************/
SET SERVEROUTPUT ON;
Begin

INSERT INTO CFG_COD_FORM VALUES('AXISPRF016','Impuestos y retenciones');
INSERT INTO CFG_FORM VALUES(24,'AXISPRF016','GENERAL','CFG_CENTRAL',0,1007,'AXIS_CONF','05-JUL-19','AXIS_CONF',NULL);
INSERT INTO cfg_form_property VALUES(24,1007,'AXISPRF016','CCODVIN',3,1);
INSERT INTO cfg_form_property VALUES(24,1007,'AXISPRF016','CCODIMP',4,81);
INSERT INTO cfg_form_property VALUES(24,1007,'AXISPRF016','CTIPIND',4,82);
	
commit;

EXCEPTION
   WHEN OTHERS THEN
   dbms_output.put_line('ERROR OCCURED-->'||SQLERRM);
     rollback;
End;
/