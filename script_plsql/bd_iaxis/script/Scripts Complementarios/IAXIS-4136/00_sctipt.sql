BEGIN

pac_skip_ora.p_comprovadrop('OBS_CUENTACOBRO','TABLE');
pac_skip_ora.p_comprovadrop('OBS_CUENTACOBRO_SEQ','SEQUENCE');

END;

commit;
/