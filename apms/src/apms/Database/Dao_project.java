package apms.Database;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import apms.VO.Project;

@Repository
public interface Dao_project {
	
	public ArrayList<Project> plist();
	public void ins(Project e);
	
}
