--------------------------------------------------------
--  DDL for Package PAC_MNTCAMPANYAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_MNTCAMPANYAS" IS
/******************************************************************************
    NOMBRE:      PAC_MNTCAMPANYAS
    PROP�SITO:   Funciones para la gesti�n de campa�as

    REVISIONES:
    Ver        Fecha        Autor             Descripci�n
    ---------  ----------  ---------  ------------------------------------
    1.0        08/05/2013   AMC       1. Creaci�n del package. Bug 26615/143210
******************************************************************************/

   /**********************************************************************************************
      Funci�n para recuperar campa�as
      param in pccampanya: codigo campa�a
      param in ptcampanya: descripci�n de campa�a

      Bug 26615/143210 - 08/05/2013 - AMC
   ************************************************************************************************/
   FUNCTION f_get_campanyas(
      pccampanya IN NUMBER,   -- codigo campa�a
      ptcampanya IN VARCHAR2,   -- Deripci�n de la campa�a
      pcidioma IN NUMBER)
      RETURN VARCHAR2;

   /**********************************************************************************************
        Funci�n para recuperar campanyas
        param in pccampanya:    codigo campa�a
        param in ptodo: Recupera todos los idiomas o solo los informados

        Bug 26615/143210 - 08/05/2013 - AMC
     ************************************************************************************************/
   FUNCTION f_get_campanya(pccampanya IN NUMBER,   -- codigo campa�a
                                                ptodo IN NUMBER)
      RETURN VARCHAR2;

    /**********************************************************************************************
      Funci�n para guardar campanyas
      param in pccampanya:    codigo campa�a
      param in ptcampanya:    descripci�n de campa�a
      param in pcidioma: c�digo de idioma

      Bug 26615/143210 - 08/05/2013 - AMC
   ************************************************************************************************/
   FUNCTION f_set_campanya(
      pccampanya IN NUMBER,   -- codigo campa�a
      ptcampanya IN VARCHAR2,   -- Deripci�n de la campa�a
      pcidioma IN NUMBER)
      RETURN NUMBER;

     /**********************************************************************************************
       Funci�n para borrar campanyas
       param in pccampanya:    codigo campa�a

       Bug 26615/143210 - 08/05/2013 - AMC
   ************************************************************************************************/
   FUNCTION f_del_campanya(pccampanya IN NUMBER   -- codigo campa�a
                                               )
      RETURN NUMBER;

     /**********************************************************************************************
       Funci�n para borrar una descriccion de la campanya
       param in pccampanya:    codigo campa�a
       param in pcidioma: c�digo de idioma

       Bug 26615/143210 - 08/05/2013 - AMC
   ************************************************************************************************/
   FUNCTION f_del_campanya_lin(pccampanya IN NUMBER,   -- codigo campa�a
                                                    pcidioma IN NUMBER)
      RETURN NUMBER;
END pac_mntcampanyas;

/

  GRANT EXECUTE ON "AXIS"."PAC_MNTCAMPANYAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MNTCAMPANYAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MNTCAMPANYAS" TO "PROGRAMADORESCSI";
