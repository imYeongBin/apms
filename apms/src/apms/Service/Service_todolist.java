package apms.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import apms.Database.Dao_todolist;
import apms.VO.Todolist;




@Service
public class Service_todolist {
	
	@Autowired(required=false)
	Dao_todolist dao;
	
	public ArrayList<Todolist> tlist(int prjno){
		
		return dao.tlist(prjno);
	}
	
	public void ins(Todolist w) {
		dao.ins(w); 
	};
	
	public String projectName(int prjno) {
		return dao.projectName(prjno);
	}
}
