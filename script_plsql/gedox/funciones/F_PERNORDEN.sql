--------------------------------------------------------
--  DDL for Function F_PERNORDEN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "GEDOX"."F_PERNORDEN" 
  ( pi_codi  IN VARCHAR2
  , pi_tipus IN NUMBER
  ) RETURN NUMBER IS
/****************************************************************************
   F_per_NORDEN
   Obtener el orden del grupo / parametro
     pcodi  : código del grupo de parámetros o del parámetro
     ptipo  : tipo de código introducido
              1 --grupo de parámetros
              2 --parámetros
*****************************************************************************/
  c_exc_orden  NUMBER := 9999;  --valor que devuelve el orden si ocurre algun error
  c_factor     NUMBER := 10000; --valor por el que multiplicamos cada nivel de grupo

  v_idcat     GDXCATCODPARAM.idcat%TYPE;    --categoria
  v_norden    NUMBER := 0;                  --orden del parámetro
  v_nordeng   NUMBER := 0;                  --orden del grupo
  v_nordengp  NUMBER := 0;                  --orden del grupo principal

BEGIN
  IF pi_tipus = 2 THEN
    --Seleccionamos el grupo y el orden del parámetro
    BEGIN
      SELECT idcat, NVL( norden, c_exc_orden)
      INTO   v_idcat, v_norden
      FROM   GDXCATCODPARAM
      WHERE  cParcat = pi_codi
      ;
    EXCEPTION
      WHEN OTHERS THEN
        v_norden  := c_exc_orden;
        v_idcat := NULL;
    END;

  ELSE
    v_idcat := to_number(pi_codi);
  END IF;

  IF v_idcat IS NOT NULL THEN
    --Seleccionamos el orden del grupo principal
    BEGIN
      SELECT norden
      INTO   v_nordengp
      FROM   GDXCODCATPAR
      WHERE  idcat = SUBSTR( v_idcat, 1, 2)
      ;
    EXCEPTION
      WHEN OTHERS THEN
        v_nordengp := c_exc_orden;
    END;

    IF LENGTH (v_idcat) = 4 THEN
      --Seleccionamos el orden del grupo
      BEGIN
        SELECT norden
        INTO   v_nordeng
        FROM   GDXCODCATPAR
        WHERE  idcat = v_idcat
        ;
      EXCEPTION
        WHEN OTHERS THEN
          v_nordeng := c_exc_orden;
      END;
    END IF;
  ELSE
    v_nordeng  := c_exc_orden;
    v_nordengp := c_exc_orden;
  END IF;

  v_norden := ( v_nordengp* c_factor + v_nordeng)*c_factor + v_norden;

  RETURN( V_norden);

EXCEPTION
  WHEN OTHERS THEN
   v_norden := -1;
   RETURN( v_norden);
END  F_PernOrden;
 

/
