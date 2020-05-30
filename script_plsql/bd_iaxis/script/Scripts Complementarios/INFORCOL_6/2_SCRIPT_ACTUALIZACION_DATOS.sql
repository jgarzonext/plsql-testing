/* Formatted on 13/04/2019 07:00 (Formatter Plus v4.8.8)
/* **************************** 14/04/2019  07:00 **********************************************************************
    Versión         01.
    Desarrollador   Fabrica Software INFORCOL
    Fecha           13/05/2020
    Actualzacion    13/05/2020
    Descripcion     Reaseguro facultativo - Ajustes para deposito en prima 
                    Carga inicial de valores para los nuevos campos de la tabla CUACESFAC, estos nuevos campos se alimentan 
                    transaccionalmente desde el trigger TRG_CESIONESREA_RET de la tabla CESIONESREA para nuevas transacciones
***********************************************************************************************************************/

DECLARE
    v_contexto NUMBER := 0;
BEGIN

    v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24, 'USER_BBDD'));

   UPDATE CUACESFAC CF1
      -- Calcula y asigna el importe reserva sobre cesion a cargo de la compania
      SET CF1.IRESERV = NVL( (CF1.PRESERV/100) * (CF1.PCESION/100) * 
                              -- OBTIENE EL IMPORTE CEDIDO DE LA TABLA CESIONESREA Y CON ESTO REALIZA EL CALCULO
                             ( SELECT CES.ICESION
                                 FROM CESIONESREA CES
                                WHERE CES.SFACULT = CF1.SFACULT AND CES.CTRAMO = 5 AND CES.CGENERA IN (3,4)
                             ) ,0)
      -- Calcula y asigna el importe reserva sobre cesion a cargo del reasegurador
         
         ,CF1.IRESREA = NVL( (CF1.PRESREA/100) * (CF1.PCESION/100) * 
                             -- OBTIENE EL IMPORTE CEDIDO DE LA TABLA CESIONESREA Y CON ESTO REALIZA EL CALCULO
                             ( SELECT CES.ICESION
                                 FROM CESIONESREA CES
                                WHERE CES.SFACULT = CF1.SFACULT AND CES.CTRAMO = 5 AND CES.CGENERA IN (3,4)
                              ) ,0)
      WHERE (CF1.IRESERV IS NULL) AND (CF1.IRESREA IS NULL)
      -- SE EXLUYEN LOS CUADROS FACULTATIVOS QUE POR ERROR DE DATOS ESTE DUPLICADOS EN LA TABLA DE CESIONESREA
        AND CF1.SFACULT NOT IN ( SELECT CES.SFACULT
                                  FROM CESIONESREA CES
                                 WHERE CES.CTRAMO = 5 AND CES.CGENERA IN (3,4)
                                 GROUP BY CES.SFACULT 
                                HAVING COUNT(CES.SFACULT) > 1);

    COMMIT;
    DBMS_OUTPUT.put_line('2_SCRIPT_ACTUALIZACION_DATOS.sql EJECUTADO CORRECTAMENTE: '||SQLERRM);

EXCEPTION
   WHEN OTHERS THEN
      ROLLBACK;
      DBMS_OUTPUT.put_line('ERROR SCRIPT 2_SCRIPT_ACTUALIZACION_DATOS.sql : '||SQLERRM);	
END;
/