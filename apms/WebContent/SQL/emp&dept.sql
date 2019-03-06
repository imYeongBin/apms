-- EMP TABLE
CREATE TABLE emp(
    empno number PRIMARY KEY,
    deptno number,
    job VARCHAR2(100),
    name VARCHAR2(100) not null,
    email VARCHAR2(100) UNIQUE,
    id VARCHAR2(100) UNIQUE,
    password VARCHAR2(100),
    tot_cnt number,
    complete_cnt number,
    late_cnt number,
    status VARCHAR2(100)
);
DROP SEQUENCE sq_emp;
CREATE SEQUENCE sq_emp
    MINVALUE 1
    MAXVALUE 99999
    INCREMENT BY 1
    START WITH 1;
    
SELECT * FROM emp;

-- DEPT TABLE
CREATE TABLE dept(
    deptno VARCHAR2(50) PRIMARY KEY,
    dname VARCHAR2(100) UNIQUE
);
DROP SEQUENCE sq_dept;
CREATE SEQUENCE sq_dept
    MINVALUE 1
    MAXVALUE 99999
    INCREMENT BY 1
    START WITH 1;
    
INSERT INTO dept VALUES ('A'||sq_dept.nextval, 'ÀÎ»ç1ÆÀ');
INSERT INTO dept VALUES ('A'||sq_dept.nextval, 'µðÀÚÀÎ1ÆÀ');
INSERT INTO dept VALUES ('A'||sq_dept.nextval, 'µðÀÚÀÎ2ÆÀ');
INSERT INTO dept VALUES ('A'||sq_dept.nextval, '¼³°è1ÆÀ');
INSERT INTO dept VALUES ('A'||sq_dept.nextval, '¼³°è2ÆÀ');
INSERT INTO dept VALUES ('A'||sq_dept.nextval, '¿î¿ë1ÆÀ');
INSERT INTO dept VALUES ('A'||sq_dept.nextval, '¿î¿ë2ÆÀ');
INSERT INTO dept VALUES ('A'||sq_dept.nextval, 'ÃÑ¹«ÆÀ');
INSERT INTO dept VALUES ('A'||sq_dept.nextval, '¿µ¾÷1ÆÀ');
INSERT INTO dept VALUES ('A'||sq_dept.nextval, '¿µ¾÷2ÆÀ');
INSERT INTO dept VALUES ('A'||sq_dept.nextval, '»çÀå½Ç');
INSERT INTO dept VALUES ('A'||sq_dept.nextval, 'ÀÌ»ç½Ç');

SELECT * FROM dept;