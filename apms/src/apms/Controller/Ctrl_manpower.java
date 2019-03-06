package apms.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import apms.Service.Service_manpower;
import apms.VO.Emp;


@Controller
@RequestMapping("/manpower.do")
public class Ctrl_manpower {
	//http://localhost:8080/apms/manpower.do?method=list
	@Autowired(required=false)
	Service_manpower service;
	
	@RequestMapping(params="method=list")
	public String list(Emp e, Model d) {
		d.addAttribute("elist",service.list());
		return "manpower/manpower";
	}
	
	
	@RequestMapping(params="method=ins")
	public String ins(@RequestParam("name") String name,
					  @RequestParam("deptno") String deptno,
					  @RequestParam("job") String job,
					  @RequestParam("email") String email,
					  @RequestParam("id") String id,
					  @RequestParam("status") String status,
					  Model d) {
		
		Emp e1 = new Emp(name, deptno,job,email,id,status); 
		service.ins(e1);
		
		
		return "redirect:manpower.do?method=list";
		
	}
	

}
