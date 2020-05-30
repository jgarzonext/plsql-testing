/* Formatted on 2019/08/06 10:10 (Formatter Plus v4.8.8) */
BEGIN
   UPDATE detgaranformula
      SET clave = 750062
    WHERE cconcep = 'TPFINAL' AND sproduc IN (80007, 80009);

   COMMIT;
END;
/

BEGIN
   UPDATE sgt_formulas
      SET formula =
             'NVL(VTABLA(9000003, 3333, 1,SPRODUC,CACTIVI,GARANTIA,CDIVISA)*10,0)'
    WHERE clave = 750006;

   COMMIT;
END;
/

BEGIN
   UPDATE sgt_formulas
      SET formula = '(CAPFINAN*PROBA*CONTGARA/1000000)*(TASAREF)'
    WHERE clave = 750016;

   UPDATE sgt_formulas
      SET formula = '(CAPFINAN*PROCESO*CONTGARA/1000000)*(TASAREF)'
    WHERE clave = 750061;

   UPDATE sgt_formulas
      SET formula = 'TPFINAL*FACSUSCR/(1-(RECTARIF/100))*100'
    WHERE clave = 750057;

   UPDATE sgt_formulas
      SET formula = 'PRIMAREC*(1+DTOCOM/100)*100'
    WHERE clave = 750058;

   UPDATE sgt_formulas
      SET formula =
             'DECODE(RESP(2702),1,TPFINAL*FACSUSCR/(CONTGARA/100)*100/(1-(RECTARIF/100)),TPFINAL*FACSUSCR/(1-(RECTARIF/100)))*100'
    WHERE clave = 750065;

   COMMIT;
END;
/

BEGIN
   DELETE      sgt_subtabs_det a
         WHERE a.csubtabla LIKE '8000%47'
           AND a.ccla1 IN (80007, 80008)
           AND a.nval1 <> 200;

   DELETE      sgt_subtabs_det a
         WHERE a.csubtabla LIKE '8000%47'
           AND a.ccla1 IN (80007, 80008)
           AND a.nval1 = 200
           AND ccla2 IN (7, 6, 5, 4, 3, 2, 1, 0);

   COMMIT;
END;
/