/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script actualiza la tabla CFG_FORM_PROPERTY.          
********************************************************************************************************************** */
   DECLARE 
   V_EMPRESA             SEGUROS.CEMPRES%TYPE := 24;
   v_contexto            NUMBER; 
   BEGIN 
      SELECT pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(v_empresa, 'USER_BBDD')) INTO v_contexto   
        FROM DUAL; 

	     --
    UPDATE CFG_FORM_PROPERTY
       SET CVALUE = 0
      WHERE cform = 'AXISAGE003'
      AND CITEM = 'CTIPADN'
      AND CPRPTY = 1;
    
    UPDATE CFG_FORM_PROPERTY
       SET CVALUE = 0
      WHERE cform = 'AXISAGE003'
      AND CITEM = 'CAGEDEP'
      AND CPRPTY = 1;
    
    UPDATE CFG_FORM_PROPERTY
       SET CVALUE = 0
      WHERE cform = 'AXISAGE003'
      AND CITEM = 'TAGEDEP'
      AND CPRPTY = 1;
		 --
   COMMIT;
   END;
/
