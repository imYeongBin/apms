package apms.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import apms.Database.Dao_manpower;
import apms.VO.Emp;

@Service
public class Service_manpower {
	
	@Autowired(required=false)
	Dao_manpower dao; 
	
	public ArrayList<Emp> list(){
		return dao.elist();
	};
	
	public void ins(Emp e) {
		dao.ins(e);
	};
}
