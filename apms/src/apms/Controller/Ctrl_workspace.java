package apms.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import apms.Service.Service_workspace;
import apms.VO.Workspace;




@Controller
@RequestMapping("/workspace.do")
public class Ctrl_workspace {
	// http://172.30.1.37:8080/apms/workspace.do?method=list
	@Autowired(required=false)
	Service_workspace service;
	
	@RequestMapping(params="method=list")
	public String list(Workspace w, Model d) {
		d.addAttribute("wlist",service.wlist());
		return "main/workspace";
	}
	
	

	@RequestMapping(params="method=ins")
	public String ins(@RequestParam("title") String title,
					  @RequestParam("pm") int pm,
					  @RequestParam("totbudget") int totbudget,
					  @RequestParam("status") String status,
					  @RequestParam("fileno") int fileno,
					  @RequestParam("empnos") String empnos,
					  Model d) {
		
		Workspace e1 = new Workspace(title,pm,totbudget,status,fileno,empnos); 
		service.ins(e1);

		
		return "redirect:workspace.do?method=list";
	
	}

	
}
