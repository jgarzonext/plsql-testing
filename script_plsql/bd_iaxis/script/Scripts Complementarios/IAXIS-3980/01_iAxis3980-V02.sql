DECLARE
    --Anterior productos de polizas cumplimiento 80001,80002,80003,80004,80005,80006,80012 cidcfg = 240239
    --Nuevo productos 80001,80002,80003,80004,80005,80006,80012 cidcfg = 239802 es igual que para productos de polizas RC
    VCIDCFG NUMBER := 239802;
BEGIN
    FOR C IN (SELECT * FROM cfg_form where cform like '%AXISCTR207%' and sproduc IN (80001,80002,80003,80004,80005,80006,80007,80008,80009,80010,80011,80012) and cmodo like '%239%')
    LOOP    
        UPDATE CFG_FORM
        SET    CIDCFG  = VCIDCFG
        WHERE  CEMPRES  = C.CEMPRES
        AND    CFORM    = C.CFORM
        AND    CMODO    = C.CMODO
        AND    CCFGFORM = C.CCFGFORM
        AND    SPRODUC  = C.SPRODUC; 
    END LOOP;
END;