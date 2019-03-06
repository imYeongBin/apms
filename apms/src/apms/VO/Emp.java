package apms.VO;

public class Emp {
	private int empno;
	private String deptno;
	private String job;
	private String name;
	private String email;
	private String id;
	private String password;
	private int tot_cnt;
	private int complete_cnt;
	private int late_cnt;
	private String status;
	
	private String dname;
	
	public Emp() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getEmpno() {
		return empno;
	}

	public void setEmpno(int empno) {
		this.empno = empno;
	}

	public String getDeptno() {
		return deptno;
	}

	public void setDeptno(String deptno) {
		this.deptno = deptno;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getTot_cnt() {
		return tot_cnt;
	}

	public void setTot_cnt(int tot_cnt) {
		this.tot_cnt = tot_cnt;
	}

	public int getComplete_cnt() {
		return complete_cnt;
	}

	public void setComplete_cnt(int complete_cnt) {
		this.complete_cnt = complete_cnt;
	}

	public int getLate_cnt() {
		return late_cnt;
	}

	public void setLate_cnt(int late_cnt) {
		this.late_cnt = late_cnt;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}
	public Emp(String name, String deptno, String job, String email, String id, String status) {
		super();
		this.deptno = deptno;
		this.job = job;
		this.name = name;
		this.email = email;
		this.id = id;
		this.status = status;
	}
	
}
