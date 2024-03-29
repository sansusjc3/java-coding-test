-- 코드를 입력하세요
SELECT P.PRODUCT_CODE, SUM(P.PRICE * OFF.SALES_AMOUNT) AS SALES
FROM PRODUCT P JOIN OFFLINE_SALE OFF
ON P.PRODUCT_ID = OFF.PRODUCT_ID
GROUP BY P.PRODUCT_CODE
ORDER BY SALES DESC, PRODUCT_CODE ASC