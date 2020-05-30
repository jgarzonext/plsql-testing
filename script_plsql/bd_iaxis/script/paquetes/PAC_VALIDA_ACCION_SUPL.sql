--------------------------------------------------------
--  DDL for Package PAC_VALIDA_ACCION_SUPL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_VALIDA_ACCION_SUPL" AUTHID CURRENT_USER IS
    /******************************************************************************
      NOMBRE:      PAC_VALIDA_ACCION_SUPL
      PROP�SITO:   Package con proposito de negocio para introducir funciones de
                   validaci�n de lanzamiento del suplemento diferido. Estas
                   funciones de validaci�n pretenden ser genericas para cada movimiento
                   de suplemento y se parametriza su llamada en la tabla
                   PDS_SUPL_DIF_CONFIG.FVALFUN

      REVISIONES:
      Ver        Fecha        Autor             Descripci�n
      ---------  ----------  ---------------  ------------------------------------
      1.0        27/04/2009     RSC              1. Creaci�n del package.
                                                    Bug 9905 - Suplemento de cambio de forma de pago diferido
      2.0        06/11/2012     MDS              2. 0024278: LCOL_T010 - Suplementos diferidos - Cartera - colectivos
   ******************************************************************************/

   /***********************************************************************
      Realiza la validaci�n de que la forma de pago no est� ya modificada al
      valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realiza el suplemento diferido de cambio de forma de pago.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento,
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/-- Bug 9905 - 27/04/2009 - RSC - Suplemento de cambio de forma de pago diferido
   FUNCTION f_valida_cforpag(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER;

   -- Fin Bug 9905

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de garant�as no est� ya
      modificada al valor que pretende modificar el diferimiento, en cuyo
      caso, no se deber� realiza el suplemento diferido de modificaci�n de
      garant�as.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento,
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
    -- Bug 9905 - 27/04/2009 - RSC - Suplemento de cambio de forma de pago diferido
   FUNCTION f_valida_garantias(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER;

   -- Fin Bug 9905

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de revalorizaci�n no est�
      ya modificada al valor que pretende modificar el diferimiento, en cuyo
      caso, no se deber� realiza el suplemento diferido de modificaci�n de
      revalorizaci�n.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento,
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
    -- Bug 9905 - 27/04/2009 - RSC - Suplemento de cambio de forma de pago diferido
   FUNCTION f_valida_revali(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER;

   -- Fin Bug 9905

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de agente no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realiza el suplemento diferido de modificaci�n de agente.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento,
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
    -- Bug 9905 - 27/04/2009 - RSC - Suplemento de cambio de forma de pago diferido
   FUNCTION f_valida_agente(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER;

-- Fin Bug 9905

   -- Ini Bug 24278 - MDS - 07/11/2012
   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de domicilio del tomador no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de modificaci�n de domicilio del tomador.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
   FUNCTION f_valida_cdomici(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER;

   /***********************************************************************
      Realiza la validaci�n de que el cambio de revalorizaci�n no est� ya hecho
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de cambio de revalorizaci�n.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
   FUNCTION f_valida_revaloriza(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER;

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n del porcentaje de participaci�n no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de modificaci�n del porcentaje de participaci�n.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
   FUNCTION f_valida_modifcocorretaje(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER;

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de garant�as no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de modificaci�n de garant�as.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
   FUNCTION f_valida_modifgarantias(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER;

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de cl�usulas no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de modificaci�n de garant�as.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
   FUNCTION f_valida_modifclausulas(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER;

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de preguntas de p�liza no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de modificaci�n de preguntas de p�liza.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
   FUNCTION f_valida_modifpregunpol(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER;

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de preguntas de riesgo no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de modificaci�n de preguntas de p�liza.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
   FUNCTION f_valida_modifpregunries(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER;

-- Fin Bug 24278 - MDS - 07/11/2012

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de oficina no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de modificaci�n de preguntas de p�liza.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
   FUNCTION f_valida_modifoficina(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER;

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de forma de pago no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de modificaci�n de forma de pago de p�liza.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
   FUNCTION f_valida_modifcforpag(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER;

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de la fecha de efecto no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de modificaci�n de fecha de efecto de p�liza.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
   FUNCTION f_valida_modiffefecto(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER;

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de la comision no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de modificaci�n de comision de p�liza.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
   ***********************************************************************/
   FUNCTION f_valida_modifcomisi(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER;

   /***********************************************************************
       Realiza la validaci�n de que la modificaci�n del retorno no est� ya modificada
       al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
       realizar el suplemento diferido de modificaci�n del retorno de p�liza.

       param in psseguro  : Identificador de seguro.
       param in pfecha    : Fecha de suplemento diferido.
       param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
       return             : Number 1 --> SI debe realizar el suplemento
                                   0 --> NO debe realizar el suplemento
                                  -1 --> Error
    ***********************************************************************/
   FUNCTION f_valida_modifretorno(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER;

   /***********************************************************************
       Realiza la validaci�n de que la modificaci�n del coaseguro no est� ya modificada
       al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
       realizar el suplemento diferido de modificaci�n del coaseguro de p�liza.

       param in psseguro  : Identificador de seguro.
       param in pfecha    : Fecha de suplemento diferido.
       param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
       return             : Number 1 --> SI debe realizar el suplemento
                                   0 --> NO debe realizar el suplemento
                                  -1 --> Error
    ***********************************************************************/
   FUNCTION f_valida_modifcoacua(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER;

   /***********************************************************************
      Realiza la validaci�n de que la modificaci�n de prorroga vigencia no est� ya modificada
      al valor que pretende modificar el diferimiento, en cuyo caso, no se deber�
      realizar el suplemento diferido de prorroga vigencia.

      param in psseguro  : Identificador de seguro.
      param in pfecha    : Fecha de suplemento diferido.
      param in pcmotmov  : Identificador de motivo de movimiento de suplemento.
      return             : Number 1 --> SI debe realizar el suplemento
                                  0 --> NO debe realizar el suplemento
                                 -1 --> Error
      BUG 0026070 - 20/02/2013 - JMF
   ***********************************************************************/
   FUNCTION f_prorroga_vigencia(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER;

   FUNCTION f_valida_alta_garantias(psseguro IN NUMBER, pfecha IN DATE, pcmotmov IN NUMBER)
      RETURN NUMBER;
END pac_valida_accion_supl;

/

  GRANT EXECUTE ON "AXIS"."PAC_VALIDA_ACCION_SUPL" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_VALIDA_ACCION_SUPL" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_VALIDA_ACCION_SUPL" TO "PROGRAMADORESCSI";
