package apms.Controller;

import java.text.ParseException;
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
					  @RequestParam("begindate") String begindate,
					  @RequestParam("enddate") String enddate,
					  @RequestParam("status") String status,
					  @RequestParam("fileno") int fileno,
					  @RequestParam("empnos") String empnos,
					  Model d) throws ParseException {
		java.text.SimpleDateFormat sdf1 = new java.text.SimpleDateFormat("yyyy-MM-dd");
		java.util.Date data1 = sdf1.parse(begindate);
		
		java.text.SimpleDateFormat sdf2 = new java.text.SimpleDateFormat("yyyy-MM-dd");
		java.util.Date data2 = sdf2.parse(enddate);

		Project e1 = new Project(spaceno,title,pm,prjbudget,data1,data2,status,fileno,empnos); 
		service.ins(e1);

		
		return "redirect:project.do?method=list";
	
	}

	
}
