--------------------------------------------------------
--  DDL for Package PAC_CONMUTADORS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_CONMUTADORS" AUTHID CURRENT_USER AS
/******************************************************************************
   NOMBRE:       PAC_CONMUTADORS
   PROP�SITO:  Cuerpo del paquete de las funciones para
                el c�culo de los conmutadores actuariales.

   REVISIONES:
   Ver        Fecha        Autor             Descripci�n
   ---------  ----------  ---------------  ------------------------------------
   1.0        27/04/2009   JRH               1. Creaci�n del package.
   2.0        01/05/2009   JRH               2. Bug 9172: CRE055 - Rentas regulares e irregulares con c�lculos a partir de renta
   3.0        09/12/2009   JRH               3. Bug-0011268: CEM - Migraci�n de los productos ahorro
   4.0        10/04/2010    JRH               4. 13969: CEM301 - RVI - Ajustes formulaci�n provisiones
   5.0        22/04/2010    JRH               5. 13969: CEM301 - RVI - Ajustes formulaci�n provisiones
******************************************************************************/

   -- BUG 13969- 04/2010 - JRH  - Buscamos el maxTabla

   /*************************************************************************
        -- BUG 8782 - 02/2009 - JRH  - Factor de reembolso de primas
        Calcula m�ximo a�os tabla
        ptabla in : Tabla
        return : M�ximo a�os
   *************************************************************************/
   FUNCTION f_anyos_maxtabla(ptabla NUMBER)
      RETURN NUMBER;

-- Fi BUG 13969- 04/2010 - JRH

   -- BUG 9889 - 04/2009 - JRH  - Cuadre de los datos del cierre de ABRIL
   /*************************************************************************
      -- BUG 8782 - 02/2009 - JRH  - Factor de reembolso de primas
      Calcula tabla de conmutadores.
      psesion in : Sesi�n
      pedadx  in : Edad primera cabeza (Siempre en a�os)
      psexo in  : Sexo primera cabeza
      pnacim in : A�o nacimiento primera cabeza (Siempre en a�os)
      pedady in : Edad segunda cabeza (Siempre en a�os) (Puede ser nulo)
      psexo2 in : Sexo segunda cabeza (Puede ser nulo)
      pnacim2 in : A�o nacimiento segunda cabeza (Siempre en a�os) (Puede ser nulo)
      ptabla in : Tabla mortalidad
      pinter in : Interes inicial
      pinter2 in : Segundo inter�s (Puede ser nulo)
      periodo  in : A�os del periodo para el cambio inter�s (Puede ser nulo)
      pgg in : Progresi�n geom.
      pig in : Progre. lineal
      panyos in : A�os hasta vencimiento (En p�lizas vitalicias poner valor elevado (inferior a 125-edad))
      panyos_rent in  A�os hasta meritamiento para renta (En p�lizas vitalicias poner valor elevado (inferior a 125-edad))
      var number in : Factor correci�n en a�os
      p_es_mensual in : Tratamiento mensual en lugar de anual
      pforpag number in : Forma de pago (Ahorro o renta).
      pmesini number in : Mes inicio de la p�liza (siempre 1 si la p�liza renueva de forma contractual).
      preemb number in : Factor de reembolso del capital.
      psobremort number in : Factor de sobremortalidad.
      pesahorr number in : Si es p�liza de ahorro (Hay casos en rentas que se considera la progresi�n 0 hasta el segundo mes)
      prevers number in : % Revers.
      ptabprogresiones  varchar2 in: Vector (string separado por comas) con la progresi�n de cada mes de la p�liza (rentas irregulares).
      ptabpagasextras varchar2 in: Pagas extras de la p�liza seg�n SEGUROS_REN
      pmesefecto number in : Mes en que comienza la p�liza (n�mero). Nos sireve para las pagas extras.

      return             : La tabla
   *************************************************************************/
   FUNCTION calculaconmu(
      psesion NUMBER,
      pedadx NUMBER,
      psexo NUMBER,
      pnacim NUMBER,
      pedady NUMBER,
      psexo2 NUMBER,
      pnacim2 NUMBER,
      ptabla NUMBER,
      pinter NUMBER,
      pinter2 NUMBER,
      periodo NUMBER,
      pgg NUMBER,
      pig NUMBER,
      panyos NUMBER,
      panyos_rent NUMBER,
      var NUMBER DEFAULT 0,
      p_es_mensual NUMBER DEFAULT 1,
      pforpag NUMBER DEFAULT 12,
      pmesini NUMBER DEFAULT 1,
      preemb NUMBER DEFAULT 0,
      psobremort NUMBER DEFAULT 0,
      pesahorr NUMBER DEFAULT 1,
      prevers NUMBER DEFAULT 0,
      -- BUG 9172 - 04/2009 - JRH  - CRE055 - Rentas regulares e irregulares con c�lculos a partir de renta
      ptabprogresiones VARCHAR2 DEFAULT NULL,
      ptabpagasextras VARCHAR2 DEFAULT NULL,
      pmesefecto NUMBER DEFAULT NULL,
      -- Fi BUG
      -- BUG 11268 - 12/2009 - JRH  - Bug-0011268: CEM - Migraci�n de los productos ahorro
      pesrevision NUMBER DEFAULT 0,
      ptipoact NUMBER DEFAULT 0,
      pincrementoriesg NUMBER DEFAULT 0.5,
      -- BUG 13969- 04/2010 - JRH  - Caso Credit Siempre 125. Si vale 0 se accede a la tabla a ver cuantos a�os tiene.
      panyostab NUMBER DEFAULT 125,
      ptipoextrap NUMBER
            DEFAULT 0   --JRH Tipo Extraprima 0 Porcentage 1 Suma a qx 2 Valor directo qx
                     -- Fi BUG 13969- 04/2010 - JRH
   )
      --- Fi BUG 11268 - 12/2009 - JRH
   RETURN t_conmutador;
END pac_conmutadors;

/

  GRANT EXECUTE ON "AXIS"."PAC_CONMUTADORS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_CONMUTADORS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_CONMUTADORS" TO "PROGRAMADORESCSI";
