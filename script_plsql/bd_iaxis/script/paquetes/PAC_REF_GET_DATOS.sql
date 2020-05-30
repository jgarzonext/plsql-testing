--------------------------------------------------------
--  DDL for Package PAC_REF_GET_DATOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_REF_GET_DATOS" AUTHID CURRENT_USER IS
   TYPE ct_cursor IS REF CURSOR;

   TYPE rt_datos_titulares IS RECORD(
      titular        NUMBER,   -- valdr� 1 para el primer titular, 2 para el segundo titular
      cod_ident      VARCHAR2(15),   -- NIF/NIE del titular
      cod_nacionalidad NUMBER,   -- C�digo del estado de la nacionalidad del titular
      nacionalidad   VARCHAR2(30),   -- Nombre del estado de la nacionalidad del titular
      cod_residencia NUMBER,   -- C�digo del estado de la residencia del titular
      residencia     VARCHAR2(30),   -- Nombre del estado de la residencia del titular
      nombre         VARCHAR2(70),   -- Nombre del titular
      apellido1      VARCHAR2(70),   -- 1er Apellido del titular
      apellido2      VARCHAR2(70),   -- 2do Apellido del titular
      cod_sexo       NUMBER,   -- C�digo del sexo del titular
      sexo           VARCHAR2(20),   -- Descripci�n del sexo (Hombre/Mujer)
      fnacimiento    DATE,   -- Fecha de nacimiento del titular
      domicilio      VARCHAR2(200),   -- Domicilio del titular
      poblacion      VARCHAR2(200),   -- Poblacion
      cpostal        NUMBER(5)   -- Codigo Postal
   );

   TYPE ct_datos_titulares IS REF CURSOR
      RETURN rt_datos_titulares;

   TYPE rt_datos_gestion IS RECORD(
      npoliza        NUMBER,
      ncertif        NUMBER,
      cidioma        NUMBER,   -- C�digo del idioma
      idioma         VARCHAR2(40),   -- Descripcion del idioma
      cod_oficina_gestion NUMBER,   -- C�digo de la oficina
      oficina_gestion VARCHAR2(70),   -- Descripcion de la oficina
      fefecto        DATE,   -- Fecha de efecto
      frenovacion    DATE,   -- Fecha de renovacion/revision
      ccc            VARCHAR2(50),   -- C�digo bancario AES
      falta          DATE,   -- Fecha de alta
      fanulacion     DATE,   -- Fecha de anulacion
      cod_forma_pago NUMBER,   -- C�digo de la forma de pago
      forma_pago     VARCHAR2(100),   -- Descripci�n de la forma de pago
      cod_forma_pago_renta NUMBER,   -- C�digo de la forma de pago de la renta
      forma_pago_renta VARCHAR2(100)   -- Descripci�n de la forma de pago de la renta
   );

   TYPE ct_datos_gestion IS REF CURSOR
      RETURN rt_datos_gestion;

   TYPE rt_datos_primas IS RECORD(
      aportacion_inicial NUMBER,   -- Aportacion inicial
      aportacion_periodica NUMBER,   -- Aportacion periodica
      porc_revalorizacion NUMBER,   -- Porcentage de revalorizaci�n
      porc_interes_tecnico NUMBER,   -- Porcentage del inter�s t�cnico
      valor_provision NUMBER,   -- Valor de provisi�n
      garant_final_periodo NUMBER,   -- Capital garantizado al final del per�odo
      garant_vencimiento NUMBER,   -- Capital garantizado al vencimiento
      fallecimiento  NUMBER,   -- Capital por fallecimiento
      --Propios de rentas
      falta          DATE,
      fcalculo       DATE,
      rentabrutamens NUMBER
   );

   TYPE ct_datos_primas IS REF CURSOR
      RETURN rt_datos_primas;

   TYPE rt_datos_beneficiarios IS RECORD(
      beneficiarios  VARCHAR2(31000)   -- Texto con la descripcion de los beneficiarios
   );

   TYPE ct_datos_beneficiarios IS REF CURSOR
      RETURN rt_datos_beneficiarios;

   TYPE rt_datos_cumulos IS RECORD(
      desctipo       VARCHAR2(200),   -- Aportacion inicial
      numseg         NUMBER,   -- N�mero de seguros
      anual          NUMBER,   -- Aportaciones anuales
      importe        NUMBER   -- Importe m�ximo legal anual
   );

   TYPE ct_datos_cumulos IS REF CURSOR
      RETURN rt_datos_cumulos;

   TYPE rt_datos_operaciones IS RECORD(
      linea          NUMBER,   -- N�mero de la l�nea
      fefecto        DATE,   -- Fecha de efecto
      fvalor         DATE,   -- Fecha de valor
      operacion      VARCHAR2(200),   -- Descripci�n de la operaci�n
      cod_anulado    NUMBER,   -- C�digo de anulaci�n
      anulado        VARCHAR2(200),   -- Descripci�n (SI/NO) de anulaci�n
      importe        NUMBER,   -- Importe del movimiento
      impreso        VARCHAR2(1)   --(S/N) Indica si la operaci�n se ha impreso en la libreta
   );

   TYPE ct_datos_operaciones IS REF CURSOR
      RETURN rt_datos_operaciones;

   TYPE rt_datos_evolucion IS RECORD(
      ejercicio      NUMBER,
      provision      NUMBER,
      porc_resc      NUMBER,
      cap_fallec     NUMBER
   );

   TYPE ct_datos_evolucion IS REF CURSOR
      RETURN rt_datos_evolucion;

   FUNCTION f_datos_titulares(
      psseguro IN seguros.sseguro%TYPE,
      pcidioma IN idiomas.cidioma%TYPE,
      ocoderror OUT literales.slitera%TYPE,
      omsgerror OUT literales.tlitera%TYPE)
      RETURN ct_datos_titulares;

   FUNCTION f_datos_gestion(
      psseguro IN seguros.sseguro%TYPE,
      pcidioma IN idiomas.cidioma%TYPE,
      ocoderror OUT literales.slitera%TYPE,
      omsgerror OUT literales.tlitera%TYPE)
      RETURN ct_datos_gestion;

   FUNCTION f_datos_primas(
      psseguro IN seguros.sseguro%TYPE,
      pcidioma IN idiomas.cidioma%TYPE,
      ocoderror OUT literales.slitera%TYPE,
      omsgerror OUT literales.tlitera%TYPE)
      RETURN ct_datos_primas;

   FUNCTION f_datos_beneficiarios(
      psseguro IN seguros.sseguro%TYPE,
      pcidioma IN idiomas.cidioma%TYPE,
      ocoderror OUT literales.slitera%TYPE,
      omsgerror OUT literales.tlitera%TYPE)
      RETURN ct_datos_beneficiarios;

   FUNCTION f_datos_cumulos(
      psseguro IN seguros.sseguro%TYPE,
      pcidioma IN idiomas.cidioma%TYPE,
      ocoderror OUT literales.slitera%TYPE,
      omsgerror OUT literales.tlitera%TYPE)
      RETURN ct_datos_cumulos;

   FUNCTION f_datos_operaciones(
      psseguro IN seguros.sseguro%TYPE,
      pcidioma IN idiomas.cidioma%TYPE,
      ocoderror OUT literales.slitera%TYPE,
      omsgerror OUT literales.tlitera%TYPE)
      RETURN ct_datos_operaciones;

   FUNCTION f_datos_evolucion(
      psseguro IN seguros.sseguro%TYPE,
      pcidioma IN idiomas.cidioma%TYPE,
      ocoderror OUT literales.slitera%TYPE,
      omsgerror OUT literales.tlitera%TYPE)
      RETURN ct_datos_evolucion;

   --JRH 11/2007 Registro  para devolver los datos de una p�liza de HI pdte. de completar.
   TYPE rt_datos_poliza_hi IS RECORD(
      psseguro       seguros.sseguro%TYPE,   --Seguros
      psproduc       productos.sproduc%TYPE,   -- Identificador Del Producto, Utilizado Para La Ordenaci�n.
      pfefecto       DATE,   --Fecha efecto de la p�liza
      titular1       NUMBER,   --Orden del titular 1 de la p�liza
      sperson_1      NUMBER(10),   -- Identificador del titular 1 de la p�liza
      nnumnif_1      personas.nnumnif%TYPE,   -- Nif del titular 1 de la p�liza
      nombre1        VARCHAR2(60),   -- Nombre del titular 1 de la p�liza
      fnacim1        DATE,   -- Feha de nacimiento del titular 1 de la p�liza
      domicilio1     asegurados.cdomici%TYPE,   -- C�digo del domicilio del titular 1 de la p�liza
      descdomicilio1 VARCHAR2(200),   -- Domicilio del titular 1 de la p�liza
      pais1          paises.cpais%TYPE,   -- C�digo del pais del titular 1 de la p�liza
      descpais1      despaises.tpais%TYPE,   -- Pais del titular 1 de la p�liza
      nacionalidad1  VARCHAR(30),   -- C�digo de la nacionalidad del titular 1 de la p�liza
      titular2       NUMBER,   -- Orden del titular 2 de la p�liza
      sperson_2      NUMBER(10),   -- Identificador del titular 2 De La P�liza
      nnumnif_2      personas.nnumnif%TYPE,   -- Nif del titular 2 de la p�liza
      nombre2        VARCHAR2(60),   -- Nombre del titular 1 de la p�liza
      fnacim2        DATE,   -- Feha de nacimiento del titular 2 de la p�liza
      domicilio2     asegurados.cdomici%TYPE,   -- C�digo del domicilio del titular 2 de la p�liza
      descdomicilio2 VARCHAR2(200),   -- Domicilio del titular 2 de la p�liza
      pais2          paises.cpais%TYPE,   -- C�digo del pais del titular 2 de la p�liza
      descpais2      despaises.tpais%TYPE,   -- Pais del titular 2 de la p�liza
      nacionalidad2  VARCHAR(30),   -- C�digo de la nacionalidad del titular 2 de la p�liza
      cagente        seguros.cagente%TYPE,   -- C�digo del agente de la p�liza
      cidioma        seguros.cidioma%TYPE,   -- Idioma del titular de la p�liza
      cforpag        seguros.cforpag%TYPE,   -- Forma de pago de la p�liza
      cbancar        seguros.cbancar%TYPE,   -- Cuenta bancaria del  pago de la p�liza
      tasinmuebhi    NUMBER(14, 3),   --Tasaci�n del inmueble (HI)
      pcttasinmuebhi NUMBER(5, 2),   -- % sobre tasaci�n del inmueble (HI)
      capitaldisphi  NUMBER(14, 3),   -- Capital disponible (HI)
      fecoperhi      DATE,   -- Fecha operaci�n (HI)
      cccrhi         VARCHAR2(50)   -- Cuenta corriente asociada (HI)
   );

   TYPE ct_datos_poliza_hi IS REF CURSOR
      RETURN rt_datos_poliza_hi;

   --JRH 11/2007 Devuelve los datos de una p�liza de HI pdte. de completar.
   FUNCTION f_datos_poliza_hi(
      psseguro IN seguros.sseguro%TYPE,
      pcidioma IN idiomas.cidioma%TYPE,
      ocoderror OUT literales.slitera%TYPE,
      omsgerror OUT literales.tlitera%TYPE)
      RETURN ct_datos_poliza_hi;

   --JRH 11/2007 Registro  para devolver los datos de una p�liza.
   TYPE rt_datos_poliza IS RECORD(
      psseguro       seguros.sseguro%TYPE,   --Seguros
      psproduc       productos.sproduc%TYPE,   -- Identificador Del Producto, Utilizado Para La Ordenaci�n.
      pfefecto       DATE,   --Fecha efecto de la p�liza
      titular1       NUMBER,   --Orden del titular 1 de la p�liza
      sperson_1      NUMBER(10),   -- Identificador del titular 1 de la p�liza
      nnumnif_1      personas.nnumnif%TYPE,   -- Nif del titular 1 de la p�liza
      nombre1        VARCHAR2(60),   -- Nombre del titular 1 de la p�liza
      fnacim1        DATE,   -- Feha de nacimiento del titular 1 de la p�liza
      domicilio1     asegurados.cdomici%TYPE,   -- C�digo del domicilio del titular 1 de la p�liza
      descdomicilio1 VARCHAR2(200),   -- Domicilio del titular 1 de la p�liza
      pais1          paises.cpais%TYPE,   -- C�digo del pais del titular 1 de la p�liza
      descpais1      despaises.tpais%TYPE,   -- Pais del titular 1 de la p�liza
      nacionalidad1  VARCHAR(30),   -- C�digo de la nacionalidad del titular 1 de la p�liza
      titular2       NUMBER,   -- Orden del titular 2 de la p�liza
      sperson_2      NUMBER(10),   -- Identificador del titular 2 De La P�liza
      nnumnif_2      personas.nnumnif%TYPE,   -- Nif del titular 2 de la p�liza
      nombre2        VARCHAR2(60),   -- Nombre del titular 1 de la p�liza
      fnacim2        DATE,   -- Feha de nacimiento del titular 2 de la p�liza
      domicilio2     asegurados.cdomici%TYPE,   -- C�digo del domicilio del titular 2 de la p�liza
      descdomicilio2 VARCHAR2(200),   -- Domicilio del titular 2 de la p�liza
      pais2          paises.cpais%TYPE,   -- C�digo del pais del titular 2 de la p�liza
      descpais2      despaises.tpais%TYPE,   -- Pais del titular 2 de la p�liza
      nacionalidad2  VARCHAR(30),   -- C�digo de la nacionalidad del titular 2 de la p�liza
      cagente        seguros.cagente%TYPE,   -- C�digo del agente de la p�liza
      cidioma        seguros.cidioma%TYPE,   -- Idioma del titular de la p�liza
      cforpag        seguros.cforpag%TYPE,   -- Forma de pago de la p�liza
      cbancar        seguros.cbancar%TYPE,   -- Cuenta bancaria del  pago de la p�liza
      capgarvto      NUMBER,   --capital garantizado al vencimiento
      valorprov      NUMBER,   --valor de la provisi�n
      capfallec      NUMBER   --capital fallecimiento
   );

   TYPE ct_datos_poliza IS REF CURSOR
      RETURN rt_datos_poliza;

   --JRH 11/2007 Devuelve los datos de una p�liza
   FUNCTION f_datos_poliza(
      psseguro IN seguros.sseguro%TYPE,
      pcidioma IN idiomas.cidioma%TYPE,
      ocoderror OUT literales.slitera%TYPE,
      omsgerror OUT literales.tlitera%TYPE)
      RETURN ct_datos_poliza;
END;

/

  GRANT EXECUTE ON "AXIS"."PAC_REF_GET_DATOS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_REF_GET_DATOS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_REF_GET_DATOS" TO "PROGRAMADORESCSI";
