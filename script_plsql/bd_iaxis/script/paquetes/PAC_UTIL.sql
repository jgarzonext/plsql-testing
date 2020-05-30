--------------------------------------------------------
--  DDL for Package PAC_UTIL
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE PAC_UTIL AUTHID CURRENT_USER IS
    /******************************************************************************
      NOMBRE:       PAC_UTIL
      PROP�SITO:
      REVISIONES:

      Ver        Fecha        Autor             Descripci�n
      ---------  ----------  ---------------  ------------------------------------
       1.0       -            -               1. Creaci�n de package
       2.0       17/03/2009  RSC              2. An�lisis adaptaci�n productos indexados
       3.0       03/08/2019  JMJRR            3. IAXIS-4994 Se agrega funcion fu_split
   ******************************************************************************/
    TYPE t_array IS TABLE OF VARCHAR2(32767)
    INDEX BY BINARY_INTEGER;
   /**********************************************************************************************
    Validar que la condici� es a TRUE, aleshores NO �s un error, omple el codi i missatge d'error i fa un raise
    Par�metres entrada:
       pNoHayError : TRUE �s OK, FALSE si �s un error
       pCodError : Codi d'error a utilitzar si pHayError �s a FALSE
       oCodError : Codi a tornar si hi ha un error
       oMsgError : Text a tornar si hi ha un error
   **********************************************************************************************/
   FUNCTION validar(
      pnohayerror IN BOOLEAN,
      pcoderror IN NUMBER,
      ocoderror OUT NUMBER,
      omsgerror OUT VARCHAR2)
      RETURN BOOLEAN;

   /**********************************************************************************************
    Validar que el codi �s 0, sin�, �s el n�mero d'error
    Par�metres entrada:
       pCodError : 0 si OK, altrament el n�mero d'error
       oCodError : Codi a tornar si hi ha un error
       oMsgError : Text a tornar si hi ha un error
   **********************************************************************************************/
   FUNCTION validar(pcoderror IN NUMBER, ocoderror OUT NUMBER, omsgerror OUT VARCHAR2)
      RETURN BOOLEAN;

   /**********************************************************************************************
    Validar que la condici� es a TRUE, aleshores NO �s un error, omple el codi i missatge d'error i fa un raise
    Par�metres entrada:
       pNoHayError : TRUE �s OK, FALSE si �s un error
       pCodError : Codi d'error a utilitzar si pHayError �s a FALSE
       Pcidioma_user : Idioma de l'usuari
       oCodError : Codi a tornar si hi ha un error
       oMsgError : Text a tornar si hi ha un error
   **********************************************************************************************/
   FUNCTION validar(
      pnohayerror IN BOOLEAN,
      pcoderror IN NUMBER,
      pcidioma_user IN NUMBER,
      ocoderror OUT NUMBER,
      omsgerror OUT VARCHAR2)
      RETURN BOOLEAN;

   /**********************************************************************************************
    Validar que el codi �s 0, sin�, �s el n�mero d'error
    Par�metres entrada:
       pCodError : 0 si OK, altrament el n�mero d'error
       Pcidioma_user : Idioma de l'usuari
       oCodError : Codi a tornar si hi ha un error
       oMsgError : Text a tornar si hi ha un error
   **********************************************************************************************/
   FUNCTION validar(
      pcoderror IN NUMBER,
      pcidioma_user IN NUMBER,
      ocoderror OUT NUMBER,
      omsgerror OUT VARCHAR2)
      RETURN BOOLEAN;

   /***************************************************************************************
    Funci�n para realizar splits sobre una cadena.
    Params:
       PC$Chaine: Cadena sobre la que queremos realizar el split.
       PN$Pos: Token de la cadena que queremos extraer.
       PC$Sep: Separador de la cadena por el que queremos hacer SPLIT.
   ****************************************************************************************/
   FUNCTION splitt(
      pc$chaine IN VARCHAR2,
      pn$pos IN PLS_INTEGER,
      pc$sep IN VARCHAR2 DEFAULT ',')
      RETURN VARCHAR2;

   /***************************************************************************************
    Obtener la ruta y el nombre de archivo a partir de una ruta entera.
    Params:
       ppath: Ruta de entrada.
       pruta: Ruta directorio.
       pfilename: Nombre del archivo.
   ****************************************************************************************/
   -- Bug 9031 - 17/03/2009 - RSC - An�lisis adaptaci�n productos indexados
   FUNCTION f_path_filename(ppath IN VARCHAR2, pruta OUT VARCHAR2, pfilename OUT VARCHAR2)
      RETURN NUMBER;
    --ini IAXIS-4994
    /*****************************************************************************
    FUNCTION   : fu_split
    DESCRIPCION : Funcion que devuelve una tabla o array con cada uno de los 
                  elementos de una cadena de texto separados por un caracter delimitador
    param in : p_string_in : Cadena a separar
    param in : p_delim_in : Caracter delimitador
    param out : t_array : Tabla con cada elemento de la cadena recibida
    *****************************************************************************/
    FUNCTION fu_split(
      p_string_in     IN VARCHAR2, 
      p_delim_in      IN  VARCHAR2) 
    RETURN t_array;
    --fin IAXIS-4994
END;
 
 

/