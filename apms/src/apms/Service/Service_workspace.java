package apms.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import apms.Database.Dao_workspace;

import apms.VO.Workspace;

@Service
public class Service_workspace {
	
	@Autowired(required=false)
	Dao_workspace dao;
	
	public ArrayList<Workspace> wlist(){
		
		return dao.wlist();
	}
	
	public void ins(Workspace w) {
		dao.ins(w);
	};
	
	
}
