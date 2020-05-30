--------------------------------------------------------
--  DDL for Package PAC_REF_GET_INFORMES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "AXIS"."PAC_REF_GET_INFORMES" AUTHID CURRENT_USER AS
   TYPE rt_polizas_a_vencer IS RECORD(
      ordre_client   VARCHAR2(14),   -- Valor comod�n.
      cagrpro        NUMBER(2),   -- C�digo de agrupaci�
      cramo          NUMBER(8),   -- C�digo de ram
      sproduc        NUMBER(6),   -- Identificador del producto, utilizado para la ordenaci�n.
      fecha          DATE,   -- Fecha de vencimiento / revisi�n
      ordre_polissa  NUMBER,   -- Valor comod�n utilizado para ordenar cuando los 3 otros sean iguales.
      ordre_titular  NUMBER,   -- Orden del titular dentro de la p�liza : 1,2,3,...
      agrupacio_1    NUMBER(6),
-- Valor comod�n para la agrupaci�n por producto. Su valor ser� un SPRODUC v�lido �nicamente cuando se espera del Report una agrupaci�n por SPRODUC.
      ttitulo        VARCHAR2(30),   -- Descripci�n del producto
      poliza         VARCHAR2(40),   -- N�mero de P�liza / N�mero de Certificado, -- BBug 28462 - 04/10/2013 - HRE - Cambio dimension NPOLIZA
      nsolici        NUMBER(8),   -- Solicitud
      fefecto        DATE,   -- Fecha de efecto de la p�liza
      cagente        NUMBER,   -- C�digo de la oficina de la p�liza -- Bug 18225 - APD - 11/04/2011 - la precisi�n debe ser NUMBER
      tipus          VARCHAR2(1),   -- V cuando es la fecha de vencimiento, R cuando es la fecha de revisi�n
      provision      NUMBER,   --NUMBER(15, 2),   -- Valor a �ltimo cierre mensual de la p�liza
      capgar         NUMBER,   --NUMBER(15, 2),   -- Capital garantizado al final del periodo
      descuadre      VARCHAR2(2),   -- Descuadre de primas
      sseguro        NUMBER,   -- Identificador del seguro
      frevisio       DATE,   -- Fecha revisi�n
      fvencim        DATE,   -- Fecha vencimiento
      -- Dades del primer titular
      sperson_1      NUMBER(10),   -- Identificador del asegurado de la p�liza
      nnumnif_1      VARCHAR2(14),   -- Identificador del asegurado
      titular_1      VARCHAR2(61),   -- Nombre del asegurado
      cpais_1        NUMBER(3),   -- C�digo del pa�s de residencia
      tpais_1        VARCHAR2(20),   -- Nom del pa�s de residencia
      -- Dades del segon nom�s surten quan s'ha demanat els 2 a la mateixa linia
      sperson_2      NUMBER(10),   -- Identificador del asegurado de la p�liza
      nnumnif_2      VARCHAR2(14),   -- Identificador del asegurado
      titular_2      VARCHAR2(61),   -- Nombre del asegurado
      cpais_2        NUMBER(3),   -- C�digo del pa�s de residencia
      tpais_2        VARCHAR2(20),   -- Nom del pa�s de residencia
      -- Altres dades sobre els titulars
      falta_nie      NUMBER(1),
      -- Valors : 0 no fala, 1 falta el del 1er titular, 2 falta el del segon titular, 3 falten ambd�s
      baixa_titular  NUMBER(1)   --  Valor a 1 cuando la p�liza ha tenido alguna baja de titular. Sin� valor a 0.
   );

   TYPE ct_polizas_a_vencer IS REF CURSOR
      RETURN rt_polizas_a_vencer;

   --  MSR 31/7/2007
   -- Torna les p�lisses a mostrar per la consulta abans d'imprimir
   --
   --  Par�metres
   --    pfDesde   Obligatori
   --    pfHasta   Obligatori
   --    pcEmpresa Opcional
   --    pcAgrpro  Opcional
   --    pcRamo    Opcional
   --    psProduc  Opcional
   --    pnNumnif  Opcional
   --    ptBuscar  Opcional
   --    pcAgente  NULL per totes les oficines, altrament ha de venir informat
   --    pConsultaReport  'C' quan es crida per la consulta, 'R' quan es crida pel report, 'V' quan es crida pel llistat de p�lisses a v�ncer
   --    pMultilinia   'S' si la p�lissa te 2 titulars tornar-los en 2 linies
   --                  'N' si la p�lissa te 2 titulars tornar-los en 1 linia
   --                  Si s'envia a NULL: quan pConsultaReport = 'C' val 'S', quan pConsultaReport = 'R' val 'N', quan pConsultaReport = 'V' val 'N'
   --
   --  Dades tornades :
   --  Falta_NIE / Baixa_Titular con consultas que devuelven un solo titular
   --               0 - No falta
   --               1 - Falta primer titular
   --               2 - Falta segundo titular
   --               3 - Faltan ambos titulares
   --
   --  Falta_NIE / Baixa_Titular con consultas y reports que devuelven todos los titulares
   --               0 - No falta
   --               1 - Falta
   --
   -- Ordenaci� per
   --         Report   : Agrpro / Producte / Data / Polissa
   --         Consulta : Nif / Agrpro / Producte / Data / Polissa
   --         Venciment: Agrpro / Producte / Data / Polissa
   -- Agrupaci� del report
   --         Report   : Producte +  Totals finals
   --         Consulta : Totals finals
   --         Venciment: Producte +  Totals finals
   --
   FUNCTION f_polizas_a_vencer(
      pcidioma IN seguros.cidioma%TYPE,
      pfdesde IN DATE,
      pfhasta IN DATE,
      pcempresa IN seguros.cempres%TYPE,
      pcagrpro IN seguros.cagrpro%TYPE,
      pcramo IN ramos.cramo%TYPE,
      psproduc IN productos.sproduc%TYPE,
      pnnumnif IN VARCHAR2,
      ptbuscar IN VARCHAR2,
      pcagente IN seguros.cagente%TYPE,
      pconsultareport IN VARCHAR2,
      pmultilinia IN VARCHAR2)
      RETURN ct_polizas_a_vencer;

   --
   --  MSR 7/11/2007
   --    Contratos a Revisar
   --
   TYPE rt_contratos_a_revisar IS RECORD(
      cempresa       NUMBER(2),   -- Codi de l'empresa
      cagrpro        NUMBER(2),   -- C�digo de agrupaci�
      cramo          NUMBER(8),   -- C�digo de ram
      sproduc        NUMBER(6),   -- Identificador del producto, utilizado para la ordenaci�n.
      frevisio       DATE,   -- Fecha revisi�n
      ordre_polissa  NUMBER,   -- Ordre per p�lissa i titular
      ordre_titular  NUMBER,   -- 1, 2, ...
      ttitulo        VARCHAR2(30),   -- Descripci�n del producto
      sseguro        NUMBER,   -- Identificador del seguro
      poliza         VARCHAR2(40),   -- N�mero de P�liza / N�mero de Certificado, -- BBug 28462 - 04/10/2013 - HRE - Cambio dimension NPOLIZA
      nsolici        NUMBER(8),   -- Solicitud
      cagente        NUMBER,   -- C�digo de la oficina de la p�liza -- Bug 18225 - APD - 11/04/2011 - la precisi�n debe ser NUMBER
      duracion       NUMBER(6),   -- Duraci�n
      tipint         NUMBER(7, 2),   -- Tipo de inter�s
--    CAPGAR   NUMBER(15,2),  -- Capital garantizado al final del periodo
      descuadre      VARCHAR2(2),   -- Descuadre de primas
      -- Dades del primer titular
      sperson_1      NUMBER(10),   -- Identificador del asegurado de la p�liza
      nnumnif_1      VARCHAR2(14),   -- Identificador del asegurado
      titular_1      VARCHAR2(61),   -- Nombre del asegurado
      cpais_1        NUMBER(3),   -- C�digo del pa�s de residencia
      tpais_1        VARCHAR2(20),   -- Nom del pa�s de residencia
      -- Dades del segon nom�s surten quan s'ha demanat els 2 a la mateixa linia
      sperson_2      NUMBER(10),   -- Identificador del asegurado de la p�liza
      nnumnif_2      VARCHAR2(14),   -- Identificador del asegurado
      titular_2      VARCHAR2(61),   -- Nombre del asegurado
      cpais_2        NUMBER(3),   -- C�digo del pa�s de residencia
      tpais_2        VARCHAR2(20),   -- Nom del pa�s de residencia
      -- Utilitzats per calcular el capital garantit
      cvalpar        NUMBER(8),   -- Parprodutos.cvalpar per 'EVOLUPROVMATSEG'
      durper         NUMBER(8)   -- Par�metre 'DURPER'
   );

   TYPE ct_contratos_a_revisar IS REF CURSOR
      RETURN rt_contratos_a_revisar;

   --  MSR 31/7/2007
   -- Torna les p�lisses a mostrar per la consulta abans d'imprimir
   --
   --  Par�metres
   --    pfDesde   Obligatori
   --    pfHasta   Obligatori
   --    pcEmpresa Opcional
   --    pcAgrpro  Opcional
   --    pcRamo    Opcional
   --    psProduc  Opcional
   --    pcAgente  NULL per totes les oficines, altrament ha de venir informat
   --    pMultilinia   'S' si la p�lissa te 2 titulars tornar-los en 2 linies
   --                  'N' si la p�lissa te 2 titulars tornar-los en 1 linia
   --
   -- Ordenaci� per
   --         Empresa / Agrpro / Ram / Producte / Data Revisi� / P�lissa / Certificat / Titular
   --
   FUNCTION f_contratos_a_revisar(
      pcidioma IN seguros.cidioma%TYPE,
      pfdesde IN DATE,
      pfhasta IN DATE,
      pcempresa IN seguros.cempres%TYPE,
      pcagrpro IN seguros.cagrpro%TYPE,
      pcramo IN ramos.cramo%TYPE,
      psproduc IN productos.sproduc%TYPE,
      pcagente IN seguros.cagente%TYPE,
      pmultilinia IN VARCHAR2)
      RETURN ct_contratos_a_revisar;

   TYPE rt_2_recibos_pendientes IS RECORD(
      orden_report   NUMBER(6),   -- ROWNUM per tenir l'ordre dels registres del report
      cempres        NUMBER(2),
      cagrpro        NUMBER(2),   -- C�digo de agrupaci�
      cramo          NUMBER(8),   -- C�digo de ram
      sproduc        NUMBER(6),   -- Identificador del producto, utilizado para la ordenaci�n.
      ttitulo        VARCHAR2(30),   -- Descripci�n del producto
      cagente        NUMBER,   -- C�digo de la oficina de la p�liza -- Bug 18225 - APD - 11/04/2011 - la precisi�n debe ser NUMBER
      sseguro        NUMBER,   -- Identificador del seguro
      poliza         VARCHAR2(40),   -- N�mero de P�liza / N�mero de Certificado
      sperson        NUMBER(10),   -- Identificador del asegurado de la p�liza
      nnumnif        VARCHAR2(14),   -- Identificador del asegurado
      titular        VARCHAR2(61),   -- Nombre del asegurado
      cpais          NUMBER(3),   -- C�digo del pa�s de residencia
      tpais          VARCHAR2(20),   -- Nom del pa�s de residencia
      ccc            VARCHAR2(50),   -- CCC
      importe_total  NUMBER,   --NUMBER(15, 2),   -- Importe total pendiente
      fefecto_1      DATE,
      importe_1      NUMBER,   --NUMBER(15, 2),
      fefecto_2      DATE,
      importe_2      NUMBER   --NUMBER(15, 2)
   );

   TYPE ct_2_recibos_pendientes IS REF CURSOR
      RETURN rt_2_recibos_pendientes;

   --  MSR 13/11/2007
   -- Torna les p�lisses amb 2 o m�s rebuts pendents
   --
   --  Par�metres
   --    pcEmpresa Opcional
   --    pcAgrpro  Opcional
   --    pcRamo    Opcional
   --    psProduc  Opcional
   --    pcAgente  NULL per totes les oficines, altrament ha de venir informat
   --
   -- Ordenaci� per
   --         TF   : nNumnif / Producte
   --         Dpt. : Agrpro / Ram / Producte / Polissa
   -- Agrupaci� report
   --         TF  : No
   --         Dpt. : Agrpro / Ram / Producte
   --
   FUNCTION f_2_recibos_pendientes(
      pcidioma IN seguros.cidioma%TYPE,
      pcempresa IN seguros.cempres%TYPE,
      pcagrpro IN seguros.cagrpro%TYPE,
      pcramo IN ramos.cramo%TYPE,
      psproduc IN productos.sproduc%TYPE,
      pcagente IN seguros.cagente%TYPE,
      ptfdpt IN VARCHAR2   -- 'T' o 'D'
                        )
      RETURN ct_2_recibos_pendientes;

   FUNCTION f_rfefecto(psseguro IN seguros.sseguro%TYPE, p_quin IN NUMBER)
      RETURN DATE;

   FUNCTION f_rimporte(psseguro IN seguros.sseguro%TYPE, p_quin IN NUMBER)
      RETURN NUMBER;

   TYPE rt_recibos_impagados IS RECORD(
      orden_report   NUMBER(6),   -- ROWNUM per tenir l'ordre dels registres del report
      cempres        NUMBER(2),
      cagrpro        NUMBER(2),   -- C�digo de agrupaci�
      cramo          NUMBER(8),   -- C�digo de ram
      sproduc        NUMBER(6),   -- Identificador del producto, utilizado para la ordenaci�n.
      ttitulo        VARCHAR2(40),   -- Descripci�n del producto
      cagente        NUMBER,   -- C�digo de la oficina de la p�liza -- Bug 18225 - APD - 11/04/2011 - la precisi�n debe ser NUMBER
      sseguro        NUMBER,   -- Identificador del seguro
      poliza         VARCHAR2(40),   -- N�mero de P�liza / N�mero de Certificado, -- BBug 28462 - 04/10/2013 - HRE - Cambio dimension NPOLIZA
      fefecto        DATE,   -- Fecha de efecto de la p�liza
      csituac        NUMBER(2),   -- Situaci�n de la p�liza
      ccc            VARCHAR2(50),   -- Cuenta asociada al recibo
      titular1       VARCHAR2(61),   -- Nombre del asegurado1
      nif1           VARCHAR2(14),   -- NIF titular 1
      titular2       VARCHAR2(61),   -- Nombre del asegurado2
      nif2           VARCHAR2(14),   -- NIF titular 2
      nrecibo        NUMBER,   -- Numero de recibo  -- Bug 28462 - 04/10/2013 - DEV - la precisi�n debe ser NUMBER
      rfefecto       DATE,   -- Fecha de efecto del recibo
      itotalr        NUMBER,   --NUMBER(15, 2),   -- Importe del recibo
      importe_total  NUMBER   --NUMBER(15, 2)   -- Importe total impagado
   );

   TYPE ct_recibos_impagados IS REF CURSOR
      RETURN rt_recibos_impagados;

   FUNCTION f_recibos_impagados(
      psseguro IN seguros.sseguro%TYPE,
      pcidioma IN seguros.cidioma%TYPE)
      RETURN ct_recibos_impagados;

   TYPE rt_datos_bloq IS RECORD(
      psseguro       seguros.sseguro%TYPE,   --Seguros
      psproduc       productos.sproduc%TYPE,   -- Identificador Del Producto, Utilizado Para La Ordenaci�n.
      pfefecto       DATE,   --Fecha efecto de la p�liza
      titular1       NUMBER,   --Orden del titular 1 de la p�liza
      sperson_1      NUMBER(10),   -- Identificador del titular 1 de la p�liza
      nnumnif_1      per_personas.nnumide%TYPE,   -- Nif del titular 1 de la p�liza
      nombre1        VARCHAR2(60),   -- Nombre del titular 1 de la p�liza
      fnacim1        DATE,   -- Feha de nacimiento del titular 1 de la p�liza
      domicilio1     asegurados.cdomici%TYPE,   -- C�digo del domicilio del titular 1 de la p�liza
      descdomicilio1 VARCHAR2(200),   -- Domicilio del titular 1 de la p�liza
      pais1          paises.cpais%TYPE,   -- C�digo del pais del titular 1 de la p�liza
      descpais1      despaises.tpais%TYPE,   -- Pais del titular 1 de la p�liza
      nacionalidad1  VARCHAR(30),   -- C�digo de la nacionalidad del titular 1 de la p�liza
      cagente        seguros.cagente%TYPE   -- C�digo del agente de la p�liza
   );

   TYPE ct_datos_bloq IS REF CURSOR
      RETURN rt_datos_bloq;

   --JRH 11/2007 Devuelve p�lizas pendientes de completar
   FUNCTION f_polizas_bloqu(
      psproduc IN seguros.sproduc%TYPE,
      pcagente IN seguros.cagente%TYPE,
      pcidioma IN idiomas.cidioma%TYPE,
      ocoderror OUT literales.slitera%TYPE,
      omsgerror OUT literales.tlitera%TYPE)
      RETURN ct_datos_bloq;

   TYPE rt_interes_vigentes IS RECORD(
      sproduc        NUMBER,
      litproducte    VARCHAR2(200),
      porc_int_minimo NUMBER,
      porc_int_garantizado NUMBER,
      tramo          NUMBER
   );

   TYPE ct_interes_vigentes IS REF CURSOR
      RETURN rt_interes_vigentes;

   --JRH 12/2007 Devuelve los interes vigentes de un producto. Si no informamoes el tramo nos saca todos los existentes a la fecha actual.
   FUNCTION f_interes_vigentes(
      psproduc IN seguros.sseguro%TYPE,
      pcidioma IN idiomas.cidioma%TYPE,
      pvtramo IN intertecmovdet.ndesde%TYPE := NULL,
      ocoderror OUT literales.slitera%TYPE,
      omsgerror OUT literales.tlitera%TYPE)
      RETURN ct_interes_vigentes;

   --JRH 11/2007 Devuelve p�lizas pendientes de completar
   FUNCTION f_polizas_rvd(
      psproduc IN seguros.sproduc%TYPE,
      pcagente IN seguros.cagente%TYPE,
      pcidioma IN idiomas.cidioma%TYPE,
      ocoderror OUT literales.slitera%TYPE,
      omsgerror OUT literales.tlitera%TYPE,
      pestado IN NUMBER DEFAULT 0)
      RETURN ct_datos_bloq;
END;

/

  GRANT EXECUTE ON "AXIS"."PAC_REF_GET_INFORMES" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_REF_GET_INFORMES" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_REF_GET_INFORMES" TO "PROGRAMADORESCSI";
