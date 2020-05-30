UPDATE BF_PROACTGRUP
  SET formuladefecto = NULL
WHERE sproduc in (80040,80043)
AND cactivi = 0;  
--
COMMIT;