--------------------------------------------------------
--  DDL for View V_DETALLE_MANUAL_COMISLIQ_LCOL
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."V_DETALLE_MANUAL_COMISLIQ_LCOL" ("P_EMPRESA", "P_ANYMES", "P_IDIOMA", "P_FMOVINI", "P_FMOVFIN", "P_CESTREC", "P_SMOVREC", "P_FEMISIO", "P_FLIQUID", "P_SPROCES", "P_FINIVIG_IVA", "P_FFINVIG_IVA", "P_FFILTRO", "RAMO", "PRODUCTO", "NRO_POLIZA", "NRO_CERTIFICADO", "NRO_SUPLEMENTO", "NRO_RECIBO", "COMPANIA", "SUCURSAL_LIDER", "VALOR_PRIMA_NETA", "PERIODO_CONTABLE", "INTERMEDIARIO", "PARTICIP_INTERMEDIARIO", "COMISION_INTERMEDIARIO", "IDTRANSACCION", "CODGARANTIA", "NOMGARANTIA", "INDICA_PROTECCION", "INDICA_ASISTENCIA", "TIPO_COMISION", "ALTURA_POLIZA", "COMISION_RAMO", "COMISION_GARANTIA", "IVA_GARANTIA", "SOBRECOMISION", "PROCESO_GENERACION", "VALOR_COMISION", "VALOR_SOBRECOMISION", "VALOR_IVA_COMISION", "VALOR_RETEIVA_COMISION", "VALOR_RETEFUENTE_COMISION", "VALOR_ICA_COMISION", "DEPARTAMENTO", "MUNICIPIO", "FECHA_LIQ_COMISION", "IND_APLICACION", "TIPO_CONVENIO", "NRO_PLANTILLA", "FORMA_PAGO_COMISION", "USUARIO") AS 
  SELECT irc.cempres, NULL p_anymes, NULL p_idioma, NULL p_fmovini, NULL p_fmovfin,
          NULL p_cestrec, NULL p_smovrec, NULL p_femisio, NULL p_fliquid,
          irc.sproces p_sproces, NULL p_finivig_iva, NULL p_ffinvig_iva, NULL ffiltro,
          (SELECT pr.cramdgs
             FROM productos pr
            WHERE pr.sproduc = (SELECT se.sproduc
                                  FROM seguros se
                                 WHERE se.sseguro =
                                          NVL(irc.sseguro,
                                              (SELECT re.sseguro
                                                 FROM recibos re
                                                WHERE re.nrecibo = irc.nrecibo)))) ramo,
          (SELECT se.sproduc
             FROM seguros se
            WHERE se.sseguro = NVL(irc.sseguro, (SELECT re.sseguro
                                                   FROM recibos re
                                                  WHERE re.nrecibo = irc.nrecibo))) producto,
          (SELECT se.npoliza
             FROM seguros se
            WHERE se.sseguro = NVL(irc.sseguro, (SELECT re.sseguro
                                                   FROM recibos re
                                                  WHERE re.nrecibo = irc.nrecibo))) nro_poliza,
          (SELECT se.ncertif
             FROM seguros se
            WHERE se.sseguro = NVL(irc.sseguro,
                                   (SELECT re.sseguro
                                      FROM recibos re
                                     WHERE re.nrecibo = irc.nrecibo))) nro_certificado,
          (SELECT se.nsuplem
             FROM seguros se
            WHERE se.sseguro = NVL(irc.sseguro,
                                   (SELECT re.sseguro
                                      FROM recibos re
                                     WHERE re.nrecibo = irc.nrecibo))) nro_suplemento,
          irc.nrecibo nro_recibo,
          DECODE(pac_cuadre_adm.f_es_vida(irc.sseguro), 1, '2', '1') compania,
          SUBSTR(pac_redcomercial.f_busca_padre(irc.cempres, irc.cagente, NULL,
                                                NULL),
                 -3) sucursal_lider,
          0 valor_prima_neta,
          (SELECT DISTINCT TO_CHAR(lc.fcontab, 'yyyymm')
                      FROM liquidacab lc
                     WHERE lc.cagente = irc.cagente
                       AND lc.cempres = irc.cempres
                       AND lc.sproliq = irc.sproces) periodo_contable,
          irc.cagente intermediario, 100 particip_intermediario, NULL comision_intermediario,
          NULL idtransaccion, 0 codgarantia, ' ' nomgarantia, ' ' indica_proteccion,
          ' ' indica_asistencia, '9' tipo_comision,
          (SELECT se.nanuali
             FROM seguros se
            WHERE se.sseguro = NVL(irc.sseguro,
                                   (SELECT re.sseguro
                                      FROM recibos re
                                     WHERE re.nrecibo = irc.nrecibo))) altura_poliza,
          NULL comision_ramo, 0 comision_garantia, ROUND(ti.ptipiva, 2) iva_garantia,
          0 sobrecomision, '5' proceso_generacion, NVL((ROUND(irc.iimport)), 0) valor_comision,
          0 valor_sobrecomision,
          ABS(NVL((ROUND((SELECT SUM(NVL(iimport, 0))
                            FROM int_reparto_ctactes
                           WHERE sproces = irc.sproces
                             AND cagente = irc.cagente
                             AND cempres = irc.cempres
                             AND NVL(sseguro, -1) = NVL(irc.sseguro, -1)
                             AND NVL(nrecibo, -1) = NVL(irc.nrecibo, -1)
                             AND ctipreg = 'M'
                             AND cconcta = 53))),
                  0))
          * SIGN(NVL((ROUND(irc.iimport)), 0)) valor_iva_comision,
          ABS(NVL((ROUND((SELECT SUM(NVL(iimport, 0))
                            FROM int_reparto_ctactes
                           WHERE sproces = irc.sproces
                             AND cagente = irc.cagente
                             AND cempres = irc.cempres
                             AND NVL(sseguro, -1) = NVL(irc.sseguro, -1)
                             AND NVL(nrecibo, -1) = NVL(irc.nrecibo, -1)
                             AND ctipreg = 'M'
                             AND cconcta = 55))),
                  0))
          * SIGN(NVL((ROUND(irc.iimport)), 0)) valor_reteiva_comision,
          ABS(NVL((ROUND((SELECT SUM(NVL(iimport, 0))
                            FROM int_reparto_ctactes
                           WHERE sproces = irc.sproces
                             AND cagente = irc.cagente
                             AND cempres = irc.cempres
                             AND NVL(sseguro, -1) = NVL(irc.sseguro, -1)
                             AND NVL(nrecibo, -1) = NVL(irc.nrecibo, -1)
                             AND ctipreg = 'M'
                             AND cconcta = 54))),
                  0))
          * SIGN(NVL((ROUND(irc.iimport)), 0)) valor_retefuente_comision,
          ABS(NVL((ROUND((SELECT SUM(NVL(iimport, 0))
                            FROM int_reparto_ctactes
                           WHERE sproces = irc.sproces
                             AND cagente = irc.cagente
                             AND cempres = irc.cempres
                             AND NVL(sseguro, -1) = NVL(irc.sseguro, -1)
                             AND NVL(nrecibo, -1) = NVL(irc.nrecibo, -1)
                             AND ctipreg = 'M'
                             AND cconcta = 56))),
                  0))
          * SIGN(NVL((ROUND(irc.iimport)), 0)) valor_ica_comision,
          (SELECT po.cprovin
             FROM per_direcciones pd, poblaciones po, agentes ag
            WHERE pd.sperson = ag.sperson
              AND pd.cdomici = (SELECT MIN(pd2.cdomici)
                                  FROM per_direcciones pd2
                                 WHERE pd2.sperson = pd.sperson)
              AND pd.cprovin = po.cprovin
              AND pd.cpoblac = po.cpoblac
              AND ag.cagente = irc.cagente) departamento,
          (SELECT po.cpoblac
             FROM per_direcciones pd, poblaciones po, agentes ag
            WHERE pd.sperson = ag.sperson
              AND pd.cdomici = (SELECT MIN(pd2.cdomici)
                                  FROM per_direcciones pd2
                                 WHERE pd2.sperson = pd.sperson)
              AND pd.cprovin = po.cprovin
              AND pd.cpoblac = po.cpoblac
              AND ag.cagente = irc.cagente) municipio,
          (SELECT DISTINCT TO_CHAR(lc.fliquid, 'yyyymmddhh24mmss')
                      FROM liquidacab lc
                     WHERE lc.cagente = irc.cagente
                       AND lc.cempres = irc.cempres
                       AND lc.sproliq = irc.sproces) fecha_liq_comision,
          'Y' ind_aplicacion, DECODE(NVL(ag.cliquido, -2), 0, 'N', 1, 'S', NULL) tipo_convenio,
          (SELECT DISTINCT lc.nliqmen
                      FROM liquidacab lc
                     WHERE lc.cagente = irc.cagente
                       AND lc.cempres = irc.cempres
                       AND lc.sproliq = irc.sproces) nro_plantilla,
          '2' forma_pago_comision, 'DSISIAXIS' usuario
     FROM int_reparto_ctactes irc, agentes ag, tipoiva ti
    WHERE irc.cagente = ag.cagente
      AND ag.ctipiva = ti.ctipiva
      AND irc.ctipreg = 'M'
      AND irc.cconcta IN(40, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52)
;
  GRANT UPDATE ON "AXIS"."V_DETALLE_MANUAL_COMISLIQ_LCOL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."V_DETALLE_MANUAL_COMISLIQ_LCOL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."V_DETALLE_MANUAL_COMISLIQ_LCOL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."V_DETALLE_MANUAL_COMISLIQ_LCOL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."V_DETALLE_MANUAL_COMISLIQ_LCOL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."V_DETALLE_MANUAL_COMISLIQ_LCOL" TO "PROGRAMADORESCSI";
