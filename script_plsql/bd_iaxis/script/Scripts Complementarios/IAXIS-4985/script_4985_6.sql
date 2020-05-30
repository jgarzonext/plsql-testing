UPDATE pregunprogaran
   SET tprefor = null, cresdef = 20, tvalfor = 'pac_propio_albval_conf.f_val_preg_recargo(6623)'
 WHERE cpregun = 6623 AND sproduc IN (SELECT sproduc
                                        FROM productos
                                       WHERE cramo = 801);
                                       
delete CFG_REL_AVISOS
where caviso in (733806,733736);                                       
COMMIT ;
