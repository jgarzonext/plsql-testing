DECLARE
BEGIN

FOR C IN (select * from garanpro g where g.cramo = 802 AND g.cmodali = 1 AND g.ctipseg = 2 AND g.ccolect = 0 AND g.cactivi = 0)
    LOOP    
    INSERT INTO GARANPROMODALIDAD (CACTIVI, CCAPDEF, CCOLECT, CDEFECTO, CGARANT, CMODALI, 
       CMODALIDAD, CRAMO, CTIPGAR, CTIPSEG, ICAPDEF) 
    VALUES ( 0, NULL, 0, 1, C.CGARANT, 1,
     1, 802, NULL, 2, NULL );
     
    INSERT INTO GARANPROMODALIDAD (CACTIVI, CCAPDEF, CCOLECT, CDEFECTO, CGARANT, CMODALI, 
       CMODALIDAD, CRAMO, CTIPGAR, CTIPSEG, ICAPDEF) 
    VALUES ( 0, NULL, 0, 1, C.CGARANT, 1,
     2, 802, NULL, 2, NULL );
     
    END LOOP;
EXCEPTION
WHEN OTHERS THEN
    p_tab_error(f_sysdate, f_user, 'Error insertando en GARANPROMODALIDAD', 1, 'Err insertando en GARANPROMODALIDAD', ' SQLERRM = ' || SQLERRM);
END;

DECLARE
BEGIN

FOR C IN (select * from garanpro g where g.cramo = 802 AND g.cmodali = 1 AND g.ctipseg = 3 AND g.ccolect = 0 AND g.cactivi = 0)
    LOOP    

    INSERT INTO GARANPROMODALIDAD (CACTIVI, CCAPDEF, CCOLECT, CDEFECTO, CGARANT, CMODALI, 
       CMODALIDAD, CRAMO, CTIPGAR, CTIPSEG, ICAPDEF) 
    VALUES ( 0, NULL, 0, 1, C.CGARANT, 1,
     1, 802, NULL, 3, NULL );
     
    INSERT INTO GARANPROMODALIDAD (CACTIVI, CCAPDEF, CCOLECT, CDEFECTO, CGARANT, CMODALI, 
       CMODALIDAD, CRAMO, CTIPGAR, CTIPSEG, ICAPDEF) 
    VALUES ( 0, NULL, 0, 1, C.CGARANT, 1,
     2, 802, NULL, 3, NULL );
 
 END LOOP;
EXCEPTION
WHEN OTHERS THEN
    p_tab_error(f_sysdate, f_user, 'Error insertando en GARANPROMODALIDAD', 1, 'Err insertando en GARANPROMODALIDAD', ' SQLERRM = ' || SQLERRM);
END;
 
DECLARE
BEGIN

Insert into cfg_form_property(cempres,cidcfg,cform,citem,cprpty,cvalue)
values(24,806201,'AXISCTR207','CMODALI',7,2);

Insert into cfg_form_property(cempres,cidcfg,cform,citem,cprpty,cvalue)
values(24,806301,'AXISCTR207','CMODALI',7,2);

EXCEPTION
WHEN OTHERS THEN
    p_tab_error(f_sysdate, f_user, 'Error insertando en cfg_form_property', 1, 'Err insertando en cfg_form_property', ' SQLERRM = ' || SQLERRM);
END;

commit;