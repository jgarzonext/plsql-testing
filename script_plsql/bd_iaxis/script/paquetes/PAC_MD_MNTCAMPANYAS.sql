--------------------------------------------------------
--  DDL for Package PAC_MD_MNTCAMPANYAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_MD_MNTCAMPANYAS" IS
/******************************************************************************
    NOMBRE:      PAC_MD_MNTCAMPANYAS
    PROP�SITO:   Funciones para la gesti�n de campa�as

    REVISIONES:
    Ver        Fecha        Autor             Descripci�n
    ---------  ----------  ---------  ------------------------------------
    1.0        08/05/2013   AMC       1. Creaci�n del package. Bug 26615/143210
******************************************************************************/

   /**********************************************************************************************
      Funci�n para recuperar campa�as
      param in pccampanya:    codigo campa�a
      param in ptcampanya:    descripci�n de campa�a
      param out campanyas:  t_iax_ campanyas,
      param out mensajes:     mensajes informativos


      Bug 26615/143210 - 08/05/2013 - AMC
   ************************************************************************************************/
   FUNCTION f_get_campanyas(
      pccampanya IN NUMBER,   -- codigo campa�a
      ptcampanya IN VARCHAR2,   -- Deripci�n de la campa�a
      pcampanyas OUT t_iax_campanyas,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

    /**********************************************************************************************
      Funci�n para recuperar una campanya
      param in pccampanya:    codigo campa�a
      param in ptodo:         Recupera todos los idiomas o solo los informados
      param out campanyas:     t_iax_ campanyas,
      param out mensajes:        mensajes informativos


      Bug 26615/143210 - 08/05/2013 - AMC
   ************************************************************************************************/
   FUNCTION f_get_campanya(
      pccampanya IN NUMBER,   -- codigo campa�a
      ptodo IN NUMBER,
      pcampanya OUT t_iax_campanyas,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

/**********************************************************************************************
      Funci�n para recuperar campa�as
      param in pccampanya:    codigo campa�a
      param in ptcampanya:    descripci�n de campa�a
      param in pcidioma: c�digo de idioma
      param out mensajes:        mensajes informativos


      Bug 26615/143210 - 08/05/2013 - AMC
   ************************************************************************************************/
   FUNCTION f_set_campanyas(
      pccampanya IN NUMBER,   -- codigo campa�a
      ptcampanya IN VARCHAR2,   -- Deripci�n de la campa�a
      pcidioma IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

   /**********************************************************************************************
      Funci�n para borrar campanyas
      param in pccampanya:   codigo campa�a
      param out mensajes:    mensajes informativos

      Bug 26615/143210 - 08/05/2013 - AMC
   ************************************************************************************************/
   FUNCTION f_del_campanya(
      pccampanya IN NUMBER,   -- codigo campa�a
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;

    /**********************************************************************************************
      Funci�n para borrar una descriccion de la campanya
      param in pccampanya:   codigo campa�a
      param in pcidioma: c�digo de idioma
      param out mensajes:    mensajes informativos

      Bug 26615/143210 - 08/05/2013 - AMC
   ************************************************************************************************/
   FUNCTION f_del_campanya_lin(
      pccampanya IN NUMBER,   -- codigo campa�a
      pcidioma IN NUMBER,
      mensajes IN OUT t_iax_mensajes)
      RETURN NUMBER;
END pac_md_mntcampanyas;

/

  GRANT EXECUTE ON "AXIS"."PAC_MD_MNTCAMPANYAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_MD_MNTCAMPANYAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_MD_MNTCAMPANYAS" TO "PROGRAMADORESCSI";
