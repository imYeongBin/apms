package apms.Database;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import apms.VO.Todolist;

@Repository
public interface Dao_todolist {
	
	public ArrayList<Todolist> tlist(int prjno);
	public void ins(Todolist e);
	public String projectName(int prjno);
}
