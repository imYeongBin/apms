package apms.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import apms.Database.Dao_project;
import apms.VO.Project;




@Service
public class Service_project {
	
	@Autowired(required=false)
	Dao_project dao;
	
	public ArrayList<Project> plist(){
		
		return dao.plist();
	}
	
	public void ins(Project w) {
		dao.ins(w);
	};
	
	
}
