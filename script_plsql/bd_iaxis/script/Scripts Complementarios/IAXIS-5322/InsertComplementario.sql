DECLARE
v_cparpro varchar(50) :='ELI_PREGU_GARANSEG';
cursor v_sproduc is (select sproduc from v_productos where cramo in (801,802)); -- order by cramo, sproduc
--cursor v_parproductos is (select * from parproductos);
BEGIN

    BEGIN

    INSERT INTO CODPARAM ( CGRPPAR, COBLIGA, CPARAM,CTIPO, CUTILI, CVISIBLE, NORDEN, TDEFECTO)
    VALUES('GEN', 0, 'ELI_PREGU_GARANSEG', 4, 3, 0, 0, NULL);    
    
    COMMIT;
    
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX THEN
            --DBMS_OUTPUT.PUT_LINE( SQLERRM || 1);        
            p_tab_error(f_sysdate, f_user, 'Bloque Anonimo', 1, 'Llave duplicada en CODPARAM SQLERRM = ' || SQLERRM, '');
        WHEN OTHERS THEN
        --DBMS_OUTPUT.PUT_LINE( SQLERRM );  
            p_tab_error(f_sysdate, f_user, 'Bloque Anonimo', 2, 'Error insertando en CODPARAM SQLERRM = ' || SQLERRM, '');
    END;

    BEGIN 
    
    INSERT INTO DESPARAM (CPARAM, CIDIOMA, TPARAM)
    VALUES ('ELI_PREGU_GARANSEG', 1, 'Eliminar preguntes de garantia per segur');

    INSERT INTO DESPARAM (CPARAM, CIDIOMA, TPARAM)
    VALUES ('ELI_PREGU_GARANSEG', 2, 'Eliminar preguntas de garantia por seguro');

    INSERT INTO DESPARAM (CPARAM, CIDIOMA, TPARAM)
    VALUES ('ELI_PREGU_GARANSEG', 8, 'Eliminar preguntas de garantia por seguro');
        
    COMMIT;

    EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        p_tab_error(f_sysdate, f_user, 'Bloque Anonimo', 3, 'Llave duplicada en DESPARAM SQLERRM = ' || SQLERRM, '');
        --DBMS_OUTPUT.PUT_LINE( SQLERRM );
    WHEN OTHERS THEN
        p_tab_error(f_sysdate, f_user, 'Bloque Anonimo', 4, 'Error insertando en DESPARAM SQLERRM = ' || SQLERRM, '');

    END;
    
    
    FOR producto IN v_sproduc
    LOOP    
    
        BEGIN
        --DBMS_OUTPUT.PUT_LINE(producto.sproduc ||' - '|| v_cparpro);
        INSERT INTO parproductos(sproduc, cparpro,cvalpar,nagrupa,tvalpar,fvalpar)
        VALUES(producto.sproduc,v_cparpro,1,null,null,null); 
        EXCEPTION
            WHEN DUP_VAL_ON_INDEX THEN
                ROLLBACK;
                
                p_tab_error(f_sysdate, f_user, 'Bloque Anonimo', 5, 'Llave duplicada en parproductos sproduc' || producto.sproduc || 'v_cparpro' || v_cparpro || 'SQLERRM = ' || SQLERRM, '');
                --DBMS_OUTPUT.PUT_LINE( SQLERRM );
            WHEN OTHERS THEN
                ROLLBACK;
                p_tab_error(f_sysdate, f_user, 'Bloque Anonimo', 6, 'Error insertando en parproductos sproduc' || producto.sproduc || 'v_cparpro' || v_cparpro || 'SQLERRM = ' || SQLERRM, '');

            END;

    END LOOP;    
    
    COMMIT;

EXCEPTION
WHEN OTHERS THEN
    p_tab_error(f_sysdate, f_user, '', 7, 'Error en el bloque anonimo  ', NULL,  'SQLERRM = ' || SQLERRM);

END;