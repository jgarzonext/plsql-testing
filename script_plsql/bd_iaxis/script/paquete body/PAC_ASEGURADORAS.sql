--------------------------------------------------------
--  DDL for Package Body PAC_ASEGURADORAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "AXIS"."PAC_ASEGURADORAS" AS
   /******************************************************************************
     NOMBRE:       PAC_PENSIONES
     PROP�SITO:  Package para gestionar los planes de pensiones

     REVISIONES:
     Ver        Fecha        Autor             Descripci�n
     ---------  ----------  ---------------  ------------------------------------
     1.0        18/01/2010   JGM                  Creaci�n del package.
     2.0        10/01/2010   RSC                2. 0017223: Actualizaci�n lista ENTIDADES SNCE
   ******************************************************************************/

   /*************************************************************************
      FUNCTION f_get_aseguradoras
      Funci�n que sirve para recuperar los datos de una/varias aseguradoras
           1.  PCEMPRES: Tipo num�rico. Par�metro de entrada. C�digo de traspaso
           2.  PCODASEG: Tipo num�rico. Par�metro de entrada. C�digo de traspaso
           3.  PCODDIGO: Tipo num�rico. Par�metro de entrada. C�digo del plan
           4.  PCODDEP: Tipo num�rico. Par�metro de entrada. C�digo de la depositaria
           5.  PCODDGS: Tipo VARCHAR2. Par�metro de entrada. C�digo DGS de la aseguradora
           6.  pfdatos: Tipo num�rico. Par�metro de Salida. Cursor con la/las aseguradoras planes requeridas.

      Retorna 0 OK 1 KO.
   *************************************************************************/
   FUNCTION f_get_aseguradoras(
      pcempres IN NUMBER,
      pccodaseg IN NUMBER,
      pccodigo IN NUMBER,
      pccoddep IN NUMBER,
      pccoddgs IN VARCHAR2,
      pnombre IN VARCHAR2,
      pctrasp IN NUMBER,   --indica si solo consultamos las de ctrasp = 1 o todas
      pfdatos OUT sys_refcursor)
      RETURN NUMBER IS
      vtraza         NUMBER := 0;
      vquery         VARCHAR2(2000);
   BEGIN
      vquery :=
         ' select ase.ccodaseg,ase.sperson,f_nombre(ase.sperson,1) descripcio, '
         || ' ase.cempres, ase.coddgs,aseg.ccodigo,aseg.tnombre,nvl(ase.clistblanc,0),null'
         || ' from aseguradoras ase, aseguradoras_planes aseg'   --, relasegdep rel'
         || ' where ase.ccodaseg = aseg.ccodaseg(+) ';   --AND rel.ccodaseg(+) = ase.ccodaseg';

      IF pctrasp = 1 THEN
         vquery := vquery || ' AND rel.ctrasp(+) = 1 ';
      END IF;

      IF pcempres IS NOT NULL THEN
         vquery := vquery || ' AND ase.cempres = ' || pcempres || ' ';
      END IF;

      IF pccodaseg IS NOT NULL THEN
         vquery := vquery || ' AND ase.ccodaseg = ' || pccodaseg || ' ';
      END IF;

      IF pccodigo IS NOT NULL THEN
         vquery := vquery || ' AND aseg.ccodigo = ' || pccodigo || ' ';
      END IF;

      IF pccoddep IS NOT NULL THEN
         vquery := vquery || ' AND ase.ccoddep = ' || pccoddep || ' ';
      END IF;

      IF pccoddgs IS NOT NULL THEN
         vquery := vquery || ' AND ase.coddgs = ''' || pccoddgs || ''' ';
      END IF;

      IF pnombre IS NOT NULL THEN
         vquery := vquery || ' AND upper(f_nombre(ase.sperson,1)) like ''%' || UPPER(pnombre)
                   || '%'' ';
      END IF;

      vquery := vquery || ' ORDER BY ase.ccodaseg ';

      OPEN pfdatos FOR vquery;

      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         -- BUG -21546_108724- 08/02/2012 - JLTS - Cierre de posibles cursores abiertos
         IF pfdatos%ISOPEN THEN
            CLOSE pfdatos;
         END IF;

         p_tab_error(f_sysdate, f_user, 'PAC_ASEGURADORAS.f_get_aseguradoras', vtraza, SQLCODE,
                     SQLERRM);
         RETURN 1;
   END f_get_aseguradoras;

/*************************************************************************
   FUNCTION f_del_aseguradoras
   Funci�n que sirve para borrar los datos de una aseguradora (y sus planes)
        1.  PCCODASE: Tipo num�rico. Par�metro de entrada. C�digo de la aseguradora
        2.  PCODDGS: Tipo num�rico. Par�metro de entrada. C�digo DGS de la aseguradora
        Uno al menos informado.

   Retorna 0 OK 1 KO.
*************************************************************************/
   FUNCTION f_del_aseguradoras(pccodaseg IN NUMBER, pccoddgs IN VARCHAR2)
      RETURN NUMBER IS
      vtraza         NUMBER := 0;
      vnumerr        NUMBER;
   BEGIN
      FOR i IN (SELECT aseg.ccodaseg, aseg.ccodigo
                  FROM aseguradoras_planes aseg, aseguradoras ase
                 WHERE ase.ccodaseg = aseg.ccodaseg
                   AND ase.ccodaseg = NVL(pccodaseg, ase.ccodaseg)
                   AND ase.coddgs = NVL(pccoddgs, ase.coddgs)) LOOP
         vnumerr := f_del_aseguradoras_planes(i.ccodaseg, i.ccodigo);

         IF vnumerr <> 0 THEN
            RETURN vnumerr;
         END IF;
      END LOOP;

      DELETE      relasegdep
            WHERE ccodaseg = pccodaseg;

      COMMIT;

      DELETE      aseguradoras ase
            WHERE ase.ccodaseg = NVL(pccodaseg, ase.ccodaseg)
              AND ase.coddgs = NVL(pccoddgs, ase.coddgs);

      COMMIT;
      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_aseguradoras.f_del_aseguradoras', vtraza,
                     SQLCODE, SQLERRM);
         RETURN 1;
   END f_del_aseguradoras;

/*************************************************************************
   FUNCTION f_del_aseguradoras_planes
   Funci�n que sirve para borrar los datos de sus planes
        1.  PCCODIGO: Tipo num�rico. Par�metro de entrada. C�digo del plan
        Uno al menos informado.

   Retorna 0 OK 1 KO.
*************************************************************************/
   FUNCTION f_del_aseguradoras_planes(pccodaseg IN NUMBER, pccodigo IN NUMBER)
      RETURN NUMBER IS
      vtraza         NUMBER := 0;
   BEGIN
      DELETE      aseguradoras_planes asplan
            WHERE asplan.ccodigo = pccodigo
              AND asplan.ccodaseg = pccodaseg;

      COMMIT;
      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_aseguradoras.f_del_aseguradoras_planes', vtraza,
                     SQLCODE, SQLERRM);
         RETURN 1;
   END f_del_aseguradoras_planes;

/*************************************************************************
       F_SET_ASEGURADORAS
Funci�n que sirve para insertar o actualizar datos del aseguradoras.
Par�metros

      vccodaseg in VARCHAR2,
      vsperson in NUMBER,
      vccodban in NUMBER,
      vcbancar in VARCHAR2,
      vcempres in NUMBER,
      vccoddep in NUMBER,
      vccoddgs in VARCHAR2,
      vctipban in NUMBER)

Retorna 0 ok/ 1 KO
*************/
   FUNCTION f_set_aseguradoras(
      vccodaseg IN VARCHAR2,
      vsperson IN NUMBER,
      vccodban IN NUMBER,
      vcbancar IN VARCHAR2,
      vcempres IN NUMBER,
      vccoddep IN NUMBER,
      vccoddgs IN VARCHAR2,
      vctipban IN NUMBER,
      vclistblanc IN NUMBER)
      RETURN NUMBER IS
      vtraza         NUMBER := 0;
      vnumseq        NUMBER;
      v_ccodban      NUMBER(4) := 0;
      v_cempres      NUMBER(2);
   BEGIN
      BEGIN
         IF vccodban IS NULL THEN
            v_ccodban := TO_NUMBER(SUBSTR(vcbancar, 1, 4));
         ELSE
            v_ccodban := vccodban;
         END IF;
      END;

      IF vcempres IS NULL THEN
         v_cempres := f_empres;
      ELSE
         v_cempres := vcempres;
      END IF;

      IF vccodaseg IS NULL THEN
         SELECT codaseguradoras_seq.NEXTVAL
           INTO vnumseq
           FROM DUAL;

         INSERT INTO aseguradoras
                     (ccodaseg, sperson, ccodban, cbancar, cempres, ccoddep, coddgs,
                      ctipban, clistblanc)
              VALUES (vnumseq, vsperson, v_ccodban, vcbancar, v_cempres, vccoddep, vccoddgs,
                      vctipban, NVL(vclistblanc, 1));   -- Bug 17223 - RSC - 10/01/2010 - Actualizaci�n lista ENTIDADES SNCE
      ELSE
         UPDATE aseguradoras ase
            SET ase.sperson = vsperson,
                ase.ccodban = v_ccodban,
                ase.cbancar = vcbancar,
                ase.cempres = v_cempres,
                ase.ccoddep = vccoddep,
                ase.coddgs = vccoddgs,
                ase.ctipban = vctipban,
                ase.clistblanc =
                   NVL
                      (vclistblanc, 1)   -- Bug 17223 - RSC - 10/01/2010 - Actualizaci�n lista ENTIDADES SNCE
          WHERE ase.ccodaseg = vccodaseg;
      END IF;

      COMMIT;
      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_aseguradoras.f_set_aseguradoras', vtraza,
                     SQLCODE, SQLERRM);
         RETURN 1;
   END f_set_aseguradoras;

/*************************************************************************
       F_GET_NOMASEG
Funci�n que sirve para recuperar el nommbre de la aseguradora
Par�metros

      vsperson in NUMBER
Retorna el VARCHAR con su nombre (null si va mal)
*************************************************************************/
   FUNCTION f_get_nomaseg(vsperson IN NUMBER)
      RETURN VARCHAR2 IS
      v_result       VARCHAR2(500) := NULL;
   BEGIN
      SELECT f_nombre(vsperson, 1)
        INTO v_result
        FROM DUAL;

      RETURN v_result;
   EXCEPTION
      WHEN OTHERS THEN
         p_tab_error(f_sysdate, f_user, 'pac_aseguradoras.f_get_NomAseg', 1, SQLCODE, SQLERRM);
         RETURN NULL;
   END f_get_nomaseg;
END pac_aseguradoras;

/

  GRANT EXECUTE ON "AXIS"."PAC_ASEGURADORAS" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."PAC_ASEGURADORAS" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."PAC_ASEGURADORAS" TO "PROGRAMADORESCSI";
