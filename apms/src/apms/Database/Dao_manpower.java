package apms.Database;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import apms.VO.Emp;

@Repository
public interface Dao_manpower {
	
	public ArrayList<Emp> elist();
	
	public void ins(Emp e);
}
