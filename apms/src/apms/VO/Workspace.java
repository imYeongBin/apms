package apms.VO;

public class Workspace {

	int spaceno;
	String title;
	int pm;
	int totbudget;
	String status;
	int fileno;
	String empnos;
	
	
	public Workspace() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Workspace(int spaceno, String title, int pm, int totbudget, String status, int fileno, String empnos) {
		super();
		this.spaceno = spaceno;
		this.title = title;
		this.pm = pm;
		this.totbudget = totbudget;
		this.status = status;
		this.fileno = fileno;
		this.empnos = empnos;
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
	public int getTotbudget() {
		return totbudget;
	}
	public void setTotbudget(int totbudget) {
		this.totbudget = totbudget;
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
	public String getempnos() {
		return empnos;
	}
	public void setempnos(String empnos) {
		this.empnos = empnos;
	}
	public Workspace(String title, int pm, int totbudget, String status, int fileno, String empnos) {
		super();
		this.title = title;
		this.pm = pm;
		this.totbudget = totbudget;
		this.status = status;
		this.fileno = fileno;
		this.empnos = empnos;
	}
	

	 
	 
	 
}
