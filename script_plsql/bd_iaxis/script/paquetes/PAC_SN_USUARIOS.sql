--------------------------------------------------------
--  DDL for Package PAC_SN_USUARIOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_SN_USUARIOS" AUTHID CURRENT_USER
/*
 * Autor:
 *   JBP8301 ('Sa Nostra' Assegurances)
 * Data:
 *   15 de maig 2007
 * Descripci�:
 *   Funcions i procediments relacionats amb la gesti� d'usuaris de Sa Nostra.
 */
IS
--*----
-- Proc�s: Procediment que llegeix el fitxer d'usuaris de sa nostra volcat 
--         di�riament. Nom�s es processen els usuaris d'oficines. Els usuaris
--         que no existeixen al fitxer es donen de baixa a la taula usuarios.
--         Els usuaris que es llegeixen del fitxer per� no hi s�n a la taula
--         es donen d'alta i els que estaven donats de baixa s'actualitzen.
--*----
   PROCEDURE p_ges_usuarios_batch (
      pcempres   IN       NUMBER,                        /* Codi d'empresa */
      pmaxbajas   IN       NUMBER,
                                 /* M�xim de baixes que es poden processar */
      pnomfich   IN       VARCHAR2,
                                                          /* Nom de fitxer */
                                       
      pretcode    OUT      NUMBER,                 /* Retorna codi d'error */
      psproces   IN OUT   NUMBER      /* Si �s NULL s'inicia un nou proc�s */
   );
END Pac_Sn_Usuarios; 
 
 

/

  GRANT EXECUTE ON "AXIS"."PAC_SN_USUARIOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_SN_USUARIOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_SN_USUARIOS" TO "PROGRAMADORESCSI";
