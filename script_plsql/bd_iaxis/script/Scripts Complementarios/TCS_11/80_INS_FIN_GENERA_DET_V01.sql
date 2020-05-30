/*
  TCS_11;IAXIS-2119 - JLTS - 10/03/2019 - Creación de los mismos datos de la tabla FIN_GENERAL en FIN_GENERAL_DET
*/
INSERT INTO fin_general_det
  (sfinanci, nmovimi, tdescrip, cfotorut, frut, ttitulo, cfotoced, fexpiced, cpais, cprovin, cpoblac, tinfoad, cciiu, ctipsoci,
   cestsoc, tobjsoc, texperi, fconsti, tvigenc, fccomer)
  SELECT f.sfinanci, seq_fin_gen_det.nextval, f.tdescrip, f.cfotorut, f.frut, f.ttitulo, f.cfotoced, f.fexpiced,
         f.cpais, f.cprovin, f.cpoblac, f.tinfoad, f.cciiu, f.ctipsoci, f.cestsoc, f.tobjsoc, f.texperi, f.fconsti, f.tvigenc,
         f.fccomer
    FROM fin_general f
/
COMMIT
/
