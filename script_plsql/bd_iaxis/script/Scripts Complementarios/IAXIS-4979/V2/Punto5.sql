DECLARE
BEGIN
update cfg_form_property set cvalue=0  where cidcfg in (806201,806301) and cform='AXISCTR207' and CITEM='CREVALI' and cprpty=1;
EXCEPTION
WHEN OTHERS THEN
    p_tab_error(f_sysdate, f_user, 'Error insertando en cfg_form_property', 1, 'Err insertando en cfg_form_property', ' SQLERRM = ' || SQLERRM);
END;

commit;