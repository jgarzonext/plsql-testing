--------------------------------------------------------
--  DDL for Trigger TRG_AUTRIESGOS_TRIESGO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_AUTRIESGOS_TRIESGO" 
   BEFORE INSERT OR UPDATE
   ON autriesgos
   FOR EACH ROW
           WHEN (NEW.triesgo IS NULL) DECLARE
   vtmarca        VARCHAR2(100);
   vtmodelo       VARCHAR2(100);
   vtversion      VARCHAR2(100);
   vcmatric       VARCHAR2(100);
   vtriesgo       VARCHAR2(2000);
   mensajes       t_iax_mensajes;
BEGIN
   BEGIN
      SELECT mar.tmarca, mo.tmodelo, av.tversion
        INTO vtmarca, vtmodelo, vtversion
        FROM aut_versiones av, aut_marcas mar, aut_modelos mo
       WHERE av.cversion = :NEW.cversion
         AND av.cmarca = mar.cmarca
         AND av.cmarca = mo.cmarca
         AND av.cmodelo = mo.cmodelo;

      --:NEW.triesgo := :NEW.cmatric || ' - ' || vtmarca || ' - ' || vtmodelo || ' - ' || vtversion;
      vcmatric := :NEW.cmatric;

      IF vcmatric IS NOT NULL THEN
         vtriesgo := vcmatric || ' - ';
      END IF;

      IF vtmarca IS NOT NULL THEN
         vtriesgo := vtriesgo || vtmarca || ' - ';
      END IF;

      IF vtmodelo IS NOT NULL THEN
         vtriesgo := vtriesgo || vtmodelo || ' - ';
      END IF;

      IF vtversion IS NOT NULL THEN
         vtriesgo := vtriesgo || vtversion;
      END IF;

      :NEW.triesgo := vtriesgo;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'trg_autriesgos_triesgo', 1, 'vtriesgo: ' || vtriesgo,
                     'SQLERROR: ' || SQLCODE || ' - ' || SQLERRM);
   END;
END trg_autriesgos_triesgo;







/
ALTER TRIGGER "AXIS"."TRG_AUTRIESGOS_TRIESGO" ENABLE;
