--------------------------------------------------------
--  DDL for Trigger ACTUALIZ_SEGUREDCOM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."ACTUALIZ_SEGUREDCOM" 
AFTER INSERT OR UPDATE
OF CAGENTE
ON SEGUROS
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
   xcorrecto  NUMBER;
   error      NUMBER;
   l_c        NUMBER;
   l_data_ini DATE;
   l_cmotmov  NUMBER;
   l_fefecto  DATE;
BEGIN
  error:=Pac_Redcomercial.agente_valido (:NEW.cagente, :NEW.cempres, SYSDATE ,NULL, xcorrecto);
  IF error = 0  AND xcorrecto = 0 THEN
    -- Comprovem si es la primera vegada o ha canviat l'efecte
    -- Obtenim la data inicial
    BEGIN
        SELECT LEAST(TRUNC(fmovimi),TRUNC(fefecto))
        INTO l_data_ini
        FROM   MOVSEGURO
        WHERE  sseguro =  :NEW.sseguro
              AND  nmovimi = 1;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            -- Agafem la mes petita entre la data d'efecte del seguro i la data del dia.
            IF F_Sysdate < :NEW.fefecto THEN
                l_data_ini := F_Sysdate;
            ELSE
                l_data_ini := :NEW.fefecto;
            END IF;
        WHEN OTHERS THEN
              dbms_output.put_line(CHR(10)||'     Error en la creación de la Red Comercial'||CHR(10));
                RAISE;
    END;
    SELECT COUNT(*)
    INTO l_c
    FROM SEGUREDCOM
    WHERE sseguro = :NEW.sseguro
      AND TRUNC(fefecto) = l_data_ini;
    IF l_c = 0 OR :NEW.csituac = 4 THEN
       -- Esborrem per si ha canviat l'efecte de la pòlissa, perquè queden incoherencies
       -- i tornem a calcular la xarxa comercial, o si estem canviant l'agent quan encara
       -- es proposta d'alta.
       DELETE FROM SEGUREDCOM
       WHERE sseguro = :NEW.sseguro;
       error := Pac_Redcomercial.calcul_redcomseg (:NEW.cempres, :NEW.cagente,
                                                   :NEW.sseguro,l_data_ini, NULL);
    ELSE
       -- En cas de modificació, cal obtenir a partir de quina data s'ha de fer el canvi.
       IF :NEW.csituac = 5 THEN
          -- Obtenim el motiu del suplement
          SELECT cmotmov, fefecto
          INTO l_cmotmov, l_fefecto
          FROM MOVSEGURO
          WHERE sseguro = :NEW.sseguro
            AND nmovimi = (SELECT MAX(nmovimi)
                           FROM MOVSEGURO
                           WHERE sseguro = :NEW.sseguro);
          -- Si es canvi d'agent, ens quedem amb la data del moviment
          IF l_cmotmov = 212 THEN
             l_data_ini := l_fefecto;
          ELSE
             l_data_ini := F_Sysdate;
          END IF;
       ELSE
          l_data_ini := F_Sysdate;
       END IF;
       error := Pac_Redcomercial.cambio_redcom_seguro (:NEW.sseguro, :NEW.cempres,
                                                       :NEW.cagente, l_data_ini, NULL);
    END IF;
    IF error <> 0 THEN
      dbms_output.put_line(CHR(10)||'     Error en la creación de la Red Comercial'||CHR(10));
      RAISE_APPLICATION_ERROR(-20001,'Error en la validación de la Red Comercial Agente='||:NEW.cagente||' Empresa='||:NEW.cempres ||' Seguro='|| :NEW.sseguro ||' Fecha='||l_data_ini);
    END IF;
  ELSE
    dbms_output.put_line(CHR(10)||'    Error en la validación de la Red Comercial'||CHR(10));
    RAISE_APPLICATION_ERROR(-20001,'Error en la validación de la Red Comercial: Agente='||:NEW.cagente||' Empresa='||:NEW.cempres );
  END IF;
END;









/
ALTER TRIGGER "AXIS"."ACTUALIZ_SEGUREDCOM" ENABLE;
