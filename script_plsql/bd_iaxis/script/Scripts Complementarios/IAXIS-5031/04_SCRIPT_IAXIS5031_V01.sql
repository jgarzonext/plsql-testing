/* Formatted on 29/08/2019 10:30*/
/* **************************** 29/08/2019 10:30 **********************************************************************
Versión           Descripción
01.               -Se actualiza la fórmula para primas mínimas a partir de cambios realizados para la tarea IAXIS-4985
02.               -Se incluyen los parámetros 'CAGENTE' y 'SPRODUC' para la nueva fórmula
03.               -Se quita para las garantías dependientes de RC Médicas y RC Clínicas el cálculo de las primas mínimas.
                  -Se cambia la fórmula para RC Médicas: se incluye la porción de código removida del paquete pac_tarifas
IAXIS-5031        29/08/2019 Daniel Rodríguez
***********************************************************************************************************************/
BEGIN
--
DELETE FROM sgt_trans_formula WHERE clave = 248023 AND parametro IN ('CAGENTE','SPRODUC','CACTIVI');
--
INSERT INTO sgt_trans_formula (CLAVE, PARAMETRO)
VALUES (248023, 'CAGENTE');
--
INSERT INTO sgt_trans_formula (CLAVE, PARAMETRO)
VALUES (248023, 'SPRODUC');
--
INSERT INTO sgt_trans_formula (CLAVE, PARAMETRO)
VALUES (248023, 'CACTIVI');
--
UPDATE sgt_formulas
   SET formula = 'CASE WHEN ((CAPITAL*TASA)/365*(TO_DATE(FFINVIG,"YYYYMMDD")-TO_DATE(FINIVIG,"YYYYMMDD"))) >(pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE))
     THEN ((CAPITAL*TASA)/365*(TO_DATE(FFINVIG,"YYYYMMDD")-TO_DATE(FINIVIG,"YYYYMMDD")))
     ELSE (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) END'
 WHERE clave = 248023;
--
-- RCE Profesiones Médicas
--
DELETE FROM sgt_trans_formula WHERE clave = 750023 AND parametro IN ('CAGENTE','SPRODUC','CACTIVI');
--
UPDATE sgt_formulas
   SET formula = 'VAL_GAR(3,7762)*(CAPITAL/VAL_GAR(1,7762))'
 WHERE clave = 750023;
--
DELETE FROM sgt_trans_formula WHERE clave = 750022 AND parametro IN ('CAGENTE','SPRODUC','CACTIVI','FINIVIG','FFINVIG');
--
INSERT INTO sgt_trans_formula (CLAVE, PARAMETRO)
VALUES (750022, 'CAGENTE');
--
INSERT INTO sgt_trans_formula (CLAVE, PARAMETRO)
VALUES (750022, 'SPRODUC');
--
INSERT INTO sgt_trans_formula (CLAVE, PARAMETRO)
VALUES (750022, 'CACTIVI');
--
INSERT INTO sgt_trans_formula (CLAVE, PARAMETRO)
VALUES (750022, 'FINIVIG');
--
INSERT INTO sgt_trans_formula (CLAVE, PARAMETRO)
VALUES (750022, 'FFINVIG');
--
UPDATE sgt_formulas
   SET formula = 'CASE WHEN ((DECODE(RESP(6582), 1, PAC_FORMUL_CONF.f_prima_rcmedica(SSEGURO,NMOVIMI,NRIESGO, CAPITAL)*1.2, PAC_FORMUL_CONF.f_prima_rcmedica(SSEGURO,NMOVIMI,NRIESGO, CAPITAL)))/12)*MONTHS_BETWEEN(TO_DATE(FFINVIG,"YYYYMMDD"),TO_DATE(FINIVIG,"YYYYMMDD")) >(pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE))
     THEN ((DECODE(RESP(6582), 1, PAC_FORMUL_CONF.f_prima_rcmedica(SSEGURO,NMOVIMI,NRIESGO, CAPITAL)*1.2, PAC_FORMUL_CONF.f_prima_rcmedica(SSEGURO,NMOVIMI,NRIESGO, CAPITAL)))/12)*MONTHS_BETWEEN(TO_DATE(FFINVIG,"YYYYMMDD"),TO_DATE(FINIVIG,"YYYYMMDD"))
     ELSE (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) END'
 WHERE clave = 750022;
--
-- RCE Clínicas
--
DELETE FROM sgt_trans_formula WHERE clave = 750037 AND parametro IN ('CAGENTE','SPRODUC','CACTIVI');
--
INSERT INTO sgt_trans_formula (CLAVE, PARAMETRO)
VALUES (750037, 'CAGENTE');
--
INSERT INTO sgt_trans_formula (CLAVE, PARAMETRO)
VALUES (750037, 'SPRODUC');
--
INSERT INTO sgt_trans_formula (CLAVE, PARAMETRO)
VALUES (750037, 'CACTIVI');
--
UPDATE sgt_formulas
   SET formula = 'CASE WHEN PAC_FORMUL_CONF.f_prima_rcclinica(SSEGURO,NMOVIMI,NRIESGO, CAPITAL)  >(pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE))
     THEN PAC_FORMUL_CONF.f_prima_rcclinica(SSEGURO,NMOVIMI,NRIESGO, CAPITAL)
     ELSE (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) END'
 WHERE clave = 750037;
--
DELETE FROM sgt_trans_formula WHERE clave = 750038 AND parametro IN ('CAGENTE','SPRODUC','CACTIVI');
--
UPDATE sgt_formulas
   SET formula = 'VAL_GAR(3,7757)*(CAPITAL/VAL_GAR(1,7757))'
 WHERE clave = 750038;
--
COMMIT;
--
EXCEPTION
   WHEN OTHERS THEN
     dbms_output.put_line('ERROR OCCURED-->'||SQLERRM);
     dbms_output.put_line('ERROR OCCURED-->'||DBMS_UTILITY.format_error_backtrace);
     rollback;
End;
/

