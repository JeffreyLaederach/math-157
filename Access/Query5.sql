SELECT EMP_NUM, EMP_LNAME, EMP_FNAME, EMP_JOBCODE AS STAFF
FROM EMPLOYEE
WHERE EMP_JOBCODE = "CUST" OR EMP_JOBCODE = "CLRK";