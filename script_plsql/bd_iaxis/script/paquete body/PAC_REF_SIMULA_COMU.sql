--------------------------------------------------------
--  DDL for Package Body PAC_REF_SIMULA_COMU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "AXIS"."PAC_REF_SIMULA_COMU" 
AS

    FUNCTION f_valida_asegurados(psproduc IN NUMBER, psperson1 IN NUMBER, pfnacimi1 IN DATE, pcsexo1 IN NUMBER, pcpais1 IN NUMBER,
        psperson2 IN NUMBER, pfnacimi2 IN DATE, pcsexo2 IN NUMBER, pcpais2 IN NUMBER, pfefecto IN DATE,
    	pcdomici1 IN NUMBER, pcdomici2 IN NUMBER, pvaldomici IN NUMBER, pcidioma_user IN NUMBER DEFAULT F_IdiomaUser, oCODERROR OUT NUMBER, oMSGERROR OUT VARCHAR2)
    RETURN NUMBER IS
    /********************************************************************************************************************************
       Funci�n que valida si una persona cumple con las normes de subscripci�n definidas en el producto.
       Se llamar� desde la pantalla de asegurados una vez introducidos todos los datos. En este caso se validar�n m�s
       datos que en la lista: por ejmplo, que la direcci�ne st� informada
       Si se quiere validar s�lo el primer asegurado los par�metros del segundo asegurado llegar�n a null.
       Si se quiere validar s�lo el segundo asegurado tambi�n se deben informar los par�metros del primer aseguroado,
        puesto  que hay normas de suscripci�n que son conjuntas y dependen de la 'combinaci�n' de los dos
    	  asegurados (por ejemplo, la suma de edades, mezclar residentes y no residentes).

       El par�metro pvaldomici indicar� si se debe validar (1) o no (0) el domicilio.

       La funci�n retornar�:
          0.- Si todo es correcto
    	  NULL -- si hay error o no se cumple alguan de las validaciones. El c�digo de error y el texto se informar�n
    	                  en los par�metros oCODERROR y oMSGERROR
    *****************************************************************************************************************************/
       num_err            NUMBER;
       error			  EXCEPTION;
    BEGIN

       ---------------------------------------------------------------------------------------------------------
       -- Validamos que la persona no est� fallecida
       ---------------------------------------------------------------------------------------------------------
       IF psperson1 IS NOT NULL THEN
          num_err := pac_val_comu.f_valida_persona_fallecida(psperson1);
          IF num_err <> 0 THEN
             oCODERROR := num_err;
	         oMSGERROR := f_literal(num_err, pcidioma_user);
	         RAISE error;
          END IF;
       END IF;

       IF psperson2 IS NOT NULL THEN
          num_err := pac_val_comu.f_valida_persona_fallecida(psperson2);
          IF num_err <> 0 THEN
             oCODERROR := num_err;
	         oMSGERROR := f_literal(num_err, pcidioma_user);
	         RAISE error;
          END IF;
       END IF;

       ---------------------------------------------------------------------------------------------------------
       -- Validamos que tengan la direcci�n informada
       ---------------------------------------------------------------------------------------------------------
       IF pvaldomici = 1 THEN -- S� que se debe validar el domicilio
           IF pcdomici1 IS NULL OR (pfnacimi2 IS NOT NULL AND pcdomici2 IS NULL) THEN
              oCODERROR :=  101331; -- falta la direcci�n del asegurado
        	  oMSGERROR := f_literal(oCODERROR, pcidioma_user);
        	  RAISE ERROR;
           END IF;
       END IF;

       ---------------------------------------------------------------------------------------------------------------------------------------------
       -- Validaremos que la persona tiene informada la fecha de nacimiento, el sexo y el pais de residencia
       ---------------------------------------------------------------------------------------------------------------------------------------------
       IF pfnacimi1 IS NULL OR pcsexo1 IS NULL OR pcpais1 IS NULL THEN
          oCODERROR :=  120308; -- faltan datos del asegurado
    	  oMSGERROR := f_literal(oCODERROR, pcidioma_user);
    	  RAISE ERROR;
       END IF;

       IF (pfnacimi2 IS NOT NULL OR pcsexo2 IS NOT NULL OR pcpais2 IS NOT NULL) AND
       	   (pfnacimi2 IS NULL OR pcsexo2 IS NULL OR pcpais2 IS NULL) THEN
          oCODERROR :=  120308; -- faltan datos del asegurado
    	  oMSGERROR := f_literal(oCODERROR, pcidioma_user);
    	  RAISE ERROR;
       END IF;

       -------------------------------------------------------------------------------------------
       -- Validaremos la edad
       -------------------------------------------------------------------------------------------
       num_err := Pac_Val_Comu.f_valida_edad_prod(psproduc, pfefecto, pfnacimi1, pfnacimi2);
       IF num_err <> 0 THEN
          oCODERROR := num_err;
    	  oMSGERROR := f_literal(num_err, pcidioma_user);
    	  RAISE ERROR;
       END IF;

       --------------------------------------------------------------------------------------------
       -- Validamos resientes - no residentes
       ---------------------------------------------------------------------------------------------
       num_err := Pac_Val_Comu.f_valida_residentes(psproduc, pcpais1, pcpais2, NULL);
       IF num_err <> 0 THEN
          oCODERROR := num_err;
    	  oMSGERROR := f_literal(num_err, pcidioma_user);
    	  RAISE ERROR;
       END IF;

       --------------------------------------------------------------------------------------------
       -- Validamos el tipo de documento de la persona
       ---------------------------------------------------------------------------------------------
       IF psperson1 IS NOT NULL THEN
          num_err := pac_personas.f_valida_tipo_sujeto(psperson1);
          IF num_err <> 0 THEN
             oCODERROR := num_err;
    	     oMSGERROR := f_literal(num_err, pcidioma_user);
    	     RAISE ERROR;
          END IF;
       END IF;

       IF psperson2 IS NOT NULL THEN
          num_err := pac_personas.f_valida_tipo_sujeto(psperson2);
          IF num_err <> 0 THEN
             oCODERROR := num_err;
    	     oMSGERROR := f_literal(num_err, pcidioma_user);
    	     RAISE ERROR;
          END IF;
       END IF;

       RETURN 0;

    EXCEPTION
        WHEN ERROR THEN
    	    RETURN NULL;
         WHEN OTHERS THEN
    	    oCODERROR := -999;
    		oMSGERROR := 'Pac_Ref_Simula_Comu.f_valida_asegurados: Error general en la funci�n';
    		p_tab_error(f_sysdate,  F_USER,  'Pac_Ref_Simula_Comu.f_valida_asegurados',NULL, 'parametros: psproduc = '||psproduc||
                        ' pfnacimi1='||pfnacimi1||' pcsexo1='||pcsexo1||' pcpais1='||pcpais1||' pfnacimi2='||pfnacimi2||
                        ' pcsexo2='||pcsexo2||' pcpais2='||pcpais2||' pfefecto='||pfefecto||
                        ' pcdomici1='||pcdomici1||' pcdomici2='||pcdomici2||' pvaldomici='||pvaldomici,
                          SQLERRM);
            RETURN NULL;
    END f_valida_asegurados;


    FUNCTION f_valida_duracion(psproduc IN NUMBER, pfnacimi IN DATE, pfefecto IN DATE, pnduraci IN NUMBER, pfvencim IN DATE, pcidioma_user IN NUMBER DEFAULT F_IdiomaUser,
                               oCODERROR OUT NUMBER, oMSGERROR OUT VARCHAR2)
    RETURN NUMBER IS

      num_err   NUMBER;
      error		EXCEPTION;
    BEGIN

      num_err := Pac_Val_Comu.f_valida_duracion(psproduc, pfnacimi, pfefecto, pnduraci, pfvencim);
      IF num_err <> 0 THEN
         oCODERROR := num_err;
         oMSGERROR := f_literal(num_err, pcidioma_user);
         RAISE ERROR;
      END IF;

      RETURN 0;

    EXCEPTION
        WHEN ERROR THEN
    	    RETURN NULL;
         WHEN OTHERS THEN
    	    oCODERROR := -999;
    		oMSGERROR := 'Pac_Ref_Simula_Comu.f_valida_duracion: Error general en la funci�n';
    		p_tab_error(f_sysdate,  F_USER,  'Pac_Ref_Simula_Comu.f_valida_duracion',NULL, 'parametros: psproduc = '||psproduc||
                        ' pfnacimi='||pfnacimi||' pfefecto='||pfefecto||' pnduraci='||pnduraci||' pfvencim='||pfvencim,
                          SQLERRM);
            RETURN NULL;
    END f_valida_duracion;

 END Pac_Ref_Simula_Comu;

/

  GRANT EXECUTE ON "AXIS"."PAC_REF_SIMULA_COMU" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_REF_SIMULA_COMU" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_REF_SIMULA_COMU" TO "PROGRAMADORESCSI";
