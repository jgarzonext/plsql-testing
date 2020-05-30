/* Formatted on 2020/03/11 17:18 (Formatter Plus v4.8.8) */
UPDATE pregunpro
   SET cpreobl = 0
 WHERE cpregun IN (2702, 2703) AND cramo = 801;

COMMIT ;