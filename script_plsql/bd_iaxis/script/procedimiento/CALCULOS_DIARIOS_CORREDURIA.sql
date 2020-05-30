--------------------------------------------------------
--  DDL for Procedure CALCULOS_DIARIOS_CORREDURIA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."CALCULOS_DIARIOS_CORREDURIA" authid current_user IS
/***************************************************************************
  Llamará a todos los procesos diarios de cálculo, meritación,....
****************************************************************************/

   CURSOR c_empres IS
     SELECT cempres
       FROM empresas
      ORDER BY cempres;

   error		NUMBER;
   psproces		NUMBER;
   pfcalcul		DATE;
   mes_ini		DATE;
   n_mesos		NUMBER;

BEGIN
   -- Llamamos a los procesos diarios de cálculo con los siguientes parámetros
   --  pmodo    = 1     (proceso diario)
   --  pcempres = null  (para todas las empresas)
   --  pmoneda  = 2     (pesetas)
   --  pcidioma = 1     (catalán)
   commit;
   set transaction use rollback segment rollbig;

   -- *****************************************************
   -- ****  MERITACIO  ************************************
   -- *****************************************************

   dbms_output.put_line('Inici del procés Calcul diari -- '||psproces
                         ||' - '||to_char(sysdate,'hh:mi:ss'));
   FOR em IN c_empres LOOP
      pac_merita.proceso_batch_cierre(1,em.cempres,2,1,null,null,error,psproces,pfcalcul);
   END LOOP;
   dbms_output.put_line('Resultat meritació - '||error||' - fcalcul '||pfcalcul);
   dbms_output.put_line('Fi del procés -- '||psproces||' - '||to_char(sysdate,'hh:mi:ss'));

   -- *****************************************************
   -- ****  CUADRE C.C ************************************
   -- *****************************************************

   SELECT add_months(max(fperfin),1),
	  months_between(last_day(sysdate),add_months(max(fperfin),1))
     INTO mes_ini, n_mesos
     FROM cierres
    WHERE ctipo = 9
      AND cestado = 1;

   FOR m in 0..n_mesos loop
     FOR em IN c_empres LOOP
        pac_cuadre_cc.proces_batch_quadre(1, em.cempres , 2,last_day(add_months(mes_ini,m)),
                                          error , psproces, pfcalcul) ;
        dbms_output.put_line('Resultat quadre - '||error||' - fcalcul '||pfcalcul);
        dbms_output.put_line('Fi del procés -- '||psproces||' - '||to_char(sysdate,'hh:mi:ss'));
     END LOOP;
   END LOOP;


END;

 
 

/

  GRANT EXECUTE ON "AXIS"."CALCULOS_DIARIOS_CORREDURIA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."CALCULOS_DIARIOS_CORREDURIA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."CALCULOS_DIARIOS_CORREDURIA" TO "PROGRAMADORESCSI";
