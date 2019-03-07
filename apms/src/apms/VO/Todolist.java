package apms.VO;

import java.util.Date;

public class Todolist {
/*
     todono number PRIMARY KEY,
    prjno number,   --상위 워크스페이스 번호
    title VARCHAR2(100),
    prjbudget number DEFAULT 0,
    begindate date,
    enddate date,
    status varchar2(100),
    fileno number,
    empnos varchar2(500)
*/
	int todono;
	int prjno;
	String title;
	int pm;
	int todolistbudget;
	Date begindate;
	Date enddate;
	String status;
	int fileno;
	String empnos;
	public Todolist() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Todolist(int todono, int prjno, String title, int pm, int todolistbudget, Date begindate, Date enddate,
			String status, int fileno, String empnos) {
		super();
		this.todono = todono;
		this.prjno = prjno;
		this.title = title;
		this.pm = pm;
		this.todolistbudget = todolistbudget;
		this.begindate = begindate;
		this.enddate = enddate;
		this.status = status;
		this.fileno = fileno;
		this.empnos = empnos;
	}
	
	public int getTodono() {
		return todono;
	}
	public void setTodono(int todono) {
		this.todono = todono;
	}
	public int getPrjno() {
		return prjno;
	}
	public void setPrjno(int prjno) {
		this.prjno = prjno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getPm() {
		return pm;
	}
	public void setPm(int pm) {
		this.pm = pm;
	}
	public int getTodolistbudget() {
		return todolistbudget;
	}
	public void setTodolistbudget(int todolistbudget) {
		this.todolistbudget = todolistbudget;
	}
	public Date getBegindate() {
		return begindate;
	}
	public void setBegindate(Date begindate) {
		this.begindate = begindate;
	}
	public Date getEnddate() {
		return enddate;
	}
	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getFileno() {
		return fileno;
	}
	public void setFileno(int fileno) {
		this.fileno = fileno;
	}
	public String getEmpnos() {
		return empnos;
	}
	public void setEmpnos(String empnos) {
		this.empnos = empnos;
	}
	public Todolist(String title, int pm, int todolistbudget, Date begindate, Date enddate, String status, int fileno,
			String empnos) {
		super();
		this.title = title;
		this.pm = pm;
		this.todolistbudget = todolistbudget;
		this.begindate = begindate;
		this.enddate = enddate;
		this.status = status;
		this.fileno = fileno;
		this.empnos = empnos;
	}
	public Todolist(int prjno, String title, int pm, int todolistbudget, Date begindate, Date enddate, String status,
			int fileno, String empnos) {
		super();
		this.prjno = prjno;
		this.title = title;
		this.pm = pm;
		this.todolistbudget = todolistbudget;
		this.begindate = begindate;
		this.enddate = enddate;
		this.status = status;
		this.fileno = fileno;
		this.empnos = empnos;
	}
	
	
}
