/*IAXIS-3162*/

DECLARE
    fecha     DATE;
  BEGIN
    fecha := TO_DATE('13-07-2018','dd-MM-yyyy');

    WHILE fecha <= TO_DATE('18-03-2019','dd-MM-yyyy') 
    LOOP
          INSERT INTO ECO_TIPOCAMBIO (CMONORI, CMONDES, FCAMBIO, ITASA, CUSUALT, FALTA) 
          VALUES 
          ('EUR', 'COP', fecha, '3100', 'AXIS_CONF', TO_DATE('2019-03-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
          fecha := (fecha+1);
    END LOOP;
    
    fecha := TO_DATE('12-09-2018','dd-MM-yyyy');

    WHILE fecha <= TO_DATE('18-03-2019','dd-MM-yyyy') 
    LOOP
          INSERT INTO ECO_TIPOCAMBIO (CMONORI, CMONDES, FCAMBIO, ITASA, CUSUALT, FALTA) 
          VALUES 
          ('USD', 'COP', fecha, '3100', 'AXIS_CONF', TO_DATE('2019-03-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
          fecha := (fecha+1);
    END LOOP;
END;

commit;
/

