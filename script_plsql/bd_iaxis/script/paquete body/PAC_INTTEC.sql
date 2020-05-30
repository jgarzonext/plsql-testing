--------------------------------------------------------
--  DDL for Package Body PAC_INTTEC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "AXIS"."PAC_INTTEC" IS
   /****************************************************************************
      NOMBRE:     pac_inttec
      PROP�SITO:

      REVISIONES:
      Ver        Fecha        Autor             Descripci�n
      ---------  ----------  ---------------  ----------------------------------
      1.0        10/02/2009    --             Se crea el package
      2.0        22/04/2009   APD             Bug 9803 - el valor del pmodo debe ser 1 (Alta); 2 (Renovacion)
      3.0        29/04/2009   APD             Bug 9803 - en la renovaci�n tambi�n se necesita saber el valor
                                              de la variable pninttec (valor que se grabar� en INTERTECSEG.NINNTEC)
                                              y ser� el mismo valor que pinttec
      4.0        20/05/2009   JRH             0009540: CRE - Parametritzar sinistres de Decesos
      5.0        04/02/2010   DRA             5. 0012546: CEM002 - Select para informar FICHA CLIENTE
      6.0        07/02/2012   APD             6. 0020107: LCOL898 - Interfaces - Regulatorio - Reporte Reservas Superfinanciera
   ****************************************************************************/
   FUNCTION f_existe_intertecprod(psproduc IN NUMBER)
      RETURN NUMBER IS
--|-------------------------------------------------------------------------|--
--| Funci�n: f_existe_intertecprod                                          |--
--| Descrip: Funci�n que informa sobre si un producto tiene o no definido   |--
--| interes.                                                                |--
--| Parametros:                                                             |--
--|    psproduc : Identificador de producto                                 |--
--|                                                                         |--
--| La funci�n devolver�:                                                   |--
--|     . 1 = s� tiene definido intereses                                   |--
--|     . 0 = no tiene definido intereses o ha habido alg�n error           |--
--|-------------------------------------------------------------------------|--
      v_codint       NUMBER;
   BEGIN
      -- Miramos si el producto tienen definido un cuadro de inter�s t�cnico
      SELECT ncodint
        INTO v_codint
        FROM intertecprod
       WHERE sproduc = psproduc;

      RETURN(1);   -- S� tiene definido intereses
   EXCEPTION
      WHEN NO_DATA_FOUND THEN
         RETURN(0);   -- No tiene definido intereses
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_INTTEC.f_existe_intertecprod', 1,
                     'Error no controlado. Params: psproduc=' || psproduc, SQLERRM);
         RETURN(0);   -- Ha habido alg�n error
   END f_existe_intertecprod;

   FUNCTION f_get_ncodintprod(psproduc IN NUMBER, pcodint OUT NUMBER)
      RETURN NUMBER IS
--|-------------------------------------------------------------------------|--
--| Funci�n: f_get_ncodintProd                                               |--
--| Descrip: Funci�n que informa sobre si un producto tiene o no definido   |--
--| interes. Y devuelve el codigo de interes                                |--
--| Parametros:                                                             |--
--|    psproduc : Identificador de producto                                 |--
--|                                                                         |--
--| La funci�n devolver�:                                                   |--
--|     pcodint = NULL si no tiene interes o el c�digo si tiene             |--
--|     . 806043 = no tiene definido intereses o ha habido alg�n error      |--
--|     . 0 = s� tiene definido intereses                                   |--
--|-------------------------------------------------------------------------|--
      v_codint       NUMBER;
   BEGIN
      -- Miramos si el producto tienen definido un cuadro de inter�s t�cnico
      SELECT ncodint
        INTO pcodint
        FROM intertecprod
       WHERE sproduc = psproduc;

      RETURN(0);   -- S� tiene definido intereses
   EXCEPTION
      WHEN NO_DATA_FOUND THEN
         pcodint := NULL;
         RETURN(806043);   -- No tiene definido intereses
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_INTTEC.f_get_ncodintProd', 1,
                     'Error no controlado. Params: psproduc=' || psproduc, SQLERRM);
         pcodint := NULL;
         RETURN(806043);   --No tiene definido intereses
   END f_get_ncodintprod;

   FUNCTION f_int_producto(
      psproduc IN NUMBER,
      pctipo IN NUMBER,
      pfecha IN DATE,
      pvtramo IN NUMBER,
      pinttec OUT NUMBER)
      RETURN NUMBER IS
--|-------------------------------------------------------------------------|--
--| Funci�n: f_int_producto                                                 |--
--| Descrip: Para un sproduc y una fecha determinada devuelve el inter�s    |--
--| solicitado a nivel de producto.                                         |--
--| Parametros:                                                             |--
--|    psproduc : Identificador de producto                                 |--
--|    pctipo  : Tipo de inter�s del cual queremos saber el porcentaje.     |--
--|              Valor fijo 848                                             |--
--|    pfecha:  Fecha en la cual queremos saber el porcentaje               |--
--|    pvtramo  : Valor para acceder al tramo. Si se han definido tramos de |--
--|               de capital ser�a la provisi�n de la p�liza, si el tramo es|--
--|               por duraci�n ser�a la duraci�n del seguro, etc ...        |--
--|   pinttec  : Inter�s T�cnico del producto                               |--
--|-------------------------------------------------------------------------|--
   BEGIN
      SELECT ID.ninttec
        INTO pinttec
        FROM intertecprod ip, intertecmov im, intertecmovdet ID
       WHERE ip.sproduc = psproduc
         AND ip.ncodint = im.ncodint
         AND im.ctipo = pctipo
         AND im.finicio <= pfecha
         AND(im.ffin >= pfecha
             OR im.ffin IS NULL)
         AND im.ncodint = ID.ncodint
         AND im.finicio = ID.finicio
         AND im.ctipo = ID.ctipo
         AND ID.ndesde <= pvtramo
         AND(ID.nhasta >= pvtramo
             OR ID.nhasta IS NULL);

      RETURN(0);   -- Todo OK
   EXCEPTION
      WHEN NO_DATA_FOUND THEN
         RETURN(1000503);   -- Error en la parametritzaci�n de intereses a nivel de producto.
      WHEN OTHERS THEN
         RETURN(104742);   -- Error al buscar el inter�s t�cnico del producto
   END f_int_producto;

   FUNCTION f_int_prodcercano(
      psproduc IN NUMBER,
      pctipo IN NUMBER,
      pfecha IN DATE,
      pvtramo IN NUMBER,
      pinttec OUT NUMBER)
      RETURN NUMBER IS
--|-------------------------------------------------------------------------|--
--| Funci�n: f_int_prodcercano                                                 |--
--| Descrip: Para un sproduc y una fecha determinada devuelve el inter�s    |--
--| solicitado a nivel de producto que m�s se aproxime al tramo indicado.                                         |--
--| Parametros:                                                             |--
--|    psproduc : Identificador de producto                                 |--
--|    pctipo  : Tipo de inter�s del cual queremos saber el porcentaje.     |--
--|              Valor fijo 848                                             |--
--|    pfecha:  Fecha en la cual queremos saber el porcentaje               |--
--|    pvtramo  : Valor para acceder al tramo. Si se han definido tramos de |--
--|               de capital ser�a la provisi�n de la p�liza, si el tramo es|--
--|               por duraci�n ser�a la duraci�n del seguro, etc ...        |--
--|   pinttec  : Inter�s T�cnico del producto                               |--
--|-------------------------------------------------------------------------|--
   BEGIN
      SELECT ninttec
        INTO pinttec
        FROM (SELECT   ID.ninttec
                  FROM intertecprod ip, intertecmov im, intertecmovdet ID
                 WHERE ip.sproduc = psproduc
                   AND ip.ncodint = im.ncodint
                   AND im.ctipo = pctipo
                   AND im.finicio <= pfecha
                   AND(im.ffin >= pfecha
                       OR im.ffin IS NULL)
                   AND im.ncodint = ID.ncodint
                   AND im.finicio = ID.finicio
                   AND im.ctipo = ID.ctipo
              ORDER BY ABS(ID.ndesde - pvtramo))
       WHERE ROWNUM = 1;

      RETURN(0);   -- Todo OK
   EXCEPTION
      WHEN NO_DATA_FOUND THEN
         RETURN(120135);   -- No se han encontrado datos.
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_INTTEC.f_int_prodcercano', 1,
                     'Error no controlado. Params: psproduc=' || psproduc || ' pctipo='
                     || pctipo || ' pfecha=' || TO_CHAR(pfecha, 'dd/mm/yyyy hh24:mi:ss')
                     || ' pvtramo=' || pvtramo,
                     SQLERRM);
         RETURN(104742);   -- Error al buscar el inter�s t�cnico del producto
   END f_int_prodcercano;

   FUNCTION ff_int_prodcercano(
      psproduc IN NUMBER,
      pctipo IN NUMBER,
      pfecha IN DATE,
      pvtramo IN NUMBER)
      RETURN NUMBER IS
--|-------------------------------------------------------------------------|--
--| Funci�n: Ff_int_producto                                                 |--
--| Descrip: Para un sproduc y una fecha determinada devuelve el inter�s    |--
--| solicitado a nivel de producto.                                         |--
--| Parametros:                                                             |--
--|    psproduc : Identificador de producto                                 |--
--|    pctipo  : Tipo de inter�s del cual queremos saber el porcentaje.     |--
--|              Valor fijo 848                                             |--
--|    pfecha:  Fecha en la cual queremos saber el porcentaje               |--
--|    pvtramo  : Valor para acceder al tramo. Si se han definido tramos de |--
--|               de capital ser�a la provisi�n de la p�liza, si el tramo es|--
--|               por duraci�n ser�a la duraci�n del seguro, etc ...        |--
--|-------------------------------------------------------------------------|--
      v_pinttec      NUMBER(7, 2);
      v_error        NUMBER;
   BEGIN
      v_error := f_int_prodcercano(psproduc, pctipo, pfecha, pvtramo, v_pinttec);

      IF v_error = 0 THEN   -- Todo OK
         RETURN(v_pinttec);
      ELSE
         RETURN(NULL);   -- f_int_producto ha fallado
      END IF;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_INTTEC.ff_int_prodcercano', 5,
                     'Error no controlado. Params: psproduc=' || psproduc || ' pctipo='
                     || pctipo || ' pfecha=' || TO_CHAR(pfecha, 'dd/mm/yyyy hh24:mi:ss')
                     || ' pvtramo=' || pvtramo,
                     SQLERRM);
         RETURN(NULL);
   END ff_int_prodcercano;

   FUNCTION ff_int_producto(
      psproduc IN NUMBER,
      pctipo IN NUMBER,
      pfecha IN DATE,
      pvtramo IN NUMBER)
      RETURN NUMBER IS
--|-------------------------------------------------------------------------|--
--| Funci�n: Ff_int_producto                                                |--
--| Descrip: Para un sproduc y una fecha determinada devuelve el inter�s    |--
--| solicitado a nivel de producto.                                         |--
--| Parametros:                                                             |--
--|    psproduc : Identificador de producto                                 |--
--|    pctipo  : Tipo de inter�s del cual queremos saber el porcentaje.     |--
--|              Valor fijo 848                                             |--
--|    pfecha:  Fecha en la cual queremos saber el porcentaje               |--
--|    pvtramo  : Valor para acceder al tramo. Si se han definido tramos de |--
--|               de capital ser�a la provisi�n de la p�liza, si el tramo es|--
--|               por duraci�n ser�a la duraci�n del seguro, etc ...        |--
--|-------------------------------------------------------------------------|--
      v_pinttec      NUMBER(7, 2);
      v_error        NUMBER;
   BEGIN
      v_error := f_int_producto(psproduc, pctipo, pfecha, pvtramo, v_pinttec);

      IF v_error = 0 THEN   -- Todo OK
         RETURN(v_pinttec);
      ELSE
         RETURN(NULL);   -- f_int_producto ha fallado
      END IF;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_INTTEC.ff_int_producto', 5,
                     'Error no controlado. Params: psproduc=' || psproduc || ' pctipo='
                     || pctipo || ' pfecha=' || TO_CHAR(pfecha, 'dd/mm/yyyy hh24:mi:ss')
                     || ' pvtramo=' || pvtramo,
                     SQLERRM);
         RETURN(NULL);
   END ff_int_producto;

   FUNCTION f_int_seguro(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pfecha IN DATE DEFAULT f_sysdate,
      pinttec OUT NUMBER,
      pninttec OUT NUMBER,
      pvtramo IN NUMBER DEFAULT 0,   --JRH 09/2007 Tarea 2674: Intereses para LRC
      plog_error IN NUMBER DEFAULT 1)   -- BUG12546:DRA:04/02/2010
      RETURN NUMBER IS
--|---------------------------------------------------------------------------|--
--| Funci�n: f_int_seguro                                                     |--
--| Descrip: Para un sseguro y una fecha determinada devuelve el inter�s      |--
--| solicitado a nivel de p�liza.                                             |--
--| Parametros:                                                               |--
--|    ptablas  : Identificador de las tablas las cuales queremos buscar.     |--
--|               Los posibles valores son 'EST', 'SOL', 'SEG'                |--
--|    psseguro : Identificador de la p�liza                                  |--
--|    pctipo  : Tipo de inter�s del cual queremos saber el porcentaje.       |--
--|              Valor fijo 848                                               |--
--|    pvtramo  : Valor para acceder al tramo. Si se han definido tramos de   |--
--|               de capital ser�a la provisi�n de la p�liza, si el tramo es  |--
--|               por duraci�n ser�a la duraci�n del seguro, etc ...          |--
--|   En el caso de productos tipo LRC se debe informar, el resto se debe     |--
--|   dejar a 0 porque s�lo hay un inter�s por periodo a nivel de p�liza.     |--
--|    pfecha  :  Fecha en la cual queremos saber el porcentaje               |--
--|               Fecha de c�lculo (por defecto ser� F_SYSDATE)               |--
--|    pinttec  : Inter�s T�cnico del producto                                |--
--|---------------------------------------------------------------------------|--
      num_err        NUMBER;
      v_sproduc      NUMBER;
      vssegpol       NUMBER;
      vartramo       NUMBER;
      ptipo          NUMBER;
      vcmodint       NUMBER;
      vfefecto       DATE;
   BEGIN
      vartramo := NVL(pvtramo, 0);

-----------------------
--  ptablas = 'EST'  --
-----------------------
      IF ptablas = 'EST' THEN
         SELECT cmodint, ssegpol, p.sproduc, fefecto
           INTO vcmodint, vssegpol, v_sproduc, vfefecto
           FROM estseguros s, productos p
          WHERE sseguro = psseguro
            AND p.sproduc = s.sproduc;

         -- Bug 9803 - APD - 28/04/2009 - Se le debe pasar el valor de pfecha y no vefecto
         ptipo := pac_inttec.f_es_renova_interes(vssegpol, pfecha);   /* 0: si es cartera// 1:Nueva producci�n */

         -- Bug 9803 - APD - 28/04/2009 - Fin
         IF ptipo = 0 THEN
            ptipo := 4;   -- Inter�s Garatizado en el periodod de Renovaci�n
         ELSE
            ptipo := 3;   --Inter�s Garatizado en el periodod de Alta
         END IF;

         IF NVL(vcmodint, 0) = 0 THEN
            -- Intereses no es modificable en p�liza.
            num_err := f_int_producto(v_sproduc, ptipo, pfecha, pvtramo, pinttec);
         ELSE
            -- Intereses es modificable en p�liza.
            num_err := f_int_producto(v_sproduc, ptipo, pfecha, pvtramo, pninttec);

            BEGIN
               SELECT i.pinttec
                 INTO pinttec
                 FROM estintertecseg i
                WHERE i.sseguro = psseguro
                  -- Tarea 2674: Intereses para LRC
                  AND i.ndesde <= vartramo
                  AND i.nhasta >= vartramo
                  -- Fin Tarea 2674: Intereses para LRC
                  AND(i.fefemov, i.nmovimi) = (SELECT MAX(i2.fefemov), MAX(i2.nmovimi)
                                                 FROM estintertecseg i2
                                                WHERE i2.sseguro = psseguro
                                                  AND i2.fefemov <= pfecha
                                                  -- Tarea 2674: Intereses para LRC
                                                  AND i2.ndesde = i.ndesde
                                                  AND i2.nhasta = i.nhasta
                                                                          -- Fin Tarea 2674: Intereses para LRC
                                             );

               RETURN(0);   -- Todo OK
            EXCEPTION
               WHEN NO_DATA_FOUND THEN
                  pinttec := pninttec;
                  RETURN(0);   -- Todo OK
               WHEN OTHERS THEN
                  -- BUG12546:DRA:04/02/2010:Inici
                  IF plog_error = 1 THEN
                     p_tab_error(f_sysdate, f_user, 'PAC_INTTEC.f_int_seguro', 1,
                                 'Error no controlado. Params: ptablas=' || ptablas
                                 || ' psseguro=' || psseguro || ' pfecha='
                                 || TO_CHAR(pfecha, 'dd/mm/yyyy hh24:mi:ss'),
                                 SQLERRM);
                  END IF;

                  -- BUG12546:DRA:04/02/2010:Fi
                  RETURN(153040);   -- Error al buscar el inter�s t�cnico de la p�liza
            END;
         END IF;
      ELSE
-------------------------
--  ptablas  'reales'  --
-------------------------
         SELECT cmodint, p.sproduc, fefecto
           INTO vcmodint, v_sproduc, vfefecto
           FROM seguros s, productos p
          WHERE s.sseguro = psseguro
            AND p.sproduc = s.sproduc;

         -- Bug 9803 - APD - 28/04/2009 - Se le debe pasar el valor de pfecha y no vefecto
         ptipo := pac_inttec.f_es_renova_interes(vssegpol, pfecha);   /* 0: si es cartera// 1:Nueva producci�n */

         -- Bug 9803 - APD - 28/04/2009 - Fin
         IF ptipo = 0 THEN
            ptipo := 4;   -- Inter�s Garatizado en el periodod de Renovaci�n
         ELSE
            ptipo := 3;   --Inter�s Garatizado en el periodod de Alta
         END IF;

         IF NVL(vcmodint, 0) = 0 THEN
            -- Intereses no es modificable en p�liza.
            num_err := f_int_producto(v_sproduc, ptipo, pfecha, pvtramo, pinttec);
         ELSE
            -- Intereses es modificable en p�liza.
            num_err := f_int_producto(v_sproduc, ptipo, pfecha, pvtramo, pninttec);

            BEGIN
               SELECT i.pinttec
                 INTO pinttec
                 FROM intertecseg i
                WHERE i.sseguro = psseguro
                  -- Tarea 2674: Intereses para LRC
                  AND i.ndesde <= vartramo
                  AND i.nhasta >= vartramo
                  -- Fin Tarea 2674: Intereses para LRC
                  AND(i.fefemov, i.nmovimi) = (SELECT MAX(i2.fefemov), MAX(i2.nmovimi)
                                                 FROM intertecseg i2
                                                WHERE i2.sseguro = psseguro
                                                  AND i2.fefemov <= pfecha
                                                  -- Tarea 2674: Intereses para LRC
                                                  AND i2.ndesde = i.ndesde
                                                  AND i2.nhasta = i.nhasta
                                                                          -- Fin Tarea 2674: Intereses para LRC
                                             );

               RETURN(0);   -- Todo OK
            EXCEPTION
               WHEN NO_DATA_FOUND THEN
                  pinttec := pninttec;
                  RETURN(0);   -- Todo OK
               WHEN OTHERS THEN
                  -- BUG12546:DRA:04/02/2010:Inici
                  IF plog_error = 1 THEN
                     p_tab_error(f_sysdate, f_user, 'PAC_INTTEC.f_int_seguro', 1,
                                 'Error no controlado. Params: ptablas=' || ptablas
                                 || ' psseguro=' || psseguro || ' pfecha='
                                 || TO_CHAR(pfecha, 'dd/mm/yyyy hh24:mi:ss'),
                                 SQLERRM);
                  END IF;

                  -- BUG12546:DRA:04/02/2010:Fi
                  RETURN(153040);   -- Error al buscar el inter�s t�cnico de la p�liza
            END;
         END IF;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         -- BUG12546:DRA:04/02/2010:Inici
         IF plog_error = 1 THEN
            p_tab_error(f_sysdate, f_user, 'PAC_INTTEC.f_int_seguro', 1,
                        'Error no controlado. Params: ptablas=' || ptablas || ' psseguro='
                        || psseguro || ' pfecha=' || TO_CHAR(pfecha, 'dd/mm/yyyy hh24:mi:ss'),
                        SQLERRM);
         END IF;

         -- BUG12546:DRA:04/02/2010:Fi
         RETURN(153040);   -- Error al buscar el inter�s t�cnico de la p�liza
   END f_int_seguro;

   FUNCTION ff_int_seguro(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pfecha IN DATE DEFAULT f_sysdate,
      pvtramo IN NUMBER DEFAULT 0,   --JRH 09/2007 Tarea 2674: Intereses para LRC
      plog_error IN NUMBER DEFAULT 1)   -- BUG12546:DRA:04/02/2010
      RETURN NUMBER IS
--|-------------------------------------------------------------------------|--
--| Funci�n: Ff_int_seguro                                                   |--
--| Descrip: Para un sseguro y una fecha determinada devuelve el inter�s    |--
--| solicitado a nivel de p�liza.                                           |--
--| Parametros:                                                             |--
--|    ptablas  : Identificador de las tablas las cuales queremos buscar.   |--
--|               Los posibles valores son 'EST', 'SOL', 'SEG'              |--
--|    psseguro : Identificador de la p�liza                                |--
--|    pctipo  : Tipo de inter�s del cual queremos saber el porcentaje.     |--
--|              Valor fijo 848                                             |--
--|    pvtramo  : Valor para acceder al tramo. Si se han definido tramos de |--
--|               de capital ser�a la provisi�n de la p�liza, si el tramo es|--
--|               por duraci�n ser�a la duraci�n del seguro, etc ...        |--
--                                En el caso de productos tipo LRC se debe informar, el
--                                resto se debe dejar a 0 porque s�lo hay un inter�s por periodo a nivel de p�liza.
--|    pfecha  : Fecha en la cual queremos saber el porcentaje              |--
--|              Fecha de c�lculo (por defecto ser� F_SYSDATE)              |--
--|-------------------------------------------------------------------------|--
      v_pinttec      NUMBER(12, 8);
      v_pninttec     NUMBER(12, 8);
      v_error        NUMBER;
   BEGIN
      v_error := f_int_seguro(ptablas, psseguro, pfecha, v_pinttec, v_pninttec, pvtramo,
                              plog_error);   -- Tarea 2674: A�adimos pvtramo Intereses para LRC

      IF v_error = 0 THEN   -- Todo OK
         RETURN(v_pinttec);
      ELSE
         RETURN(NULL);   -- f_int_seguro ha fallado
      END IF;
   EXCEPTION
      WHEN OTHERS THEN
         -- BUG12546:DRA:04/02/2010:Inici
         IF plog_error = 1 THEN
            p_tab_error(f_sysdate, f_user, 'PAC_INTTEC.ff_int_seguro', 1,
                        'Error no controlado. Params: ptablas=' || ptablas || ' psseguro='
                        || psseguro || ' pfecha=' || TO_CHAR(pfecha, 'dd/mm/yyyy hh24:mi:ss'),
                        SQLERRM);
         END IF;

         -- BUG12546:DRA:04/02/2010:Fi
         RETURN(NULL);
   END ff_int_seguro;

   FUNCTION f_int_seguro_alta_renova(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pmodo IN NUMBER,
      pfecha IN DATE DEFAULT f_sysdate,
      pinttec OUT NUMBER,
      pninttec OUT NUMBER,
      p_tramo IN NUMBER
            DEFAULT NULL   -- Tarea 2674 Por si queremos saber el inter�s de un tramo especificamente en una p�liza LRC
                        )
      RETURN NUMBER IS
--|-------------------------------------------------------------------------|--
--| Funci�n: f_int_seguro_alta_renova                                       |--
--| Descrip: Para un sseguro y una fecha determinada devuelve el inter�s    |--
--| t�cnico garantizado de tipo alta/renovaci�n.                            |--
--| Parametros:                                                             |--
--|    ptablas  : Identificador de las tablas las cuales queremos buscar.   |--
--|               Los posibles valores son 'EST', 'SOL', 'SEG'              |--
--|    psseguro : Identificador de la p�liza                                |--
--|    pmodo  : Indica si se est� en modo Alta (valor parametro = 1) o      |--
--|             si se est� en modo Renovacion (valor parametro = 2)         |--
--|              Valor fijo 848                                             |--
--|    pvtramo  : Valor para acceder al tramo. Si se han definido tramos de |--
--|               de capital ser�a la provisi�n de la p�liza, si el tramo es|--
--|               por duraci�n ser�a la duraci�n del seguro, tramos LRC,... |--
--|               En el caso de productos tipo LRC se debe informar, el     |--
--|               resto se debe dejar a null porque s�lo hay un inter�s por |--
--|               periodo a nivel de p�liza, ya lo tenemos prefijado.       |--
--|    pfecha:  Fecha en la cual queremos saber el porcentaje               |--
--|             (por defecto ser� F_SYSDATE)                                |--
--|-------------------------------------------------------------------------|--
      v_tipo         NUMBER;
      v_tramo        NUMBER;
      v_sproduc      NUMBER;
      v_sprodtar     NUMBER;
      v_pintec       NUMBER;
      num_error      NUMBER := 0;
      v_duracion     NUMBER;   -- Tarea 2674: Intereses para LRC. Sacaremos la duraci�n de la p�liza tambi�n.
      tipdur         NUMBER;
      vctramtip      NUMBER;
      vhayint        NUMBER;
      vcintrev       NUMBER;
   BEGIN
      --Bug 9803 - APD - 22/04/2009 -- el valor del pmodo debe ser 1 (Alta); 2 (Renovacion)
      IF pmodo = 2 THEN
         v_tipo := 4;   -- Inter�s Garatizado en el periodod de Renovaci�n
      ELSE
         v_tipo := 3;   --Inter�s Garatizado en el periodod de Alta
      END IF;

      --Bug 9803 - APD - 22/04/2009 -- Fin

      -----------------------------------------------
-- Se busca el sproduc en funci�n de ptablas --
-----------------------------------------------
-----------------------
--  ptablas = 'EST'  --
-----------------------
      IF ptablas = 'EST' THEN
         BEGIN
            SELECT sproduc, nduraci, sprodtar
              INTO v_sproduc, v_duracion, v_sprodtar
              FROM estseguros
             WHERE sseguro = psseguro;
         EXCEPTION
            WHEN OTHERS THEN
               p_tab_error(f_sysdate, f_user, 'PAC_INTTEC.f_int_seguro_alta_renova', 10,
                           'Error no controlado. Params: ptablas=' || ptablas || ' psseguro='
                           || psseguro || ' pmodo=' || pmodo || ' pfecha='
                           || TO_CHAR(pfecha, 'dd/mm/yyyy hh24:mi:ss'),
                           SQLERRM);
               RETURN(104742);   -- Error al buscar el inter�s t�cnico del producto
         END;
-----------------------
--  ptablas = 'SOL'  --
-----------------------
      ELSIF ptablas = 'SOL' THEN
         BEGIN
            SELECT sproduc, nduraci, sprodtar
              INTO v_sproduc, v_duracion, v_sprodtar
              FROM solseguros
             WHERE ssolicit = psseguro;
         EXCEPTION
            WHEN OTHERS THEN
               p_tab_error(f_sysdate, f_user, 'PAC_INTTEC.f_int_seguro_alta_renova', 15,
                           'Error no controlado. Params: ptablas=' || ptablas || ' psseguro='
                           || psseguro || ' pmodo=' || pmodo || ' pfecha='
                           || TO_CHAR(pfecha, 'dd/mm/yyyy hh24:mi:ss'),
                           SQLERRM);
               RETURN(104742);   -- Error al buscar el inter�s t�cnico del producto
         END;
-------------------------
--  ptablas  'reales'  --
-------------------------
      ELSE
         BEGIN
            SELECT sproduc, nduraci, sprodtar
              INTO v_sproduc, v_duracion, v_sprodtar
              FROM seguros
             WHERE sseguro = psseguro;
         EXCEPTION
            WHEN OTHERS THEN
               p_tab_error(f_sysdate, f_user, 'PAC_INTTEC.f_int_seguro_alta_renova', 20,
                           'Error no controlado. Params: ptablas=' || ptablas || ' psseguro='
                           || psseguro || ' pmodo=' || pmodo || ' pfecha='
                           || TO_CHAR(pfecha, 'dd/mm/yyyy hh24:mi:ss'),
                           SQLERRM);
               RETURN(104742);   -- Error al buscar el inter�s t�cnico del producto
         END;
      END IF;

      vhayint := f_existe_intertecprod(v_sproduc);

      IF vhayint = 1 THEN
--------------------------------------------------------------------------
-- Se busca el tramo en funci�n de si se est� en modo Alta o Renovaci�n --
-- y en funci�n de si el tramo del inter�s t�cnico del producto es por  --
-- Duraci�n o Provisi�n Matem�tica (se mira el parametro de instalaci�n --
-- TRAMOINTTEC)                                                         --
--------------------------------------------------------------------------
         SELECT ctramtip
           INTO vctramtip
           FROM intertecmov i, intertecprod p
          WHERE p.sproduc = v_sproduc
            AND p.ncodint = i.ncodint
            AND i.ctipo = v_tipo   -- para el inter�s que estamos calculando.
            AND i.finicio <= pfecha
            AND(i.ffin >= pfecha
                OR i.ffin IS NULL);

         IF vctramtip = 0 THEN
            v_tramo := 0;
         ELSIF vctramtip = 1 THEN   -- Duraci�n
            -- Si es vitalicio puede no haber duraci�n
            SELECT cduraci
              INTO tipdur
              FROM productos
             WHERE sproduc = v_sproduc;

            -- Se busca la duraci�n del inter�s t�cnico a nivel de p�liza o a nivel de per�odo seg�n el parproducto 'DURPER'
            v_tramo := pac_calc_comu.ff_get_duracion(ptablas, psseguro);

            IF (v_tramo IS NULL)
               AND(tipdur = 4) THEN
               v_tramo := 1;
            END IF;   --JRH Vitalicio caso especial

            -- Bug 9540 - JRH - 20/05/2009 - Decesos
            IF (v_tramo IS NULL)
               AND(tipdur = 0) THEN
               v_tramo := 1;
            END IF;   --Fin bug

            IF (v_tramo IS NULL)
               AND(tipdur <> 4) THEN   --JRH Vitalicio caso especial
               p_tab_error(f_sysdate, f_user, 'PAC_INTTEC.f_int_seguro_alta_renova', 25,
                           'Error no controlado. Params: ptablas=' || ptablas || ' psseguro='
                           || psseguro || ' pmodo=' || pmodo || ' pfecha='
                           || TO_CHAR(pfecha, 'dd/mm/yyyy hh24:mi:ss'),
                           SQLERRM);
               RETURN 104506;   -- Error al obtener la duraci�n del seguro.
            END IF;
         /*
                     -----------------------
                     --  ptablas = 'EST'  --
                     -----------------------
                     IF ptablas = 'EST' THEN
                        Begin
                          SELECT NDURPER
                          INTO v_tramo
                          FROM ESTSEGUROS_AHO
                          WHERE sseguro = psseguro;
                        Exception
                          When Others Then
                               P_Tab_Error (F_Sysdate,
                                            F_USER,
                                            'PAC_INTTEC.f_int_seguro_alta_renova',
                                            25,
                                            'Error no controlado. Params: ptablas='||ptablas||' psseguro='||psseguro||' pmodo='||pmodo||' pfecha='||to_char(pfecha, 'dd/mm/yyyy hh24:mi:ss'),
                                            SQLERRM);
                               Return (104742);  -- Error al buscar el inter�s t�cnico del producto
                        End;

                     -----------------------
                     --  ptablas = 'SOL'  --
                     -----------------------
                     ELSIF ptablas = 'SOL' THEN

                        Begin
                          SELECT NDURPER
                          INTO v_tramo
                          FROM SOLSEGUROS_AHO
                          WHERE ssolicit = psseguro;
                        Exception
                          When Others Then
                               P_Tab_Error (F_Sysdate,
                                            F_USER,
                                            'PAC_INTTEC.f_int_seguro_alta_renova',
                                            30,
                                            'Error no controlado. Params: ptablas='||ptablas||' psseguro='||psseguro||' pmodo='||pmodo||' pfecha='||to_char(pfecha, 'dd/mm/yyyy hh24:mi:ss'),
                                            SQLERRM);
                               Return (104742);  -- Error al buscar el inter�s t�cnico del producto
                        End;

                     ------------------------
                     --  ptablas 'reales'  --
                     ------------------------
                     ELSE

                        Begin
                          SELECT decode(pmodo,1,NDURPER, ndurrev)
                          INTO v_tramo
                          FROM SEGUROS_AHO
                          WHERE sseguro = psseguro;
                        Exception
                          When Others Then
                               P_Tab_Error (F_Sysdate,
                                            F_USER,
                                            'PAC_INTTEC.f_int_seguro_alta_renova',
                                            35,
                                            'Error no controlado. Params: ptablas='||ptablas||' psseguro='||psseguro||' pmodo='||pmodo||' pfecha='||to_char(pfecha, 'dd/mm/yyyy hh24:mi:ss'),
                                            SQLERRM);
                               Return (104742);  -- Error al buscar el inter�s t�cnico del producto
                        End;

                     END IF;
         */
         ELSIF vctramtip = 2 THEN   -- Provisi�n Matem�tica
            IF pmodo = 1 THEN   -- Alta
                           -- Se busca la Provisi�n Matem�tica (en el Alta ser� la prima anual de la p�liza)
               --            v_tramo := f_segprima(psseguro, pfecha, ptablas);
               v_tramo :=
                  GREATEST(GREATEST(NVL(pac_calc_comu.ff_capital_gar_tipo(ptablas, psseguro,
                                                                          1, 3, 1),
                                        0),
                                    NVL(pac_calc_comu.ff_capital_gar_tipo(ptablas, psseguro,
                                                                          1, 4, 1),
                                        0)));
            ELSE   -- pmodo 2 --> RENOVACION
               v_tramo := pac_provmat_formul.f_calcul_formulas_provi(psseguro, pfecha,
                                                                     'IPROVAC');

               IF v_tramo IS NULL THEN
                  RETURN(100825);   -- -- No hi ha cap garantia introduida
               END IF;
            END IF;
         ELSIF vctramtip = 3 THEN   -- --JRH 09/2007 Tarea 2674: Tipo LRC Duraci�n-Anualidad
            --JRH 09/2007 Tarea 2674: Intereses para LRC
            IF p_tramo IS NULL THEN   --Si no nos informan el tramo en cuesti�nvamos a buscar el que hay en la p�liza (el que se est� tratando)
               --De aqu� obtenemos el periodo en el que estamos
               v_tramo := pac_calc_comu.ff_get_duracion(ptablas, psseguro);
               --Para el tipo 3 los tramos de interes son la duraci�n de la p�liza concatenada al per�odo.
               v_tramo := TO_NUMBER(TO_CHAR(v_duracion) || TO_CHAR(v_tramo));
            ELSE   --Por si queremos saber el inter�s de un tramo espec�ficamente
               v_tramo := p_tramo;
            END IF;

            v_tipo := 6;   --JRH 10/2007 Es el tipo 6

            IF v_tramo IS NULL THEN
               p_tab_error(f_sysdate, f_user, 'PAC_INTTEC.f_int_seguro_alta_renova', 25,
                           'Error no controlado. Params: ptablas=' || ptablas || ' psseguro='
                           || psseguro || ' pmodo=' || pmodo || ' pfecha='
                           || TO_CHAR(pfecha, 'dd/mm/yyyy hh24:mi:ss'),
                           SQLERRM);
               RETURN 104506;   -- Error al obtener la duraci�n del seguro.
            END IF;
         END IF;

         IF pmodo = 1 THEN
            num_error := f_int_seguro(ptablas, psseguro, pfecha, pinttec, pninttec, v_tramo);
         ELSE
            -- En la renovaci�n dependiendo del valor del campo cintrev (Por defecto en la renovacion
            -- aplicar el inter�s del producto) se buscar� el inter�s a nivel de producto (si cintrev = 1)
            -- o a nivel de poliza (cintrev = 0 )
            SELECT cintrev
              INTO vcintrev
              FROM productos
             WHERE sproduc = v_sproduc;

            IF NVL(vcintrev, 0) = 0 THEN
               num_error := f_int_seguro(ptablas, psseguro, pfecha, pinttec, pninttec,
                                         v_tramo);
            ELSE
               -- Se busca el inter�s t�cnico garantizado del producto
               num_error := f_int_producto(NVL(v_sprodtar, v_sproduc), v_tipo, pfecha,
                                           v_tramo, pinttec);
               -- Bug 9803 - APD - 28/04/2009 - en la renovaci�n tambi�n se necesita saber el valor
               -- de la variable pninttec (valor que se grabar� en INTERTECSEG.NINNTEC) y ser� el
               -- mismo valor que pinttec
               -- INTERTECSEG.PINTTEC = valor del interes a nivel de p�liza
               -- INTERTECSEG.NINNTEC = valor del interes a nivel de producto
               pninttec := pinttec;
            -- Bug 9803 - APD - 28/04/2009 - Fin
            END IF;
         END IF;

         -- Si todo OK, entonces num_error = 0
         -- Si KO, entonces num_error = c�digo de error
         RETURN(num_error);
      ELSE
         RETURN 0;
      END IF;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_INTTEC.f_int_seguro_alta_renova', 100,
                     'Error no controlado. Params: ptablas=' || ptablas || ' psseguro='
                     || psseguro || ' pmodo=' || pmodo || ' pfecha='
                     || TO_CHAR(pfecha, 'dd/mm/yyyy hh24:mi:ss'),
                     SQLERRM);
         RETURN(104742);   -- Error al buscar el inter�s t�cnico del producto
   END f_int_seguro_alta_renova;

   FUNCTION ff_int_seguro_alta_renova(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pmodo IN NUMBER,
      pfecha IN DATE DEFAULT f_sysdate,
      p_tramo IN NUMBER DEFAULT NULL)
      RETURN NUMBER IS
--|-------------------------------------------------------------------------|--
--| Funci�n: f_int_seguro_alta_renova                                       |--
--| Descrip: Para un sseguro y una fecha determinada devuelve el inter�s    |--
--| t�cnico garantizado de tipo alta/renovaci�n.                            |--
--| Parametros:                                                             |--
--|    ptablas  : Identificador de las tablas las cuales queremos buscar.   |--
--|               Los posibles valores son 'EST', 'SOL', 'SEG'              |--
--|    psseguro : Identificador de la p�liza                                |--
--|    pmodo  : Indica si se est� en modo Alta (valor parametro = 1) o      |--
--|             si se est� en modo Renovacion (valor parametro = 2)         |--
--|              Valor fijo 848                                             |--
--|    pvtramo  : Valor para acceder al tramo. Si se han definido tramos de |--
--|               de capital ser�a la provisi�n de la p�liza, si el tramo es|--
--|               por duraci�n ser�a la duraci�n del seguro, tramos LRC,... |--
--|                  En el caso de productos tipo LRC se debe informar, el     |--
--|                  resto se debe dejar a null porque s�lo hay un inter�s por |--
--|               periodo a nivel de p�liza, ya lo tenemos prefijado.       |--
--|    pfecha:  Fecha en la cual queremos saber el porcentaje               |--
--|             (por defecto ser� F_SYSDATE)                                |--
--|-------------------------------------------------------------------------|--
      v_pinttec      NUMBER(12, 8);
      v_pninttec     NUMBER(12, 8);
      v_error        NUMBER := 0;
   BEGIN
      v_error := f_int_seguro_alta_renova(ptablas, psseguro, pmodo, pfecha, v_pinttec,
                                          v_pninttec, p_tramo);

      IF v_error = 0 THEN   -- Todo OK
         RETURN(v_pinttec);
      ELSE
         RETURN(NULL);   -- f_int_seguro_alta_renova ha fallado
      END IF;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_INTTEC.ff_int_seguro_alta_renova', NULL,
                     'Error no controlado. Params: ptablas=' || ptablas || ' psseguro='
                     || psseguro || ' pmodo=' || pmodo || ' pfecha='
                     || TO_CHAR(pfecha, 'dd/mm/yyyy hh24:mi:ss'),
                     SQLERRM);
         RETURN(NULL);
   END ff_int_seguro_alta_renova;

/*
********************************************+
*/
--|-------------------------------------------------------------------------|--
--| Funci�n: F_INT_GAR_PROD                                                 |--
--| Descrip: devolver� el inter�s definido en una garant�a de un producto   |--
--|                                                                         |--
--| Parametros:                                                             |--
--|    psproduc : Identificador de producto                                 |--
--|    pcactivi: Identificador de la actividad                              |--
--|    pcgarant: Identificador de la garant�a                               |--
--|    pctipo : Tipo de inter�s del cual queremos saber el porcentaje.      |--
--|              Valor fijo 848                                             |--
--|    pfecha: Fecha en la cual queremos saber el porcentaje                |--
--|    pvtramo  : Valor para acceder al tramo. Si se han definido tramos de |--
--|               de capital ser�a la provisi�n de la p�liza, si el tramo es|--
--|               por duraci�n ser�a la duraci�n del seguro, tramos LRC,... |--
--|       pinttec : Inter�s T�cnico del producto/actividad/garant�a         |--
--|-------------------------------------------------------------------------|--
   FUNCTION f_int_gar_prod(
      psproduc IN productos.sproduc%TYPE,
      pcactivi IN seguros.cactivi%TYPE,
      pcgarant IN garanpro.cgarant%TYPE,
      pctipo IN NUMBER,
      pfecha IN DATE,
      pvtramo IN NUMBER,
      pinttec OUT NUMBER)
      RETURN NUMBER IS
   BEGIN
      pinttec := 0;

      SELECT ID.ninttec
        INTO pinttec
        FROM intertecgar ip, intertecmov im, intertecmovdet ID
       WHERE ip.sproduc = psproduc
         AND ip.cactivi = pcactivi
         AND ip.cgarant = pcgarant
         AND ip.ncodint = im.ncodint
         AND im.ctipo = pctipo
         AND im.finicio <= pfecha
         AND(im.ffin >= pfecha
             OR im.ffin IS NULL)
         AND im.ncodint = ID.ncodint
         AND im.finicio = ID.finicio
         AND im.ctipo = ID.ctipo
         AND ID.ndesde <= pvtramo
         AND(ID.nhasta >= pvtramo
             OR ID.nhasta IS NULL);

      RETURN 0;   --Retorno: Devuelve cero si todo ha ido bien.
   EXCEPTION
      WHEN NO_DATA_FOUND THEN
         -- Si la select no devuelve registros devolver un error de Error en la parametritzaci�n de intereses a nivel de garant�a.
         RETURN(153040);   -- Error al buscar el inter�s t�cnico de la p�liza --
      WHEN OTHERS THEN
         -- Si la select peta devolver el siguiente error: Error al buscar el inter�s t�cnico del producto.
         RETURN(104742);   -- Error al buscar el inter�s t�cnico del producto
   END f_int_gar_prod;

--|-------------------------------------------------------------------------|--
--| Funci�n: FF_INT_GAR_PROD                                                |--
--| Descrip: devolver� el inter�s definido en una garant�a de un producto   |--
--|                                                                         |--
--| Parametros:                                                             |--
--|    psproduc : Identificador de producto                                 |--
--|    pcactivi: Identificador de la actividad                              |--
--|    pcgarant: Identificador de la garant�a                               |--
--|    pctipo : Tipo de inter�s del cual queremos saber el porcentaje.      |--
--|              Valor fijo 848                                             |--
--|    pfecha: Fecha en la cual queremos saber el porcentaje                |--
--|    pvtramo  : Valor para acceder al tramo. Si se han definido tramos de |--
--|               de capital ser�a la provisi�n de la p�liza, si el tramo es|--
--|               por duraci�n ser�a la duraci�n del seguro, tramos LRC,... |--
--|-------------------------------------------------------------------------|--
   FUNCTION ff_int_gar_prod(
      psproduc IN productos.sproduc%TYPE,
      pcactivi IN seguros.cactivi%TYPE,
      pcgarant IN garanpro.cgarant%TYPE,
      pctipo IN NUMBER,
      pfecha IN DATE,
      pvtramo IN NUMBER)
      RETURN NUMBER IS
      pinttec        NUMBER;
      num            NUMBER;
   BEGIN
      num := f_int_gar_prod(psproduc, pcactivi, pcgarant, pctipo, pfecha, pvtramo, pinttec);

      -- y devolver el inter�s en caso de que esta funci�n de error devolveremos un nulo.
      IF num = 0 THEN
         RETURN pinttec;
      ELSE
         RETURN NULL;
      END IF;
   END ff_int_gar_prod;

--|-------------------------------------------------------------------------|--
--| Funci�n: F_INT_GAR_SEG                                                  |--
--| Descrip: Esta funci�n ser� igual que la funci�n f_int_seguro,           |--
--|   tiene un parametro mas de entrada  Pcgarant in GARANPRO.CGARANT%TYPE  |--
--| Parametros:                                                             |--
--|    ptablas  : Identificador de las tablas las cuales queremos buscar.   |--
--|               Los posibles valores son 'EST', 'SOL', 'SEG'              |--
--|    psseguro : Identificador de la p�liza                                |--
--|    pfecha  :  Fecha en la cual queremos saber el porcentaje             |--
--|    pcgarant: Identificador de la garant�a                               |--
--|    pvtramo  : Valor para acceder al tramo. Si se han definido tramos de |--
--|               de capital ser�a la provisi�n de la p�liza, si el tramo es|--
--|               por duraci�n ser�a la duraci�n del seguro, etc ...        |--
--|    pinttec  : Inter�s T�cnico del producto                              |--
--|-------------------------------------------------------------------------|--

   -- Esta funci�n ser� igual que la funci�n f_int_seguro, la �nica diferencia es que tiene un parametro mas de entrada
   --  Pcgarant in GARANPRO.CGARANT%TYPE,
   -- En lugar de llamar a la funci�n f_int_producto llamar� a la funci�n f_int_prod_gar y realizar� la select sobre intertecseggar
   -- en lugar de intertecseg.
   FUNCTION f_int_gar_seg(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pfecha IN DATE DEFAULT f_sysdate,
      pcgarant IN garanpro.cgarant%TYPE,
      pinttec OUT NUMBER,
      pninttec OUT NUMBER,
      pvtramo IN NUMBER DEFAULT 0)
      RETURN NUMBER IS
      num_err        NUMBER;
      v_sproduc      NUMBER;
      vssegpol       NUMBER;
      vartramo       NUMBER;
      ptipo          NUMBER;
      vcmodint       NUMBER;
      vfefecto       DATE;
      --***
      vcactivi       NUMBER;
   --***
   BEGIN
      pinttec := 0;
      pninttec := 0;
      vartramo := NVL(pvtramo, 0);

-----------------------
--  ptablas = 'EST'  --
-----------------------
      IF ptablas = 'EST' THEN
         SELECT cmodint, ssegpol, p.sproduc, fefecto, cactivi
           INTO vcmodint, vssegpol, v_sproduc, vfefecto, vcactivi
           FROM estseguros s, productos p
          WHERE sseguro = psseguro
            AND p.sproduc = s.sproduc;

         -- Bug 9803 - APD - 28/04/2009 - Se le debe pasar el valor de pfecha y no vefecto
         ptipo := pac_inttec.f_es_renova_interes(vssegpol, pfecha);   /* 0: si es cartera// 1:Nueva producci�n */

         -- Bug 9803 - APD - 28/04/2009 - Fin
         IF ptipo = 0 THEN
            ptipo := 4;   -- Inter�s Garatizado en el periodod de Renovaci�n
         ELSE
            ptipo := 3;   --Inter�s Garatizado en el periodod de Alta
         END IF;

         IF NVL(vcmodint, 0) = 0 THEN
            -- Intereses no es modificable en p�liza.
            num_err := f_int_gar_prod(v_sproduc,
                                      --***
                                      vcactivi, pcgarant,
                                      --***
                                      ptipo, pfecha, pvtramo, pinttec);
         ELSE
            -- Intereses es modificable en p�liza.
            num_err := f_int_gar_prod(v_sproduc,
                                      --***
                                      vcactivi, pcgarant,
                                      --***
                                      ptipo, pfecha, pvtramo, pninttec);

            BEGIN
               SELECT i.pinttec
                 INTO pinttec
                 FROM estintertecseggar i
                WHERE i.sseguro = psseguro
                  -- ***
                  AND i.cgarant = pcgarant
                  -- ***
                  -- Tarea 2674: Intereses para LRC
                  AND i.ndesde <= vartramo
                  AND i.nhasta >= vartramo
                  -- Fin Tarea 2674: Intereses para LRC
                  AND(i.fefemov, i.nmovimi) = (SELECT MAX(i2.fefemov), MAX(i2.nmovimi)
                                                 FROM estintertecseggar i2
                                                WHERE i2.sseguro = psseguro
                                                  -- ***
                                                  AND i2.cgarant = pcgarant
                                                  -- ***
                                                  AND i2.fefemov <= pfecha
                                                  -- Tarea 2674: Intereses para LRC
                                                  AND i2.ndesde = i.ndesde
                                                  AND i2.nhasta = i.nhasta
                                                                          -- Fin Tarea 2674: Intereses para LRC
                                             );

               RETURN(0);   -- Todo OK
            EXCEPTION
               WHEN NO_DATA_FOUND THEN
                  pinttec := pninttec;
                  RETURN(0);   -- Todo OK
               WHEN OTHERS THEN
                  p_tab_error(f_sysdate, f_user, 'PAC_INTTEC.f_int_gar_seg', 1,
                              'Error no controlado. Params: ptablas=' || ptablas
                              || ' psseguro=' || psseguro || ' pcgarant=' || pcgarant
                              || ' pfecha=' || TO_CHAR(pfecha, 'dd/mm/yyyy hh24:mi:ss'),
                              SQLERRM);
                  RETURN(153040);   -- Error al buscar el inter�s t�cnico de la p�liza
            END;
         END IF;
      ELSE
-------------------------
--  ptablas  'reales'  --
-------------------------
         SELECT cmodint, p.sproduc, fefecto, cactivi
           INTO vcmodint, v_sproduc, vfefecto, vcactivi
           FROM seguros s, productos p
          WHERE s.sseguro = psseguro
            AND p.sproduc = s.sproduc;

         -- Bug 9803 - APD - 28/04/2009 - Se le debe pasar el valor de pfecha y no vefecto
         ptipo := pac_inttec.f_es_renova_interes(vssegpol, pfecha);   /* 0: si es cartera// 1:Nueva producci�n */

         -- Bug 9803 - APD - 28/04/2009 - Fin
         IF ptipo = 0 THEN
            ptipo := 4;   -- Inter�s Garatizado en el periodod de Renovaci�n
         ELSE
            ptipo := 3;   --Inter�s Garatizado en el periodod de Alta
         END IF;

         IF NVL(vcmodint, 0) = 0 THEN
            -- Intereses no es modificable en p�liza.
            num_err := f_int_gar_prod(v_sproduc,
                                      --***
                                      vcactivi, pcgarant,
                                      --***
                                      ptipo, pfecha, pvtramo, pinttec);
         ELSE
            -- Intereses es modificable en p�liza.
            num_err := f_int_gar_prod(v_sproduc,
                                      --***
                                      vcactivi, pcgarant,
                                      --***
                                      ptipo, pfecha, pvtramo, pninttec);

            BEGIN
               SELECT i.pinttec
                 INTO pinttec
                 FROM intertecseggar i
                WHERE i.sseguro = psseguro
                  -- ***
                  AND i.cgarant = pcgarant
                  -- ***
                  -- Tarea 2674: Intereses para LRC
                  AND i.ndesde <= vartramo
                  AND i.nhasta >= vartramo
                  -- Fin Tarea 2674: Intereses para LRC
                  AND(i.fefemov, i.nmovimi) = (SELECT MAX(i2.fefemov), MAX(i2.nmovimi)
                                                 FROM intertecseggar i2
                                                WHERE i2.sseguro = psseguro
                                                  -- ***
                                                  --and  i2.cgarant = pcgarant
                                                  -- ***
                                                  AND i2.fefemov <= pfecha
                                                  -- Tarea 2674: Intereses para LRC
                                                  AND i2.ndesde = i.ndesde
                                                  AND i2.nhasta = i.nhasta
                                                                          -- Fin Tarea 2674: Intereses para LRC
                                             );

               RETURN(0);   -- Todo OK
            EXCEPTION
               WHEN NO_DATA_FOUND THEN
                  pinttec := pninttec;
                  RETURN(0);   -- Todo OK
               WHEN OTHERS THEN
                  p_tab_error(f_sysdate, f_user, 'PAC_INTTEC.f_int_seg_gar', 1,
                              'Error no controlado. Params: ptablas=' || ptablas
                              || ' psseguro=' || psseguro || ' pcgarant=' || pcgarant
                              || ' pfecha=' || TO_CHAR(pfecha, 'dd/mm/yyyy hh24:mi:ss'),
                              SQLERRM);
                  RETURN(153040);   -- Error al buscar el inter�s t�cnico de la p�liza
            END;
         END IF;
      END IF;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'PAC_INTTEC.f_int_seg_gar', 1,
                     'Error no controlado. Params: ptablas=' || ptablas || ' psseguro='
                     || psseguro || ' pfecha=' || TO_CHAR(pfecha, 'dd/mm/yyyy hh24:mi:ss'),
                     SQLERRM);
         RETURN(153040);   -- Error al buscar el inter�s t�cnico de la p�liza
   END f_int_gar_seg;

--|-------------------------------------------------------------------------|--
--| Funci�n: FF_INT_GAR_SEG                                                 |--
--| Descrip:     devuelve el interes a nivel de garant�a de una p�liza.     |--
--| Parametros:                                                             |--
--|    ptablas  : Identificador de las tablas las cuales queremos buscar.   |--
--|               Los posibles valores son 'EST', 'SOL', 'SEG'              |--
--|    psseguro : Identificador de la p�liza                                |--
--|    pfecha  :  Fecha en la cual queremos saber el porcentaje             |--
--|    pcgarant: Identificador de la garant�a                               |--
--|    pvtramo  : Valor para acceder al tramo. Si se han definido tramos de |--
--|               de capital ser�a la provisi�n de la p�liza, si el tramo es|--
--|               por duraci�n ser�a la duraci�n del seguro, etc ...        |--
--|-------------------------------------------------------------------------|--
   FUNCTION ff_int_gar_seg(
      ptablas IN VARCHAR2,
      psseguro IN NUMBER,
      pcgarant IN garanpro.cgarant%TYPE,
      pfecha IN DATE DEFAULT f_sysdate,
      pvtramo IN NUMBER DEFAULT 0)
      RETURN NUMBER IS
      pinttec        NUMBER;
      pninttec       NUMBER;
      num            NUMBER;
   BEGIN
      num := f_int_gar_seg(ptablas, psseguro, pfecha, pcgarant, pinttec, pninttec, pvtramo);

      -- si esta funci�n devuelve un error devolver un Null y grabar en tab_Error.
      IF num = 0 THEN
         RETURN pinttec;
      ELSE
         p_tab_error(f_sysdate, f_user, 'PAC_INTTEC.FF_INT_GAR_SEG', 1,
                     ' Error en f_int_gar_seg () ,num = ' || num, SQLERRM);
         RETURN NULL;
      END IF;
   END ff_int_gar_seg;

--|-------------------------------------------------------------------------|--
--| Funci�n: F_ES_RENOVA_INTERES                                            |--
--| Descrip: nos dice si una p�liza ha hecho alguna renovacion de           |--
--|          cartera o no( si sigue siendo nueva producci�n),               |--
--|          antes de una fecha.                                            |--
--| Parametros:                                                             |--
--|    psseguro : Identificador de la p�liza                                |--
--|    pfecha  :  Fecha en la cual queremos saber si ha renovado            |--
--|         RETORNA:   0 SI ES CARTERA                                      |--
--|                    1 SI ES NUEVA PRODUCCI�N                             |--
--|-------------------------------------------------------------------------|--
   -- Bug 20107 - APD - 07/02/2012 - se crea la funcion
   FUNCTION f_es_renova_interes(psseguro IN NUMBER, pfecha IN DATE)
      RETURN NUMBER IS
      seguro         NUMBER;
   BEGIN
      SELECT DISTINCT sseguro
                 INTO seguro
                 FROM movseguro
                WHERE sseguro = psseguro
                  AND fefecto <= pfecha
                  AND cmovseg + 0 = 2;   -- (SE PONE EL + 0 PARA ROMPER
                                         -- EL INDICE SI HUBIERA Y QUE ENTRE POR EL INDICE
                                         -- MOVSEG_PK)

      RETURN 0;
   EXCEPTION
      WHEN NO_DATA_FOUND THEN
         RETURN 1;
   END f_es_renova_interes;
END pac_inttec;

/

  GRANT EXECUTE ON "AXIS"."PAC_INTTEC" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_INTTEC" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_INTTEC" TO "PROGRAMADORESCSI";
