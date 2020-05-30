CREATE OR REPLACE PROCEDURE P_FACT_REASEGUROS(PI_FINICIO IN DATE,
                                              PI_FFIN    IN DATE) IS

  CURSOR RESULT(P_FINICIO DATE, P_FFIN DATE) IS
    SELECT DISTINCT SEG.NPOLIZA REAS_POLIZA,
                    (SELECT RD.NCERTDIAN
                       FROM AXIS.RANGO_DIAN_MOVSEGURO RD
                      WHERE RD.SSEGURO = SEG.SSEGURO
                        AND RD.NMOVIMI = CES.NMOVIMI
                        AND ROWNUM = 1) REAS_CERTIFICADO,
                    CES.SCONTRA REAS_ID,
                    CES.CGENERA REAS_CONCEPTO,
                    CES.FEFECTO REAS_FECHA,
                    (CES.ICESION * CUA.PCESION / 100) REAS_MONTO,
                    (SELECT MAX(DT.TIE_ID)
                       FROM DIM_TIEMPO DT
                      WHERE DT.TIE_FECHA = CES.FEFECTO
                        AND DT.ESTADO = 'ACTIVO') REAS_FK_TIEMPO,
                    (SELECT MAX(GEO_ID)
                       FROM DIM_GEOGRAFICA DG
                      WHERE DG.GEO_SUCURSAL = SUBSTR(TO_CHAR(AXIS.PAC_REDCOMERCIAL.F_BUSCA_PADRE(24,
                                                                                                     SEG.CAGENTE,
                                                                                                     NULL,
                                                                                                     NULL)),
                                                     3,
                                                     5)
                        AND DG.ESTADO = 'ACTIVO') REAS_FK_GEOGRAFICA,
                    DECODE(COD.CMONEDA, 'COP', 1, 'USD', 2, 'EUR', 8) REAS_FK_MONEDA,
                    (SELECT MAX(DT.TEC_ID)
                       FROM DIM_TECNICA DT
                      WHERE DT.TEC_RAMO = HOM.CODRAM
                        AND DT.ESTADO = 'ACTIVO') REAS_FK_TECNICA,
                    (SELECT MAX(DP.PER_CODIGO)
                       FROM DIM_PERSONA DP
                      WHERE DP.PER_PERSONA =
                            (SELECT PP.NNUMIDE
                               FROM AXIS.PER_PERSONAS PP
                              WHERE PP.SPERSON = COMP.SPERSON)
                        AND DP.ESTADO = 'ACTIVO') REAS_FK_REASEGURADOR,
                    SYSDATE FECHA_CONTROL,
                    SYSDATE FECHA_REGISTRO,
                    P_FINICIO FECHA_INICIO,
                    P_FFIN FECHA_FIN
    
      FROM AXIS.CESIONESREA    CES,
           AXIS.SEGUROS        SEG,
           AXIS.CODICONTRATOS  COD,
           AXIS.HOMOLOGAPRODUC HOM,
           AXIS.GARANSEG       GAR,
           AXIS.CUADROCES      CUA,
           AXIS.COMPANIAS      COMP
    
     WHERE SEG.SSEGURO = CES.SSEGURO
       AND HOM.SPRODUC = SEG.SPRODUC
       AND HOM.CGARANT = GAR.CGARANT
       AND HOM.CACTIVI = SEG.CACTIVI
       AND GAR.SSEGURO = SEG.SSEGURO
       AND GAR.NMOVIMI = CES.NMOVIMI
       AND COD.SCONTRA = CES.SCONTRA
       AND CES.NVERSIO = CUA.NVERSIO
       AND CES.CTRAMO = CUA.CTRAMO
       AND CUA.CCOMPANI = COMP.CCOMPANI
       AND COMP.CTIPCOM = 0
       AND CES.FEFECTO BETWEEN P_FINICIO AND P_FFIN
    /*       AND CES.FEFECTO BETWEEN TO_DATE('01/11/2019', 'DD/MM/YYYY') AND
    TO_DATE('19/12/2019', 'DD/MM/YYYY')*/
     ORDER BY SEG.NPOLIZA DESC;

BEGIN
  DELETE FROM FACT_REASEGUROS_DUMMY;
  COMMIT;

  FOR ROWS IN RESULT(PI_FINICIO, PI_FFIN) LOOP
  
    INSERT INTO FACT_REASEGUROS_DUMMY
      (REASEG_ID,
       REAS_POLIZA,
       REAS_CERTIFICADO,
       REAS_ID,
       REAS_CONCEPTO,
       REAS_FECHA,
       REAS_MONTO,
       REAS_FK_TIEMPO,
       REAS_FK_GEOGRAFICA,
       REAS_FK_MONEDA,
       REAS_FK_TECNICA,
       REAS_FK_REASEGURADOR,
       FECHA_CONTROL,
       FECHA_REGISTRO,
       FECHA_INICIO,
       FECHA_FIN)
    VALUES
      (REASEG_ID.NEXTVAL,
       ROWS.REAS_POLIZA,
       ROWS.REAS_CERTIFICADO,
       ROWS.REAS_ID,
       ROWS.REAS_CONCEPTO,
       ROWS.REAS_FECHA,
       ROWS.REAS_MONTO,
       ROWS.REAS_FK_TIEMPO,
       ROWS.REAS_FK_GEOGRAFICA,
       ROWS.REAS_FK_MONEDA,
       ROWS.REAS_FK_TECNICA,
       ROWS.REAS_FK_REASEGURADOR,
       ROWS.FECHA_CONTROL,
       ROWS.FECHA_REGISTRO,
       ROWS.FECHA_INICIO,
       ROWS.FECHA_FIN);
  END LOOP;
  COMMIT;
END P_FACT_REASEGUROS;
/
