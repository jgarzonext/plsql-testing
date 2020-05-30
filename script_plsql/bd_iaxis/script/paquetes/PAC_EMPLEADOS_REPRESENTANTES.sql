--------------------------------------------------------
--  DDL for Package PAC_EMPLEADOS_REPRESENTANTES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_EMPLEADOS_REPRESENTANTES" IS
/******************************************************************************
   NOMBRE:       PAC_EMPLEADOS_REPRESENTANTES
   PROP�SITO:    Funciones para gestionar empleados y representantes

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        23/10/2012  MDS              1. Creaci�n del package. 0022266: LCOL_P001 - PER - Mantenimiento de promotores, gestores, empleados, coordinador
   2.0        04/10/2013  JDS              2. 0028395: LCOL - PER - No aparece el campo �Compa��a� al seleccionar la opci�n �Externo�

******************************************************************************/

   /*************************************************************************
     Funci�n que obtiene la lista de empleados
     ...
     param out psquery   : Select
     return              : 0.- OK, 1.- KO
    *************************************************************************/
   FUNCTION f_get_empleados(
      psperson IN NUMBER,
      pctipo IN NUMBER,
      pcsubtipo IN NUMBER,
      pccargo IN NUMBER,
      pccanal IN NUMBER,
      pcidioma IN NUMBER,
      psquery OUT VARCHAR2)
      RETURN NUMBER;

   /*************************************************************************
     Funci�n que inserta/modifica un registro de empleado
     ...
     return              : 0.- OK, 1.- KO
    *************************************************************************/
   FUNCTION f_set_empleado(
      psperson IN NUMBER,
      pctipo IN NUMBER,
      pcsubtipo IN NUMBER,
      pcargo IN NUMBER,
      pccanal IN NUMBER,
      errores IN OUT t_ob_error)
      RETURN NUMBER;

   /*************************************************************************
     Funci�n que borra un registro de empleado
     ...
     return              : 0.- OK, 1.- KO
    *************************************************************************/
   FUNCTION f_del_empleado(psperson IN NUMBER, pcidioma IN NUMBER, errores IN OUT t_ob_error)
      RETURN NUMBER;

   /*************************************************************************
     Funci�n que obtiene la lista de representantes
     ...
     param out psquery   : Select
     return              : 0.- OK, 1.- KO
    *************************************************************************/
   FUNCTION f_get_representantes(
      psperson IN NUMBER,
      pctipo IN NUMBER,
      pcsubtipo IN NUMBER,
      ptcompania IN VARCHAR2,
      ptpuntoventa IN VARCHAR2,
      pcidioma IN NUMBER,
      psquery OUT VARCHAR2)
      RETURN NUMBER;

   /*************************************************************************
     Funci�n que inserta/modifica un registro de representante
     ...
     return              : 0.- OK, 1.- KO
    *************************************************************************/
   FUNCTION f_set_representante(
      psperson IN NUMBER,
      pctipo IN NUMBER,
      pcsubtipo IN NUMBER,
      ptcompania IN VARCHAR2,
      ptpuntoventa IN VARCHAR2,
      pspercoord IN NUMBER,
      errores IN OUT t_ob_error)
      RETURN NUMBER;

   /*************************************************************************
     Funci�n que borra un registro de representante
     ...
     return              : 0.- OK, 1.- KO
    *************************************************************************/
   FUNCTION f_del_representante(
      psperson IN NUMBER,
      pcidioma IN NUMBER,
      errores IN OUT t_ob_error)
      RETURN NUMBER;
END pac_empleados_representantes;

/

  GRANT EXECUTE ON "AXIS"."PAC_EMPLEADOS_REPRESENTANTES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_EMPLEADOS_REPRESENTANTES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_EMPLEADOS_REPRESENTANTES" TO "PROGRAMADORESCSI";
