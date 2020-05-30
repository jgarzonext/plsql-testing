--------------------------------------------------------
--  DDL for Procedure P_GENSIMBOLO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_GENSIMBOLO" ( INTERES IN NUMBER, pctabla in number,
                                          ntramo_lx in number, ntramo_ly in number,
										  ntramo_ix in number, ntramo_iy in number,
										  naños_menos_ly in number) IS
 wQX      NUMBER;
 wLX      NUMBER;
 wLXA     NUMBER;
 wDX      NUMBER;
 wDXA     NUMBER;
 wNX      NUMBER;
 wNXA     NUMBER;
 wSX      NUMBER;
 wMX      NUMBER;
 wRX      NUMBER;
 wCX      NUMBER;
 wCXA     NUMBER;
 wIX      NUMBER;
 wTPXA    NUMBER;
 wQY      NUMBER;
 wLY      NUMBER;
 wLYA     NUMBER;
 wDY      NUMBER;
 wDYA     NUMBER;
 wNY      NUMBER;
 wNYA     NUMBER;
 wSY      NUMBER;
 wMY      NUMBER;
 wRY      NUMBER;
 wCY      NUMBER;
 wCYA     NUMBER;
 wIY      NUMBER;
 wTPYA    NUMBER;
 wlx1     NUMBER;
 WLY1     number;
 wlxA1    number;
 wlyA1    number;
 wlxm1    number;
 wlym1    number;
 WQXM1    number;
 WIXM1    number;
 WQYM1    number;
 WIYM1    number;
BEGIN
FOR I IN 1..112 LOOP
 wlx  := buscatramo(1,ntramo_lx,i);
 wly  := buscatramo(1,ntramo_ly,i-naños_menos_ly);
 wlx1 := buscatramo(1,ntramo_lx,i+1);
 wly1 := buscatramo(1,ntramo_ly,i+1-naños_menos_ly);
 wix  := buscatramo(1,ntramo_ix,i);
 wiy  := buscatramo(1,ntramo_iy,i);
 wqx  := (wlx - wlx1) / wlx;
 wqy  := (wly - wly1) / wly;
 wdx  := (wlx * power((1+interes), -i));
 wdy  := (wly * power((1+interes), -i));
 wcx  := (wlx - wlx1) / power((1+interes),(i+0.5));
 wcy  := (wly - wly1) / power((1+interes),(i+0.5));
 IF I = 1 THEN
    WLXA := WLX;
    WLYA := WLY;
 ELSE
    WLXA := NULL;
    WLYA := NULL;
 END IF;
 INSERT INTO SIMBOLCONMU (CTABLA,PINTTEC,NEDAD,QX,LX,LXA,DX,DXA,
  NX,NXA,SX,MX,RX,CX,CXA,IX,TPXA,QY,LY,LYA,DY,DYA,NY,NYA,SY,MY,RY,CY,
  CYA,IY,TPYA)
  VALUES (pctabla,interes,I,wQX,wLX,WLXA,wDX,null,null,null,null,null,null,wCX,null,wIX,null,
                     wQY,wLY,WLYA,wDY,null,null,null,null,null,null,wCY,null,wIY,null);
 commit;
 IF I <> 1 THEN
   SELECT LXA, QX, IX, LYA, QY, IY
     INTO WLXM1, WQXM1,WIXM1, WLYM1, WQYM1,WIYM1
      FROM SIMBOLCONMU
     WHERE NEDAD = I-1
       AND CTABLA = pctabla
       AND PINTTEC = INTERES;
   WLXA :=(WLXM1 *(1-WQXM1-WIXM1));
   WLYA :=(WLYM1 *(1-WQYM1-WIYM1));
 END IF;
 WDXA :=(WLXA * POWER((1+INTERES),(-I-0.5)));
 WDYA :=(WLYA * POWER((1+INTERES),(-I-0.5)));
 update SIMBOLCONMU SET LXA=wlxa, DXA=WDXA, LYA=WLYA, DYA=WDYA
  WHERE NEDAD = I AND CTABLA = pctabla AND PINTTEC = INTERES;
 COMMIT;
END LOOP;
FOR I IN 1..111 LOOP
 select SUM(DX),SUM(DXA),SUM(CX),SUM(DY),SUM(DYA),SUM(CY)
   INTO WNX, WNXA, WMX,WNY, WNYA, WMY
  FROM SIMBOLCONMU
  WHERE NEDAD >= I AND CTABLA = pctabla AND PINTTEC = INTERES;
 SELECT LXA, LYA INTO WLXA,WLYA
   FROM SIMBOLCONMU
  WHERE NEDAD = I AND CTABLA = pctabla AND PINTTEC = INTERES;
 SELECT LXA, LYA INTO WLXA1,WLYA1
   FROM SIMBOLCONMU
  WHERE NEDAD = (I+1) AND CTABLA = pctabla AND PINTTEC = INTERES;
 WCXA := (WLXA - WLXA1) / POWER((1+INTERES),(I+1));
 WCYA := (WLYA - WLYA1) / POWER((1+INTERES),(I+1));
 WTPXA := WLXA1/WLXA;
 WTPYA := WLYA1/WLYA;
 update SIMBOLCONMU SET NX=WNX, NXA=WNXA, MX=WMX, NY=WNY, NYA=WNYA, MY=WMY, CXA=WCXA,
                       CYA=WCYA, TPXA=WTPXA, TPYA=WTPYA
  WHERE NEDAD = I AND CTABLA = pctabla AND PINTTEC = INTERES;
END LOOP;
COMMIT;
FOR I IN 1..112 LOOP
 select SUM(NX),SUM(MX),SUM(NY),SUM(MY)
   INTO WSX, WRX, WSY, WRY
   FROM SIMBOLCONMU
  WHERE NEDAD >= I AND CTABLA = pctabla AND PINTTEC = INTERES;
 update SIMBOLCONMU SET SX=WSX, RX=WRX, SY=WSY, RY=WRY
  WHERE NEDAD = I AND CTABLA = pctabla AND PINTTEC = INTERES;
 COMMIT;
END LOOP;
END P_GENSIMBOLO;

 
 

/

  GRANT EXECUTE ON "AXIS"."P_GENSIMBOLO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_GENSIMBOLO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_GENSIMBOLO" TO "PROGRAMADORESCSI";
