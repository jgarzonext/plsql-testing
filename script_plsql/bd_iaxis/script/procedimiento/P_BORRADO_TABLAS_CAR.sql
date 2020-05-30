--------------------------------------------------------
--  DDL for Procedure P_BORRADO_TABLAS_CAR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_BORRADO_TABLAS_CAR" IS
/******************************************************************************

******************************************************************************/
   CURSOR tabla IS
      SELECT 'TRUNCATE TABLE ' || object_name op
        FROM user_objects
       WHERE object_name IN('RECIBOSCAR', 'VDETRECIBOSCAR', 'DETRECIBOSCAR', 'PREGUNCAR',
                            'PREGUNGARANCAR', 'TMP_GARANCAR', 'GARANCAR');

   cadena         VARCHAR2(100);
   traza          NUMBER;
BEGIN
   traza := 1;

   --FOR cad IN TABLA
   -- LOOP
   -- cadena :=cad.op;
   -- EXECUTE IMMEDIATE cadena;
   --END LOOP;
   -- BUG 18423 - 30/11/2011 - JMP - LCOL000 - Multimoneda
   DELETE FROM vdetreciboscar_monpol;

   -- FIN BUG 18423 - 30/11/2011 - JMP - LCOL000 - Multimoneda
   DELETE FROM vdetreciboscar;

   DELETE FROM detreciboscar;

   DELETE FROM reciboscar;

   DELETE FROM pregungarancar;

   DELETE FROM preguncar;

   DELETE FROM tmp_garancar;

   DELETE FROM garancar;

   traza := 2;

   -- JRH 04/2008
   FOR reg IN (SELECT sseguro
                 FROM estseguros) LOOP
      pac_alctr126.borrar_tablas_est(reg.sseguro);
   END LOOP;

    /*DELETE FROM ESTCLAUPARSEG;
    DELETE FROM ESTCLAUSUSEG;
    DELETE FROM ESTCLAUBENSEG;
    DELETE FROM ESTCLAUPARESP;
    DELETE FROM ESTCLAUSUESP;
    DELETE FROM ESTCOACEDIDO;
    DELETE FROM ESTCOACUADRO;
    DELETE FROM ESTCOMISIONSEGU;
   -- DELETE FROM ESTPARENTESCOS;
   -- DELETE FROM ESTCARENSEG;
   -- DELETE FROM ESTEXCLUSEG;
    DELETE FROM ESTGARANSEG;
    DELETE FROM ESTPREGUNSEG;
    DELETE FROM ESTPREGUNGARANSEG;
    DELETE FROM ESTAUTCONDUCTOR;
    DELETE FROM ESTDETAUTRIESGOS;
    DELETE FROM ESTAUTRIESGOS;
    DELETE FROM ESTSITRIESGO;
    DELETE FROM ESTMOTRETENCION;
    DELETE FROM ESTASSEGURATS;
    DELETE FROM ESTRIESGOS;
   -- DELETE FROM ESTNOTIBAJAGAR;
    DELETE FROM ESTGARANSEGGAS;
    DELETE FROM ESTGARANSEGCOM;
    DELETE FROM ESTGARANSEG_SBPRI;
    DELETE FROM ESTTOMADORES;
   -- DELETE FROM ESTTITULARES;
    DELETE FROM ESTASSEGURATS;
    DELETE FROM ESTDETMOVSEGURO;
    DELETE FROM ESTPRESTAMOSEG;
    DELETE FROM ESTPRESTCUADROSEG;
    DELETE FROM ESTPRESTTITULARES;
   -- DELETE FROM MODIFPERSONAS;
    DELETE FROM ESTSEGUROS;
    DELETE FROM PDS_ESTSIGFORM;
    DELETE FROM PDS_ESTSEGUROSUPL;
    DELETE FROM SUPDIRECCIONES S
     WHERE SSEGURO NOT IN (SELECT SSEGURO
                       FROM SEGUROS X
                  WHERE CSITUAC IN (4,5)
                    AND S.SSEGURO = X.SSEGURO);
    DELETE FROM estpersonas;*/
   DELETE FROM ctaseguro_libreta_previo;

   DELETE FROM ctaseguro_previo;

   DELETE FROM tmp_lock;

-- I - JLB - OPTIMI
   --DELETE FROM sgt_parms_transitorios;
-- F - JLB - OPTIMI
   DELETE FROM sgt_tokens;

   -- Borrado de las tablas SOL
   DELETE FROM solprestcuadroseg;

   DELETE FROM solprestcuadro;

   DELETE FROM solprestamos;

   DELETE FROM solpregungaranseg;

   DELETE FROM solgaranseg;

   DELETE FROM solgaranseggas;

   DELETE FROM solpregunseg;

   -- BUG 21023 - 23/01/2012 - MDS
   DELETE FROM solevoluprovmatseg;

   DELETE FROM solautriesgos;

   DELETE FROM solembarcriesgos;

   DELETE FROM solasegurados;

   DELETE FROM solriesgos;

   DELETE FROM soltomadores;

   -- BUG 21023 - 23/01/2012 - MDS
   DELETE FROM solseguros_aho;

   DELETE FROM solseguros;

   DELETE FROM detsimulapp;

   DELETE FROM simulapp;

   COMMIT;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'P_BORRADO_TABLAS_CAR', traza, SQLERRM, SQLCODE);
END p_borrado_tablas_car;

/

  GRANT EXECUTE ON "AXIS"."P_BORRADO_TABLAS_CAR" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_BORRADO_TABLAS_CAR" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_BORRADO_TABLAS_CAR" TO "PROGRAMADORESCSI";
