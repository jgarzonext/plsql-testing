/* Formatted on 2019/12/17 15:47 (Formatter Plus v4.8.8) */
declare
cursor c_prod is
select sproduc from v_productos where cramo = 802 and cactivo = 1;

begin
for i in c_prod loop
BEGIN
   INSERT INTO psu_controlpro
               (ccontrol, sproduc, ctratar, cgarant, producci, renovaci,
                suplemen, cotizaci, autmanual, establoquea, ordenbloquea,
                autoriprev, cretenpor, cformula, cusualt, falta, cusumod,
                fmodifi, cusubaja, fbaja, ccritico, psuext, psuage, tevento,
                ccambio
               )
        VALUES (526031, i.sproduc, 3, 0, '1', '2',
                '0', '0', 'M', 'E', NULL,
                'N', 2, 17002, f_user, f_sysdate, f_user,
                NULL, NULL, NULL, 0, 0, 0, NULL,
                NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;


BEGIN
   INSERT INTO psu_desresultado
               (ccontrol, sproduc, cnivel, cidioma, tdesniv,
                cusualt, falta, cusumod, fmodifi
               )
        VALUES (526031, i.sproduc, 0, 8, 'No precisa Reaseguro Facultativo',
                f_user, f_sysdate, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;


BEGIN
   INSERT INTO psu_desresultado
               (ccontrol, sproduc, cnivel, cidioma, tdesniv,
                cusualt, falta, cusumod, fmodifi
               )
        VALUES (526031, i.sproduc, 2680, 8, 'Precisa Reaseguro Facultativo',
                f_user, f_sysdate, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;


BEGIN
   INSERT INTO psu_desresultado
               (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt,
                falta, cusumod, fmodifi
               )
        VALUES (526031, i.sproduc, 999999, 8, 'Error en la EmisiÃ³n', f_user,
                f_sysdate, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;


BEGIN
   INSERT INTO psu_desresultado
               (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt,
                falta, cusumod, fmodifi
               )
        VALUES (526031, i.sproduc, 999999, 1, 'Error en la Emisión', f_user,
                f_sysdate, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;


BEGIN
   INSERT INTO psu_desresultado
               (ccontrol, sproduc, cnivel, cidioma, tdesniv,
                cusualt, falta, cusumod, fmodifi
               )
        VALUES (526031, i.sproduc, 2680, 1, 'Precisa Reaseguro Facultativo',
                f_user, f_sysdate, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;


BEGIN
   INSERT INTO psu_desresultado
               (ccontrol, sproduc, cnivel, cidioma, tdesniv,
                cusualt, falta, cusumod, fmodifi
               )
        VALUES (526031, i.sproduc, 0, 1, 'No precisa Reaseguro Facultativo',
                f_user, f_sysdate, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;


BEGIN
   INSERT INTO psu_desresultado
               (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt,
                falta, cusumod, fmodifi
               )
        VALUES (526031, i.sproduc, 999999, 2, 'Error en la Emisión', f_user,
                f_sysdate, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;


BEGIN
   INSERT INTO psu_desresultado
               (ccontrol, sproduc, cnivel, cidioma, tdesniv,
                cusualt, falta, cusumod, fmodifi
               )
        VALUES (526031, i.sproduc, 2680, 2, 'Precisa Reaseguro Facultativo',
                f_user, f_sysdate, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;


BEGIN
   INSERT INTO psu_desresultado
               (ccontrol, sproduc, cnivel, cidioma, tdesniv,
                cusualt, falta, cusumod, fmodifi
               )
        VALUES (526031, i.sproduc, 0, 2, 'No precisa Reaseguro Facultativo',
                f_user, f_sysdate, NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;


BEGIN
   INSERT INTO psu_nivel_control
               (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta,
                cusumod, fmodifi
               )
        VALUES (526031, i.sproduc, 0, 0, 0, f_user, f_sysdate,
                NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;


BEGIN
   INSERT INTO psu_nivel_control
               (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta,
                cusumod, fmodifi
               )
        VALUES (526031, i.sproduc, 1, 1, 2910, f_user, f_sysdate,
                f_user, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;


BEGIN
   INSERT INTO psu_nivel_control
               (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta,
                cusumod, fmodifi
               )
        VALUES (526031, i.sproduc, 99999, 99999, 999999, f_user, f_sysdate,
                NULL, NULL
               );
EXCEPTION
   WHEN DUP_VAL_ON_INDEX
   THEN
      NULL;
END;

end loop;

COMMIT ;
end;
/