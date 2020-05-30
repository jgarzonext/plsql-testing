--------------------------------------------------------
--  DDL for Procedure P_DATOS_ULT_SALDO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_DATOS_ULT_SALDO" (  psseguro in SEGUROS.SSEGURO%TYPE,
                                pfecha  IN DATE,
                                pFechaSaldo OUT DATE,
                                pProvMat    OUT CTASEGURO.IMOVIMI%TYPE,
                                pCapGar     OUT CTASEGURO_LIBRETA.CCAPGAR%TYPE,
                                pCapFall    OUT CTASEGURO_LIBRETA.CCAPFAL%TYPE,
                                pnnumlin    OUT CTASEGURO.NNUMLIN%TYPE
                             ) AUTHID CURRENT_USER IS
      --   P_DATOS_ULT_SALDO
      --   Busca el la fecha de valor, la provision matemática, el capital garantizado y el capital de fallecimiento
      --   calculado en la última actualizacion antes de una fecha determinada.
      --   En  cas que no existeixi torna els valors a 0
      --
      --   PARAMETROS:
      --   INPUT:
      --          PSSEGUR(number) --> Clave del seguro
      --          PFECHA(date)    --> Fecha
      --   OUTPUT:
      --          pFechaSaldo     --> fecha de valor
      --          pProvMat        --> provision matemática
      --          pCapGar         --> capital garantizado
      --          pCapFall        --> capital de fallecimiento
      --
      x varchar2(1);
  BEGIN
    pFechaSaldo := NULL;
    pProvMat := 0;
    pCapGar := 0;
    pCapFall := 0;

    FOR rCtaSeguro IN (SELECT ccapgar, ccapfal, imovimi provmat, fvalmov fechasaldo, c.nnumlin
                       FROM ctaseguro c, ctaseguro_libreta cl
                       WHERE c.sseguro = psseguro
                          and c.sseguro = cl.sseguro
                          and c.nnumlin = cl.nnumlin
                          AND c.cmovimi = 0
                          AND c.cmovanu <> 1  -- 1 = Anulado
                          AND c.fvalmov <= PFECHA
                       order by c.fvalmov desc, c.nnumlin desc) LOOP

      pFechaSaldo := rCtaSeguro.fechasaldo;
      pProvMat := rCtaSeguro.provmat;
      pCapGar := rCtaSeguro.ccapgar;
      pCapFall := rCtaSeguro.ccapfal;
      pnnumlin := rCtaSeguro.nnumlin;
      EXIT;
    END LOOP;

    -- RSC 09/05/2008 Tarea 5645
    /*
    FOR rCtaSeguro IN (
                         SELECT ccapgar, ccapfal, imovimi provmat, fvalmov fechasaldo, c.nnumlin
                           FROM ctaseguro c, ctaseguro_libreta cl
                          WHERE c.sseguro = psseguro
                                and c.sseguro = cl.sseguro
                                and c.nnumlin = cl.nnumlin
                            AND c.cmovimi = 0
                            AND c.cmovanu <> 1  -- 1 = Anulado
                            AND (c.fvalmov, c.nnumlin) = (SELECT max(cc.fvalmov), max(cc.nnumlin)
                                             FROM ctaseguro cc
                                            WHERE cc.sseguro = psseguro
                                              AND cc.cmovimi = 0
                                              AND cc.cmovanu <> 1 -- 1 = Anulado
                                              AND cc.fvalmov<= PFECHA)
                      ) LOOP
      pFechaSaldo := rCtaSeguro.fechasaldo;
      pProvMat := rCtaSeguro.provmat;
      pCapGar := rCtaSeguro.ccapgar;
      pCapFall := rCtaSeguro.ccapfal;
      pnnumlin := rCtaSeguro.nnumlin;
    END LOOP;
    */
  END;
 
 

/

  GRANT EXECUTE ON "AXIS"."P_DATOS_ULT_SALDO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_DATOS_ULT_SALDO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_DATOS_ULT_SALDO" TO "PROGRAMADORESCSI";
