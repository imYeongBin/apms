package apms.Controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import apms.Service.Service_project;
import apms.VO.Project;




@Controller
@RequestMapping("/project.do")
public class Ctrl_project {
	//http://localhost:8080/apms/project.do?method=list
	@Autowired(required=false)
	Service_project service;
	
	@RequestMapping(params="method=list")
	public String list(Project w, Model d) {
		d.addAttribute("plist",service.plist());
		return "main/project";
	}
	
	

	@RequestMapping(params="method=ins")
	public String ins(@RequestParam("spaceno") int spaceno,
					  @RequestParam("title") String title,
					  @RequestParam("pm") int pm,
					  @RequestParam("prjbudget") int prjbudget,
					  @RequestParam("begindate") Date begindate,
					  @RequestParam("enddate") Date enddate,
					  @RequestParam("status") String status,
					  @RequestParam("fileno") int fileno,
					  @RequestParam("empnos") String empnos,
					  Model d) {
		
		Project e1 = new Project(spaceno,title,pm,prjbudget,begindate,enddate,status,fileno,empnos); 
		service.ins(e1);

		
		return "redirect:project.do?method=list";
	
	}

	
}
