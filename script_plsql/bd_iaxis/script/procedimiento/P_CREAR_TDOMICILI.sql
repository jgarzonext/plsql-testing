--------------------------------------------------------
--  DDL for Procedure P_CREAR_TDOMICILI
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."P_CREAR_TDOMICILI" (PCSIGLAS NUMBER, PTNOMVIA VARCHAR2, PNNUMVIA NUMBER, PTCOMPLE VARCHAR2, PTDOMICI OUT VARCHAR2) IS
 vTipvia VARCHAR2(2);
 comp NUMBER;
 nom  NUMBER;
 num  NUMBER;

/******************************************************************************
   NAME:       p_crear_tdomicili
   calcula el campo tdomici a partir de la concatenación de las siglas, la via,
   el número y el resto de la dirección
******************************************************************************/
BEGIN
if (pcsiglas is not null) then
  select tsiglas into vTipvia
  from tipos_via
  where csiglas=pcsiglas;
end if;
nom:=length(ptnomvia);
num:=length(pnnumvia);
comp:=length(ptcomple);
  if (pnnumvia is not null) then
	  if (ptcomple is not null) then
      if (nom+num+comp+8)< 40 then
		    ptdomici:=vTipVia||'/ '||ptnomvia||','||pnnumvia||'('||ptcomple||')';
      else
        ptdomici:=vTipVia||'/ '||substr(ptnomvia,0,40-(num+comp+8))||','||
                    pnnumvia||'('||ptcomple||')';
      end if;
    else
      if (nom+num+5)< 40 then
		    ptdomici:=vTipVia||'/ '||ptnomvia||','||pnnumvia;
      else
        ptdomici:=vTipVia||'/ '||substr(ptnomvia,0,40-(num+5))||','||pnnumvia;
      end if;
	  end if;
  else
  	if (ptcomple is not null) then
      if (nom+12+comp)<40 then
		    ptdomici:=vTipVia||'/ '||ptnomvia||', s/n'||'('||ptcomple||')';
      else
   	    ptdomici:=vTipVia||'/ '||substr(ptnomvia,0,40-(12+comp))||', s/n'||'('||ptcomple||')';
      end if;
    else
      if (nom+12)<40 then
		    ptdomici:=vTipVia||'/ '||ptnomvia||', s/n';
      else
        ptdomici:=vTipVia||'/ '||substr(ptnomvia,0,40-12)||', s/n';
      end if;
	  end if;
  end if;

EXCEPTION
  WHEN OTHERS THEN
    ptdomici := null;

END p_crear_tdomicili;

 
 

/

  GRANT EXECUTE ON "AXIS"."P_CREAR_TDOMICILI" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."P_CREAR_TDOMICILI" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."P_CREAR_TDOMICILI" TO "PROGRAMADORESCSI";
