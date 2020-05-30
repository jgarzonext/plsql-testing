/******************************************************************************
  PORPÓSITO:   Actualizar las cargas de Finleco, Supersocidades e Informacolombia 
  en una sola

  REVISIONES:
  Ver        Fecha        Autor             Descripción
  ---------  ----------  ---------------  ------------------------------------
  1.0        18/02/2019   JLTS             1.0 TCS_453B: 
******************************************************************************/
UPDATE cfg_files t
   SET t.tproceso = 'PAC_CARGAS_CONF.f_finleco'
 WHERE cproceso IN (222, 223, 224)
   AND cempres = 24
/
COMMIT
/
