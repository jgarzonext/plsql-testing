--------------------------------------------------------
--  DDL for Function FCALCUL_FORMULAS_PR_SIN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."FCALCUL_FORMULAS_PR_SIN" (nsesion  IN NUMBER,
                                  psseguro  IN NUMBER,
                                  pfecha   IN number,
                                  pcampo   IN VARCHAR2)
  RETURN NUMBER authid current_user IS
/******************************************************************************
   RSC 08/08/2008
   NOMBRE:
   DESCRIPCION:   Se crea esta funci�n para poder utilizar el pac_provmat_formul.f_calcul_formulas_provi
      desde el GFI. Esta funci�n es similar a FCALCUL_FORMULAS_PROVI.
      El objetivo de esta funci�n es tratar la obtenci�n del capital de fallecimiento o provisi�n
      en funci�n de si la fecha de siniestro es anterior o posterior a la fecha de migraci�n.
      Este tratamiento se ha tenido que seguir as� por que para las p�lizas migradas no se dispone de los
      movimientos detalle de las aportaciones, anulacion de aportaci�n, etc. Al no disponer de esos movimientos
      detalle (ni las participaciones) las funciones de calculo de provisi�n retornan 0 si la fecha de c�lculo
      es anterior a la fecha de migraci�n. Por tanto, hemos tenido que inventar esta funci�n.

   PARAMETROS:
   INPUT: NSESION(number) --> Nro. de sesi�n del evaluador de f�rmulas
          PSEGURO(number) --> secuencia del seguro que se est� consultando
          PFECHA(number)  --> Fecha de consulta.
          PCAMPO (VARCHAR2) --> Campo para el cual ejecutaremos la formula (p.e. 'ICFALLAC', 'IPROVAC'
   RETORNA VALUE:
          NUMBER------------> Resultado de la f�rmula
******************************************************************************/

  vsproduc  NUMBER;
  vccalint  NUMBER;
  vfvalmov  DATE;
  vcontado  NUMBER;

  vprovision   NUMBER;
  vnnumlin  NUMBER;
  vcfall  NUMBER;
  vpfecha DATE;
BEGIN
    vpfecha := to_date(pfecha,'yyyymmdd');

    select sproduc into vsproduc
    from seguros
    where sseguro = psseguro;

    -- Multilink y Ibex 35
    IF NVL(F_PARPRODUCTOS_V(vsproduc,'ES_PRODUCTO_INDEXADO'),0) = 1 AND NVL(F_PARPRODUCTOS_V(vsproduc,'PRODUCTO_MIXTO'),0) <> 1 THEN
      -- Miramos si la fecha de siniestro es anterior o posterior a la migraci�n
      BEGIN
        select ccalint, fvalmov, count(*) into vccalint, vfvalmov, vcontado
        from ctaseguro
        where sseguro = psseguro
          and cmovimi = 45
          and not exists (Select *
                          from ctaseguro c
                          where c.sseguro = psseguro
                            and c.ccalint = ctaseguro.ccalint
                            and cmovimi <> 45)
        group by ccalint, fvalmov;
      EXCEPTION
        WHEN NO_DATA_FOUND THEN
          -- Estamos en una p�liza generada en SIS
          return pac_provmat_formul.f_calcul_formulas_provi(psseguro, to_date(pfecha,'yyyymmdd'), pcampo);
      END;

      -- Estamos en una p�liza migrada
      IF vpfecha < vfvalmov THEN   -- siniestro o rescate con  fecha menor a la migraci�n
         IF pcampo = 'IPROVAC' THEN
           vprovision := round(fbuscasaldo(null, psseguro, pfecha),2);
           return vprovision;
         ELSIF pcampo = 'ICFALLAC' THEN
           BEGIN
             FOR regs IN (SELECT imovimi, nnumlin
                          FROM ctaseguro
                          WHERE sseguro = psseguro
                            AND cmovimi = 0
                            AND cmovanu <> 1
                            AND fvalmov <= vpfecha
                          order by fvalmov desc, nnumlin desc) LOOP
                vnnumlin := regs.nnumlin;
                EXIT;
             END LOOP;

             SELECT CCAPFAL INTO vcfall
             FROM ctaseguro_libreta
             WHERE sseguro = psseguro
               and nnumlin = vnnumlin;
           EXCEPTION
            WHEN OTHERS THEN
              vcfall := NULL;
           END;
           return vcfall;
         ELSE
           return pac_provmat_formul.f_calcul_formulas_provi(psseguro, to_date(pfecha,'yyyymmdd'), pcampo);
         END IF;
      ELSE
        return pac_provmat_formul.f_calcul_formulas_provi(psseguro, to_date(pfecha,'yyyymmdd'), pcampo);
      END IF;
    ELSE
      return pac_provmat_formul.f_calcul_formulas_provi(psseguro, to_date(pfecha,'yyyymmdd'), pcampo);
    END IF;
END FCALCUL_FORMULAS_PR_SIN;
 
 

/

  GRANT EXECUTE ON "AXIS"."FCALCUL_FORMULAS_PR_SIN" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."FCALCUL_FORMULAS_PR_SIN" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."FCALCUL_FORMULAS_PR_SIN" TO "PROGRAMADORESCSI";
