--------------------------------------------------------
--  DDL for Trigger WHO_CNV_CONV_EMP_VERS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."WHO_CNV_CONV_EMP_VERS" 
   BEFORE INSERT OR UPDATE OR DELETE
   ON cnv_conv_emp_vers
   FOR EACH ROW
BEGIN
   IF INSERTING THEN   -- (Es insert)
      :NEW.cusualt := f_user;
      :NEW.falta := f_sysdate;
   ELSE   -- (Es update)
      :NEW.cusumod := f_user;
      :NEW.fmodifi := f_sysdate;
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER who_CNV_CONV_EMP_VERS', 1, SQLCODE, SQLERRM);
END who_cnv_conv_emp_vers;




/
ALTER TRIGGER "AXIS"."WHO_CNV_CONV_EMP_VERS" ENABLE;
