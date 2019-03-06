package apms.VO;

import java.util.Date;

public class Project {
/*
     prjno number PRIMARY KEY,
    spaceno number,   --상위 워크스페이스 번호
    title VARCHAR2(100),
    prjbudget number DEFAULT 0,
    begindate date,
    enddate date,
    status varchar2(100),
    fileno number,
    empnos varchar2(500)
*/
	int prjno;
	int spaceno;
	String title;
	int pm;
	int prjbudget;
	Date begindate;
	Date enddate;
	String status;
	int fileno;
	String empnos;
	public Project() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Project(int prjno, int spaceno, String title, int pm, int prjbudget, Date begindate, Date enddate,
			String status, int fileno, String empnos) {
		super();
		this.prjno = prjno;
		this.spaceno = spaceno;
		this.title = title;
		this.pm = pm;
		this.prjbudget = prjbudget;
		this.begindate = begindate;
		this.enddate = enddate;
		this.status = status;
		this.fileno = fileno;
		this.empnos = empnos;
	}
	public int getPrjno() {
		return prjno;
	}
	public void setPrjno(int prjno) {
		this.prjno = prjno;
	}
	public int getSpaceno() {
		return spaceno;
	}
	public void setSpaceno(int spaceno) {
		this.spaceno = spaceno;
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
	public int getPrjbudget() {
		return prjbudget;
	}
	public void setPrjbudget(int prjbudget) {
		this.prjbudget = prjbudget;
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
	public Project(String title, int pm, int prjbudget, Date begindate, Date enddate, String status, int fileno,
			String empnos) {
		super();
		this.title = title;
		this.pm = pm;
		this.prjbudget = prjbudget;
		this.begindate = begindate;
		this.enddate = enddate;
		this.status = status;
		this.fileno = fileno;
		this.empnos = empnos;
	}
	public Project(int spaceno, String title, int pm, int prjbudget, Date begindate, Date enddate, String status,
			int fileno, String empnos) {
		super();
		this.spaceno = spaceno;
		this.title = title;
		this.pm = pm;
		this.prjbudget = prjbudget;
		this.begindate = begindate;
		this.enddate = enddate;
		this.status = status;
		this.fileno = fileno;
		this.empnos = empnos;
	}
	
	
}
