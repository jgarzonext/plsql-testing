--------------------------------------------------------
--  DDL for Package PAC_SIN_TRAMITE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_SIN_TRAMITE" AUTHID CURRENT_USER IS
   /******************************************************************************
   NOMBRE:     PAC_SIN_TRAMITE
   PROP�SITO:  Funciones para gestionar los tr�mites de siniestros

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        17/02/2009  JMC              1. Creaci�n del package. Bug 18363 LCOL710 Funciones grabar tr�mite.
   2.0        16/05/2012  JMF              0022099: MDP_S001-SIN - Tr�mite de asistencia
   3.0        14/06/2012  JMF              0022108 MDP_S001-SIN - Movimiento de tr�mites
   *******************************************************************************/

   /*************************************************************************
      FUNCTION F_Ins_tramite
         Funci�n que inserta o modifica en la tabla SIN_TRAMITE
         param in     pnsinies   : n�mero del sinistre
         param in     pctramte   : codi tr�mit
         param in out pntramte   : numero tr�mit sinistre
         return              : 0 -> Tot correcte
                               1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_ins_tramite(
      pnsinies IN sin_siniestro.nsinies%TYPE,
      pctramte IN NUMBER,
      pntramte IN OUT NUMBER)
      RETURN NUMBER;

   /*************************************************************************
      FUNCTION F_Ins_tramite_mov
         Inserta o modifica la tabla SIN_TRAMITE_MOV con los par�metros pasados.
         param in pnsinies   : n�mero del sinistre
         param in pntramte   : numero tr�mit sinistre
         param in pcesttte   : codi estat tr�mit
         param in pCCAUEST   : Causa cambio de estado
         param in pCUNITRA   : C�digo de unidad de tramitaci�n
         param in pCTRAMITAD : C�digo de tramitador
         param in pFESTTRA   : Fecha estado tr�mite
         param in out pnmovtte  : n�mero moviment tr�mit
         return              : 0 -> Tot correcte
                               1 -> S'ha produit un error
      -- Bug 0022108 - 14/06/2012 - JMF
   *************************************************************************/
   FUNCTION f_ins_tramite_mov(
      pnsinies IN sin_siniestro.nsinies%TYPE,
      pntramte IN NUMBER,
      pcesttte IN NUMBER,
      pccauest IN NUMBER,
      pcunitra IN VARCHAR2,
      pctramitad IN VARCHAR2,
      pfesttra IN DATE,
      pnmovtte IN OUT NUMBER)
      RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_get_tramite_mov
         Funci�n que construye la select para obtener los datos necesarios para
         asignar los valores del objeto OB_IAX_TRAMITE_MOV.
         param in pnsinies   : n�mero del sinistre
         param in pntramte   : numero tr�mit sinistre
         param in pnmovtte   : n�mero movimiento de tr�mite
         param in pcidioma   : c�digo idioma
         param out psquery   : select
         return              : 0 -> Tot correcte
                               1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_get_tramite_mov(
      pnsinies IN sin_siniestro.nsinies%TYPE,
      pntramte IN NUMBER,
      pnmovtte IN NUMBER,
      pcidioma IN NUMBER,
      psquery OUT VARCHAR2)
      RETURN NUMBER;

   /*************************************************************************
      FUNCTION f_get_tramite
         Funci�n que construye la select para obtener los datos necesarios para
         asignar los valores del objeto OB_IAX_TRAMITE.
         param in pnsinies   : n�mero del sinistre
         param in pntramte   : numero tr�mit sinistre
         param in pcidioma   : c�digo idioma
         param out psquery   : select
         return              : 0 -> Tot correcte
                               1 -> S'ha produit un error
   *************************************************************************/
   FUNCTION f_get_tramite(
      pnsinies IN sin_siniestro.nsinies%TYPE,
      pntramte IN NUMBER,
      pcidioma IN NUMBER,
      psquery OUT VARCHAR2)
      RETURN NUMBER;

   -- BUG 21546_108727- 04/02/2012 - JLTS - Se cambia la utilizacion del objeto por parametros simples
   FUNCTION f_ins_tramite_recob(
      pnsinies IN sin_siniestro.nsinies%TYPE,
      pntramte IN sin_tramite_recobro.ntramte%TYPE,
      pfprescrip IN sin_tramite_recobro.fprescrip%TYPE,
      pireclamt IN sin_tramite_recobro.ireclamt%TYPE,
      pirecobt IN sin_tramite_recobro.irecobt%TYPE,
      piconcurr IN sin_tramite_recobro.iconcurr%TYPE,
      pircivil IN sin_tramite_recobro.ircivil%TYPE,
      piassegur IN sin_tramite_recobro.iassegur%TYPE,
      pcresrecob IN sin_tramite_recobro.cresrecob%TYPE,
      pcdestim IN sin_tramite_recobro.cdestim%TYPE,
      pnrefges IN sin_tramite_recobro.nrefges%TYPE,
      pctiprec IN sin_tramite_recobro.ctiprec%TYPE)
      RETURN NUMBER;

   -- BUG 21546_108727- 04/02/2012 - JLTS - Se cambia la utilizacion del objeto por parametros simples
   FUNCTION f_ins_tramite_lesiones(
      pnsinies IN sin_siniestro.nsinies%TYPE,
      pntramte IN sin_tramite_lesiones.ntramte%TYPE,
      pnlesiones IN sin_tramite_lesiones.nlesiones%TYPE,
      pnmuertos IN sin_tramite_lesiones.nmuertos%TYPE,
      pagravantes IN sin_tramite_lesiones.agravantes%TYPE,
      pcgradoresp IN sin_tramite_lesiones.cgradoresp%TYPE,
      pctiplesiones IN sin_tramite_lesiones.ctiplesiones%TYPE,
      pctiphos IN sin_tramite_lesiones.ctiphos%TYPE)
      RETURN NUMBER;

   /*************************************************************************
      FUNCTION ff_hay_tramites
         Comprueba si se han parametrizado los tramites para el producto del siniestro
         param in pnsinies   : n�mero de siniestro
         return              : 0 -> No
                               1 -> Si
   *************************************************************************/
   FUNCTION ff_hay_tramites(pnsinies IN sin_siniestro.nsinies%TYPE)
      RETURN NUMBER;

   /*************************************************************************
      FUNCTION
         Crea o actualiza en bbdd, informaci�n del tramite asistencia.
         param in pnsinies   : codi del sinistre
         param in pntramte   : numero tr�mit sinistre
         param in trefext    : Referencia Externa
         param in cciaasis   : Compa��a de asistencia VF=XXX
         param out psindup   : Numero siniestro con referencia duplicada
         return              : Error (0 -> Tot correcte, codi error)
    -- Bug 0022099 - 16/05/2012 - JMF
   *************************************************************************/
   FUNCTION f_ins_tramite_asistencia(
      pnsinies IN VARCHAR2,
      pntramte IN NUMBER,
      ptrefext IN VARCHAR2,
      pcciaasis IN NUMBER,
      psindup OUT VARCHAR2)
      RETURN NUMBER;

   /***********************************************************************
      Cambia el estado de una tramite
      param in pnsinies : N�mero siniestro
      param in pntramte : N�mero tramitaci�n
      param in CESTTTE : C�digo estado
      return            : 0 -> Tot correcte
                          1 -> S'ha produit un error
      31/07/2009   XVM                 Sinistres.  Bug: 8820
      Bug 12298 - 15/12/2009 - AMC
   ***********************************************************************/
   FUNCTION f_estado_tramite(pnsinies IN VARCHAR2, pntramte IN NUMBER, pcesttte IN NUMBER)
      RETURN NUMBER;

      /*************************************************************************
      FUNCTION
         Crea o actualiza en bbdd, informaci�n del tramite asistencia.
         param in  pnsinies  : codi del sinistre
         param out pntramit  : Numero de tramitaci
         return              : Error (0 -> Tot correcte, codi error)

      Bug 22325/115249- 07/06/2012 - AMC
   *************************************************************************/
   FUNCTION f_get_tramite9999(pnsinies IN NUMBER, pntramit OUT NUMBER)
      RETURN NUMBER;

    /*************************************************************************
        FUNCTION f_asigna_tramitaciones
        Crea un movimiento de tramitacion cuando se crea un movimiento de tramite
        param in pnsinies    : numero siniestro
        param in pntramte    : numero tramite
        param in pnmovimi    : ultimo movimiento
        param in pcunitra    : codigo de la unidad de tramitacion
        param in pctramitad  : codigo del tramitador
        return               : 0 - OK , SQLERRM - KO
   *************************************************************************/
   FUNCTION f_asigna_tramitaciones(
      pnsinies IN VARCHAR2,
      pntramte IN NUMBER,
      pnmovimi IN NUMBER,
      pcunitra IN VARCHAR2,
      pctramitad IN VARCHAR2)
      RETURN NUMBER;
END pac_sin_tramite;

/

  GRANT EXECUTE ON "AXIS"."PAC_SIN_TRAMITE" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_SIN_TRAMITE" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_SIN_TRAMITE" TO "PROGRAMADORESCSI";
