SELECT CUSTOMER.CUS_BALANCE, INVOICE.CUS_CODE, CUSTOMER.CUS_CODE
FROM CUSTOMER INNER JOIN INVOICE ON CUSTOMER.CUS_CODE = INVOICE.CUS_CODE
WHERE CUSTOMER.CUS_CODE = INVOICE.CUS_CODE
ORDER BY CUSTOMER.CUS_CODE;