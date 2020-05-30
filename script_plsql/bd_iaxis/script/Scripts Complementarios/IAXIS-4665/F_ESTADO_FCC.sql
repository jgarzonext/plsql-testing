create or replace FUNCTION "F_ESTADO_FCC" ( psperson   IN NUMBER ) RETURN NUMBER IS
    estado    NUMBER;
    estado1   NUMBER;
    estado2   NUMBER;
    diff number;
BEGIN
    SELECT
        COUNT(*)
    INTO
        estado
    FROM
        per_parpersonas
    WHERE
            sperson = psperson
        AND
            cparam = 'EXEN_CIRCULAR';

    IF
        estado = 1
    THEN
        SELECT
            COUNT(*)
        INTO
            estado1
        FROM
            tomadores c,
            seguros s,
            per_parpersonas p,
            per_detper pd
        WHERE
                c.sperson = psperson
            AND
                s.sseguro = c.sseguro
            AND
                c.sperson = p.sperson
            AND
                pd.sperson = p.sperson
            AND
                pd.cagente = p.cagente
            AND
                p.cparam = 'EXEN_CIRCULAR';

        IF
            estado1 > 0
        THEN
            RETURN 0;
        ELSE
            RETURN 4;
        END IF;
    ELSE
        SELECT
            COUNT(*)
        INTO
            estado2
        FROM
            datsarlatf
        WHERE
            sperson = psperson;

        IF
            estado2 > 0
        THEN
            SELECT
                round(
                    trunc(SYSDATE) - fradica,
                    2
                )
            INTO
                diff
            FROM
                datsarlatf
            WHERE
                sperson = psperson
            and falta = (SELECT MAX(FALTA)  FROM
                datsarlatf
            WHERE sperson=psperson);

            IF
                NVL(diff,0) < NVL(365,0)
            THEN
                RETURN 1;
            ELSE
                RETURN 2;
            END IF;
        ELSE
            RETURN 3;
        END IF;

    END IF;

END f_estado_fcc;