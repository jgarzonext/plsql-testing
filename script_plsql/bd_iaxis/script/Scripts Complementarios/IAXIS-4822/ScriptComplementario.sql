DECLARE
BEGIN

    BEGIN

    insert into desparam (CPARAM, CIDIOMA, TPARAM)
    values ('PSU_TRACE', 1, 'PSU_TRACE');

    COMMIT;

    EXCEPTION
       WHEN OTHERS THEN   
        p_tab_error(pferror   => f_sysdate,
                      pcusuari  => f_user,
                      ptobjeto  => 'desparam',
                      pntraza   => 1,
                      ptdescrip => 'Error insertar registro en tabla desparam ',
                      pterror   => SQLERRM); 
    END;

    BEGIN

    insert into desparam (CPARAM, CIDIOMA, TPARAM)
    values ('PSU_TRACE', 2, 'PSU_TRACE');

    COMMIT;

    EXCEPTION
       WHEN OTHERS THEN
        p_tab_error(pferror   => f_sysdate,
                      pcusuari  => f_user,
                      ptobjeto  => 'desparam',
                      pntraza   => 2,
                      ptdescrip => 'Error insertar registro en tabla desparam ',
                      pterror   => SQLERRM); 
    END;

    BEGIN

    insert into desparam (CPARAM, CIDIOMA, TPARAM)
    values ('PSU_TRACE', 8, 'PSU_TRACE');

    COMMIT;

    EXCEPTION
       WHEN OTHERS THEN
        p_tab_error(pferror   => f_sysdate,
                      pcusuari  => f_user,
                      ptobjeto  => 'desparam',
                      pntraza   => 3,
                      ptdescrip => 'Error insertar registro en tabla desparam ',
                      pterror   => SQLERRM); 
    END;

    BEGIN

    insert into codparam (CPARAM, CUTILI, CTIPO, CGRPPAR, NORDEN, COBLIGA, TDEFECTO, CVISIBLE)
    values ('PSU_TRACE', 4, 2, 'GEN', 1, 0, null, 1);

    COMMIT;

    EXCEPTION
       WHEN OTHERS THEN
        p_tab_error(pferror   => f_sysdate,
                      pcusuari  => f_user,
                      ptobjeto  => 'codparam',
                      pntraza   => 4,
                      ptdescrip => 'Error insertar registro en tabla codparam ',
                      pterror   => SQLERRM); 
    END;

    BEGIN

    insert into parinstalacion (CPARAME, CTIPPAR, TVALPAR, NVALPAR, FVALPAR)
    values ('PSU_TRACE', 0, null, 1, null);

    COMMIT;

    EXCEPTION
       WHEN OTHERS THEN
        p_tab_error(pferror   => f_sysdate,
                      pcusuari  => f_user,
                      ptobjeto  => 'parinstalacion',
                      pntraza   => 5,
                      ptdescrip => 'Error insertar registro en tabla parinstalacion ',
                      pterror   => SQLERRM); 
    END;
EXCEPTION
       WHEN OTHERS THEN
        p_tab_error(pferror   => f_sysdate,
                      pcusuari  => f_user,
                      ptobjeto  => 'Script',
                      pntraza   => 5,
                      ptdescrip => 'Error insertar registros',
                      pterror   => SQLERRM); 
END;