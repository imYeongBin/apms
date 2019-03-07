package apms.Controller;

import java.text.ParseException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import apms.Service.Service_todolist;
import apms.VO.Todolist;




@Controller
@RequestMapping("/todolist.do")
public class Ctrl_todolist {
	//http://localhost:8080/apms/todolist.do?method=list
	@Autowired(required=false)
	Service_todolist service;
	
	@RequestMapping(params="method=list")
	public String list(Model d,@RequestParam("prjno") int prjno) {

		d.addAttribute("prjno",prjno);
		d.addAttribute("projectName",service.projectName(prjno));
		d.addAttribute("tlist",service.tlist(prjno));
		return "main/todolist";
	}
	
	

	@RequestMapping(params="method=ins")
	public String ins(@RequestParam("prjno") int prjno,
					  @RequestParam("title") String title,
					  @RequestParam("pm") int pm,
					  @RequestParam("todolistbudget") int todolistbudget,
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

		Todolist e1 = new Todolist(prjno,title,pm,todolistbudget,data1,data2,status,fileno,empnos); 
		service.ins(e1);
		
		return "redirect:todolist.do?method=list&prjno="+prjno;
		
	
	}

	
}
