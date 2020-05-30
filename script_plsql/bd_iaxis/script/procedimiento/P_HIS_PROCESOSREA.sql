--------------------------------------------------------
--  DDL for Procedure P_HIS_PROCESOSREA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_HIS_PROCESOSREA" (ptabla  VARCHAR2,
                                              pindica VARCHAR2,
                                              pcolumn VARCHAR2,
                                              pvalant VARCHAR2,
                                              pvalact VARCHAR2) IS
   /******************************************************************************
      NOMBRE:    p_his_procesosrea
      PROPÓSITO: Inserta inserciones en histórico

      REVISIONES:
      Ver        Fecha        Autor             Descripción
      ---------  ----------  ---------------  ------------------------------------
      1.0        28/11/2016  JAE              1. Creación del objeto.
      2.0        28/07/2019  AMC              2. 4822. Adicion tabla cuando se presenta error

   ******************************************************************************/

BEGIN
   IF NVL(pac_parametros.f_parempresa_n(pcempres => f_empres, pcparam => 'TRG_HIS_REA'), 0) = 1 
   THEN
      --
      --Inserta si hubo modificación
      IF NVL(pvalant, 0) != NVL(pvalact, 0)
      THEN
         --
         INSERT INTO his_procesosrea
            (sindhisrea, cnomtabla, sindicadormod, cnomcampo, cvalorant,
             cvaloract, cusuariomod, fmodifi)
         VALUES
            (sindhisrea.nextval, ptabla, pindica, pcolumn, NVL(pvalant, 'NULL'), pvalact,
             f_user, f_sysdate);
         --		 
      END IF;
      --
   END IF;
   --
EXCEPTION
   WHEN OTHERS THEN
      --
      p_tab_error(pferror   => f_sysdate,
                  pcusuari  => f_user,
                  ptobjeto  => 'P_HIS_PROCESOSREA',
                  pntraza   => 1,
				  --2.0 INI - CJAD - 17/SEP2019 - IAXIS4822 - Errores en PAC_REASEGURO_REC 
                  ptdescrip => 'Error insertar registro en tabla ' || ptabla,
				  pterror => 'pvalant:' || pvalant || '- pvalact: ' || pvalact || '. ' || SQLERRM);
				  --2.0 FIN - CJAD - 17/SEP2019 - IAXIS4822 - Errores en PAC_REASEGURO_REC 
      --
END p_his_procesosrea;

/

  GRANT EXECUTE ON "AXIS"."P_HIS_PROCESOSREA" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_HIS_PROCESOSREA" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_HIS_PROCESOSREA" TO "PROGRAMADORESCSI";
