package apms.Database;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import apms.VO.Workspace;

@Repository
public interface Dao_workspace {
	
	public ArrayList<Workspace> wlist();
	public void ins(Workspace e);
	
}
