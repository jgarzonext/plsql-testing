--------------------------------------------------------
--  DDL for Procedure P_TOPES_SIMPLIFICADO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_TOPES_SIMPLIFICADO" 

IS
  v_idioma   NUMBER:=nvl(pac_contexto.f_contextovalorparametro('IAX_IDIOMA'), 2);
  v_import   liquidaage.iimporte%TYPE;
  v_valormax eco_tipocambio.itasa%TYPE;
  v_asunto   VARCHAR2(1000);
  v_retemail NUMBER;

  CURSOR c_age IS
    (SELECT age.cagente
       FROM agentes age,per_regimenfiscal reg
      WHERE age.sperson=reg.sperson AND
            age.cactivo=1 AND
            reg.cregfiscal=1);

  CURSOR c_cor IS
    (SELECT dc.direccion
       FROM mensajes_correo ms,destinatarios_correo dc
      WHERE ctipo=20 AND
            ms.scorreo=dc.scorreo);

BEGIN

     SELECT itasa
       INTO v_valormax
      from ECO_TIPOCAMBIO
     WHERE fcambio=(SELECT max(fcambio)
                      from ECO_TIPOCAMBIO
                     where cmonori='TPS')
       AND cmonori='TPS';



    FOR r_age IN c_age LOOP
        BEGIN

       select  SUM(l.iprinet)
       INTO v_import
 from liquidalin l,
      liquidacab c
where c.nliqmen = l.nliqmen
  and c.cagente = l.cagente
  and C.CEMPRES = L.CEMPRES
  and C.CAGENTE=r_age.cagente
  and  TO_CHAR(C.FLIQUID, 'yyyy')=TO_CHAR(F_SYSDATE, 'yyyy')
  and c.cestado = 1;



            IF v_import>v_valormax THEN
              UPDATE agentes
                 SET cactivo=6
               WHERE cagente=r_age.cagente;

              FOR r_cor IN c_cor LOOP
                  IF r_cor.direccion IS NOT NULL THEN
                    v_asunto:='Notificacion cambio de regimen agente: '
                              ||r_age.cagente;

                    v_retemail:=pac_md_informes.f_enviar_mail(NULL, r_cor.direccion, NULL, NULL, v_asunto, v_asunto, NULL, NULL, NULL);
                  END IF;
              END LOOP;
            END IF;

        EXCEPTION
            WHEN OTHERS THEN
              p_int_error(f_axis_literales(9900986, v_idioma), 'Proceso históricos LOG - '
                                                               || f_axis_literales(9901093, v_idioma), 2, SQLERRM);
        END;
    END LOOP;

    COMMIT;
/*--------------------------------------------------------------------------------*/
EXCEPTION
  WHEN OTHERS THEN
             p_int_error(f_axis_literales(9900986, v_idioma), 'Proceso históricos LOG - '
                                                              || f_axis_literales(9901093, v_idioma), 2, SQLERRM);

END p_topes_simplificado;

/

  GRANT EXECUTE ON "AXIS"."P_TOPES_SIMPLIFICADO" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_TOPES_SIMPLIFICADO" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_TOPES_SIMPLIFICADO" TO "PROGRAMADORESCSI";
