-- Drop Table
DROP TABLE emp;
DROP TABLE dept;
DROP TABLE comm;
DROP TABLE task;
DROP TABLE tagsys;
DROP TABLE prjrate;
DROP TABLE prj;
DROP TABLE filesys;
DROP TABLE workspace;

-- Drop Sequence
DROP SEQUENCE sq_emp;
DROP SEQUENCE sq_dept;
DROP SEQUENCE sq_workspace;
DROP SEQUENCE sq_prj;
DROP SEQUENCE sq_prjrate;
DROP SEQUENCE sq_task;
DROP SEQUENCE sq_comm;
DROP SEQUENCE sq_tagsys;
DROP SEQUENCE sq_filesys;
----------------------------------------------------
-- EMP TABLE
CREATE TABLE emp(
    empno number PRIMARY KEY,
    deptno VARCHAR2(50),
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

ALTER TABLE emp
MODIFY job DEFAULT '발령대기';

ALTER TABLE emp
MODIFY status DEFAULT '승인대기';

ALTER TABLE emp
MODIFY deptno DEFAULT 'A11';

SELECT * FROM emp;

-------------------------------------------------------
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
    
INSERT INTO dept VALUES ('A'||sq_dept.nextval, '인사팀');
INSERT INTO dept VALUES ('A'||sq_dept.nextval, '디자인팀');
INSERT INTO dept VALUES ('A'||sq_dept.nextval, '설계팀');
INSERT INTO dept VALUES ('A'||sq_dept.nextval, '운용팀');
INSERT INTO dept VALUES ('A'||sq_dept.nextval, '관제팀');
INSERT INTO dept VALUES ('A'||sq_dept.nextval, '영업팀');
INSERT INTO dept VALUES ('A'||sq_dept.nextval, '총무팀');
INSERT INTO dept VALUES ('A'||sq_dept.nextval, '사장실');
INSERT INTO dept VALUES ('A'||sq_dept.nextval, '이사실');
INSERT INTO dept VALUES ('A'||sq_dept.nextval, '배정대기');

SELECT * FROM dept;

---------------------------------------------------
-- FILE(UP/DOWN LOAD) TABLE
CREATE TABLE filesys(
    fileno number PRIMARY KEY,
    filename varchar2(100) UNIQUE,
    filepath varchar2(2000) NOT NULL
);
DROP SEQUENCE sq_filesys;
CREATE SEQUENCE sq_filesys
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 99999;

SELECT * FROM filesys;

------------------------------------------------------------
-- WORKSPACE TABLE
CREATE TABLE workspace(
    spaceno number PRIMARY KEY,
    title varchar2(100) NOT NULL,
    pm number NOT NULL,
    totbudget number DEFAULT 0,
    status varchar2(100),
    fileno number,
    empnos varchar2(500) NOT NULL
);

DROP SEQUENCE sq_workspace;
CREATE SEQUENCE sq_workspace
    MINVALUE 1
    MAXVALUE 99999
    INCREMENT BY 1
    START WITH 1;

ALTER TABLE workspace
ADD CONSTRAINT fk_space_pm FOREIGN KEY (pm)
REFERENCES emp (empno);

ALTER TABLE workspace
ADD CONSTRAINT fk_space_fileno FOREIGN KEY (fileno)
REFERENCES filesys (fileno);

ALTER TABLE workspace
MODIFY status DEFAULT '대기';
    
SELECT * FROM workspace;

--------------------------------------------------
-- PROJECT TABLE
CREATE TABLE prj(
    prjno number PRIMARY KEY,
    spaceno number,
    title VARCHAR2(100) NOT NULL,
    prjbudget number DEFAULT 0,
    begindate date,
    enddate date,
    status varchar2(100),
    fileno number,
    empnos varchar2(500) NOT NULL
);

DROP SEQUENCE sq_prj;
CREATE SEQUENCE sq_prj
    MINVALUE 1
    MAXVALUE 99999
    INCREMENT BY 1
    START WITH 1;
 
ALTER TABLE prj
ADD CONSTRAINT fk_prj_spaceno FOREIGN KEY (spaceno)
REFERENCES workspace (spaceno);

ALTER TABLE prj
ADD CONSTRAINT fk_prj_fileno FOREIGN KEY (fileno)
REFERENCES filesys (fileno);

ALTER TABLE prj
MODIFY status DEFAULT '대기';

SELECT * FROM prj;

------------------------------------------------
-- PROJECT RATE(BURN CHART) TABLE 
CREATE TABLE prjrate(
    rateno number PRIMARY KEY,
    prjno number,
    regdate date,
    totrate number,
    completerate number
);

DROP SEQUENCE sq_prjrate;
CREATE SEQUENCE sq_prjrate
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 99999;
    
SELECT * FROM prjrate;

--------------------------------------------------
-- TAG TABLE
CREATE TABLE tagsys(
    tagno number PRIMARY KEY,
    tname varchar2(100) UNIQUE
);
DROP SEQUENCE sq_tagsys;
CREATE SEQUENCE sq_tagsys
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 99999;
    
SELECT * FROM tagsys;

------------------------------------------------
-- TASK TABLE 
CREATE TABLE task(
    taskno number PRIMARY KEY,
    prjno number,
    tagno number,
    mgr number,
    cost number DEFAULT 0,
    pretask number,
    title varchar2(100) NOT NULL,
    content varchar2(2000),
    begindate date,
    enddate date,
    status varchar2(100),
    fileno number,
    empno number NOT NULL
);

DROP SEQUENCE sq_task;
CREATE SEQUENCE sq_task
    MINVALUE 1
    MAXVALUE 99999
    INCREMENT BY 1
    START WITH 1;

ALTER TABLE task
ADD CONSTRAINT fk_task_prjno FOREIGN KEY (prjno)
REFERENCES prj (prjno);

ALTER TABLE task
ADD CONSTRAINT fk_task_tagno FOREIGN KEY (tagno)
REFERENCES tagsys (tagno);

ALTER TABLE task
ADD CONSTRAINT fk_task_fileno FOREIGN KEY (fileno)
REFERENCES filesys (fileno);

ALTER TABLE task
ADD CONSTRAINT fk_task_empno FOREIGN KEY (empno)
REFERENCES emp (empno);

ALTER TABLE task
MODIFY status DEFAULT '대기';
    
SELECT * FROM task;

ALTER TABLE task
DROP CONSTRAINT fk_task_mgr;

--------------------------------------------------
-- COMMENT TABLE
CREATE TABLE comm(
    commno number PRIMARY KEY,
    refno number NOT NULL,
    taskno number,
    empno number,
    content varchar2(2000),
    regdate date DEFAULT sysdate
);
DROP SEQUENCE sq_comm;
CREATE SEQUENCE sq_comm
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 99999;

ALTER TABLE comm
ADD CONSTRAINT fk_comm_taskno FOREIGN KEY (taskno)
REFERENCES task (taskno);

ALTER TABLE comm
ADD CONSTRAINT fk_comm_empno FOREIGN KEY (empno)
REFERENCES emp (empno);

SELECT * FROM comm;

--------------------------------------------------------------
-- SQL TEST

INSERT INTO emp(empno, deptno, name, email, id, password, status)
VALUES (sq_emp.nextval, 'A2', '이광동', 'kd@kd.com', 'admin', '1111', '소속사원');

SELECT e.empno, e.name, e.job, e.deptno, e.status, d.dname 
FROM emp e, dept d
WHERE e.deptno = d.deptno
AND id = 'admin'
AND password = '1111';

SELECT * FROM emp;

SELECT d.dname, e.empno, e.job, e.name
FROM emp e, dept d
WHERE e.deptno = d.deptno;

SELECT * FROM workspace;

SELECT d.dname, e.deptno, e.empno, e.job, e.name
FROM emp e, dept d
WHERE e.deptno = d.deptno
AND e.deptno != 'A11';

SELECT *
FROM workspace
ORDER BY spaceno DESC;

SELECT * FROM workspace;

SELECT * FROM prj;

SELECT * FROM task;

SELECT e.name, t.*
FROM emp e, task t
WHERE e.empno = t.empno;

commit;

SELECT * FROM emp;