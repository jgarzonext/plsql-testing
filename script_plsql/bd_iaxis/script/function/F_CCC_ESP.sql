--------------------------------------------------------
--  DDL for Function F_CCC_ESP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "AXIS"."F_CCC_ESP" (pncuenta IN NUMBER,
            pncontrol IN OUT NUMBER,pnsalida IN OUT NUMBER)
RETURN NUMBER authid current_user IS
/**************************************************************************
    F_CCC        Valida una cuenta bancaria y devuelve como par�metros
            el n�mero incluyendo los d�gitos de control.
            Devuelve como valor el c�digo del error. 0 si est� bien.
    ALLIBMFM
    f_ccc pasa a ser f_ccc_esp validaci�n de cuentas espa�olas
    est� funci�n ser� llamada por f_ccc.
**************************************************************************/
    codigo    VARCHAR2(30);
    banco        VARCHAR2(4);
    ofici        VARCHAR2(4);
    contr        VARCHAR2(2);
    cuent        VARCHAR2(10);
    longi        NUMBER;
    total        NUMBER;
    resto        NUMBER;
    digi1        NUMBER;
    digi2        NUMBER;
BEGIN
    codigo:=TO_CHAR(pncuenta);
    longi:=LENGTH(codigo);
    IF longi>20 THEN
        RETURN 102492;  -- Error n�mero demasiado largo
    ELSE
        codigo:=LPAD(codigo,20,'0');    -- Rellena de 0's hasta 20
       -- Troceamos el c�digo de cuenta
        banco:=SUBSTR(codigo,1,4);
        ofici:=SUBSTR(codigo,5,4);
        contr:=SUBSTR(codigo,9,2);
        cuent:=SUBSTR(codigo,11,10);

       -- C�lculo del primer d�gito de control
        total := TO_NUMBER(SUBSTR(banco,1,1))*4 +
                TO_NUMBER(SUBSTR(banco,2,1))*8 +
                TO_NUMBER(SUBSTR(banco,3,1))*5 +
                TO_NUMBER(SUBSTR(banco,4,1))*10 +
                TO_NUMBER(SUBSTR(ofici,1,1))*9 +
                TO_NUMBER(SUBSTR(ofici,2,1))*7 +
                TO_NUMBER(SUBSTR(ofici,3,1))*3 +
                TO_NUMBER(SUBSTR(ofici,4,1))*6;
        resto := MOD(total,11);
        digi1 := 11;
        LOOP
        EXIT WHEN digi1 < 10;
            digi1 := 11 - resto;
            resto := digi1;
        END LOOP;

       -- C�lculo del segundo d�gito de control
        total := TO_NUMBER(SUBSTR(cuent,1,1))*1 +
                TO_NUMBER(SUBSTR(cuent,2,1))*2 +
                TO_NUMBER(SUBSTR(cuent,3,1))*4 +
                TO_NUMBER(SUBSTR(cuent,4,1))*8 +
                TO_NUMBER(SUBSTR(cuent,5,1))*5 +
                TO_NUMBER(SUBSTR(cuent,6,1))*10 +
                TO_NUMBER(SUBSTR(cuent,7,1))*9+
                TO_NUMBER(SUBSTR(cuent,8,1))*7 +
                TO_NUMBER(SUBSTR(cuent,9,1))*3 +
                TO_NUMBER(SUBSTR(cuent,10,1))*6;
        resto := MOD(total,11);
        digi2:=11;
        LOOP
        EXIT WHEN digi2 < 10;
            digi2 := 11 - resto;
            resto := digi2;
        END LOOP;

        -- C�digo de control
        pncontrol:=TO_NUMBER(digi1||digi2);
        -- Concatenamos la cadena completa de d�gitos
        pnsalida:=TO_NUMBER(banco||ofici||digi1||digi2||cuent);
        IF contr<>pncontrol THEN
            IF contr=0 THEN
                RETURN 102493; -- Error suave (Introduza los d�gitos)
            ELSE
                RETURN 102494; -- Error grave (C�digo cta. err�neo)
            END IF;
        ELSE
            RETURN 0;
        END IF;
    END IF;
END;
 
 

/

  GRANT EXECUTE ON "AXIS"."F_CCC_ESP" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."F_CCC_ESP" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."F_CCC_ESP" TO "PROGRAMADORESCSI";
