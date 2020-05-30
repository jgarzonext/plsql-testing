/* Formatted on 05/07/2019 21:00*/
/* **************************** 05/07/2019 19:00 **********************************************************************
Versi�n           Descripci�n
01.               -Records to be inserted in CFG_FORM_DEP for CCODIMP and CTIPIND.
IAXIS-4696        05/07/2019 Shakti Adwani
***********************************************************************************************************************/
SET SERVEROUTPUT ON;
Begin

------------CCODIMP
Insert into cfg_form_dep  values (24,81,'CCODVIN','8','CCODIMP',3,0);
Insert into cfg_form_dep  values (24,81,'CCODVIN','9','CCODIMP',3,0);
Insert into cfg_form_dep  values (24,81,'CCODVIN','10','CCODIMP',3,0);
Insert into cfg_form_dep  values (24,81,'CCODVIN','11','CCODIMP',3,0);
Insert into cfg_form_dep  values (24,81,'CCODVIN','12','CCODIMP',3,0);
Insert into cfg_form_dep  values (24,81,'CCODVIN','13','CCODIMP',3,0);

-------------CTIPIND
Insert into CFG_FORM_DEP  values (24,82,'CCODVIN','8','CTIPIND',3,0);
Insert into CFG_FORM_DEP  values (24,82,'CCODVIN','9','CTIPIND',3,0);
Insert into CFG_FORM_DEP  values (24,82,'CCODVIN','10','CTIPIND',3,0);
Insert into CFG_FORM_DEP  values (24,82,'CCODVIN','11','CTIPIND',3,0);
Insert into CFG_FORM_DEP  values (24,82,'CCODVIN','12','CTIPIND',3,0);
Insert into CFG_FORM_DEP  values (24,82,'CCODVIN','13','CTIPIND',3,0);

commit;
EXCEPTION
   WHEN OTHERS THEN
   dbms_output.put_line('ERROR OCCURED-->'||SQLERRM);
     rollback;
End;
/