--------------------------------------------------------
--  DDL for Procedure CALCULOS_DIARIOS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."CALCULOS_DIARIOS" (semanal IN NUMBER) authid current_user IS
/***************************************************************************
  Llamará a todos los procesos diarios de cálculo, ventas, siniestros,....
  El parámetro semanal indicará si ese dia hay que lanzar el cálculo
  para aquellos tipos de cierres que no se calculen diariamente (en principio
  ventas comerciales y provisiones). Si hay que realizar los cálculos, el
  parámetro semanal será 1, y 0 si no hay que hacerlos.
****************************************************************************/
   CURSOR c_empres IS
     SELECT cempres
       FROM empresas
      ORDER BY cempres;
   error_ventas		NUMBER;
   psproces		NUMBER;
   pfcalcul		DATE;
   mes_ini		DATE;
   n_mesos		NUMBER;
BEGIN
  /* -- Llamamos a los procesos diarios de cálculo con los siguientes parámetros
   --  pmodo    = 1     (proceso diario)
   --  pcempres = null  (para todas las empresas)
   --  pmoneda  = 2     (pesetas)
   --  pcidioma = 1     (catalán)
   commit;
   set transaction use rollback segment rollbig;
   -- ****  VENTAS  ************************************
   dbms_output.put_line('Inici del procés Calcul diari -- '||psproces
                         ||' - '||to_char(sysdate,'hh:mi:ss'));
   pac_ventas.proceso_batch_cierre(1,null,2,1,null,error_ventas,psproces,pfcalcul);
   dbms_output.put_line('Error - '||error_ventas||' - fcalcul '||pfcalcul);
   dbms_output.put_line('Fi del procés -- '||psproces||' - '||to_char(sysdate,'hh:mi:ss'));
   -- ***  SINIESTROS **********************************
   SELECT add_months(max(fperfin),1),
	  months_between(last_day(sysdate),add_months(max(fperfin),1))
     INTO mes_ini, n_mesos
     FROM cierres
    WHERE ctipo = 2
      AND cestado = 1;
   FOR m in 0..n_mesos loop
     FOR em IN c_empres LOOP
        commit;
        set transaction use rollback segment rollbig;
        pac_llibsin.proceso_batch_cierre(1,em.cempres,1,last_day(add_months(mes_ini,m)),error_ventas,psproces,pfcalcul);
     END LOOP;
   end loop;
   -- ***  PROVISIONES *********************************
   IF semanal = 1 THEN
     SELECT add_months(max(fperfin),1),
  	    months_between(last_day(sysdate),add_months(max(fperfin),1))
     INTO   mes_ini, n_mesos
     FROM   cierres
     WHERE  ctipo = 3
       AND  cestado = 1;
     for m in 0..n_mesos loop
       FOR em IN c_empres LOOP
         commit;
         set transaction use rollback segment rollbig;
         pac_provisiones.proceso_batch_cierre(1,em.cempres,2,1,
                            last_day(add_months(mes_ini,m)),error_ventas,psproces,pfcalcul);
       END LOOP;
     end loop;
   END IF;
   */
   null;
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."CALCULOS_DIARIOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."CALCULOS_DIARIOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."CALCULOS_DIARIOS" TO "PROGRAMADORESCSI";
